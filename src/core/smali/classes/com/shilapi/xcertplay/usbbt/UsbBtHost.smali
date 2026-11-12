.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtHost;
.super Ljava/lang/Object;
.source "UsbBtHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Companion;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtHost$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBtHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBtHost.kt\ncom/shilapi/xcertplay/usbbt/UsbBtHost\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,511:1\n1869#2,2:512\n1869#2,2:515\n1#3:514\n*S KotlinDebug\n*F\n+ 1 UsbBtHost.kt\ncom/shilapi/xcertplay/usbbt/UsbBtHost\n*L\n128#1:512,2\n484#1:515,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u0000 \u008c\u00012\u00020\u0001:\u000e\u0086\u0001\u0087\u0001\u0088\u0001\u0089\u0001\u008a\u0001\u008b\u0001\u008c\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0014\u0008\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010B\u001a\u00020\u0018J\u0006\u0010C\u001a\u00020\u0018J\u000e\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u000201J4\u0010M\u001a\u00020\u00182\u0006\u0010J\u001a\u00020\r2\u0006\u0010N\u001a\u00020\r2\u0006\u0010O\u001a\u00020\u000e2\u0014\u0008\u0002\u0010P\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00180\u0017J\u0008\u0010Q\u001a\u0004\u0018\u00010RJ\u000e\u0010Z\u001a\u00020E2\u0006\u0010J\u001a\u00020\rJ\u000e\u0010[\u001a\u00020E2\u0006\u0010J\u001a\u00020\rJ\u000c\u0010\\\u001a\u0008\u0012\u0004\u0012\u0002010\u001eJ\u000e\u0010a\u001a\u00020\u00182\u0006\u0010b\u001a\u00020cJ\u0006\u0010d\u001a\u00020\u0018J\u000e\u0010e\u001a\u00020\u00182\u0006\u0010f\u001a\u00020gJ\u000e\u0010h\u001a\u00020\u00182\u0006\u0010i\u001a\u00020(J\u0008\u0010j\u001a\u00020\u0018H\u0002J\u0018\u0010k\u001a\u00020\u00182\u0006\u0010l\u001a\u00020\r2\u0006\u0010m\u001a\u00020\rH\u0002J\u0008\u0010n\u001a\u00020\u0018H\u0002J\u0010\u0010o\u001a\u00020\u00182\u0006\u0010p\u001a\u00020qH\u0002J\u0010\u0010r\u001a\u00020\u00182\u0006\u0010b\u001a\u00020cH\u0002J\u0010\u0010s\u001a\u00020\u00182\u0006\u0010t\u001a\u00020uH\u0002J\u0010\u0010v\u001a\u00020\u00182\u0006\u0010t\u001a\u00020wH\u0002J\u0010\u0010x\u001a\u00020\u00182\u0006\u0010t\u001a\u00020yH\u0002J$\u0010z\u001a\u00020\u00182\u0006\u0010J\u001a\u00020\r2\u0012\u0010{\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020;0\u0017H\u0002J$\u0010|\u001a\u00020\u00182\u0006\u0010F\u001a\u0002012\u0012\u0010{\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020;0\u0017H\u0002J\u0010\u0010}\u001a\u00020\u00182\u0006\u0010i\u001a\u00020(H\u0002J\u0010\u0010~\u001a\u00020\u00182\u0006\u0010\u007f\u001a\u00020\rH\u0002J\t\u0010\u0080\u0001\u001a\u00020\u0018H\u0002J\u001a\u0010\u0081\u0001\u001a\u00020\u00182\u0006\u0010J\u001a\u00020\r2\u0007\u0010\u0082\u0001\u001a\u00020(H\u0002J\t\u0010\u0083\u0001\u001a\u00020\u0018H\u0002J\u0012\u0010\u0084\u0001\u001a\u00020\u00182\u0007\u0010\u0085\u0001\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R(\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010+\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020(0,0\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010-\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0.j\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r`/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u00100\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u0002010.j\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u000201`/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u00104\u001a\u0012\u0012\u0004\u0012\u00020\r05j\u0008\u0012\u0004\u0012\u00020\r`6X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u00107\u001a\u0012\u0012\u0004\u0012\u00020\r05j\u0008\u0012\u0004\u0012\u00020\r`6X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u00108\u001a\u0012\u0012\u0004\u0012\u00020\r05j\u0008\u0012\u0004\u0012\u00020\r`6X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u00109\u001a\u001e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020;0:j\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020;`<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010=\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020?X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020AX\u0082\u0004\u00a2\u0006\u0002\n\u0000R7\u0010G\u001a\u001f\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008H\u0012\u0008\u0008I\u0012\u0004\u0008\u0008(J\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010\u001a\"\u0004\u0008L\u0010\u001cR\u001e\u0010S\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010UR$\u0010V\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\r@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010Y\u001a\u0004\u0008W\u0010XR\u0011\u0010]\u001a\u00020E8F\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010^R\u0011\u0010_\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010U\u00a8\u0006\u008d\u0001"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost;",
        "",
        "identity",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;",
        "linkKeys",
        "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;",
        "transport",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;",
        "clock",
        "Lkotlin/Function0;",
        "",
        "extraServices",
        "",
        "",
        "Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "<init>",
        "(Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V",
        "value",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
        "status",
        "getStatus",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
        "listener",
        "Lkotlin/Function1;",
        "",
        "getListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "steps",
        "",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;",
        "stepIndex",
        "stepSentAt",
        "info",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;",
        "commandCredits",
        "lastCommandAt",
        "commandQueue",
        "Lkotlin/collections/ArrayDeque;",
        "",
        "aclCredits",
        "aclMaxData",
        "aclQueue",
        "Lkotlin/Pair;",
        "aclOutstanding",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "connections",
        "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
        "paging",
        "pagingSince",
        "outgoing",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "outgoingReady",
        "securing",
        "peers",
        "Ljava/util/LinkedHashMap;",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;",
        "Lkotlin/collections/LinkedHashMap;",
        "lastPeer",
        "reassembler",
        "Lcom/shilapi/xcertplay/usbbt/L2capReassembler;",
        "l2cap",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer;",
        "start",
        "stop",
        "connectTo",
        "",
        "addr",
        "outgoingLinkReady",
        "Lkotlin/ParameterName;",
        "name",
        "handle",
        "getOutgoingLinkReady",
        "setOutgoingLinkReady",
        "openL2cap",
        "psm",
        "service",
        "onFailed",
        "currentLink",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;",
        "disconnections",
        "getDisconnections",
        "()I",
        "lastDisconnectReason",
        "getLastDisconnectReason",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "openIap2OnLink",
        "dropLink",
        "pairedAddresses",
        "isPaging",
        "()Z",
        "connectedPeers",
        "getConnectedPeers",
        "fail",
        "reason",
        "",
        "tick",
        "onEvent",
        "event",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent;",
        "onAclPacket",
        "packet",
        "sendStep",
        "onStepResult",
        "opcode",
        "hciStatus",
        "nextStep",
        "absorb",
        "cc",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;",
        "failWith",
        "onConnectionRequest",
        "e",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;",
        "onConnectionComplete",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;",
        "onDisconnectionComplete",
        "Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;",
        "updatePeer",
        "change",
        "setPeer",
        "enqueueCommand",
        "creditCommands",
        "n",
        "flushCommands",
        "sendL2capFrame",
        "frame",
        "flushAcl",
        "publish",
        "next",
        "Transport",
        "Phase",
        "Pairing",
        "PeerStatus",
        "Status",
        "LinkInfo",
        "Companion",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AUTH_GENERAL_BONDING:I = 0x4

