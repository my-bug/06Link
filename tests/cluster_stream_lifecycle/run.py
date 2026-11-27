#!/usr/bin/env python3
"""Execute production Smali lifecycle/control flow with fake sockets and codecs.

The interpreter is deliberately limited to this path. Android codec/transport work
is replaced at its boundary; ownership, monitors, branches and cleanup execute
from the source methods, not a second implementation of the lifecycle.
"""
from pathlib import Path
import re
import threading
import time
import unittest

ROOT = Path(__file__).resolve().parents[2]
CORE = ROOT / 'src/core/smali/classes/com/shilapi/xcertplay'
PREFIX = 'Lcom/shilapi/xcertplay/'
ENGINE = PREFIX + 'airplay/CarPlayMediaEngine;'
LISTENER = PREFIX + 'airplay/CarPlayMediaEngine$onScreen$port$1;'
SINK = PREFIX + 'media/AndroidMediaSink;'
DECODER = PREFIX + 'media/VideoDecoder;'
STREAM = PREFIX + 'airplay/ScreenStream;'
KEY = PREFIX + 'airplay/CarPlayMediaEngine$StreamKey;'

class Obj:
    def __init__(self, cls, **fields):
        self.cls, self.f, self.lock = cls, fields, threading.RLock()
    def __hash__(self):
        return hash((id(self.f['session']), self.f['type'], self.f.get('audioType', 0))) if self.cls == KEY else id(self)
    def __eq__(self, other):
        return (isinstance(other, Obj) and self.cls == other.cls == KEY
                and self.f['session'] is other.f['session'] and self.f['type'] == other.f['type']
                and self.f.get('audioType', 0) == other.f.get('audioType', 0)) or self is other

class Iter:
    def __init__(self, items): self.items, self.i = list(items), 0

