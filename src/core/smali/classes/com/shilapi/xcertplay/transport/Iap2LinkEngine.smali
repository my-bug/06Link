.class public final Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;
.super Ljava/lang/Object;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;,
        Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;,
        Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;,
        Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;,
        Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;,
        Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;,
        Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;,
        Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2LinkEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2LinkEngine.kt\ncom/shilapi/xcertplay/transport/Iap2LinkEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,715:1\n1#2:716\n1761#3,3:717\n1761#3,3:722\n1011#3,2:725\n2423#3,14:727\n774#3:741\n865#3,2:742\n1563#3:744\n1634#3,3:745\n12647#4,2:720\n*S KotlinDebug\n*F\n+ 1 Iap2LinkEngine.kt\ncom/shilapi/xcertplay/transport/Iap2LinkEngine\n*L\n355#1:717,3\n408#1:722,3\n428#1:725,2\n477#1:727,14\n478#1:741\n478#1:742,2\n498#1:744\n498#1:745,3\n390#1:720,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u001a\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u0000 a2\u00020\u0001:\u0008Z[\\]^_`aB\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0013\u001a\u00020\u000bJ\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010)\u001a\u00020*J\u0008\u0010+\u001a\u0004\u0018\u00010\u001cJ\r\u0010,\u001a\u0004\u0018\u00010$\u00a2\u0006\u0002\u0010-J\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020$J\u0016\u00102\u001a\u00020/2\u0006\u00103\u001a\u00020*2\u0006\u00101\u001a\u00020$J\u0006\u00104\u001a\u00020/J\u000e\u00105\u001a\u00020/2\u0006\u00101\u001a\u00020$J\u0016\u00106\u001a\u00020/2\u0006\u00103\u001a\u00020*2\u0006\u00101\u001a\u00020$J\u0010\u00107\u001a\u00020\u000b2\u0006\u00101\u001a\u00020$H\u0002J\u0010\u00108\u001a\u00020/2\u0006\u00101\u001a\u00020$H\u0002J\"\u00109\u001a\u00020/2\u0006\u0010:\u001a\u00020\"2\u0008\u0010;\u001a\u0004\u0018\u00010*2\u0006\u00101\u001a\u00020$H\u0002J\u0018\u0010<\u001a\u00020/2\u0006\u0010=\u001a\u00020\t2\u0006\u0010>\u001a\u00020\rH\u0002J\u0018\u0010?\u001a\u00020/2\u0006\u0010@\u001a\u00020\r2\u0006\u00101\u001a\u00020$H\u0002J\u0010\u0010A\u001a\u00020/2\u0006\u0010B\u001a\u00020*H\u0002J\u0018\u0010C\u001a\u00020/2\u0006\u0010D\u001a\u00020\u00162\u0006\u00101\u001a\u00020$H\u0002J\u0018\u0010E\u001a\u00020/2\u0006\u0010D\u001a\u00020\u00162\u0006\u00101\u001a\u00020$H\u0002J\u0010\u0010F\u001a\u00020/2\u0006\u00101\u001a\u00020$H\u0002J\u0008\u0010G\u001a\u00020/H\u0002J\u0008\u0010H\u001a\u00020/H\u0002J\u0016\u0010I\u001a\u00020/2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\r0JH\u0002J \u0010K\u001a\u00020/2\u0006\u0010>\u001a\u00020\r2\u0006\u0010L\u001a\u00020\r2\u0006\u0010;\u001a\u00020*H\u0002J*\u0010M\u001a\u00020/2\u0008\u0010;\u001a\u0004\u0018\u00010*2\u0006\u0010>\u001a\u00020\r2\u0006\u0010N\u001a\u00020\r2\u0006\u0010L\u001a\u00020\rH\u0002J\u0010\u0010O\u001a\u00020/2\u0006\u0010P\u001a\u00020\u000bH\u0002J\u0012\u0010Q\u001a\u00020/2\u0008\u0010R\u001a\u0004\u0018\u00010SH\u0002J\u0010\u0010T\u001a\u00020\u000b2\u0006\u00103\u001a\u00020*H\u0002J\u0010\u0010U\u001a\u00020/2\u0006\u0010V\u001a\u00020\u001cH\u0002J\u0008\u0010W\u001a\u00020\u000bH\u0002J\u0010\u0010X\u001a\u00020\u000b2\u0006\u0010;\u001a\u00020*H\u0002J\u0008\u0010Y\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0012\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\u0008\u0012\u0004\u0012\u00020\u0016`\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\u0008\u0012\u0004\u0012\u00020\u0016`\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010%R\u0012\u0010&\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010%R\u0012\u0010\'\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010%R\u0012\u0010(\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010%\u00a8\u0006b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;",
        "",
        "config",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;)V",
        "state",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;",
        "peerSynchronization",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;",
        "peerSynchronizationReceived",
        "",
        "sentSequence",
        "",
        "lastSentAcknowledged",
        "Ljava/lang/Integer;",
        "lastReceivedInOrder",
        "lastAcknowledgedReceived",
        "accumulatedAcknowledgements",
        "writable",
        "unacknowledged",
        "Ljava/util/ArrayList;",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;",
        "Lkotlin/collections/ArrayList;",
        "queued",
        "Ljava/util/ArrayDeque;",
        "outOfOrder",
        "events",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;",
        "output",
        "Ljava/io/ByteArrayOutputStream;",
        "receive",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;",
        "awaitingPayload",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;",
        "markerDeadlineMillis",
        "",
        "Ljava/lang/Long;",
        "synchronizationDeadlineMillis",
        "sendAcknowledgementDeadlineMillis",
        "receiveAcknowledgementDeadlineMillis",
        "takeOutput",
        "",
        "pollEvent",
        "nextDeadlineMillis",
        "()Ljava/lang/Long;",
        "start",
        "",
        "wiredInitiator",
        "nowMillis",
        "feed",
        "bytes",
        "feedEof",
        "advanceTime",
        "sendControl",
        "parseAvailable",
        "enterNegotiating",
        "processFrame",
        "header",
        "payload",
        "handleSynchronization",
        "sync",
        "sequence",
        "handleAcknowledgement",
        "acknowledgement",
        "handleExtendedAcknowledgement",
        "missing",
        "handleData",
        "packet",
        "sendPacket",
        "retransmitDuePacket",
        "sendSynchronization",
        "sendAcknowledgement",
        "sendExtendedAcknowledgement",
        "",
        "sendData",
        "sessionId",
        "writePacket",
        "control",
        "setWritable",
        "value",
        "die",
        "reason",
        "",
        "appendOutput",
        "enqueueEvent",
        "event",
        "peerLimitsAreUsable",
        "peerPayloadIsAcceptable",
        "localSynchronization",
        "State",
        "Event",
        "SessionDescriptor",
        "SynchronizationPayload",
        "Header",
        "Packet",
        "ReceiveBuffer",
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
.field private static final ACK_SLACK:I = 0xa

