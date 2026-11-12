.class public final Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;
.super Ljava/lang/Object;
.source "Iap2UsbMuxHost.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2UsbMuxHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2UsbMuxHost.kt\ncom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,559:1\n1#2:560\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0013\u0018\u0000 12\u00020\u0001:\u00011B!\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0011H\u0016J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u001aH\u0016J\r\u0010!\u001a\u00020\u001aH\u0000\u00a2\u0006\u0002\u0008\"J\u0015\u0010#\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001fH\u0000\u00a2\u0006\u0002\u0008$J\r\u0010%\u001a\u00020\u001aH\u0000\u00a2\u0006\u0002\u0008&J\u0019\u0010\'\u001a\u00020\u001a2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0018H\u0000\u00a2\u0006\u0002\u0008)J%\u0010*\u001a\u00020\u001a2\u0006\u0010+\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008.J\u0010\u0010/\u001a\u00020\u001a2\u0006\u0010+\u001a\u00020\u0005H\u0002J\u0008\u00100\u001a\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "host",
        "Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;",
        "sourcePort",
        "",
        "destinationPort",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;II)V",
        "getSourcePort$shared_release",
        "()I",
        "stateLock",
        "Ljava/lang/Object;",
        "writeLock",
        "",
        "received",
        "Ljava/util/ArrayDeque;",
        "",
        "nextSequence",
        "nextAcknowledgement",
        "connected",
        "",
        "closed",
        "failure",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbException;",
        "send",
        "",
        "data",
        "recv",
        "maxBytes",
        "timeoutMillis",
        "",
        "close",
        "beginConnect",
        "beginConnect$shared_release",
        "awaitConnected",
        "awaitConnected$shared_release",
        "abort",
        "abort$shared_release",
        "closeFromHost",
        "error",
        "closeFromHost$shared_release",
        "onPacket",
        "flags",
        "sequence",
        "payload",
        "onPacket$shared_release",
        "sendControl",
        "checkConnectedLocked",
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
.field private static final Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection$Companion;

.field public static final MAX_SEND_PAYLOAD_BYTES:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NANOS_PER_MILLISECOND:J = 0xf4240L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TCP_ACK:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TCP_FIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TCP_RST:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TCP_SYN:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private connected:Z

.field private final destinationPort:I

.field private failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

.field private final host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

.field private nextAcknowledgement:I

.field private nextSequence:I

.field private final received:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private final sourcePort:I

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->Companion:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;II)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    .line 341
    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->sourcePort:I

    .line 342
    iput p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->destinationPort:I

    .line 344
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    .line 345
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->writeLock:Ljava/lang/Object;

    .line 346
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->received:Ljava/util/ArrayDeque;

    return-void
.end method

.method private final checkConnectedLocked()V
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez v0, :cond_1

    .line 547
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->connected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v1, "USBMUX TCP connection is not open"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 546
    :cond_1
    throw v0
.end method

