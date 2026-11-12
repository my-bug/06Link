.class public final Lcom/shilapi/xcertplay/transport/NcmUsbBridge;
.super Ljava/lang/Object;
.source "NcmUsbBridge.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNcmUsbBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NcmUsbBridge.kt\ncom/shilapi/xcertplay/transport/NcmUsbBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,510:1\n1#2:511\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0018\u0000 K2\u00020\u0001:\u0001KBC\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0016\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u001cJ\u0010\u00105\u001a\u0004\u0018\u00010\u000c2\u0006\u00104\u001a\u000206J\u0008\u00107\u001a\u000202H\u0016J\u0010\u00108\u001a\u0002022\u0006\u00109\u001a\u00020\u0005H\u0002J\u0014\u0010:\u001a\u00020;*\u00020\u000c2\u0006\u0010<\u001a\u00020\u001cH\u0002J\u0008\u0010=\u001a\u000202H\u0002J\u0010\u0010>\u001a\u0002022\u0006\u00103\u001a\u00020\u000cH\u0002J\u0008\u0010?\u001a\u00020\u000cH\u0002J\u0017\u0010@\u001a\u0004\u0018\u00010\u001c2\u0006\u00104\u001a\u000206H\u0002\u00a2\u0006\u0002\u0010AJ\u0010\u0010B\u001a\u00020\u00182\u0006\u0010C\u001a\u00020(H\u0002J\u001c\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020;2\n\u0008\u0002\u0010G\u001a\u0004\u0018\u00010HH\u0002J\u0008\u0010I\u001a\u000202H\u0002J\u0008\u0010J\u001a\u000202H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010$\u001a\n &*\u0004\u0018\u00010%0%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u000100X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/NcmUsbBridge;",
        "Ljava/io/Closeable;",
        "connection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "outEndpoint",
        "Landroid/hardware/usb/UsbEndpoint;",
        "inEndpoint",
        "statusEndpoint",
        "claimedInterfaces",
        "",
        "Landroid/hardware/usb/UsbInterface;",
        "descriptorHostMac",
        "",
        "<init>",
        "(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Ljava/util/List;[B)V",
        "descriptorMac",
        "hostMac",
        "getHostMac",
        "()[B",
        "stateLock",
        "",
        "readLock",
        "writeLock",
        "closed",
        "",
        "failure",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException;",
        "sequence",
        "",
        "loggedWriteTimeout",
        "frames",
        "Ljava/util/ArrayDeque;",
        "queuedBytes",
        "blocks",
        "Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;",
        "readBuffer",
        "directReadBuffer",
        "Ljava/nio/ByteBuffer;",
        "kotlin.jvm.PlatformType",
        "readRequest",
        "Landroid/hardware/usb/UsbRequest;",
        "readQueued",
        "requestReadLimit",
        "legacyReader",
        "Lcom/shilapi/xcertplay/transport/LegacyBulkReader;",
        "statusRunning",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "statusThread",
        "Ljava/lang/Thread;",
        "send",
        "",
        "frame",
        "timeoutMillis",
        "recv",
        "",
        "close",
        "drainStatus",
        "endpoint",
        "hex",
        "",
        "limit",
        "drainFrames",
        "enqueueFrame",
        "pollFrame",
        "readChunk",
        "(J)Ljava/lang/Integer;",
        "queueRead",
        "request",
        "failSession",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;",
        "message",
        "cause",
        "",
        "checkOpen",
        "checkOpenLocked",
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
.field private static final CDC_ETHERNET_SUBTYPE:I = 0xf

.field private static final CDC_FUNCTIONAL_DESCRIPTOR_TYPE:I = 0x24

.field public static final Companion:Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;

.field private static final MAX_QUEUED_BYTES:I = 0x100000

.field private static final MAX_QUEUED_FRAMES:I = 0x100

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field public static final PREFERRED_READ_CHUNK_BYTES:I = 0x8000

