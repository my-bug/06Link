.class public final Lcom/shilapi/xcertplay/transport/Iap2UsbSession;
.super Ljava/lang/Object;
.source "IphoneUsbHost.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2UsbSession$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIphoneUsbHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IphoneUsbHost.kt\ncom/shilapi/xcertplay/transport/Iap2UsbSession\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,531:1\n1#2:532\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\u0018\u0000 62\u00020\u0001:\u00016B!\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u0015J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001e\u001a\u00020 J\u0018\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u0015H\u0002J\u001a\u0010\'\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020 H\u0002J\u0008\u0010)\u001a\u00020\u001cH\u0016J\u0008\u0010*\u001a\u00020\u001cH\u0002J\u0008\u0010+\u001a\u00020\u001cH\u0002J\u0010\u0010,\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u001c\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u000102H\u0002J!\u00103\u001a\u0002002\u0006\u0010\u001e\u001a\u00020 2\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0002\u00105R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2UsbSession;",
        "Ljava/io/Closeable;",
        "connection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "outEndpoint",
        "Landroid/hardware/usb/UsbEndpoint;",
        "inEndpoint",
        "<init>",
        "(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V",
        "stateLock",
        "",
        "readLock",
        "writeLock",
        "closed",
        "",
        "failure",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException;",
        "pendingRead",
        "Landroid/hardware/usb/UsbRequest;",
        "legacyUsbfsRead",
        "readChunkBytes",
        "",
        "requestFallbackUsed",
        "legacyReader",
        "Lcom/shilapi/xcertplay/transport/LegacyBulkReader;",
        "legacyBuffer",
        "",
        "write",
        "",
        "data",
        "timeoutMillis",
        "read",
        "",
        "queueRead",
        "request",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "fallBackTo16k",
        "refusedBytes",
        "readLegacy",
        "reader",
        "close",
        "checkOpen",
        "checkOpenLocked",
        "drainCancelledRead",
        "failSession",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;",
        "message",
        "",
        "cause",
        "",
        "requestDiagnostics",
        "bufferBytes",
        "(JLjava/lang/Integer;)Ljava/lang/String;",
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
.field private static final CANCEL_DRAIN_TIMEOUT_MILLIS:J = 0x3e8L

.field public static final Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbSession$Companion;

.field public static final USBMUX_READ_CHUNK_BYTES_DEFAULT:I = 0x10000

.field public static final USBMUX_READ_CHUNK_BYTES_LEGACY:I = 0x4000


# instance fields
.field private closed:Z

.field private final connection:Landroid/hardware/usb/UsbDeviceConnection;

.field private failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

