#!/usr/bin/env python3
"""Execute actual controller Smali with a fake USB manager and scheduler.

The source owns registration guards, notification deduplication, lifecycle locks
and fallback generations. Android registration, permission UI and media work are
boundary fakes. No device is accessed.
"""
from pathlib import Path
import re
import threading
import unittest

ROOT = Path(__file__).resolve().parents[2]
CORE = ROOT / 'src/core/smali/classes/com/shilapi/xcertplay'
C = 'Lcom/shilapi/xcertplay/orchestration/CarPlayController;'
HOST = 'Lcom/shilapi/xcertplay/transport/IphoneUsbHost;'

class Unsupported(BaseException):
    pass

class Obj:
    def __init__(self, kind='', **fields):
        self.kind, self.fields, self.lock = kind, fields, threading.RLock()

class VM:
    def __init__(self):
        source = (CORE / 'orchestration/CarPlayController.smali').read_text()
        self.methods = {head.split()[-1]: re.sub(r'\.annotation.*?\.end annotation', '', body, flags=re.S)
                        for head, body in re.findall(r'^\.method (.*?)\n(.*?)^\.end method', source, re.M | re.S)}
        self.now, self.queue, self.requests, self.logs = 0, [], [], []
        self.registrations, self.unregistrations = 0, 0
        self.registration_error = False
        self.register_entered = self.register_continue = None
        self.devices = []
        self.controller = Obj(C, closed=0, config=Obj(transport='WIRED'), attachCloseable=0,
            permissionCloseable=0, ch341PermissionCloseable=0, phase=1,
            permissionDeviceName=0, iphoneHost=Obj(HOST), mainHandler=Obj('handler'),
            reenumerationWatchGeneration=Obj('counter', value=0),
            availabilityPollGeneration=Obj('counter', value=0), wirelessGeneration=Obj('counter', value=0),
            portReady=True, executor=Obj('executor'), touchExecutor=Obj('executor'),
            tunnelExecutor=Obj('executor'))

    def run(self, signature, *args):
        body = self.methods[signature]
        loc = int(re.search(r'\.locals (\d+)', body)[1])
        lines = [x.strip().split('#', 1)[0].strip() for x in body.splitlines()]
        lines = [x for x in lines if x]
        labels = {x: i for i, x in enumerate(lines) if x.startswith(':')}
        catches = []
        for line in lines:
            match = re.match(r'\.catch(all)?(?: (\S+))? \{(\S+) \.\. (\S+)\} (\S+)', line)
            if match:
                catches.append((labels[match[3]], labels[match[4]], labels[match[5]], match[2]))
        catches.sort(key=lambda c: c[1] - c[0])
        regs = {loc + i: a for i, a in enumerate(args)}
        def index(name): return int(name[1:]) + (loc if name[0] == 'p' else 0)
        def get(name): return regs[index(name)]
        def put(name, value): regs[index(name)] = value
        pc, result, error = 0, 0, None
        while pc < len(lines):
            at, line = pc, lines[pc]; pc += 1
            if line.startswith(('.', ':')): continue
            op, _, tail = line.partition(' '); a = tail.split(', ')
            try:
                if op.startswith('move-result'): put(a[0], result)
                elif op == 'move-exception': put(a[0], error)
                elif op.startswith('move'): put(a[0], get(a[1]))
                elif op.startswith('const-string'): put(a[0], tail.split(', ', 1)[1][1:-1])
                elif op.startswith('const'): put(a[0], int(a[1].rstrip('L'), 0))
                elif op.startswith('iget'): put(a[0], get(a[1]).fields.get(a[2].split('->')[1].split(':')[0], 0))
                elif op.startswith('iput'): get(a[1]).fields[a[2].split('->')[1].split(':')[0]] = get(a[0])
                elif op.startswith('sget'):
                    field = a[1].split('->')[1].split(':')[0]
                    value = {'WIRED': 'WIRED', 'IPHONE': 1, 'REENUMERATION': 2,
                             '$EnumSwitchMapping$4': [0, 1, 2, 3]}.get(field, Obj(field))
                    if 'TransitionResult$ReenumerationRequested;' in a[1]: value = 'requested'
                    put(a[0], value)
                elif op == 'new-instance': put(a[0], Obj(a[1]))
                elif op == 'new-array': put(a[0], [0] * get(a[1]))
                elif op.startswith('aput'): get(a[1])[get(a[2])] = get(a[0])
                elif op.startswith('aget'): put(a[0], get(a[1])[get(a[2])])
                elif op == 'check-cast' or op == 'nop': pass
                elif op.startswith('add-'):
                    x, y = (get(a[0]), get(a[1])) if op.endswith('/2addr') else (get(a[1]), int(a[2], 0))
                    put(a[0], x + y)
                elif op.startswith('if-'):
                    x, y = get(a[0]), 0 if op.endswith('z') else get(a[1])
                    match = (x == y) if op.startswith('if-eq') else (x != y)
                    if match: pc = labels[a[-1]]
                elif op.startswith('goto'): pc = labels[tail]
                elif op.startswith('monitor-'):
                    (get(a[0]).lock.acquire if op == 'monitor-enter' else get(a[0]).lock.release)()
                elif op.startswith('invoke'):
                    m = re.match(r'\{(.*?)\}, (L[^;]+;)->(.+)', tail)
                    rs = m[1]
                    if ' .. ' in rs:
                        lo, hi = rs.split(' .. '); ids = range(index(lo), index(hi) + 1)
                    else: ids = [index(x) for x in rs.split(', ') if x]
                    types = re.findall(r'\[*L[^;]+;|\[*[ZBCSIJFD]', m[3].split('(')[1].split(')')[0])
                    if not op.startswith('invoke-static'): types.insert(0, 'Lreceiver;')
                    values, offset, ids = [], 0, list(ids)
                    for typ in types:
                        values.append(regs[ids[offset]]); offset += 2 if typ in ('J', 'D') else 1
                    result = self.call(m[2], m[3], values)
                elif op.startswith('return'): return 0 if op == 'return-void' else get(a[0])
                elif op == 'throw': raise get(a[0])
                else: raise Unsupported('Unsupported instruction: ' + line)
            except Exception as exc:
                handler = next((c for c in catches if c[0] <= at < c[1]
                                and (c[3] is None or c[3] == 'Ljava/lang/Exception;')), None)
                if handler is None: raise
                error, pc = exc, handler[2]
        raise AssertionError('Missing return: ' + signature)

    def call(self, owner, signature, a):
        name = signature.split('(')[0]
        if owner == C:
            if name.startswith('debugLog'): self.logs.append(a[1]); return 0
            if name in ('onStatus', 'startMfi', 'cancelWiredStartup', 'unbindVpn'): return 0
            if name == 'fail': self.logs.append('failure'); return 0
            return self.run(signature, *a)
        if owner == 'Lcom/shilapi/xcertplay/transport/WiredWarmReattach;' and name == 'probe':
            self.probe = a
            return 0
        if owner == HOST:
            if name == 'registerAttachReceiver':
                self.registrations += 1
                if self.register_entered:
                    self.register_entered.set()
                    if not self.register_continue.wait(2): raise AssertionError('registration test timeout')
                if self.registration_error: raise RuntimeError('registration blocked')
                return Obj('registration')
            if name == 'discover': return self.devices
            if name == 'requestCarPlayReenumerationAsync': return 0
        if owner.endswith('/CarPlayRuntimeConfig;') and name == 'getTransport': return a[0].fields['transport']
        if owner.endswith('/CarPlayController$Phase;') and name == 'ordinal': return a[0]
        if owner.endswith('/CarPlayController$Phase;') and name == 'name': return str(a[0])
        if owner == 'Ljava/lang/String;' and name == 'toLowerCase': return a[0].lower()
        if owner.endswith('/E01WiredPort;'):
            if name == 'controllerReady': return a[0].fields['portReady']
            if name == 'controllerStarted': return 0
        if owner.endswith('/E01BuildVariant;') and name == 'isPreview': return False
        if owner == 'Landroid/hardware/usb/UsbDevice;' and name == 'getDeviceName': return a[0]
        if owner == 'Ljava/util/concurrent/atomic/AtomicInteger;':
            if name == 'incrementAndGet': a[0].fields['value'] += 1
            return a[0].fields['value']
        if owner == 'Ljava/lang/System;' and name == 'nanoTime': return self.now * 1000000
        if owner == 'Landroid/os/Handler;' and name == 'post':
            self.requests.append((self.now, a[1].fields['args'][1])); return True
        if owner == 'Landroid/os/Handler;' and name == 'postDelayed':
            self.queue.append((self.now + a[2], a[1])); return True
        if owner == 'Lkotlin/jvm/internal/Intrinsics;':
            if name == 'areEqual': return a[0] == a[1]
            return 0
        if owner == 'Lkotlin/Result;': return False if name == 'isFailure-impl' else a[0]
        if owner == 'Lkotlin/collections/CollectionsKt;':
            if name == 'firstOrNull': return a[0][0] if a[0] else 0
            if name == 'listOfNotNull': return [v for v in a[0] if v]
        if owner == 'Ljava/lang/Iterable;' and name == 'iterator': return Obj('iterator', items=list(a[0]))
        if owner == 'Ljava/util/Iterator;':
            return bool(a[0].fields['items']) if name == 'hasNext' else a[0].fields['items'].pop(0)
        if owner == 'Ljava/io/Closeable;' and name == 'close': self.unregistrations += 1; return 0
        if owner == 'Ljava/lang/StringBuilder;':
            if name == '<init>': a[0].fields['text'] = str(a[1]) if len(a) > 1 else ''
            elif name == 'append': a[0].fields['text'] += str(a[1])
            elif name == 'toString': return a[0].fields['text']
            return a[0]
        if name == '<init>' and ('ExternalSyntheticLambda' in owner or owner.endswith('$start$4;')):
            a[0].fields['args'] = a[1:]; return 0
        if (name == '<init>' or owner.endswith(('/E01OemBluetooth;', '/BydNavigationOutputs;',
            '/ConnectionLog;', '/VideoInCarGate;', '/UsbPromptStamp;')) or owner in
            ('Ljava/util/concurrent/ExecutorService;', 'Ljava/util/concurrent/CountDownLatch;', 'Ljava/lang/Thread;')):
            return 0
        raise Unsupported('Unsupported external call: ' + owner + '->' + signature)

    def attach(self, device='/usb/003'):
        self.run('onIphoneAttached(Landroid/hardware/usb/UsbDevice;)V', self.controller, device)