.field public static final COMMAND_TIMEOUT_MS:J = 0x7d0L

.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Companion;

.field public static final PAGE_TIMEOUT_MS:J = 0x3a98L

.field public static final STEP_TIMEOUT_MS:J = 0xbb8L


# instance fields
.field private aclCredits:I

.field private aclMaxData:I

.field private final aclOutstanding:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final aclQueue:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private final clock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private commandCredits:I

.field private final commandQueue:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private final connections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
            ">;"
        }
    .end annotation
.end field

.field private volatile disconnections:I

.field private final identity:Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;

.field private info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

.field private final l2cap:Lcom/shilapi/xcertplay/usbbt/L2capLayer;

.field private lastCommandAt:J

.field private volatile lastDisconnectReason:Ljava/lang/Integer;

.field private lastPeer:Lcom/shilapi/xcertplay/usbbt/BdAddr;

.field private final linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

.field private listener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final outgoing:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile outgoingLinkReady:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final outgoingReady:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private paging:Lcom/shilapi/xcertplay/usbbt/BdAddr;

.field private pagingSince:J

.field private final peers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final reassembler:Lcom/shilapi/xcertplay/usbbt/L2capReassembler;

.field private final securing:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

.field private stepIndex:I

.field private stepSentAt:J

.field private final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;",
            ">;"
        }
    .end annotation
.end field

.field private final transport:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;