.field private final inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final legacyBuffer:[B

.field private final legacyReader:Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

.field private final legacyUsbfsRead:Z

.field private final outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private pendingRead:Landroid/hardware/usb/UsbRequest;

.field private volatile readChunkBytes:I

.field private final readLock:Ljava/lang/Object;

.field private requestFallbackUsed:Z

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbSession$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outEndpoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inEndpoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 333
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 334
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 336
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->stateLock:Ljava/lang/Object;

    .line 337
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->readLock:Ljava/lang/Object;

    .line 338
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->writeLock:Ljava/lang/Object;

    .line 347
    sget-object p2, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->getLegacyUsbRead()Z

    move-result p2

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->legacyUsbfsRead:Z

    .line 348
    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbSession$Companion;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, p2}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession$Companion;->usbmuxReadChunkBytes$shared_release(IZ)I

    move-result v0

    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->readChunkBytes:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 351
    new-instance p2, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->readChunkBytes:I

    invoke-direct {p2, p1, p3, v1}, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;I)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 350
    :goto_0
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->legacyReader:Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

    if-eqz p2, :cond_1

    .line 353
    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->readChunkBytes:I

    new-array v0, p1, [B

    :cond_1
    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->legacyBuffer:[B

    return-void
.end method

.method private final checkOpen()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->checkOpenLocked()V

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

    .line 474
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez v0, :cond_1

    .line 475
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v1, "USBMUX session is closed"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 474
    :cond_1
    throw v0
.end method

.method private final drainCancelledRead(Landroid/hardware/usb/UsbRequest;)V
    .locals 5

    .line 479
    invoke-virtual {p1}, Landroid/hardware/usb/UsbRequest;->cancel()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    const-wide/16 v3, 0x3e8

    invoke-static {v0, v3, v4}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/usb/UsbDeviceConnection;J)Landroid/hardware/usb/UsbRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p1, :cond_0

    return-void

    .line 488
    :cond_0
    const-string p1, "Android did not drain the cancelled USBMUX read request"

    invoke-static {p0, p1, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failSession$default(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1

    .line 485
    :catch_0
    const-string p1, "Timed out draining cancelled USBMUX read request"

    invoke-static {p0, p1, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failSession$default(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1

    .line 480
    :cond_1
    const-string p1, "Android could not cancel timed out USBMUX read request"

    invoke-static {p0, p1, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failSession$default(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1
.end method

.method private final failSession(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;
    .locals 1

    .line 493
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 495
    :try_start_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez p2, :cond_0

    move-object p2, v0

    check-cast p2, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    .line 496
    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method static synthetic failSession$default(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 492
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failSession(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p0

    return-object p0
.end method

.method private final fallBackTo16k(I)Z
    .locals 5

    .line 435
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->requestFallbackUsed:Z

    if-nez v0, :cond_1

    const/16 v0, 0x4000

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 436
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->requestFallbackUsed:Z

    .line 437
    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->readChunkBytes:I

    const-wide/16 v2, 0x0

    .line 440
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->requestDiagnostics(JLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 441
    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->readChunkBytes:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "USBMUX read of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes was refused ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "); retrying once at "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes and keeping that for this session"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 438
    const-string/jumbo v0, "xcertplay-usb"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final queueRead(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z
    .locals 0

    .line 429
    :try_start_0
    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private final readLegacy(Lcom/shilapi/xcertplay/transport/LegacyBulkReader;J)[B
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->legacyBuffer:[B

    if-eqz v0, :cond_1

    .line 449
    :try_start_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;->read([BJ)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 451
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->checkOpen()V

    .line 452
    const-string p2, "USBMUX read failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p2, p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failSession(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object p1

    throw p1

    .line 447
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final requestDiagnostics(JLjava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, " endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    # invokes: Lcom/shilapi/xcertplay/transport/IphoneUsbHostKt;->describeUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)Ljava/lang/String;
    invoke-static {v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHostKt;->access$describeUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v1, " timeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 504
    const-string p1, " bufferBytes="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic requestDiagnostics$default(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;JLjava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 500
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->requestDiagnostics(JLjava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 460
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->closed:Z

    .line 461
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->pendingRead:Landroid/hardware/usb/UsbRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->cancel()Z

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->legacyReader:Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;->cancel()V

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 466
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->legacyReader:Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/LegacyBulkReader;->releaseAfterClose()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 458
    monitor-exit v0

    throw v1
.end method

.method public final read(J)[B
    .locals 13

    const-string v0, "Android could not queue USBMUX read request ("

    const-string v7, "Android could not initialize USBMUX read request ("

    .line 369
    iget-object v8, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->readLock:Ljava/lang/Object;

    monitor-enter v8

    .line 370
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->checkOpen()V

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-lez v6, :cond_a

    .line 372
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->legacyReader:Lcom/shilapi/xcertplay/transport/LegacyBulkReader;

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->readLegacy(Lcom/shilapi/xcertplay/transport/LegacyBulkReader;J)[B

    move-result-object v0

    goto/16 :goto_0

    .line 373
    :cond_0
    new-instance v9, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v9}, Landroid/hardware/usb/UsbRequest;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 376
    :try_start_1
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v9, v4, v5}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    move-result v4

    const/4 v12, 0x2

    if-eqz v4, :cond_7

    const/4 v11, 0x1

    .line 382
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 383
    :try_start_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->checkOpenLocked()V

    .line 384
    iput-object v9, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->pendingRead:Landroid/hardware/usb/UsbRequest;

    .line 385
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 382
    :try_start_3
    monitor-exit v4

    .line 386
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget v5, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->readChunkBytes:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 387
    iget-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v6, "element"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v9, v5}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->queueRead(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 389
    iget-object v6, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->fallBackTo16k(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 390
    iget v5, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->readChunkBytes:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 391
    iget-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v6, "element"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v9, v5}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->queueRead(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z

    move-result v5
    :try_end_3
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v5, :cond_6

    .line 399
    :try_start_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v0, p1, p2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/usb/UsbDeviceConnection;J)Landroid/hardware/usb/UsbRequest;

    move-result-object v0
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_4

    if-ne v0, v9, :cond_3

    .line 410
    :try_start_5
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    .line 411
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 412
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 419
    :try_start_6
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 420
    :try_start_7
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->pendingRead:Landroid/hardware/usb/UsbRequest;

    if-ne v3, v9, :cond_2

    iput-object v10, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->pendingRead:Landroid/hardware/usb/UsbRequest;

    .line 421
    :cond_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 419
    :try_start_8
    monitor-exit v2

    .line 422
    invoke-virtual {v9}, Landroid/hardware/usb/UsbRequest;->cancel()Z

    .line 423
    invoke-virtual {v9}, Landroid/hardware/usb/UsbRequest;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 419
    monitor-exit v2

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 408
    :cond_3
    :try_start_9
    const-string v0, "Android completed an unexpected USB request"

    invoke-static {p0, v0, v10, v12, v10}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failSession$default(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object v0

    throw v0

    .line 405
    :cond_4
    const-string v0, "Android returned no USBMUX read request"

    invoke-static {p0, v0, v10, v12, v10}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failSession$default(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object v0

    throw v0

    .line 401
    :catch_0
    invoke-direct {p0, v9}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->drainCancelledRead(Landroid/hardware/usb/UsbRequest;)V
    :try_end_9
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 419
    :try_start_a
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 420
    :try_start_b
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->pendingRead:Landroid/hardware/usb/UsbRequest;

    if-ne v0, v9, :cond_5

    iput-object v10, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->pendingRead:Landroid/hardware/usb/UsbRequest;

    .line 421
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 419
    :try_start_c
    monitor-exit v2

    .line 422
    invoke-virtual {v9}, Landroid/hardware/usb/UsbRequest;->cancel()Z

    .line 423
    invoke-virtual {v9}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object v0, v10

    .line 369
    :goto_0
    monitor-exit v8

    return-object v0

    :catchall_1
    move-exception v0

    .line 419
    :try_start_d
    monitor-exit v2

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 394
    :cond_6
    :try_start_e
    new-instance v5, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    .line 395
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->requestDiagnostics(JLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-direct {v5, v0, v10, v12, v10}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v5

    :catchall_2
    move-exception v0

    .line 382
    monitor-exit v4

    throw v0

    .line 377
    :cond_7
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-wide v2, p1

    .line 378
    invoke-static/range {v1 .. v6}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->requestDiagnostics$default(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;JLjava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-direct {v0, v2, v10, v12, v10}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_e
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 417
    :try_start_f
    const-string v2, "USBMUX read failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->failSession(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    .line 415
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 419
    :goto_1
    :try_start_10
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 420
    :try_start_11
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->pendingRead:Landroid/hardware/usb/UsbRequest;

    if-ne v3, v9, :cond_8

    iput-object v10, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->pendingRead:Landroid/hardware/usb/UsbRequest;

    .line 421
    :cond_8
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 419
    :try_start_12
    monitor-exit v2

    if-eqz v11, :cond_9

    .line 422
    invoke-virtual {v9}, Landroid/hardware/usb/UsbRequest;->cancel()Z

    .line 423
    :cond_9
    invoke-virtual {v9}, Landroid/hardware/usb/UsbRequest;->close()V

    throw v0

    :catchall_4
    move-exception v0

    .line 419
    monitor-exit v2

    throw v0

    .line 371
    :cond_a
    const-string/jumbo v0, "timeoutMillis must be positive"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_5
    move-exception v0

    .line 369
    monitor-exit v8

    throw v0
.end method

.method public final write([BI)V
    .locals 5

    const-string v0, "USBMUX write transferred "

    const-string v1, "data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->checkOpen()V

    if-lez p2, :cond_2

    .line 358
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    sget-object v2, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbTransferLimits;

    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/shilapi/xcertplay/transport/UsbTransferLimits;->bulkWriteAll(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[BI)I

    move-result p2

    .line 361
    array-length v2, p1

    if-ne p2, v2, :cond_1

    .line 366
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit v1

    return-void

    .line 362
    :cond_1
    :try_start_1
    new-instance v2, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    .line 363
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

    .line 362
    invoke-direct {v2, p1, v0, p2, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 357
    :cond_2
    const-string/jumbo p1, "timeoutMillis must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 355
    monitor-exit v1

    throw p1
.end method