class AttachTests(unittest.TestCase):
    def test_registration_and_close(self):
        m = VM(); c = m.controller
        m.run('start()V', c); m.run('start()V', c)
        self.assertEqual(m.registrations, 1)
        m.run('close()V', c); m.run('close()V', c); m.run('start()V', c)
        self.assertEqual((m.registrations, m.unregistrations), (1, 1))
        m.attach(); self.assertFalse(m.requests)

    def test_wireless_never_registers(self):
        m = VM(); m.controller.fields['config'].fields['transport'] = 'WIRELESS'
        m.run('start()V', m.controller)
        self.assertEqual(m.registrations, 0)

    def test_registration_failure_keeps_startup_alive(self):
        m = VM(); m.registration_error = True
        m.run('start()V', m.controller)
        self.assertEqual(m.controller.fields['attachCloseable'], 0)
        self.assertTrue(any('fallback' in line for line in m.logs))
        self.assertTrue(m.controller.lock.acquire(blocking=False)); m.controller.lock.release()

    def test_optional_probe_shares_attach_handler_and_fallback_ticket(self):
        m = VM()
        c = m.controller
        c.fields.update(phase=2, wiredDevice='/usb/003', usbManager=Obj('manager'))
        m.run('watchReenumeration()V', c)
        handler, worker, manager, device, generation, ticket, listener = m.probe
        self.assertEqual((handler, worker, manager, device), tuple(c.fields[key] for key in
                         ('mainHandler', 'executor', 'usbManager', 'wiredDevice')))
        self.assertIs(generation, c.fields['reenumerationWatchGeneration'])
        self.assertEqual(ticket, m.queue[0][1].fields['args'][1])
        self.assertEqual(listener.kind, C[:-1] + '$start$4;')
        self.assertEqual(listener.fields['args'], [c])

    def test_attach_immediate_and_duplicate_coalesced(self):
        m = VM(); c = m.controller; c.fields['phase'] = 2
        m.run('watchReenumeration()V', c)
        self.assertEqual(m.queue[0][0], 10000)
        m.now = 1000; m.attach(); m.attach()
        self.assertEqual(m.requests, [(1000, '/usb/003')])
        self.assertEqual(c.fields['availabilityPollGeneration'].fields['value'], 1)
        # The old 10-second fallback cannot request permission a second time.
        m.devices = ['/usb/003']; m.now = 10000
        callback = m.queue[0][1]
        m.run('watchReenumeration$lambda$105(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V', *callback.fields['args'])
        self.assertEqual(len(m.requests), 1)

    def test_missing_broadcast_keeps_fallback(self):
        m = VM(); c = m.controller; c.fields['phase'] = 2; m.devices = ['/usb/003']
        m.run('watchReenumeration()V', c); m.now = 10000
        m.run('watchReenumeration$lambda$105(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V', *m.queue[0][1].fields['args'])
        self.assertEqual(m.requests, [(10000, '/usb/003')])

    def test_missing_device_fallback_reports_no_connection(self):
        m = VM(); c = m.controller; c.fields['phase'] = 2
        m.run('watchReenumeration()V', c); m.now = 10000
        m.run('watchReenumeration$lambda$105(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V', *m.queue[0][1].fields['args'])
        self.assertFalse(m.requests); self.assertIn('failure', m.logs)

    def test_other_phases_and_cleanup_barrier(self):
        for phase in (0, 3):
            m = VM(); m.controller.fields['phase'] = phase; m.attach()
            self.assertFalse(m.requests)
        m = VM(); m.controller.fields['portReady'] = False; m.attach()
        self.assertFalse(m.requests)
        m.controller.fields['portReady'] = True; m.attach()
        self.assertEqual(len(m.requests), 1)

    def test_device_address_can_be_reused_next_attempt(self):
        m = VM(); c = m.controller; m.attach('/usb/002')
        m.run('beginReenumeration(Landroid/hardware/usb/UsbDevice;)V', c, '/usb/002')
        m.attach('/usb/002'); m.attach('/usb/002')
        self.assertEqual(len(m.requests), 2)
        m.attach('/usb/003'); self.assertEqual(len(m.requests), 3)

    def test_scan_and_broadcast_share_one_permission_path(self):
        m = VM(); c = m.controller; errors = []
        def scan():
            try: m.run('requestIphonePermission(Landroid/hardware/usb/UsbDevice;)V', c, '/usb/003')
            except BaseException as e: errors.append(e)
        a = threading.Thread(target=scan); b = threading.Thread(target=m.attach)
        a.start(); b.start(); a.join(2); b.join(2)
        self.assertFalse(errors, errors); self.assertEqual(len(m.requests), 1)

    def test_late_switch_completion_cannot_restart_or_duplicate_prompt(self):
        sig = 'beginReenumeration$lambda$103(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;)Lkotlin/Unit;'
        for closed, phase in [(1, 2), (0, 3)]:
            m = VM(); c = m.controller; c.fields.update(closed=closed, phase=phase)
            m.run(sig, c, 'requested'); self.assertFalse(m.queue)
        m = VM(); c = m.controller; c.fields['phase'] = 2; m.attach()
        m.run(sig, c, 'requested'); m.now = 10000; m.devices = ['/usb/003']
        m.run('watchReenumeration$lambda$105(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V', *m.queue[0][1].fields['args'])
        self.assertEqual(len(m.requests), 1)

    def test_close_waits_for_registration_then_unregisters(self):
        m = VM(); c = m.controller
        m.register_entered = threading.Event(); m.register_continue = threading.Event(); errors = []
        def call(method):
            try: m.run(method, c)
            except BaseException as e: errors.append(e)
        start = threading.Thread(target=call, args=('start()V',)); start.start()
        self.assertTrue(m.register_entered.wait(2))
        close = threading.Thread(target=call, args=('close()V',)); close.start()
        m.register_continue.set(); start.join(2); close.join(2)
        self.assertFalse(start.is_alive() or close.is_alive()); self.assertFalse(errors, errors)
        self.assertEqual((m.registrations, m.unregistrations), (1, 1))
        self.assertTrue(c.fields['closed']); m.attach(); self.assertFalse(m.requests)

if __name__ == '__main__': unittest.main(verbosity=2)
