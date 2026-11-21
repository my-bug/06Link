"""Small, fail-closed executor for VideoStats' production Smali regression.

This executes instructions, fields and explicit monitors from the assembled DEX
disassembly. It is not an Android runtime or a handwritten VideoStats model.
Only external clocks, logging, touch sampling and callbacks are substituted.
"""
import json
import re
import struct
import threading


class Unsupported(BaseException):
    pass


class Object:
    def __init__(self, kind, **fields):
        self.kind = kind
        self.fields = fields
        self.lock = threading.RLock()


class Method:
    def __init__(self, declaration, body):
        self.declaration = declaration
        self.locals = int(re.search(r'\.locals (\d+)', body)[1])
        self.code, self.labels, catches = [], {}, []
        for raw in body.splitlines():
            line = raw.strip()
            if not line.startswith('const-string'):
                line = line.split('#', 1)[0].rstrip()
            if not line or line.startswith('#'):
                continue
            if line.startswith(':'):
                self.labels[line] = len(self.code)
            elif line.startswith('.catchall'):
                catches.append(re.fullmatch(r'\.catchall \{(\S+) \.\. (\S+)\} (\S+)', line).groups())
            elif not line.startswith('.'):
                self.code.append(line)
        self.catches = [(self.labels[a], self.labels[b], self.labels[c]) for a, b, c in catches]