.field private static final READ_CHUNK_BYTES$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_POLL_INTERVAL_MILLIS:J = 0x1f4L

.field private static final STATUS_POLL_TIMEOUT_MILLIS:I = 0x14

.field private static final USB_CONTROL_TIMEOUT_MILLIS:I = 0x3e8

.field private static final USB_ENGLISH_US:I = 0x409

.field private static final USB_INTERFACE_DESCRIPTOR_TYPE:I = 0x4

.field private static final USB_REQUEST_GET_DESCRIPTOR:I = 0x6

.field private static final USB_STRING_DESCRIPTOR_TYPE:I = 0x3


# instance fields
.field private final blocks:Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;

.field private final claimedInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbInterface;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private final connection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final descriptorMac:[B

.field private final directReadBuffer:Ljava/nio/ByteBuffer;

.field private failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

.field private final frames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private final inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final legacyReader:Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

.field private loggedWriteTimeout:Z

.field private final outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private queuedBytes:I

.field private final readBuffer:[B

.field private final readLock:Ljava/lang/Object;

.field private readQueued:Z

.field private readRequest:Landroid/hardware/usb/UsbRequest;

.field private requestReadLimit:I

.field private sequence:I

.field private final stateLock:Ljava/lang/Object;

.field private final statusEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final statusRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final statusThread:Ljava/lang/Thread;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$3rGZFlbSED0nyniCzCoWFwriEa4()I
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->READ_CHUNK_BYTES_delegate$lambda$22()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$U6m-Eu6Uuuj8AFdfLSsQ4Dli_8U(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;[BI)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->drainFrames$lambda$14(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;[BI)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pbLZw7f9sjI5_dYApo2XdjJ-S_4(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->statusThread$lambda$2$lambda$0(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Landroid/hardware/usb/UsbEndpoint;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uHXvgps1jPpD9mPr1hitjRwZoqw(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->hex$lambda$13(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->Companion:Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;

    .line 305
    new-instance v0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->READ_CHUNK_BYTES$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Ljava/util/List;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            "Landroid/hardware/usb/UsbEndpoint;",
            "Landroid/hardware/usb/UsbEndpoint;",
            "Landroid/hardware/usb/UsbEndpoint;",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/usb/UsbInterface;",
            ">;[B)V"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outEndpoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inEndpoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "claimedInterfaces"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 27
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 28
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 29
    iput-object p4, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->statusEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 30
    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->claimedInterfaces:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p6, :cond_0

    .line 33
    array-length p5, p6

    invoke-static {p6, p5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p5

    const-string p6, "copyOf(...)"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p5, p2

    :goto_0
    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->descriptorMac:[B

    .line 35
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->stateLock:Ljava/lang/Object;

    .line 36
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readLock:Ljava/lang/Object;

    .line 37
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->writeLock:Ljava/lang/Object;

    .line 42
    new-instance p5, Ljava/util/ArrayDeque;

    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->frames:Ljava/util/ArrayDeque;

    .line 45
    new-instance p5, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;

    sget-object p6, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->Companion:Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;

    # invokes: Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->getREAD_CHUNK_BYTES()I
    invoke-static {p6}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->access$getREAD_CHUNK_BYTES(Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;)I

    move-result v0

    invoke-direct {p5, v0}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;-><init>(I)V

    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->blocks:Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;

    .line 46
    # invokes: Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->getREAD_CHUNK_BYTES()I
    invoke-static {p6}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->access$getREAD_CHUNK_BYTES(Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;)I

    move-result p5

    new-array p5, p5, [B

    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readBuffer:[B

    .line 51
    # invokes: Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->getREAD_CHUNK_BYTES()I
    invoke-static {p6}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->access$getREAD_CHUNK_BYTES(Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;)I

    move-result p5

    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->directReadBuffer:Ljava/nio/ByteBuffer;

    .line 55
    # invokes: Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->getREAD_CHUNK_BYTES()I
    invoke-static {p6}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->access$getREAD_CHUNK_BYTES(Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;)I

    move-result p5

    iput p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->requestReadLimit:I

    .line 57
    sget-object p5, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;

    invoke-virtual {p5}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->getLegacyUsbRead()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 58
    new-instance p5, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

    # invokes: Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->getREAD_CHUNK_BYTES()I
    invoke-static {p6}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->access$getREAD_CHUNK_BYTES(Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;)I

    move-result p6

    invoke-direct {p5, p1, p3, p6}, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;I)V

    invoke-virtual {p5}, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;->enableReadAhead()V

    goto :goto_1

    :cond_1
    move-object p5, p2

    .line 57
    :goto_1
    iput-object p5, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->legacyReader:Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

    .line 60
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    if-eqz p4, :cond_2

    const/4 p5, 0x1

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    :goto_2
    invoke-direct {p1, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->statusRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p4, :cond_3

    .line 62
    new-instance p2, Ljava/lang/Thread;

    new-instance p1, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p4}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Landroid/hardware/usb/UsbEndpoint;)V

    const-string p4, "ncm-status-in"

    invoke-direct {p2, p1, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 64
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 61
    :cond_3
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->statusThread:Ljava/lang/Thread;

    return-void
.end method

.method private static final READ_CHUNK_BYTES_delegate$lambda$22()I
    .locals 3

    .line 305
    sget-object v0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->Companion:Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->getLegacyUsbRead()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$Companion;->readChunkBytes$shared_release(IZ)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getREAD_CHUNK_BYTES$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 25
    sget-object v0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->READ_CHUNK_BYTES$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final checkOpen()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->checkOpenLocked()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final checkOpenLocked()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez v0, :cond_1

    .line 295
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v1, "NCM bridge is closed"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 294
    :cond_1
    throw v0
.end method

.method private final drainFrames()V
    .locals 3

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->blocks:Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;

    new-instance v1, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->drain(Lkotlin/jvm/functions/Function2;)V
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$FramingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer$FramingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid NTB16 framing"

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failSession$default(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object v0

    throw v0
.end method

.method private static final drainFrames$lambda$14(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;[BI)Lkotlin/Unit;
    .locals 2

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->INSTANCE:Lcom/shilapi/xcertplay/transport/Ntb16Codec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->parse([BII)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->enqueueFrame([B)V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final drainStatus(Landroid/hardware/usb/UsbEndpoint;)V
    .locals 6

    .line 154
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 156
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->statusRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    :try_start_0
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0x14

    invoke-virtual {v3, p1, v1, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz v3, :cond_1

    const-wide/16 v3, 0x1f4

    .line 166
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_1
    if-nez v2, :cond_0

    .line 176
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v4, "copyOf(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-direct {p0, v2, v4}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->hex([BI)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ncm status notification bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    const-string/jumbo v3, "xcertplay-usb"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :catch_1
    :cond_2
    return-void
.end method

.method private final enqueueFrame([B)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->frames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->queuedBytes:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/high16 v1, 0x100000

    if-gt v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->frames:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 198
    iget v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->queuedBytes:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->queuedBytes:I

    return-void

    .line 195
    :cond_0
    const-string p1, "NCM frame queue exceeded its bounds"

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failSession$default(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1
.end method

.method private final failSession(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;
    .locals 1

    .line 282
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 284
    :try_start_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez p2, :cond_0

    move-object p2, v0

    check-cast p2, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    .line 285
    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method static synthetic failSession$default(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 281
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failSession(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p0

    return-object p0
.end method

.method private final hex([BI)Ljava/lang/String;
    .locals 9

    .line 183
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, ""

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v6, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda1;-><init>()V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final hex$lambda$13(B)Ljava/lang/CharSequence;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    .line 183
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final pollFrame()[B
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->frames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 203
    iget v1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->queuedBytes:I

    array-length v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->queuedBytes:I

    .line 204
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final queueRead(Landroid/hardware/usb/UsbRequest;)Z
    .locals 1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->directReadBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private final readChunk(J)Ljava/lang/Integer;
    .locals 13

    const-string v0, "NCM read of "

    const-string v1, "Android could not queue the NCM read request ("

    .line 208
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->checkOpen()V

    .line 209
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->legacyReader:Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readBuffer:[B

    invoke-static {p1, p2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    invoke-virtual {v2, v0, p1, p2}, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;->read([BJ)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p2, :cond_0

    return-object p1

    :cond_0
    return-object v5

    :catch_0
    move-exception p1

    .line 213
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->checkOpen()V

    .line 214
    const-string p2, "NCM read failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failSession(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1

    .line 219
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 220
    :try_start_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->checkOpenLocked()V

    .line 221
    iget-object v6, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readRequest:Landroid/hardware/usb/UsbRequest;

    const/4 v7, 0x2

    if-nez v6, :cond_3

    new-instance v6, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v6}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 222
    iget-object v8, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v9, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v6, v8, v9}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 226
    iput-object v6, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readRequest:Landroid/hardware/usb/UsbRequest;

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {v6}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 224
    const-string p1, "Android could not initialize the NCM read request"

    invoke-static {p0, p1, v5, v7, v5}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failSession$default(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1

    .line 228
    :cond_3
    :goto_0
    iget-boolean v8, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readQueued:Z

    if-nez v8, :cond_7

    .line 229
    iget-object v8, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->directReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 230
    iget v8, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->requestReadLimit:I

    iget-object v9, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->directReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v8, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->directReadBuffer:Ljava/nio/ByteBuffer;

    iget v9, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->requestReadLimit:I

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 231
    :cond_4
    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->queueRead(Landroid/hardware/usb/UsbRequest;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 233
    iget v9, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->requestReadLimit:I

    const/16 v10, 0x4000

    if-le v9, v10, :cond_5

    .line 235
    const-string/jumbo v8, "xcertplay-usb"

    .line 236
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes was refused (api="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "); retrying once at 16384 bytes and keeping that for this session"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iput v10, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->requestReadLimit:I

    .line 240
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->directReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 241
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->directReadBuffer:Ljava/nio/ByteBuffer;

    iget v8, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->requestReadLimit:I

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 242
    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->queueRead(Landroid/hardware/usb/UsbRequest;)Z

    move-result v8

    :cond_5
    if-eqz v8, :cond_6

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readQueued:Z

    goto :goto_1

    .line 244
    :cond_6
    iget p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->requestReadLimit:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v5, v7, v5}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failSession$default(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :cond_7
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 254
    :try_start_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {p1, p2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/usb/UsbDeviceConnection;J)Landroid/hardware/usb/UsbRequest;

    move-result-object p1
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz p1, :cond_a

    if-ne p1, v6, :cond_9

    const/4 p1, 0x0

    .line 261
    :try_start_5
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readQueued:Z

    .line 262
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->directReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    if-gtz p2, :cond_8

    return-object v5

    .line 264
    :cond_8
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->directReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 265
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->directReadBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readBuffer:[B

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 266
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 260
    :cond_9
    const-string p1, "Android completed an unexpected NCM request"

    invoke-static {p0, p1, v5, v7, v5}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failSession$default(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1

    .line 259
    :cond_a
    const-string p1, "Android returned no NCM read request"

    invoke-static {p0, p1, v5, v7, v5}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failSession$default(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1
    :try_end_5
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    .line 270
    const-string p2, "NCM read failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failSession(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 268
    throw p1

    :catch_3
    return-object v5

    :catchall_0
    move-exception p1

    .line 219
    :try_start_6
    monitor-exit v2

    throw p1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception p1

    .line 250
    const-string p2, "NCM read failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->failSession(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1
.end method

.method private static final statusThread$lambda$2$lambda$0(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->drainStatus(Landroid/hardware/usb/UsbEndpoint;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->statusRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 127
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->closed:Z

    .line 128
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readRequest:Landroid/hardware/usb/UsbRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 125
    monitor-exit v0

    const/4 v0, 0x0

    .line 131
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->cancel()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->legacyReader:Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;->cancel()V

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->statusThread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    .line 134
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    const-wide/16 v3, 0x10e

    .line 136
    :try_start_3
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 138
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 141
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->claimedInterfaces:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbInterface;

    .line 143
    :try_start_4
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    nop

    goto :goto_3

    .line 148
    :cond_4
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 149
    :try_start_5
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :goto_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->legacyReader:Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;->releaseAfterClose()V

    :cond_6
    return-void

    :catchall_2
    move-exception v1

    .line 125
    monitor-exit v0

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public final getHostMac()[B
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->descriptorMac:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final recv(J)[B
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4

    .line 105
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readLock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->checkOpen()V

    .line 107
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->frames:Ljava/util/ArrayDeque;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->pollFrame()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    .line 109
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    mul-long p1, p1, v5

    add-long/2addr v3, p1

    .line 111
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->drainFrames()V

    .line 112
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->frames:Ljava/util/ArrayDeque;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->pollFrame()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object p1

    .line 113
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long p1, v3, p1

    cmp-long v7, p1, v0

    if-gtz v7, :cond_3

    .line 114
    monitor-exit v2

    const/4 p1, 0x0

    return-object p1

    :cond_3
    const-wide/32 v7, 0xf423f

    add-long/2addr p1, v7

    .line 116
    :try_start_3
    div-long/2addr p1, v5

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readChunk(J)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 118
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->blocks:Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;

    iget-object v7, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->readBuffer:[B

    invoke-virtual {p2, v7, p1}, Lcom/shilapi/xcertplay/transport/Ntb16BlockBuffer;->append([BI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    .line 104
    :cond_4
    const-string/jumbo p1, "timeoutMillis must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final send([BI)V
    .locals 6

    const-string v0, "NCM write transferred "

    const-string v1, "frame"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->checkOpen()V

    if-lez p2, :cond_3

    .line 72
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    :try_start_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->checkOpenLocked()V

    .line 74
    iget v3, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->sequence:I

    add-int/lit8 v4, v3, 0x1

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->sequence:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    monitor-exit v2

    .line 76
    sget-object v2, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->INSTANCE:Lcom/shilapi/xcertplay/transport/Ntb16Codec;

    invoke-virtual {v2, p1, v3}, Lcom/shilapi/xcertplay/transport/Ntb16Codec;->build([BI)[B

    move-result-object p1

    .line 78
    sget-object v2, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbTransferLimits;

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->bulkWriteAll(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[BI)I

    move-result p2

    if-gtz p2, :cond_0

    .line 82
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->loggedWriteTimeout:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->loggedWriteTimeout:Z

    invoke-static {v3, v4}, Lcom/shilapi/xcertplay/E01WiredConfiguration;->logWriteState(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)V

    .line 84
    const-string/jumbo p1, "xcertplay-usb"

    const-string p2, "ncm bulk-out not ready; retaining bridge for retry"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_0
    array-length v2, p1

    if-ne p2, v2, :cond_2

    .line 93
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->loggedWriteTimeout:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->loggedWriteTimeout:Z

    .line 95
    const-string/jumbo p1, "xcertplay-usb"

    const-string p2, "ncm bulk-out became ready"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    monitor-exit v1

    return-void

    .line 89
    :cond_2
    :try_start_3
    new-instance v2, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    .line 90
    array-length p1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 89
    invoke-direct {v2, p1, v0, p2, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v2

    throw p1

    .line 71
    :cond_3
    const-string/jumbo p1, "timeoutMillis must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 69
    monitor-exit v1

    throw p1
.end method