# direct methods
.method public static synthetic $r8$lambda$-IsKaazaA1gp4RARkASdObyJ81A(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$13(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6UYFzDnirjq9Gs0ZxKWUjDKLRNA(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$25$lambda$24(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9MOqklI1WQXgIDz9iHlF_odRouI(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onConnectionComplete$lambda$28(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AGwFtVDDq_1otdaYEW8LqSrmU2I(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$23$lambda$21(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BdyJNMwOR2X-cTLQ62WvtKJKRfs(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$9$lambda$8(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FtJJxXU1d4w2rplLlzyQpoF1JFs(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onDisconnectionComplete$lambda$30(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L9ANN6ctrU8tm7Imru2grKaGnD4(Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$12(Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M9WOixFTVKbEy912VVdjCrZDhkM(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->tick$lambda$7$lambda$6(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NOJV50g2RkW0nrCNhSLEUuNhoEQ(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$15(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O2p-Oji8R4mxTAv0-Ud_mttEqDw(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onConnectionComplete$lambda$27(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YYfD5W56Ta9WcFdrZjbZ4oaddd8(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$16(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z6bnmNx4qVaMeev1P9gd20Kp6hk(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$11(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ah6fGgdouexO-AAY4qtp_NIGXdE(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$23$lambda$22(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bjg9iJLzOXXfCMsJPrBb-x3RRjs(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$18(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eBnhzABj-pcs641LwApXz3WBc8E(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onConnectionRequest$lambda$26(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$flM30Rwo3nWChhac5_2TPncxK58(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$14(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gs3_DOJXySuxDFe44XsVFt9dx80(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$20(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hy1sYtEYmcssL8PXsSUeMGVw76w(I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->openL2cap$lambda$4(I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kSOZ6zRl-Hj0zL_Rjd_o4iVHTlc(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I[B)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->l2cap$lambda$0(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I[B)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$m4neM_1ZqpkiBK--_4x6dkDHS2g(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connectTo$lambda$3(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o5dJrNom6Tug4P9mKsPyjUcTUSU(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$17(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rndNvqzUhm7UWGxzsXQ-INu15w8(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onEvent$lambda$19(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wubv_pA2NfuajvlS-myKXaB8kps(Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;Lkotlin/Pair;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onDisconnectionComplete$lambda$29(Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;Lkotlin/Pair;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->Companion:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;",
            "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/shilapi/xcertplay/usbbt/L2capService;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "identity"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "linkKeys"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "transport"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "clock"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "extraServices"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->identity:Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;

    .line 13
    iput-object v2, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

    .line 14
    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->transport:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;

    .line 15
    iput-object v4, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->clock:Lkotlin/jvm/functions/Function0;

    .line 69
    new-instance v7, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x7d

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    .line 72
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->initSequence()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->steps:Ljava/util/List;

    .line 75
    new-instance v6, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    const/16 v12, 0x1f

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    const/4 v2, 0x1

    .line 77
    iput v2, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandCredits:I

    .line 79
    new-instance v3, Lkotlin/collections/ArrayDeque;

    invoke-direct {v3}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandQueue:Lkotlin/collections/ArrayDeque;

    .line 81
    iput v2, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclCredits:I

    const/16 v3, 0x1b

    .line 82
    iput v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclMaxData:I

    .line 83
    new-instance v3, Lkotlin/collections/ArrayDeque;

    invoke-direct {v3}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclQueue:Lkotlin/collections/ArrayDeque;

    .line 84
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclOutstanding:Ljava/util/HashMap;

    .line 86
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    .line 91
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoing:Ljava/util/HashSet;

    .line 92
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoingReady:Ljava/util/HashSet;

    .line 94
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->securing:Ljava/util/HashSet;

    .line 95
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->peers:Ljava/util/LinkedHashMap;

    .line 98
    new-instance v3, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v6}, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->reassembler:Lcom/shilapi/xcertplay/usbbt/L2capReassembler;

    .line 99
    new-instance v3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/shilapi/xcertplay/usbbt/SdpL2capService;

    sget-object v6, Lcom/shilapi/xcertplay/usbbt/Sdp;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/Sdp;

    invoke-virtual {v6, v1}, Lcom/shilapi/xcertplay/usbbt/Sdp;->records(Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/shilapi/xcertplay/usbbt/SdpL2capService;-><init>(Ljava/util/List;)V

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 101
    new-instance v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1;

    invoke-direct {v2, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;)V

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;

    .line 109
    new-instance v4, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;)V

    .line 99
    invoke-direct {v3, v1, v2, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;-><init>(Ljava/util/Map;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;Lkotlin/jvm/functions/Function2;)V

    iput-object v3, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->l2cap:Lcom/shilapi/xcertplay/usbbt/L2capLayer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;Lkotlin/jvm/functions/Function0;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 16
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p5

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V

    return-void
.end method

.method private final absorb(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)V
    .locals 10

    .line 383
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getOpcode()I

    move-result v0

    .line 384
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->getREAD_BD_ADDR()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->bdAddr(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getAddress()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object p1

    :cond_0
    move-object v3, p1

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object p1

    goto/16 :goto_0

    .line 385
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->getREAD_LOCAL_VERSION_INFORMATION()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->localVersion(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getVersion()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;

    move-result-object p1

    :cond_2
    move-object v4, p1

    const/16 v8, 0x1d

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object p1

    goto/16 :goto_0

    .line 386
    :cond_3
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->getREAD_LOCAL_SUPPORTED_FEATURES()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->localFeatures(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)[B

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getFeatures()[B

    move-result-object p1

    :cond_4
    move-object v5, p1

    const/16 v8, 0x1b

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object p1

    goto :goto_0

    .line 387
    :cond_5
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->getREAD_BUFFER_SIZE()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->bufferSize(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getBuffer()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    move-result-object p1

    :cond_6
    move-object v6, p1

    const/16 v8, 0x17

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object p1

    goto :goto_0

    .line 388
    :cond_7
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->getREAD_INQUIRY_RESPONSE_TX_POWER()I

    move-result v1

    if-ne v0, v1, :cond_9

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters;->inquiryTxPower(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getInquiryTxPower()Ljava/lang/Integer;

    move-result-object p1

    :cond_8
    move-object v7, p1

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object p1

    .line 383
    :goto_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    :cond_9
    return-void
.end method

.method public static final synthetic access$updatePeer(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->updatePeer(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final connectTo$lambda$3(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v14, 0xeff

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 146
    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private final creditCommands(I)V
    .locals 0

    .line 469
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandCredits:I

    .line 470
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->flushCommands()V

    return-void
.end method

.method private final enqueueCommand([B)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 465
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->flushCommands()V

    return-void
.end method

.method private final failWith(Ljava/lang/String;)V
    .locals 12

    .line 394
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->FAILED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->STOPPED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->FAILED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    iget-object v5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    const/16 v10, 0x6a

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v2 .. v11}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final flushAcl()V
    .locals 5

    .line 489
    :goto_0
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclCredits:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclQueue:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 491
    iget v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclCredits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclCredits:I

    .line 492
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclOutstanding:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclOutstanding:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->transport:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;

    invoke-interface {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;->sendAcl([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final flushCommands()V
    .locals 2

    .line 474
    :goto_0
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandCredits:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandQueue:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandCredits:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandCredits:I

    .line 476
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->lastCommandAt:J

    .line 477
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->transport:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;->sendCommand([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final l2cap$lambda$0(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I[B)Lkotlin/Unit;
    .locals 1

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->sendL2capFrame(I[B)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final nextStep()V
    .locals 12

    .line 371
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->stepIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->stepIndex:I

    .line 372
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 373
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getBuffer()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;->getAclPackets()I

    move-result v0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclCredits:I

    .line 374
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getBuffer()Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;

    move-result-object v0

    const/16 v1, 0x1b

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;->getAclDataLength()I

    move-result v0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclMaxData:I

    .line 375
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->DISCOVERABLE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    iget-object v5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    const/16 v10, 0x72

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    return-void

    .line 377
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->steps:Ljava/util/List;

    iget v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->stepIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    const/16 v9, 0x73

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    .line 378
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->sendStep()V

    return-void
.end method

.method private final onConnectionComplete(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;)V
    .locals 4

    .line 413
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getLinkType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->paging:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 416
    iput-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->paging:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    const-wide/16 v1, 0x0

    .line 417
    iput-wide v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->pagingSince:J

    .line 419
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getStatus()I

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v0

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda17;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;)V

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoing:Ljava/util/HashSet;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->authenticationRequested(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclOutstanding:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v0

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda18;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;)V

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    .line 430
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->remoteNameRequest(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    return-void
.end method

.method private static final onConnectionComplete$lambda$27(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v14, 0xefb

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onConnectionComplete$lambda$28(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;->getEncrypted()Z

    move-result v7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    const/16 v14, 0x1db

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private final onConnectionRequest(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->DISCOVERABLE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    const/16 v2, 0xd

    if-eq v0, v1, :cond_0

    .line 402
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->rejectConnection(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    return-void

    .line 404
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;->getLinkType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 406
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->rejectConnection(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    return-void

    .line 408
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->acceptConnection(Lcom/shilapi/xcertplay/usbbt/BdAddr;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    .line 409
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object p1

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda16;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final onConnectionRequest$lambda$26(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final onDisconnectionComplete(Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;)V
    .locals 4

    .line 434
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoing:Ljava/util/HashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 437
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoingReady:Ljava/util/HashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 438
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->securing:Ljava/util/HashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getReason()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->lastDisconnectReason:Ljava/lang/Integer;

    .line 440
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->disconnections:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->disconnections:I

    .line 441
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->l2cap:Lcom/shilapi/xcertplay/usbbt/L2capLayer;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->onDisconnected(I)V

    .line 442
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->reassembler:Lcom/shilapi/xcertplay/usbbt/L2capReassembler;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->forget(I)V

    .line 444
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclCredits:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclOutstanding:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclCredits:I

    .line 445
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclQueue:Lkotlin/collections/ArrayDeque;

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda11;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 446
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda15;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    .line 447
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->flushAcl()V

    return-void
.end method

.method private static final onDisconnectionComplete$lambda$29(Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;Lkotlin/Pair;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;->getHandle()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final onDisconnectionComplete$lambda$30(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v14, 0xfdb

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 446
    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$11(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/16 v14, 0xffd

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$12(Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->KEY_REUSED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    invoke-virtual/range {p0 .. p0}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v14, 0xe77

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$13(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->PAIRING:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    const/16 v14, 0xef7

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$14(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->FAILED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v14, 0xef7

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$15(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->PAIRING:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    const/16 v14, 0xee7

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$16(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->getIoCapability()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v14, 0xfbf

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$17(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->CONFIRMING:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;->getNumericValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v14, 0xfe7

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$18(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->CONFIRMING:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyNotification;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyNotification;->getPasskey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v14, 0xfe7

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$19(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->getStatus()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->PAIRED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    const/16 v14, 0xef7

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0

    .line 299
    :cond_0
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->FAILED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v14, 0xef7

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$20(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->PAIRED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->getKeyType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v14, 0xe77

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$23$lambda$21(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 15

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPairing()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->FAILED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPairing()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->NONE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->PAIRED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    const/16 v13, 0xff7

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v14}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$23$lambda$22(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->FAILED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v14, 0xef7

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$25$lambda$24(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getEnabled()Z

    move-result v7

    const/16 v14, 0xfdf

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private static final onEvent$lambda$9$lambda$8(Lcom/shilapi/xcertplay/usbbt/HciEvent;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v14, 0xefb

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private final onStepResult(II)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->steps:Ljava/util/List;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->stepIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;

    .line 363
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->getOpcode()I

    move-result v1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 364
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->getRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 365
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s:0x%02x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->failWith(Ljava/lang/String;)V

    return-void

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->nextStep()V

    return-void
.end method

.method public static synthetic openL2cap$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;IILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 158
    new-instance p4, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda20;

    invoke-direct {p4}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda20;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->openL2cap(IILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final openL2cap$lambda$4(I)Lkotlin/Unit;
    .locals 0

    .line 158
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    .locals 1

    .line 498
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    .line 499
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->listener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final declared-synchronized sendL2capFrame(I[B)V
    .locals 3

    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 484
    :cond_0
    :try_start_1
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciAcl;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciAcl;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclMaxData:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/shilapi/xcertplay/usbbt/HciAcl;->fragment(I[BI)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 515
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 484
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclQueue:Lkotlin/collections/ArrayDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 485
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->flushAcl()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final sendStep()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->stepSentAt:J

    .line 358
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->steps:Ljava/util/List;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->stepIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->getBuild()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    return-void
.end method

.method private final setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 455
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->peers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    const/16 v14, 0xffe

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    move-object/from16 v3, p2

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    .line 456
    iget-object v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->peers:Ljava/util/LinkedHashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iput-object v2, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->lastPeer:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    .line 458
    iget-object v2, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    const/16 v10, 0x5f

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    return-void
.end method

.method private static final tick$lambda$7$lambda$6(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;
    .locals 16

    const-string v0, "it"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v14, 0xefb

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    return-object v0
.end method

.method private final updatePeer(ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;",
            ">;)V"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized connectTo(Lcom/shilapi/xcertplay/usbbt/BdAddr;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->DISCOVERABLE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->paging:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;->get(Lcom/shilapi/xcertplay/usbbt/BdAddr;)Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return v2

    .line 143
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->paging:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    .line 144
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->pagingSince:J

    .line 145
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->createConnection(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    .line 146
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda19;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 141
    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized currentLink()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;
    .locals 6

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-entries>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "component1(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "component2(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    .line 166
    new-instance v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->peers:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getEncrypted()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-direct {v2, v1, v0, v4}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$LinkInfo;-><init>(ILcom/shilapi/xcertplay/usbbt/BdAddr;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 167
    :goto_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized dropLink(I)Z
    .locals 4

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 198
    :cond_0
    :try_start_1
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->disconnect$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;IIILjava/lang/Object;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized fail(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->failWith(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getConnectedPeers()I
    .locals 1

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getDisconnections()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->disconnections:I

    return v0
.end method

.method public final getLastDisconnectReason()Ljava/lang/Integer;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->lastDisconnectReason:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->listener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOutgoingLinkReady()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoingLinkReady:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getStatus()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    return-object v0
.end method

.method public final declared-synchronized isPaging()Z
    .locals 1

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->paging:Lcom/shilapi/xcertplay/usbbt/BdAddr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onAclPacket([B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciAcl;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciAcl;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl;->parse([B)Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 349
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 350
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->reassembler:Lcom/shilapi/xcertplay/usbbt/L2capReassembler;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/L2capReassembler;->accept(Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    .line 351
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->l2cap:Lcom/shilapi/xcertplay/usbbt/L2capLayer;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/HciAcl$Packet;->getHandle()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->onFrame(I[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onEvent(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    const-string v2, "event"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    if-eqz v2, :cond_0

    .line 246
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->absorb(Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;)V

    .line 247
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getNumCommandPackets()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->creditCommands(I)V

    .line 248
    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->STARTING:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-ne v2, v3, :cond_1e

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getOpcode()I

    move-result v2

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandComplete;->getStatus()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onStepResult(II)V

    goto/16 :goto_4

    .line 250
    :cond_0
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 252
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->getOpcode()I

    move-result v2

    sget-object v4, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->getCREATE_CONNECTION()I

    move-result v4

    if-ne v2, v4, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->getStatus()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->paging:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    if-eqz v2, :cond_1

    .line 253
    iput-object v3, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->paging:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    const-wide/16 v3, 0x0

    .line 254
    iput-wide v3, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->pagingSince:J

    .line 255
    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda21;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda21;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    .line 257
    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->getNumCommandPackets()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->creditCommands(I)V

    .line 258
    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->STARTING:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-ne v2, v3, :cond_1e

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->getStatus()I

    move-result v2

    if-eqz v2, :cond_1e

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->getOpcode()I

    move-result v2

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$CommandStatus;->getStatus()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onStepResult(II)V

    goto/16 :goto_4

    .line 260
    :cond_2
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onConnectionRequest(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionRequest;)V

    goto/16 :goto_4

    .line 261
    :cond_3
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onConnectionComplete(Lcom/shilapi/xcertplay/usbbt/HciEvent$ConnectionComplete;)V

    goto/16 :goto_4

    .line 262
    :cond_4
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->onDisconnectionComplete(Lcom/shilapi/xcertplay/usbbt/HciEvent$DisconnectionComplete;)V

    goto/16 :goto_4

    .line 263
    :cond_5
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;

    if-eqz v2, :cond_6

    .line 264
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;->getStatus()I

    move-result v2

    if-nez v2, :cond_1e

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$RemoteNameRequestComplete;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v2

    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_4

    .line 265
    :cond_6
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;

    if-eqz v2, :cond_8

    .line 266
    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

    move-object v3, v0

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;->get(Lcom/shilapi/xcertplay/usbbt/BdAddr;)Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 268
    sget-object v3, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    move-object v4, v0

    check-cast v4, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v4

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;->getKey()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->linkKeyRequestReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;[B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    .line 269
    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v0

    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;)V

    invoke-direct {v1, v0, v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_4

    .line 271
    :cond_7
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    move-object v3, v0

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->linkKeyRequestNegativeReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    .line 272
    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v0

    new-instance v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_4

    .line 275
    :cond_8
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$PinCodeRequest;

    if-eqz v2, :cond_9

    .line 277
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    move-object v3, v0

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/HciEvent$PinCodeRequest;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$PinCodeRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->pinCodeRequestNegativeReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    .line 278
    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$PinCodeRequest;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$PinCodeRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v0

    new-instance v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_4

    .line 280
    :cond_9
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityRequest;

    if-eqz v2, :cond_b

    .line 281
    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->identity:Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->getIoCapability()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    const/4 v2, 0x4

    const/4 v6, 0x4

    goto :goto_0

    :cond_a
    const/4 v2, 0x5

    const/4 v6, 0x5

    .line 283
    :goto_0
    sget-object v3, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityRequest;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v4

    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->identity:Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->getIoCapability()I

    move-result v5

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->ioCapabilityRequestReply$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;Lcom/shilapi/xcertplay/usbbt/BdAddr;IIZILjava/lang/Object;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    .line 284
    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityRequest;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v0

    new-instance v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_4

    .line 286
    :cond_b
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;

    if-eqz v2, :cond_c

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$IoCapabilityResponse;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v2

    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda9;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_4

    .line 287
    :cond_c
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;

    if-eqz v2, :cond_e

    .line 290
    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->DISCOVERABLE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-ne v2, v3, :cond_d

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    move-object v3, v0

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->userConfirmationReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    goto :goto_1

    .line 291
    :cond_d
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    move-object v3, v0

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->userConfirmationNegativeReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    .line 292
    :goto_1
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserConfirmationRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v2

    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda10;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_4

    .line 294
    :cond_e
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyNotification;

    if-eqz v2, :cond_f

    .line 295
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyNotification;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyNotification;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v2

    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda12;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_4

    .line 296
    :cond_f
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyRequest;

    if-eqz v2, :cond_10

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyRequest;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$UserPasskeyRequest;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->userPasskeyNegativeReply(Lcom/shilapi/xcertplay/usbbt/BdAddr;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    goto/16 :goto_4

    .line 297
    :cond_10
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;

    if-eqz v2, :cond_11

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$SimplePairingComplete;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v2

    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda13;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_4

    .line 301
    :cond_11
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;

    if-eqz v2, :cond_12

    .line 302
    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

    move-object v3, v0

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v3

    new-instance v4, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;

    move-object v5, v0

    check-cast v5, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->getKey()[B

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->getKeyType()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;-><init>([BI)V

    invoke-interface {v2, v3, v4}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;->put(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;)V

    .line 303
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$LinkKeyNotification;->getAddr()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v2

    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda22;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda22;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    .line 304
    iget-object v4, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    iget-object v0, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;->count()I

    move-result v11

    const/16 v12, 0x3f

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v13}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    goto/16 :goto_4

    .line 306
    :cond_12
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    move-object v7, v0

    check-cast v7, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;->getHandle()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    if-eqz v2, :cond_1e

    .line 307
    move-object v7, v0

    check-cast v7, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;->getStatus()I

    move-result v7

    if-nez v7, :cond_14

    .line 308
    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    .line 310
    iget-object v3, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoing:Ljava/util/HashSet;

    move-object v4, v0

    check-cast v4, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;->getHandle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->peers:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getEncrypted()Z

    move-result v2

    if-ne v2, v6, :cond_13

    goto/16 :goto_4

    .line 311
    :cond_13
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;->getHandle()I

    move-result v0

    invoke-virtual {v2, v0, v6}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->setConnectionEncryption(IZ)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    goto/16 :goto_4

    .line 315
    :cond_14
    move-object v6, v0

    check-cast v6, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;->getStatus()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_15

    iget-object v6, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

    invoke-interface {v6, v2}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;->remove(Lcom/shilapi/xcertplay/usbbt/BdAddr;)V

    .line 316
    :cond_15
    new-instance v6, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    invoke-direct {v1, v2, v6}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    .line 317
    iget-object v7, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

    invoke-interface {v2}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;->count()I

    move-result v14

    const/16 v15, 0x3f

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v16}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    .line 319
    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->securing:Ljava/util/HashSet;

    move-object v6, v0

    check-cast v6, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;->getHandle()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$AuthenticationComplete;->getHandle()I

    move-result v0

    invoke-static {v2, v0, v5, v4, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->disconnect$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;IIILjava/lang/Object;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    goto/16 :goto_4

    .line 322
    :cond_16
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    if-eqz v2, :cond_1a

    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    move-object v6, v0

    check-cast v6, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getHandle()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    if-eqz v2, :cond_1e

    .line 323
    move-object v6, v0

    check-cast v6, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getStatus()I

    move-result v6

    if-nez v6, :cond_17

    new-instance v6, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/usbbt/HciEvent;)V

    invoke-direct {v1, v2, v6}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    .line 325
    :cond_17
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getStatus()I

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->securing:Ljava/util/HashSet;

    move-object v6, v0

    check-cast v6, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getHandle()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    move-object v6, v0

    check-cast v6, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getHandle()I

    move-result v6

    invoke-static {v2, v6, v5, v4, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->disconnect$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;IIILjava/lang/Object;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    .line 326
    :cond_18
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getStatus()I

    move-result v2

    if-nez v2, :cond_19

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->securing:Ljava/util/HashSet;

    check-cast v2, Ljava/util/Collection;

    move-object v3, v0

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 328
    :cond_19
    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getStatus()I

    move-result v2

    if-nez v2, :cond_1e

    move-object v2, v0

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoing:Ljava/util/HashSet;

    move-object v3, v0

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoingReady:Ljava/util/HashSet;

    move-object v3, v0

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 329
    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoingLinkReady:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_1e

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$EncryptionChange;->getHandle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 332
    :cond_1a
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$NumberOfCompletedPackets;

    if-eqz v2, :cond_1d

    .line 333
    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$NumberOfCompletedPackets;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$NumberOfCompletedPackets;->getCompleted()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 334
    iget-object v4, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclOutstanding:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3

    :cond_1b
    const/4 v4, 0x0

    .line 335
    :goto_3
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 336
    iget-object v6, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclOutstanding:Ljava/util/HashMap;

    check-cast v6, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget v3, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclCredits:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->aclCredits:I

    goto :goto_2

    .line 339
    :cond_1c
    invoke-direct {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->flushAcl()V

    goto :goto_4

    .line 341
    :cond_1d
    instance-of v2, v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$HardwareError;

    if-eqz v2, :cond_1e

    const-string v2, "hardware-error:0x%02x"

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/HciEvent$HardwareError;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/HciEvent$HardwareError;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->failWith(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_1e
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized openIap2OnLink(I)Z
    .locals 4

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/BdAddr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 181
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->peers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getEncrypted()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 182
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoingReady:Ljava/util/HashSet;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoingLinkReady:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :cond_1
    monitor-exit p0

    return v3

    .line 186
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

    invoke-interface {v2, v0}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;->get(Lcom/shilapi/xcertplay/usbbt/BdAddr;)Lcom/shilapi/xcertplay/usbbt/LinkKeyStore$Entry;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return v1

    .line 187
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->securing:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoing:Ljava/util/HashSet;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoingReady:Ljava/util/HashSet;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->authenticationRequested(I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    :cond_4
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized openL2cap(IILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/shilapi/xcertplay/usbbt/L2capService;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "service"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailed"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->l2cap:Lcom/shilapi/xcertplay/usbbt/L2capLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->connect(IILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final pairedAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/BdAddr;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;->addresses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final setListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->listener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOutgoingLinkReady(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->outgoingLinkReady:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final declared-synchronized start()V
    .locals 12

    monitor-enter p0

    const/4 v0, 0x0

    .line 116
    :try_start_0
    iput v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->stepIndex:I

    .line 117
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;-><init>(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lcom/shilapi/xcertplay/usbbt/HciReturnParameters$LocalVersion;[BLcom/shilapi/xcertplay/usbbt/HciReturnParameters$BufferSize;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->info:Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    const/4 v1, 0x1

    .line 118
    iput v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandCredits:I

    .line 119
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 120
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->STARTING:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->steps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->linkKeys:Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;->count()I

    move-result v9

    const/16 v10, 0x26

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v11}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    .line 121
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->sendStep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 20

    move-object/from16 v1, p0

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v0

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->FAILED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit p0

    return-void

    .line 127
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v0

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->DISCOVERABLE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 128
    iget-object v0, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "<get-keys>(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 512
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 128
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x2

    invoke-static {v5, v2, v4, v6, v3}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->disconnect$default(Lcom/shilapi/xcertplay/usbbt/HciCommands;IIILjava/lang/Object;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->writeScanEnable(I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->enqueueCommand([B)V

    .line 131
    :cond_2
    iget-object v2, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-object v0, v3

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->STOPPED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    iget-object v4, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->lastPeer:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    if-eqz v4, :cond_3

    iget-object v5, v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->peers:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    if-eqz v5, :cond_3

    const/16 v18, 0xffb

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v5 .. v19}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;Lcom/shilapi/xcertplay/usbbt/BdAddr;Ljava/lang/String;ZLcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v0

    :cond_3
    move-object v8, v0

    const/16 v10, 0x5e

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;IILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized tick()V
    .locals 9

    const-string/jumbo v0, "timeout:"

    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 217
    iget-object v3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v0, 0x2

    if-eq v3, v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandCredits:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandQueue:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->lastCommandAt:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x7d0

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 224
    iput v4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandCredits:I

    .line 225
    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->flushCommands()V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->paging:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    if-eqz v0, :cond_4

    .line 229
    iget-wide v3, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->pagingSince:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3a98

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    const/4 v1, 0x0

    .line 230
    iput-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->paging:Lcom/shilapi/xcertplay/usbbt/BdAddr;

    const-wide/16 v1, 0x0

    .line 231
    iput-wide v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->pagingSince:J

    .line 233
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$$ExternalSyntheticLambda14;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->setPeer(Lcom/shilapi/xcertplay/usbbt/BdAddr;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-wide v5, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->stepSentAt:J

    sub-long/2addr v1, v5

    const-wide/16 v5, 0xbb8

    cmp-long v3, v1, v5

    if-lez v3, :cond_4

    .line 219
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->steps:Ljava/util/List;

    iget v2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->stepIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;

    .line 220
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->getRequired()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$InitStep;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->failWith(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->commandCredits:I

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->nextStep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