class Runtime:
    OWNER = 'Lcom/shilapi/xcertplay/media/VideoStats;'

    def __init__(self, source):
        self.methods = {}
        names = {'takeWindow', 'logIfDue', 'onReceived', 'onRendered', 'onRecovery'}
        for declaration, body in re.findall(r'^\.method (.*?)\n(.*?)^\.end method', source, re.M | re.S):
            signature = declaration.split()[-1]
            if signature.split('(')[0] in names:
                self.methods[signature] = Method(declaration, body)
        self.log = lambda tag, text: 0
        self.format = lambda pattern, values: pattern % tuple(values)
        self.touch = Object('touch', maximum=0, pending=0)

    def stats(self, clock, callback=None, label=''):
        return Object(self.OWNER, nanoTime=clock, onWindow=callback, label=label,
                      windowStartNs=clock(), received=0, rendered=0, recoveries=0,
                      bytes=0, lastArrivalNs=0, maxArrivalGapNs=0,
                      maxTouchLatencyNs=0, touchLatencySumNs=0, touchSamples=0)

    @staticmethod
    def double(value):
        return value if isinstance(value, float) else struct.unpack('>d', struct.pack('>Q', value & ((1 << 64) - 1)))[0]

    @staticmethod
    def divide(a, b):
        return (abs(a) // abs(b)) * (-1 if (a < 0) != (b < 0) else 1)

    def invoke(self, target, values):
        owner, signature = target.split('->')
        name = signature.split('(')[0]
        if owner == self.OWNER:
            return self.run(values[0], signature, *values[1:])
        if owner in ('Lkotlin/jvm/functions/Function0;', 'Lkotlin/jvm/functions/Function1;'):
            return values[0](*values[1:])
        if owner in ('Ljava/lang/Number;', 'Ljava/lang/Double;', 'Ljava/lang/Integer;', 'Ljava/lang/Long;'):
            if name in ('longValue', 'valueOf'):
                return values[0]
        if owner == 'Ljava/lang/Math;' and name == 'max':
            return max(values)
        if owner == 'Ljava/lang/CharSequence;' and name == 'length':
            return len(values[0])
        if owner == 'Lkotlin/jvm/internal/Intrinsics;' and name == 'checkNotNullParameter':
            if values[0] is None:
                raise ValueError(values[1])
            return None
        if owner == 'Lcom/shilapi/xcertplay/media/TouchLatencyProbe;':
            if name == 'getMaxSendNs':
                return self.touch.fields['maximum']
            if name == 'setMaxSendNs':
                self.touch.fields['maximum'] = values[1]
                return None
            if name == 'onFrame':
                before = self.touch.fields['pending']
                self.touch.fields['pending'] = 0
                return values[1] - before if before else -1
        if owner == 'Ljava/lang/StringBuilder;':
            instance = values[0]
            if name == '<init>':
                instance.fields['text'] = values[1]
            elif name == 'append':
                instance.fields['text'] += str(values[1])
            elif name == 'toString':
                return instance.fields['text']
            else:
                raise Unsupported(target)
            return instance
        if owner == 'Ljava/lang/String;' and name == 'format':
            return self.format(*values)
        if owner == 'Landroid/util/Log;' and name == 'i':
            return self.log(*values)
        if owner == 'Lcom/shilapi/xcertplay/media/VideoWindow;' and name == '<init>':
            values[0].fields.update(rx=values[1], shown=values[2], recoveries=values[3])
            return None
        raise Unsupported(target)

    def run(self, receiver, signature, *arguments):
        method = self.methods[signature]
        regs = {method.locals: receiver}
        for index, value in enumerate(arguments, method.locals + 1):
            regs[index] = value

        def register(name):
            return int(name[1:]) + (method.locals if name.startswith('p') else 0)

        def get(name):
            return regs[register(name)]

        def put(name, value):
            regs[register(name)] = value

        pc, result, failure = 0, None, None
        while pc < len(method.code):
            at = pc
            line = method.code[pc]
            pc += 1
            op, _, tail = line.partition(' ')
            args = tail.split(', ')
            try:
                if op.startswith('const-string'):
                    dest, literal = tail.split(', ', 1)
                    put(dest, json.loads(literal))
                elif op.startswith('const'):
                    put(args[0], int(args[1].removesuffix('L'), 0))
                elif op.startswith('move-result'):
                    put(args[0], result)
                elif op == 'move-exception':
                    put(args[0], failure)
                elif op.startswith('move'):
                    put(args[0], get(args[1]))
                elif op in ('monitor-enter', 'monitor-exit'):
                    (get(args[0]).lock.acquire if op == 'monitor-enter' else get(args[0]).lock.release)()
                elif op.startswith('iget'):
                    put(args[0], get(args[1]).fields[args[2].split('->')[1].split(':')[0]])
                elif op.startswith('iput'):
                    get(args[1]).fields[args[2].split('->')[1].split(':')[0]] = get(args[0])
                elif op == 'sget-object' and 'TouchLatencyProbe;->INSTANCE:' in args[1]:
                    put(args[0], self.touch)
                elif op == 'new-array':
                    put(args[0], [0 if args[2] == '[J' else None] * get(args[1]))
                elif op == 'new-instance':
                    put(args[0], Object(args[1]))
                elif op.startswith('aput'):
                    get(args[1])[get(args[2])] = get(args[0])
                elif op.startswith('aget'):
                    put(args[0], get(args[1])[get(args[2])])
                elif op == 'check-cast':
                    pass
                elif op in ('int-to-long', 'long-to-int', 'double-to-long'):
                    put(args[0], int(get(args[1])))
                elif op == 'long-to-double':
                    put(args[0], float(get(args[1])))
                elif op == 'cmp-long':
                    a, b = get(args[1]), get(args[2])
                    put(args[0], (a > b) - (a < b))
                elif op.startswith(('add-', 'sub-', 'mul-', 'div-')):
                    if op.endswith('/2addr'):
                        a, b = get(args[0]), get(args[1])
                    elif '/lit' in op:
                        a, b = get(args[1]), int(args[2], 0)
                    else:
                        a, b = get(args[1]), get(args[2])
                    if '-double' in op:
                        a, b = self.double(a), self.double(b)
                    action = op.split('-')[0]
                    value = {'add': lambda: a + b, 'sub': lambda: a - b,
                             'mul': lambda: a * b,
                             'div': lambda: a / b if '-double' in op else self.divide(a, b)}[action]()
                    put(args[0], value)
                elif op.startswith('if-'):
                    a = get(args[0])
                    b = 0 if op.endswith('z') else get(args[1])
                    if a is None:
                        a = 0
                    condition = op[3:].removesuffix('z')
                    matched = {'eq': lambda: a == b, 'ne': lambda: a != b,
                               'lt': lambda: a < b, 'le': lambda: a <= b,
                               'ge': lambda: a >= b, 'gt': lambda: a > b}[condition]()
                    if matched:
                        pc = method.labels[args[-1]]
                elif op.startswith('goto'):
                    pc = method.labels[tail]
                elif op.startswith('invoke-'):
                    parameters, target = tail.split('}, ')
                    parameters = parameters[1:]
                    if '..' in parameters:
                        a, b = parameters.split(' .. ')
                        numbers = list(range(register(a), register(b) + 1))
                    else:
                        numbers = [register(x) for x in parameters.split(', ') if x]
                    types = re.findall(r'\[*L[^;]+;|\[*[ZBCSIJFD]', target.split('(')[1].split(')')[0])
                    if not op.startswith('invoke-static'):
                        types.insert(0, 'Lreceiver;')
                    values, offset = [], 0
                    for typ in types:
                        values.append(regs[numbers[offset]])
                        offset += 2 if typ in ('J', 'D') else 1
                    if offset != len(numbers):
                        raise Unsupported('Invoke argument widths: ' + line)
                    result = self.invoke(target, values)
                elif op == 'return-void':
                    return None
                elif op.startswith('return'):
                    value = get(args[0])
                    return None if op == 'return-object' and value == 0 else value
                elif op == 'throw':
                    raise get(args[0])
                else:
                    raise Unsupported(line)
            except Exception as error:
                handler = next((dest for begin, end, dest in method.catches if begin <= at < end), None)
                if handler is None:
                    raise
                failure, pc = error, handler
        raise Unsupported('Method fell through: ' + signature)