.field private static final CHECKSUM_BYTES:I = 0x1

.field private static final CONTROL_ACKNOWLEDGEMENT:I = 0x40

.field private static final CONTROL_EXTENDED_ACKNOWLEDGEMENT:I = 0x20

.field private static final CONTROL_RESET:I = 0x10

.field public static final CONTROL_SESSION_ID:I = 0xa

.field private static final CONTROL_SYNCHRONIZE:I = 0x80

.field public static final Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

.field private static final DEFAULT_MAX_ACKNOWLEDGEMENTS:I = 0x3

.field private static final DEFAULT_MAX_RETRANSMISSIONS:I = 0x4

.field private static final DEFAULT_RETRANSMISSION_TIMEOUT_MILLIS:I = 0xfa0

.field public static final EA_SESSION_ID:I = 0xb

.field public static final FILE_TRANSFER_SESSION_ID:I = 0xc

.field private static final HEADER_BYTES:I = 0x9

.field private static final IAP2_MARKER:[B

.field private static final INITIAL_SEQUENCE:I = 0x63

.field private static final LINK_START_HIGH:B = -0x1t

.field private static final LINK_START_LOW:B = 0x5at

.field private static final MARKER_RESEND_MILLIS:J = 0x3e8L

.field public static final MAX_PAYLOAD_BYTES:I = 0xfff5

.field public static final MAX_WIRE_FRAME_BYTES:I = 0xffff

.field private static final SESSION_DESCRIPTOR_BYTES:I = 0x3

.field private static final SYNCHRONIZATION_FIXED_BYTES:I = 0xa

.field private static final SYNCHRONIZATION_RESEND_MILLIS:J = 0x1f4L

.field private static final SYNCHRONIZATION_VERSION:I = 0x1


# instance fields
.field private accumulatedAcknowledgements:I

.field private awaitingPayload:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

.field private final config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

.field private final events:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;",
            ">;"
        }
    .end annotation