.method public static synthetic closeFromHost$shared_release$default(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;Lcom/shilapi/xcertplay/transport/IphoneUsbException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 478
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closeFromHost$shared_release(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    return-void
.end method

.method private final sendControl(I)V
    .locals 10

    .line 533
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextSequence:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextAcknowledgement:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 535
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    .line 536
    iget v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->sourcePort:I

    .line 537
    iget v5, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->destinationPort:I

    .line 538
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 539
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v0, 0x0

    .line 541
    new-array v9, v0, [B

    move v8, p1

    .line 535
    invoke-virtual/range {v3 .. v9}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->sendTcp$shared_release(IIIII[B)V

    .line 543
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 533
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 534
    :try_start_3
    monitor-exit v2

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 533
    monitor-exit v1

    throw p1
.end method


# virtual methods
.method public final abort$shared_release()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 464
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z

    .line 465
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    monitor-exit v0

    const/16 v0, 0x14

    .line 470
    :try_start_2
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->sendControl(I)V
    :try_end_2
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_2 .. :try_end_2} :catch_0

    .line 475
    :catch_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->removeConnection$shared_release(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;)V

    return-void

    :catchall_0
    move-exception v1

    .line 462
    monitor-exit v0

    throw v1
.end method

.method public final awaitConnected$shared_release(J)Z
    .locals 9

    .line 444
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    .line 445
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 446
    :goto_0
    :try_start_0
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->connected:Z

    const/4 v4, 0x0

    if-nez p2, :cond_1

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z

    if-nez v5, :cond_1

    .line 447
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v5, v0, v5

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-gtz p2, :cond_0

    .line 448
    monitor-exit p1

    return v4

    .line 450
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    div-long v7, v5, v2

    rem-long/2addr v5, v2

    long-to-int v4, v5

    invoke-virtual {p2, v7, v8, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 452
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 453
    new-instance p2, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v0, "Interrupted while connecting USBMUX TCP"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 457
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_2

    const/4 v4, 0x1

    :cond_2
    monitor-exit p1

    return v4

    .line 456
    :cond_3
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p2

    .line 457
    monitor-exit p1

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final beginConnect$shared_release()V
    .locals 1

    const/4 v0, 0x2

    .line 440
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->sendControl(I)V

    return-void
.end method

.method public close()V
    .locals 10

    .line 413
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 415
    :try_start_1
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z

    .line 416
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 417
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 413
    monitor-exit v1

    if-eqz v0, :cond_1

    .line 421
    :try_start_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->writeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_2 .. :try_end_2} :catch_0

    .line 422
    :try_start_3
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextSequence:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextAcknowledgement:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v2

    .line 423
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    .line 424
    iget v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->sourcePort:I

    .line 425
    iget v5, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->destinationPort:I

    .line 426
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 427
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v0, 0x0

    .line 429
    new-array v9, v0, [B

    const/16 v8, 0x11

    .line 423
    invoke-virtual/range {v3 .. v9}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->sendTcp$shared_release(IIIII[B)V

    .line 431
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 421
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 422
    :try_start_7
    monitor-exit v2

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    .line 421
    :try_start_8
    monitor-exit v1

    throw v0
    :try_end_8
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_8 .. :try_end_8} :catch_0

    .line 436
    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->removeConnection$shared_release(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;)V

    return-void

    :catchall_2
    move-exception v0

    .line 413
    monitor-exit v1

    throw v0
.end method

.method public final closeFromHost$shared_release(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    :cond_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    const/4 p1, 0x1

    .line 481
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z

    .line 482
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 483
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getSourcePort$shared_release()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->sourcePort:I

    return v0
.end method

.method public final onPacket$shared_release(II[B)V
    .locals 4

    const-string v0, "payload"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 487
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 488
    :try_start_0
    new-instance p2, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string p3, "USBMUX TCP connection was reset by the peer"

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {p2, p3, v0, v2, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    .line 489
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z

    .line 490
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 491
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p1

    .line 492
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->removeConnection$shared_release(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;)V

    return-void

    :catchall_0
    move-exception p2

    .line 487
    monitor-exit p1

    throw p2

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/16 v2, 0x10

    if-eqz v0, :cond_3

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    .line 496
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 497
    :try_start_1
    iget-boolean p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p3, :cond_1

    monitor-exit p1

    return-void

    .line 498
    :cond_1
    :try_start_2
    iget p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextSequence:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextSequence:I

    add-int/2addr p2, v1

    .line 499
    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextAcknowledgement:I

    .line 500
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 496
    monitor-exit p1

    .line 501
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->sendControl(I)V

    .line 502
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 503
    :try_start_3
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z

    if-nez p2, :cond_2

    .line 504
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->connected:Z

    .line 505
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 507
    :cond_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 502
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :catchall_2
    move-exception p2

    .line 496
    monitor-exit p1

    throw p2

    .line 510
    :cond_3
    array-length p2, p3

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_6

    .line 511
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter p2

    .line 512
    :try_start_4
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_5

    monitor-exit p2

    return-void

    .line 513
    :cond_5
    :try_start_5
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextAcknowledgement:I

    array-length v3, p3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextAcknowledgement:I

    .line 514
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->received:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 515
    iget-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 516
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 511
    monitor-exit p2

    .line 517
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->sendControl(I)V

    goto :goto_1

    :catchall_3
    move-exception p1

    .line 511
    monitor-exit p2

    throw p1

    :cond_6
    :goto_1
    and-int/2addr p1, v1

    if-eqz p1, :cond_8

    .line 520
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 521
    :try_start_6
    iget-boolean p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz p2, :cond_7

    monitor-exit p1

    return-void

    .line 522
    :cond_7
    :try_start_7
    iget p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextAcknowledgement:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextAcknowledgement:I

    .line 523
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 520
    monitor-exit p1

    .line 524
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->sendControl(I)V

    .line 525
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 526
    :try_start_8
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z

    .line 527
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 528
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 525
    monitor-exit p1

    .line 529
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->removeConnection$shared_release(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;)V

    return-void

    :catchall_4
    move-exception p2

    .line 525
    monitor-exit p1

    throw p2

    :catchall_5
    move-exception p2

    .line 520
    monitor-exit p1

    throw p2

    :cond_8
    return-void
.end method

.method public recv(IJ)[B
    .locals 11

    if-lez p1, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_5

    .line 386
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long p2, p2, v4

    add-long/2addr v2, p2

    .line 387
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter p2

    .line 388
    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->received:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->closed:Z

    if-nez p3, :cond_1

    .line 389
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v6, v2, v6

    const/4 p3, 0x0

    cmp-long v8, v6, v0

    if-gtz v8, :cond_0

    .line 390
    monitor-exit p2

    return-object p3

    .line 392
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    div-long v9, v6, v4

    rem-long/2addr v6, v4

    long-to-int v7, v6

    invoke-virtual {v8, v9, v10, v7}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 395
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v0, "Interrupted while waiting for USBMUX TCP data"

    const/4 v1, 0x2

    invoke-direct {p1, v0, p3, v1, p3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 398
    :cond_1
    iget-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->failure:Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    if-nez p3, :cond_4

    .line 399
    iget-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->received:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    .line 400
    new-array p1, p1, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    return-object p1

    .line 402
    :cond_2
    :try_start_3
    iget-object p3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->received:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 403
    array-length v0, p3

    if-gt v0, p1, :cond_3

    goto :goto_1

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->received:Ljava/util/ArrayDeque;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, p3

    invoke-static {p3, p1, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 407
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    const-string p1, "copyOf(...)"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    :goto_1
    monitor-exit p2

    return-object p3

    .line 398
    :cond_4
    :try_start_4
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 403
    monitor-exit p2

    throw p1

    .line 385
    :cond_5
    const-string/jumbo p1, "timeoutMillis must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 384
    :cond_6
    const-string p1, "maxBytes must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public send([B)V
    .locals 11

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->checkConnectedLocked()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v1

    const/4 v0, 0x0

    .line 357
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 358
    array-length v1, p1

    sub-int/2addr v1, v0

    const/16 v2, 0x4000

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v2, v0, v1

    .line 359
    invoke-static {p1, v0, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v9

    .line 360
    iget-object v10, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->writeLock:Ljava/lang/Object;

    monitor-enter v10

    .line 361
    :try_start_1
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 362
    :try_start_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->checkConnectedLocked()V

    .line 363
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextSequence:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextAcknowledgement:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 361
    :try_start_3
    monitor-exit v3

    .line 365
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    .line 366
    iget v4, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->sourcePort:I

    .line 367
    iget v5, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->destinationPort:I

    .line 368
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 369
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/16 v8, 0x10

    .line 365
    invoke-virtual/range {v3 .. v9}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->sendTcp$shared_release(IIIII[B)V

    .line 373
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextSequence:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;->nextSequence:I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v3

    .line 374
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 360
    monitor-exit v10

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 373
    :try_start_6
    monitor-exit v3

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 361
    monitor-exit v3

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object p1, v0

    .line 360
    monitor-exit v10

    throw p1

    :cond_0
    return-void

    :catchall_3
    move-exception v0

    move-object p1, v0

    .line 355
    monitor-exit v1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