class Machine:
    def __init__(self):
        self.methods, self.logs, self.monitors = {}, [], []
        for cls, rel in [(ENGINE,'airplay/CarPlayMediaEngine.smali'),
                         (LISTENER,'airplay/CarPlayMediaEngine$onScreen$port$1.smali'),
                         (SINK,'media/AndroidMediaSink.smali'),(DECODER,'media/VideoDecoder.smali')]:
            for header, body in re.findall(r'^\.method ([^\n]+)\n(.*?)^\.end method', (CORE/rel).read_text(), re.M|re.S):
                body = re.sub(r'\s*\.annotation.*?\.end annotation', '', body, flags=re.S)
                self.methods[cls, header.split()[-1]] = body
        self.sink = Obj(SINK, videoDecoders={}, pendingVideoCodec={}, videoRecoveryHandlers={},
                        videoDiagnosticHandlers={}, videoSizes={}, surfaces={110:object(),111:object()},
                        activeScreenTypes=set(), screenStateLock=Obj('lock'), screenStreamActiveChanged=Obj('events', events=[]))
        self.engine = Obj(ENGINE, sink=self.sink, streams={}, screenOwners={}, pendingMicrophone={},
                          audioOwners={}, audioMeta={}, audioCaptures={})
        self.thread = Obj('thread', alive=False, joins=[], interrupts=0)
        self.hook = None

    def run(self, cls, signature, *args):
        body = self.methods[cls, signature]
        lines = [s.strip() for s in body.splitlines() if s.strip() and not s.strip().startswith('#')]
        labels = {s:i for i,s in enumerate(lines) if s.startswith(':')}
        catches=[]
        for s in lines:
            m=re.match(r'\.catch(all)?(?: (\S+))? \{(:\w+) \.\. (:\w+)\} (:\w+)',s)
            if m: catches.append((labels[m[3]],labels[m[4]],labels[m[5]],m[2]))
        r={f'p{i}':v for i,v in enumerate(args)}; result=0; pending=None; pc=0
        def same(a,b): return a is b if isinstance(a,Obj) or isinstance(b,Obj) else a==b
        while pc<len(lines):
            line=lines[pc]; current=pc;pc+=1
            if line.startswith(('.',':')):continue
            op,_,tail=line.partition(' ')
            try:
                if op.startswith('move-result'):r[tail]=result
                elif op=='move-exception':r[tail]=pending
                elif op.startswith('move'):
                    a,b=tail.split(', ');r[a]=r[b]
                elif op.startswith('const-string'):
                    a,b=tail.split(', ',1);r[a]=b[1:-1]
                elif op.startswith('const'):
                    a,b=tail.split(', ',1);r[a]=int(b.rstrip('L'),0)
                    if op.startswith('const-wide'):r[a[0]+str(int(a[1:])+1)]=0
                elif op.startswith('iget'):
                    a,b,f=tail.split(', ');r[a]=r[b].f.get(f.split('->')[1].split(':')[0],0)
                elif op.startswith('iput'):
                    a,b,f=tail.split(', ');r[b].f[f.split('->')[1].split(':')[0]]=r[a]
                elif op.startswith('sget'):r[tail.split(',')[0]]=Obj('unit')
                elif op=='new-instance':
                    a,b=tail.split(', ');r[a]=[] if b=='Ljava/util/ArrayList;' else Obj(b)
                elif op=='check-cast':pass
                elif op.startswith('invoke'):
                    m=re.match(r'\{([^}]*)\}, (L[^;]+;)->(.+)',tail);regs=m[1]
                    if ' .. ' in regs:
                        a,b=regs.split(' .. ');regs=', '.join(a[0]+str(i) for i in range(int(a[1:]),int(b[1:])+1))
                    values=[r[x] for x in regs.split(', ') if x]
                    result=self.call(m[2],m[3],values)
                elif op.startswith('if-'):
                    parts=tail.split(', ');a=r[parts[0]];b=0 if op.endswith('z') else r[parts[1]]
                    cond=same(a,b) if op.startswith('if-eq') else not same(a,b)
                    if cond:pc=labels[parts[-1]]
                elif op.startswith('goto'):pc=labels[tail]
                elif op=='monitor-enter':
                    o=r[tail];o.lock.acquire();self.monitors.append((threading.get_ident(),o))
                elif op=='monitor-exit':
                    o=r[tail];self.monitors.remove((threading.get_ident(),o));o.lock.release()
                elif op.startswith('return'):return 0 if op=='return-void' else r[tail]
                elif op=='throw':
                    error=r[tail]
                    raise error if isinstance(error,BaseException) else RuntimeError(error.f.get('message','Smali throw'))
                else:raise AssertionError('Unsupported instruction '+line)
            except BaseException as error:
                target=next((h for a,b,h,kind in catches if a<=current<b and (kind is None or kind=='Ljava/lang/InterruptedException;' and isinstance(error,InterruptedError))),None)
                if target is None:raise
                pending=error;pc=target
        raise AssertionError('Missing return '+signature)

    def call(self,cls,sig,a):
        name=sig.split('(')[0]
        if self.hook:self.hook(cls,name,a)
        if cls=='Lkotlin/jvm/internal/Intrinsics;':return 0
        if cls=='Ljava/lang/Object;' and name=='<init>':return 0
        if cls in ('Ljava/lang/Integer;','Ljava/lang/Boolean;'):return a[0]
        if cls=='Ljava/lang/System;':return id(a[0]) if a[0] else 0
        if cls=='Landroid/util/Log;':self.logs.append(a[1]);return 0
        if cls=='Ljava/lang/StringBuilder;':
            if name=='<init>':a[0].f['value']=str(a[1]) if len(a)>1 else ''
            elif name=='append':a[0].f['value']+=str(a[1])
            elif name=='toString':return a[0].f['value']
            return a[0]
        if cls=='Ljava/lang/Thread;':
            if name=='currentThread':return self.thread
            if name=='interrupt':a[0].f['interrupts']=a[0].f.get('interrupts',0)+1
            elif name=='join':a[0].f['joins'].append(a[1])
            elif name=='isAlive':return a[0].f['alive']
            return 0
        if cls=='Ljava/lang/IllegalStateException;':a[0].f['message']=a[1];return 0
        if cls.startswith(('Lj$/util/concurrent/ConcurrentHashMap;','Ljava/util/Map;')):
            d=a[0]
            if name=='get':return d.get(a[1],0)
            if name=='put':old=d.get(a[1],0);d[a[1]]=a[2];return old
            if name=='remove':
                if len(a)==3:
                    if d.get(a[1],0) is not a[2]:return False
                    del d[a[1]];return True
                return d.pop(a[1],0)
            if name=='keySet':return list(d)
        if cls in ('Ljava/lang/Iterable;','Ljava/util/Collection;','Ljava/util/Set;','Ljava/util/Iterator;','Ljava/util/ArrayList;'):
            if name=='<init>':return 0
            if name=='iterator':return Iter(a[0])
            if name=='hasNext':return a[0].i<len(a[0].items)
            if name=='next':o=a[0];v=o.items[o.i];o.i+=1;return v
            if name=='add':
                (a[0].add if isinstance(a[0],set) else a[0].append)(a[1]);return True
            if name=='remove':a[0].discard(a[1]);return True
        if cls==KEY:
            if name=='<init>':a[0].f.update(session=a[1],type=a[2],audioType=0);return 0
            return a[0].f.get(name[3:].replace('Session','session').replace('Type','type').replace('AudioType','audioType'),0)
        if 'ExternalSyntheticLambda' in cls or cls.endswith('$onScreen$screen$1;') or cls.endswith('/AudioStreamId;'):
            if name=='<init>':a[0].f['args']=a[1:];return 0
        if cls.endswith('/CarPlayMediaEngineKt;'):return str(a[0])
        if cls==STREAM or cls=='Ljava/io/Closeable;':
            if name=='<init>':return 0
            if name=='listen':a[0].f['listener']=a[1];return 5100
            if name=='close':a[0].f['closed']=True;return 0
        if cls.endswith('/AirPlaySession;'):
            if name.startswith('getLocalAddress'):return '127.0.0.1'
            if name.startswith('getClusterDisplay'):return 0
            if name=='close':a[0].f['closed']=True;return 0
        if cls==ENGINE:
            if name=='outputKey':return b'key'
            if name=='isScreenStreamType':return a[1] in (110,111)
            if name=='clearPendingIapTunnel':return 0
            if name.startswith('access$get'):return a[0].f[name[len('access$get'):-2][0].lower()+name[len('access$get'):-2][1:]]
            if name=='access$releaseOwner':return self.run(ENGINE,'releaseOwner(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Z',*a)
        if cls.endswith('/MediaSink;'):cls=SINK
        if cls==SINK and name=='videoDecoder':
            d=a[0].f['videoDecoders'];kind=a[1]
            if kind not in d:d[kind]=self.decoder(kind)
            return d[kind]
        if cls==DECODER and name in ('configure','submit'):
            if name=='configure':
                d=a[0];d.f['configurations'].append(a[1:]);d.f['configuration']=a[1:]
            else:a[0].f['frames'].append(a[1])
            return 0
        if cls.endswith('/E01ClusterVideoGate;'):return False
        if cls=='Lkotlin/jvm/functions/Function2;':a[0].f['events'].append(tuple(a[1:]));return 0
        if (cls,sig) in self.methods:return self.run(cls,sig,*a)
        raise AssertionError('Unsupported call '+cls+'->'+sig)

    def decoder(self,kind):
        return Obj(DECODER,running=True,thread=Obj('thread',alive=False,joins=[],interrupts=0),
                   configurations=[],frames=[],surface=self.sink.f['surfaces'][kind])
    def start(self,session):
        self.run(ENGINE,'onScreen(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;',self.engine,session,111,{'streamConnectionID':7})
        return next(v for k,v in self.engine.f['streams'].items() if k.f['session'] is session and k.f['type']==111)
    def stop(self,session):
        self.run(ENGINE,'onTeardown(Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V',self.engine,session,111)
    def event(self,stream,method,value=0):
        arg={'onClosed':'Ljava/lang/Throwable;','onCodec':'Lcom/shilapi/xcertplay/airplay/VideoCodec;','onConfig':'[B','onFrame':'[B'}[method]
        self.run(LISTENER,method+'('+arg+')V',stream.f['listener'],value)
    def configure(self,stream):
        self.event(stream,'onCodec','H264');self.event(stream,'onConfig',b'identical SPS/PPS')