.end field

.field private lastAcknowledgedReceived:Ljava/lang/Integer;

.field private lastReceivedInOrder:I

.field private lastSentAcknowledged:Ljava/lang/Integer;

.field private markerDeadlineMillis:Ljava/lang/Long;

.field private final outOfOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Ljava/io/ByteArrayOutputStream;

.field private peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

.field private peerSynchronizationReceived:Z

.field private final queued:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;",
            ">;"
        }
    .end annotation
.end field

.field private final receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

.field private receiveAcknowledgementDeadlineMillis:Ljava/lang/Long;

.field private sendAcknowledgementDeadlineMillis:Ljava/lang/Long;

.field private sentSequence:I

.field private state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

.field private synchronizationDeadlineMillis:Ljava/lang/Long;

.field private final unacknowledged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;",
            ">;"
        }
    .end annotation
.end field

.field private writable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    const/4 v0, 0x6

    .line 636
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->IAP2_MARKER:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x55t
        0x2t
        0x0t
        -0x12t
        0x10t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    .line 122
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->IDLE:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    .line 123
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->localSynchronization()Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    const/16 p1, 0x63

    .line 125
    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sentSequence:I

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->unacknowledged:Ljava/util/ArrayList;

    .line 133
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->queued:Ljava/util/ArrayDeque;

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->outOfOrder:Ljava/util/ArrayList;

    .line 135
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->events:Ljava/util/ArrayDeque;

    .line 136
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->output:Ljava/io/ByteArrayOutputStream;

    .line 137
    new-instance p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 19
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;-><init>(IIIZIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;)V

    return-void
.end method

.method public static final synthetic access$getIAP2_MARKER$cp()[B
    .locals 1

    .line 18
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->IAP2_MARKER:[B

    return-object v0
.end method

.method public static final synthetic access$getLastReceivedInOrder$p(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    return p0
.end method

.method private final appendOutput([B)Z
    .locals 4

    .line 548
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 549
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getMaximumPendingOutputBytes()I

    move-result v1

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    .line 550
    const-string p1, "iAP2 pending output limit exceeded"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return v2

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 p1, 0x1

    return p1
.end method

.method private final die(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->close(Ljava/lang/Object;)V

    .line 535
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/shilapi/xcertplay/E01Artwork;->closeLink(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 536
    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->markerDeadlineMillis:Ljava/lang/Long;

    .line 537
    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->synchronizationDeadlineMillis:Ljava/lang/Long;

    .line 538
    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgementDeadlineMillis:Ljava/lang/Long;

    .line 539
    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receiveAcknowledgementDeadlineMillis:Ljava/lang/Long;

    .line 540
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v0, 0x0

    .line 541
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->writable:Z

    .line 542
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 543
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->events:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 544
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->events:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Dead;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final e01SendArtwork([BJ)V
    .locals 10

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    array-length v0, p1

    const v1, 0xfff5

    if-gt v0, v1, :cond_3

    .line 248
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronizationReceived:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NORMAL:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-ne v0, v1, :cond_1

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerPayloadIsAcceptable([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    :cond_1
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const-string p1, "copyOf(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;-><init>(II[BIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendPacket(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;J)V

    return-void

    .line 250
    :cond_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxLength()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "iAP2 control payload exceeds peer maxLength "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 245
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "iAP2 control payload exceeds 65525 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final enqueueEvent(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;)V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->events:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getMaximumPendingEvents()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 560
    const-string p1, "iAP2 pending event limit exceeded"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->events:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final enterNegotiating(J)V
    .locals 2

    .line 307
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NEGOTIATING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->markerDeadlineMillis:Ljava/lang/Long;

    .line 309
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendSynchronization()V

    .line 310
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    .line 311
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->synchronizationDeadlineMillis:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private final handleAcknowledgement(IJ)V
    .locals 5

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->acknowledgement(Ljava/lang/Object;I)V

    .line 354
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NEGOTIATING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    .line 355
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronizationReceived:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerLimitsAreUsable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->queued:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/lang/Iterable;

    .line 717
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 718
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    .line 355
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getPayload()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerPayloadIsAcceptable([B)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 359
    :cond_2
    :goto_0
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NORMAL:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    .line 360
    iput-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->synchronizationDeadlineMillis:Ljava/lang/Long;

    .line 361
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->setWritable(Z)V

    goto :goto_2

    .line 356
    :cond_3
    :goto_1
    const-string p1, "peer iAP2 maxLength cannot carry pending control packets"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return-void

    .line 363
    :cond_4
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastSentAcknowledged:Ljava/lang/Integer;

    .line 366
    :goto_3
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->unacknowledged:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 367
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->unacknowledged:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    .line 368
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result v1

    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastSentAcknowledged:Ljava/lang/Integer;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->sequenceDistance(ILjava/lang/Integer;)I
    invoke-static {v0, v1, v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$sequenceDistance(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;ILjava/lang/Integer;)I

    move-result v0

    if-lez v0, :cond_5

    .line 371
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxOutgoing()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    if-gt v0, v1, :cond_5

    .line 372
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getDeadlineMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receiveAcknowledgementDeadlineMillis:Ljava/lang/Long;

    goto :goto_4

    .line 376
    :cond_5
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->unacknowledged:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->removed(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 378
    :cond_6
    iput-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receiveAcknowledgementDeadlineMillis:Ljava/lang/Long;

    .line 380
    :goto_4
    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sentSequence:I

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastSentAcknowledged:Ljava/lang/Integer;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->sequenceDistance(ILjava/lang/Integer;)I
    invoke-static {p1, v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$sequenceDistance(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;ILjava/lang/Integer;)I

    move-result p1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxOutgoing()I

    move-result v0

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 381
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->queued:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    if-nez p1, :cond_7

    goto :goto_5

    .line 382
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendPacket(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;J)V

    .line 383
    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->setWritable(Z)V

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private final handleData(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;J)V
    .locals 5

    .line 403
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result v1

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->sequenceDistance(ILjava/lang/Integer;)I
    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$sequenceDistance(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;ILjava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 404
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxOutgoing()I

    move-result v1

    const/16 v2, 0xa

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto/16 :goto_3

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->outOfOrder:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 722
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 723
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    .line 408
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result v4

    if-ne v3, v4, :cond_2

    return-void

    .line 409
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->outOfOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getMaximumOutOfOrderPackets()I

    move-result v3

    if-lt v1, v3, :cond_4

    .line 410
    const-string p1, "iAP2 out-of-order packet limit exceeded"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return-void

    .line 413
    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->outOfOrder:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_6

    .line 415
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxOutgoing()I

    move-result p2

    if-lt v0, p2, :cond_a

    .line 416
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    iget p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    .line 418
    :goto_1
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->sequenceDistance(ILjava/lang/Integer;)I
    invoke-static {v0, v2, v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$sequenceDistance(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;ILjava/lang/Integer;)I

    move-result v2

    if-le v2, v3, :cond_5

    .line 419
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->nextSequence(I)I
    invoke-static {v0, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$nextSequence(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;I)I

    move-result p3

    .line 420
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    :cond_5
    iput-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgementDeadlineMillis:Ljava/lang/Long;

    .line 423
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendExtendedAcknowledgement(Ljava/util/List;)V

    return-void

    .line 428
    :cond_6
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->outOfOrder:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    .line 725
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_7

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$handleData$$inlined$sortBy$1;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$handleData$$inlined$sortBy$1;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;)V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 429
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->outOfOrder:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->outOfOrder:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result v0

    iget v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->sequenceDistance(ILjava/lang/Integer;)I
    invoke-static {p1, v0, v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$sequenceDistance(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;ILjava/lang/Integer;)I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 430
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->outOfOrder:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "removeAt(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    .line 431
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result v0

    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    .line 432
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSessionId()I

    move-result v0

    if-eq v0, v2, :cond_8

    const/16 v4, 0xc

    if-ne v0, v4, :cond_7

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getPayload()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shilapi/xcertplay/E01Artwork;->onDatagram(Ljava/lang/Object;[B)[B

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v0, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->e01SendArtwork([BJ)V

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getPayload()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Control;-><init>([B)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->enqueueEvent(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;)V

    goto :goto_2

    .line 435
    :cond_9
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxAcknowledgements()I

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    return-void

    .line 436
    :cond_b
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxOutgoing()I

    move-result p1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getMaxOutgoingDelta()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 437
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastAcknowledgedReceived:Ljava/lang/Integer;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->sequenceDistance(ILjava/lang/Integer;)I
    invoke-static {v0, v2, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$sequenceDistance(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;ILjava/lang/Integer;)I

    move-result v0

    if-lt v0, p1, :cond_c

    .line 438
    iput-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgementDeadlineMillis:Ljava/lang/Long;

    .line 439
    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastAcknowledgedReceived:Ljava/lang/Integer;

    .line 440
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgement()V

    return-void

    .line 442
    :cond_c
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getAcknowledgementTimeoutMillis()I

    move-result p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgementDeadlineMillis:Ljava/lang/Long;

    return-void

    .line 405
    :cond_d
    :goto_3
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgement()V

    return-void
.end method

.method private final handleExtendedAcknowledgement([B)V
    .locals 6

    .line 388
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NORMAL:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->unacknowledged:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    .line 720
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-byte v4, p1, v3

    .line 390
    sget-object v5, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->u8(B)I
    invoke-static {v5, v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$u8(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;B)I

    move-result v4

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 391
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getRetransmissions()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->setRetransmissions(I)V

    .line 392
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getRetransmissions()I

    move-result v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxRetransmissions()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 393
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iAP2 packet "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was not acknowledged"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return-void

    .line 396
    :cond_2
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result v2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSessionId()I

    move-result v3

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getPayload()[B

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendData(II[B)V

    invoke-static {p0, v1}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->retry(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 397
    iput-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgementDeadlineMillis:Ljava/lang/Long;

    .line 398
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getDeadlineMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receiveAcknowledgementDeadlineMillis:Ljava/lang/Long;

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private final handleSynchronization(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;I)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NEGOTIATING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronizationReceived:Z

    .line 348
    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    .line 349
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastAcknowledgedReceived:Ljava/lang/Integer;

    .line 350
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgement()V

    return-void
.end method

.method private final localSynchronization()Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;
    .locals 11

    .line 573
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    .line 574
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getMaxOutgoing()I

    move-result v1

    .line 576
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getZeroAcknowledgements()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0xfa0

    .line 577
    :goto_0
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getZeroAcknowledgements()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getAcknowledgementTimeoutMillis()I

    move-result v4

    .line 578
    :goto_1
    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getZeroAcknowledgements()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x4

    .line 579
    :goto_2
    iget-object v6, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getZeroAcknowledgements()Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const/4 v6, 0x3

    .line 581
    :goto_3
    new-array v7, v7, [Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;

    new-instance v8, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;

    iget-object v9, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getControlSessionVersion()I

    move-result v9

    const/16 v10, 0xa

    invoke-direct {v8, v10, v3, v9}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;-><init>(III)V

    aput-object v8, v7, v3

    .line 582
    new-instance v3, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;

    const/16 v8, 0xb

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-direct {v3, v8, v9, v10}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;-><init>(III)V

    aput-object v3, v7, v10

    .line 583
    new-instance v3, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;

    const/16 v8, 0xc

    invoke-direct {v3, v8, v10, v9}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SessionDescriptor;-><init>(III)V

    aput-object v3, v7, v9

    .line 580
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move v3, v2

    const v2, 0xffff

    .line 573
    invoke-direct/range {v0 .. v7}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;-><init>(IIIIIILjava/util/List;)V

    return-object v0
.end method

.method private final parseAvailable(J)Z
    .locals 7

    .line 257
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DETECTING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 259
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->getSize()I

    move-result v0

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->IAP2_MARKER:[B

    array-length v4, v1

    if-ge v0, v4, :cond_1

    return v2

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->matches([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    const-string p1, "iAP2 marker was not received"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return v2

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->discard(I)V

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->enterNegotiating(J)V

    return v3

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->awaitingPayload:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

    const/4 v1, 0x0

    const/16 v4, 0x9

    if-eqz v0, :cond_6

    .line 271
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getLength()I

    move-result v5

    sub-int/2addr v5, v4

    .line 272
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->getSize()I

    move-result v4

    if-ge v4, v5, :cond_4

    return v2

    .line 273
    :cond_4
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v2, v5}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->take(I)[B

    move-result-object v2

    .line 274
    iput-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->awaitingPayload:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

    .line 275
    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->checksumValid([B)Z
    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$checksumValid(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    array-length v1, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->processFrame(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;[BJ)V

    :cond_5
    return v3

    :cond_6
    const/4 v0, 0x0

    .line 286
    :goto_0
    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->getSize()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_8

    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v5, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->get(I)B

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v5, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->get(I)B

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_8

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->discard(I)V

    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_8
    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->getSize()I

    move-result v5

    if-ge v5, v4, :cond_9

    return v0

    .line 291
    :cond_9
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->take(I)[B

    move-result-object v0

    .line 292
    sget-object v5, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->parseHeader([B)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;
    invoke-static {v5, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$parseHeader(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[B)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 293
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getLength()I

    move-result v5

    if-ge v5, v4, :cond_a

    goto :goto_1

    .line 294
    :cond_a
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getLength()I

    move-result v5

    const v6, 0xffff

    if-le v5, v6, :cond_b

    .line 295
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getLength()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "iAP2 frame length "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds 65535"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return v2

    .line 298
    :cond_b
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getLength()I

    move-result v2

    if-ne v2, v4, :cond_c

    .line 299
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->processFrame(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;[BJ)V

    goto :goto_1

    .line 301
    :cond_c
    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->awaitingPayload:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;

    :cond_d
    :goto_1
    return v3
.end method

.method private final peerLimitsAreUsable()Z
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxLength()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final peerPayloadIsAcceptable([B)Z
    .locals 1

    .line 571
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerLimitsAreUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    array-length p1, p1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxLength()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final processFrame(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;[BJ)V
    .locals 11

    .line 316
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getControl()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 317
    const-string p1, "peer sent iAP2 reset"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return-void

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getControl()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 321
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload$Companion;

    if-nez p2, :cond_1

    new-array v2, v1, [B

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload$Companion;->decode([B)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getSequence()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->handleSynchronization(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;I)V

    .line 325
    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getControl()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 326
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->accumulatedAcknowledgements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->accumulatedAcknowledgements:I

    .line 327
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getAcknowledgement()I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->handleAcknowledgement(IJ)V

    .line 329
    :cond_3
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getControl()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 330
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->handleExtendedAcknowledgement([B)V

    .line 332
    :cond_4
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getControl()I

    move-result v0

    and-int/lit8 v0, v0, -0x41

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 333
    new-instance v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getSequence()I

    move-result v3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Header;->getSessionId()I

    move-result v4

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;-><init>(II[BIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v2, p3, p4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->handleData(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;J)V

    .line 335
    :cond_5
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxAcknowledgements()I

    move-result p1

    if-lez p1, :cond_6

    .line 336
    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->accumulatedAcknowledgements:I

    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxAcknowledgements()I

    move-result p2

    if-lt p1, p2, :cond_6

    .line 338
    iput v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->accumulatedAcknowledgements:I

    .line 339
    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastAcknowledgedReceived:Ljava/lang/Integer;

    .line 340
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgement()V

    :cond_6
    return-void
.end method

.method private final retransmitDuePacket(J)V
    .locals 9

    .line 476
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NORMAL:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->unacknowledged:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->unacknowledged:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 727
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 728
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 729
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 730
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 731
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    .line 477
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getDeadlineMillis()J

    move-result-wide v3

    .line 733
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 734
    move-object v6, v5

    check-cast v6, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    .line 477
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getDeadlineMillis()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-lez v8, :cond_4

    move-object v1, v5

    move-wide v3, v6

    .line 739
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 477
    :goto_0
    check-cast v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    if-nez v1, :cond_5

    goto/16 :goto_4

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->unacknowledged:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 741
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 742
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    if-eq v5, v1, :cond_6

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 743
    :cond_7
    check-cast v3, Ljava/util/List;

    .line 741
    check-cast v3, Ljava/lang/Iterable;

    .line 478
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getDeadlineMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getDeadlineMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_9

    move-object v2, v3

    goto :goto_2

    :cond_a
    :goto_3
    check-cast v2, Ljava/lang/Long;

    .line 479
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getRetransmissionTimeoutMillis()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr p1, v3

    invoke-virtual {v1, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->setDeadlineMillis(J)V

    .line 480
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getRetransmissions()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->setRetransmissions(I)V

    .line 481
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getRetransmissions()I

    move-result p1

    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxRetransmissions()I

    move-result p2

    if-ne p1, p2, :cond_b

    .line 482
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "iAP2 packet "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was not acknowledged"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return-void

    .line 485
    :cond_b
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result p1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSessionId()I

    move-result p2

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getPayload()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendData(II[B)V

    invoke-static {p0, v1}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->retry(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v2, :cond_c

    .line 486
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getDeadlineMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_c
    iput-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receiveAcknowledgementDeadlineMillis:Ljava/lang/Long;

    :cond_d
    :goto_4
    return-void
.end method

.method private final sendAcknowledgement()V
    .locals 4

    .line 494
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sentSequence:I

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->writePacket([BIII)V

    return-void
.end method

.method private final sendData(II[B)V
    .locals 1

    const/16 v0, 0x40

    .line 502
    invoke-direct {p0, p3, p1, v0, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->writePacket([BIII)V

    return-void
.end method

.method private final sendExtendedAcknowledgement(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 498
    check-cast p1, Ljava/lang/Iterable;

    .line 744
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 745
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 746
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-byte v1, v1

    .line 498
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 746
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 747
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 744
    check-cast v0, Ljava/util/Collection;

    .line 498
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sentSequence:I

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->writePacket([BIII)V

    return-void
.end method

.method private final sendPacket(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;J)V
    .locals 5

    .line 449
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NORMAL:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 450
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sentSequence:I

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastSentAcknowledged:Ljava/lang/Integer;

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->sequenceDistance(ILjava/lang/Integer;)I
    invoke-static {v0, v1, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$sequenceDistance(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;ILjava/lang/Integer;)I

    move-result v1

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxOutgoing()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    if-lt v1, v3, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sentSequence:I

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->nextSequence(I)I
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$nextSequence(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;I)I

    move-result v0

    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sentSequence:I

    .line 461
    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->setSequence(I)V

    .line 462
    invoke-virtual {p1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->setRetransmissions(I)V

    .line 463
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getRetransmissionTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->setDeadlineMillis(J)V

    const/4 p2, 0x0

    .line 464
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgementDeadlineMillis:Ljava/lang/Long;

    .line 465
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSequence()I

    move-result p2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getSessionId()I

    move-result p3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getPayload()[B

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendData(II[B)V

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxRetransmissions()I

    move-result v3

    invoke-static {p0, p1, p2, v3}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->sent(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 466
    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastAcknowledgedReceived:Ljava/lang/Integer;

    .line 467
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxRetransmissions()I

    move-result p2

    if-lez p2, :cond_1

    .line 468
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->unacknowledged:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;->getDeadlineMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receiveAcknowledgementDeadlineMillis:Ljava/lang/Long;

    return-void

    .line 471
    :cond_1
    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sentSequence:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastSentAcknowledged:Ljava/lang/Integer;

    return-void

    .line 452
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->queued:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    move-result p2

    iget-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->config:Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkConfig;->getMaximumQueuedPackets()I

    move-result p3

    if-lt p2, p3, :cond_3

    .line 453
    const-string p1, "iAP2 outbound queue limit exceeded"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return-void

    .line 455
    :cond_3
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->queued:Ljava/util/ArrayDeque;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->setWritable(Z)V

    return-void
.end method

.method private final sendSynchronization()V
    .locals 4

    .line 490
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->localSynchronization()Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->encode()[B

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sentSequence:I

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->writePacket([BIII)V

    return-void
.end method

.method private final setWritable(Z)V
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->writable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 530
    :cond_0
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->writable:Z

    .line 531
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Writable;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event$Writable;-><init>(Z)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->enqueueEvent(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;)V

    return-void
.end method

.method private final writePacket([BIII)V
    .locals 4

    .line 506
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 507
    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->accumulatedAcknowledgements:I

    const/16 v1, 0x9

    if-eqz p1, :cond_1

    .line 508
    array-length v2, p1

    add-int/lit8 v2, v2, 0xa

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    .line 509
    :goto_0
    new-array v1, v1, [B

    const/4 v3, -0x1

    .line 510
    aput-byte v3, v1, v0

    const/4 v0, 0x1

    const/16 v3, 0x5a

    .line 511
    aput-byte v3, v1, v0

    ushr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    const/4 v3, 0x2

    .line 512
    aput-byte v0, v1, v3

    const/4 v0, 0x3

    int-to-byte v3, v2

    .line 513
    aput-byte v3, v1, v0

    const/4 v0, 0x4

    int-to-byte p3, p3

    .line 514
    aput-byte p3, v1, v0

    const/4 p3, 0x5

    int-to-byte p2, p2

    .line 515
    aput-byte p2, v1, p3

    .line 516
    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    int-to-byte p2, p2

    const/4 p3, 0x6

    aput-byte p2, v1, p3

    const/4 p2, 0x7

    int-to-byte p3, p4

    .line 517
    aput-byte p3, v1, p2

    .line 518
    sget-object p2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->Companion:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;

    const/16 p3, 0x8

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->checksum([BI)I
    invoke-static {p2, v1, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$checksum(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[BI)I

    move-result p4

    int-to-byte p4, p4

    aput-byte p4, v1, p3

    .line 519
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 520
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_2

    .line 522
    invoke-virtual {p3, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 523
    array-length p4, p1

    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->checksum([BI)I
    invoke-static {p2, p1, p4}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;->access$checksum(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Companion;[BI)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 525
    :cond_2
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string/jumbo p2, "toByteArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->appendOutput([B)Z

    return-void
.end method


# virtual methods
.method public final advanceTime(J)V
    .locals 4

    .line 204
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-eq v0, v1, :cond_5

    .line 205
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->nextDeadlineMillis()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    goto/16 :goto_1

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->markerDeadlineMillis:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_2

    .line 209
    iput-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->markerDeadlineMillis:Ljava/lang/Long;

    .line 210
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DETECTING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-ne v0, v1, :cond_0

    .line 211
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->IAP2_MARKER:[B

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->appendOutput([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    add-long/2addr v0, p1

    .line 212
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->markerDeadlineMillis:Ljava/lang/Long;

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->synchronizationDeadlineMillis:Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_3

    .line 218
    iput-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->synchronizationDeadlineMillis:Ljava/lang/Long;

    .line 219
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NEGOTIATING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-ne v0, v1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendSynchronization()V

    .line 221
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    .line 222
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->synchronizationDeadlineMillis:Ljava/lang/Long;

    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgementDeadlineMillis:Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_4

    .line 228
    iput-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgementDeadlineMillis:Ljava/lang/Long;

    .line 229
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NORMAL:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-ne v0, v1, :cond_0

    .line 230
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastReceivedInOrder:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->lastAcknowledgedReceived:Ljava/lang/Integer;

    .line 231
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgement()V

    goto/16 :goto_0

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receiveAcknowledgementDeadlineMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_0

    .line 236
    iput-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receiveAcknowledgementDeadlineMillis:Ljava/lang/Long;

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->retransmitDuePacket(J)V

    goto/16 :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public final feed([BJ)V
    .locals 3

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-eq v0, v1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 179
    :cond_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-eq v1, v2, :cond_3

    .line 180
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->remainingCapacity()I

    move-result v1

    if-nez v1, :cond_2

    .line 182
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->parseAvailable(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    const-string p1, "iAP2 inbound frame exceeds 65535 bytes"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_2
    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receive:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;

    invoke-virtual {v2, p1, v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$ReceiveBuffer;->append([BII)V

    add-int/2addr v0, v1

    .line 191
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->parseAvailable(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v2, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final feedEof()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->die(Ljava/lang/String;)V

    return-void
.end method

.method public final nextDeadlineMillis()Ljava/lang/Long;
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->markerDeadlineMillis:Ljava/lang/Long;

    .line 161
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->synchronizationDeadlineMillis:Ljava/lang/Long;

    .line 162
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendAcknowledgementDeadlineMillis:Ljava/lang/Long;

    .line 163
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->receiveAcknowledgementDeadlineMillis:Ljava/lang/Long;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 159
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 164
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final peerSynchronization()Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    return-object v0
.end method

.method public final pollEvent()Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->events:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->events:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Event;

    return-object v0
.end method

.method public final sendControl([BJ)V
    .locals 10

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    array-length v0, p1

    const v1, 0xfff5

    if-gt v0, v1, :cond_3

    .line 248
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronizationReceived:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NORMAL:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-ne v0, v1, :cond_1

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerPayloadIsAcceptable([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    :cond_1
    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const-string p1, "copyOf(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;-><init>(II[BIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v1}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->packet(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->sendPacket(Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$Packet;J)V

    return-void

    .line 250
    :cond_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->peerSynchronization:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$SynchronizationPayload;->getMaxLength()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "iAP2 control payload exceeds peer maxLength "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 245
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "iAP2 control payload exceeds 65525 bytes"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final start(ZJ)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->IDLE:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DETECTING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    .line 170
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->IAP2_MARKER:[B

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->appendOutput([B)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    add-long/2addr v0, p2

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->markerDeadlineMillis:Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 172
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    if-eq p1, v0, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->enterNegotiating(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final state()Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->state:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    return-object v0
.end method

.method public final takeOutput()[B
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 154
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final writable()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;->writable:Z

    return v0
.end method