class LifecycleTests(unittest.TestCase):
    def setUp(self):self.m=Machine();self.session=Obj('session')
    def test_replace_same_config_keeps_surface_but_retires_decoder(self):
        m=self.m;a=m.start(self.session);m.configure(a);old=m.sink.f['videoDecoders'][111]
        b=m.start(self.session);m.configure(b);new=m.sink.f['videoDecoders'][111]
        self.assertTrue(a.f['closed']);self.assertFalse(old.f['running']);self.assertEqual(old.f['thread'].f['joins'],[1000])
        self.assertIsNot(old,new);self.assertIs(old.f['surface'],new.f['surface'])
        self.assertNotIn((111,False),m.sink.f['screenStreamActiveChanged'].f['events'])
        m.configure(b);self.assertIs(m.sink.f['videoDecoders'][111],new)
    def test_teardown_setup_and_delayed_old_packets(self):
        m=self.m;a=m.start(self.session);m.configure(a);m.stop(self.session)
        self.assertFalse(m.sink.f['videoDecoders'][111].f['running']);b=m.start(self.session);m.configure(b)
        new=m.sink.f['videoDecoders'][111];handler=m.sink.f['videoRecoveryHandlers'][111]
        for event,value in [('onCodec','STALE'),('onConfig',b'stale'),('onFrame',b'stale'),('onClosed',0)]:m.event(a,event,value)
        self.assertIs(m.sink.f['videoDecoders'][111],new);self.assertIs(m.sink.f['videoRecoveryHandlers'][111],handler)
        self.assertEqual(m.sink.f['pendingVideoCodec'][111],'H264');self.assertFalse(new.f['frames']);self.assertFalse(self.session.f.get('closed',False))
        m.event(b,'onFrame',b'new');self.assertEqual(new.f['frames'],[b'new'])
    def test_replaced_old_close_does_not_close_session(self):
        m=self.m;a=m.start(self.session);b=m.start(self.session);m.event(a,'onClosed')
        self.assertFalse(self.session.f.get('closed',False));self.assertIn(111,m.sink.f['activeScreenTypes'])
        m.event(b,'onClosed');self.assertTrue(self.session.f['closed']);self.assertNotIn(111,m.sink.f['activeScreenTypes'])
    def test_retirement_finishes_before_new_handlers_are_published(self):
        m=self.m;a=m.start(self.session);m.configure(a);old=m.sink.f['videoDecoders'][111];calls=[]
        def hook(cls,name,args):
            if cls=='Ljava/lang/Thread;' and name=='join':
                calls.append(name)
                self.assertNotIn(a,m.engine.f['streams'].values())
                self.assertNotIn(111,m.sink.f['videoRecoveryHandlers'])
                self.assertIs(m.sink.f['videoDecoders'][111],old)
        m.hook=hook;m.start(self.session);self.assertEqual(calls,['join'])
    def test_timeout_preserves_retiring_codec_and_releases_engine_monitor(self):
        m=self.m;a=m.start(self.session);m.configure(a);old=m.sink.f['videoDecoders'][111];old.f['thread'].f['alive']=True
        with self.assertRaisesRegex(RuntimeError,'has not stopped'):m.start(self.session)
        self.assertIs(m.sink.f['videoDecoders'][111],old);self.assertFalse(m.monitors)
        old.f['thread'].f['alive']=False;m.start(self.session);self.assertNotIn(111,m.sink.f['videoDecoders'])
    def test_main_decoder_and_audio_ownership_unchanged(self):
        m=self.m;main=m.decoder(110);m.sink.f['videoDecoders'][110]=main
        m.sink.f['pendingVideoCodec'][110]='H264';m.sink.f['videoRecoveryHandlers'][110]=object()
        m.engine.f['audioOwners']['music']=self.session
        a=m.start(self.session);m.configure(a);m.stop(self.session);m.start(self.session)
        self.assertIs(m.sink.f['videoDecoders'][110],main);self.assertTrue(main.f['running'])
        self.assertEqual(main.f['thread'].f['joins'],[]);self.assertIs(m.engine.f['audioOwners']['music'],self.session)
    def test_normal_stop_never_waits_for_stuck_decoder_or_skips_inactive(self):
        m=self.m;a=m.start(self.session);m.configure(a);old=m.sink.f['videoDecoders'][111]
        old.f['thread'].f['alive']=True;m.stop(self.session)
        self.assertIs(m.sink.f['videoDecoders'][111],old);self.assertFalse(old.f['running'])
        self.assertEqual(old.f['thread'].f['joins'],[]);self.assertNotIn(111,m.sink.f['activeScreenTypes'])
        self.assertNotIn(111,m.sink.f['videoRecoveryHandlers']);self.assertNotIn(111,m.sink.f['pendingVideoCodec'])
        self.assertEqual(m.sink.f['screenStreamActiveChanged'].f['events'][-1],(111,False))
    def test_callback_exception_releases_monitor_and_main_frames_do_not_lock(self):
        m=self.m;a=m.start(self.session);m.configure(a)
        def hook(cls,name,args):
            if cls.endswith('/MediaSink;') and name=='onVideoFrame':raise ValueError('sink failed')
        m.hook=hook
        with self.assertRaisesRegex(ValueError,'sink failed'):m.event(a,'onFrame',b'frame')
        self.assertFalse(m.monitors);m.hook=None;m.event(a,'onFrame',b'next')
        listener=Obj(LISTENER,**{'this$0':m.engine,'$type':110})
        def check_main(cls,name,args):
            if cls.endswith('/MediaSink;') and name=='onVideoFrame':self.assertFalse(m.monitors)
        m.hook=check_main;m.run(LISTENER,'onFrame([B)V',listener,b'main')
        self.assertEqual(m.sink.f['videoDecoders'][110].f['frames'],[b'main'])
    def test_old_frame_waiting_for_lock_cannot_arrive_after_replacement(self):
        m=self.m;a=m.start(self.session);m.configure(a);entered=threading.Event();errors=[]
        def late():
            entered.set()
            try:m.event(a,'onFrame',b'old-frame')
            except BaseException as e:errors.append(e)
        with m.engine.lock:
            t=threading.Thread(target=late);t.start();self.assertTrue(entered.wait(2))
            b=m.start(self.session);m.configure(b)
        t.join(2);self.assertFalse(t.is_alive());self.assertFalse(errors)
        self.assertFalse(m.sink.f['videoDecoders'][111].f['frames'])
    def test_old_session_teardown_does_not_clear_new_owner(self):
        m=self.m;a=m.start(self.session);m.configure(a);other=Obj('session')
        b=m.start(other);m.configure(b);new=m.sink.f['videoDecoders'][111]
        self.assertTrue(a.f['closed']);self.assertNotIn(a,m.engine.f['streams'].values())
        m.stop(self.session);m.event(a,'onClosed')
        self.assertIs(m.sink.f['videoDecoders'][111],new);self.assertTrue(new.f['running'])
        self.assertIn(111,m.sink.f['activeScreenTypes']);self.assertFalse(other.f.get('closed',False))
    def test_failure_before_retirement_preserves_existing_projection(self):
        m=self.m;a=m.start(self.session);m.configure(a);old=m.sink.f['videoDecoders'][111]
        def hook(cls,name,args):
            if cls==ENGINE and name=='outputKey':raise ValueError('key failed')
        m.hook=hook
        with self.assertRaisesRegex(ValueError,'key failed'):m.start(self.session)
        self.assertIs(m.sink.f['videoDecoders'][111],old);self.assertTrue(old.f['running'])
        self.assertFalse(a.f.get('closed',False));self.assertIn(111,m.sink.f['activeScreenTypes']);self.assertFalse(m.monitors)
    def test_failed_listen_after_replacement_clears_visible_state_and_allows_retry(self):
        m=self.m;a=m.start(self.session);m.configure(a)
        def hook(cls,name,args):
            if cls==STREAM and name=='listen':raise OSError('bind failed')
        m.hook=hook
        with self.assertRaisesRegex(OSError,'bind failed'):m.start(self.session)
        self.assertTrue(a.f['closed']);self.assertNotIn(111,m.sink.f['activeScreenTypes'])
        self.assertNotIn(111,m.engine.f['screenOwners']);self.assertFalse(m.monitors)
        m.hook=None;b=m.start(self.session);m.configure(b);m.event(b,'onFrame',b'resumed')
        self.assertEqual(m.sink.f['videoDecoders'][111].f['frames'],[b'resumed'])
    def test_cross_session_handoff_only_closes_secondary_stream(self):
        m=self.m;a=m.start(self.session);m.configure(a)
        primary=Obj(STREAM);audio=Obj('audio');main_key=Obj(KEY,session=self.session,type=110,audioType=0)
        audio_key=Obj(KEY,session=self.session,type=96,audioType='music')
        m.engine.f['streams'].update({main_key:primary,audio_key:audio});other=Obj('session')
        m.start(other)
        self.assertTrue(a.f['closed']);self.assertNotIn(a,m.engine.f['streams'].values())
        self.assertIs(m.engine.f['streams'][main_key],primary);self.assertIs(m.engine.f['streams'][audio_key],audio)
        self.assertFalse(primary.f.get('closed',False));self.assertFalse(audio.f.get('closed',False))
        self.assertFalse(self.session.f.get('closed',False))
    def test_teardown_is_serialized_until_setup_has_published(self):
        m=self.m;entered=threading.Event();release=threading.Event();done=threading.Event();errors=[]
        def hook(cls,name,args):
            if cls==STREAM and name=='listen':entered.set();release.wait(2)
        m.hook=hook
        def run(action):
            try:action()
            except BaseException as e:errors.append(e)
        t=threading.Thread(target=run,args=(lambda:m.start(self.session),));t.start();self.assertTrue(entered.wait(2))
        u=threading.Thread(target=run,args=(lambda:(m.stop(self.session),done.set()),));u.start()
        self.assertFalse(done.wait(.05));release.set();t.join(2);u.join(2)
        self.assertFalse(errors);self.assertTrue(done.is_set());self.assertNotIn(111,m.sink.f['activeScreenTypes']);self.assertFalse(m.monitors)

if __name__=='__main__':unittest.main()
