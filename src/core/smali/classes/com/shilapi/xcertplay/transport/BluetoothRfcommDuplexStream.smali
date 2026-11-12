.class public final Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;
.super Ljava/lang/Object;
.source "BluetoothRfcommDuplexStream.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothRfcommDuplexStream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothRfcommDuplexStream.kt\ncom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,220:1\n1#2:221\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000e\u0018\u0000 .2\u00020\u0001:\u0001.B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0016J\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u001cH\u0016J\u0008\u0010#\u001a\u00020\u001cH\u0002J\u0012\u0010$\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001f\u001a\u00020\u0012H\u0002J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u0018H\u0002J\n\u0010\'\u001a\u0004\u0018\u00010\u0018H\u0002J\u0008\u0010(\u001a\u00020\u0014H\u0002J\u0008\u0010)\u001a\u00020\u0014H\u0002J\u0010\u0010*\u001a\u00020!2\u0006\u0010 \u001a\u00020!H\u0002J\u001a\u0010+\u001a\u00020\u00182\u0008\u0010,\u001a\u0004\u0018\u00010\u00182\u0006\u0010-\u001a\u00020\u0018H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "socket",
        "Landroid/bluetooth/BluetoothSocket;",
        "<init>",
        "(Landroid/bluetooth/BluetoothSocket;)V",
        "lock",
        "Ljava/lang/Object;",
        "sendLock",
        "input",
        "Ljava/io/InputStream;",
        "kotlin.jvm.PlatformType",
        "output",
        "Ljava/io/OutputStream;",
        "pending",
        "Ljava/util/ArrayDeque;",
        "",
        "pendingBytes",
        "",
        "peerEnded",
        "",
        "closed",
        "socketCloseStarted",
        "failure",
        "Ljava/io/IOException;",
        "reader",
        "Ljava/lang/Thread;",
        "send",
        "",
        "data",
        "recv",
        "maxBytes",
        "timeoutMillis",
        "",
        "close",
        "readLoop",
        "takePendingLocked",
        "fail",
        "io",
        "closeSocketOnce",
        "isClosed",
        "endedCleanly",
        "deadlineAfter",
        "combine",
        "first",
        "second",
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
.field private static final CLOSE_JOIN_MILLIS:J = 0x3e8L

.field private static final Companion:Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream$Companion;

.field private static final EMPTY:[B

.field private static final MAX_PENDING_BYTES:I = 0x10000

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field private static final READ_CHUNK_BYTES:I = 0x2000


# instance fields
.field private closed:Z

.field private failure:Ljava/io/IOException;

.field private final input:Ljava/io/InputStream;

.field private final lock:Ljava/lang/Object;

.field private final output:Ljava/io/OutputStream;

.field private peerEnded:Z

.field private final pending:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private pendingBytes:I

.field private final reader:Ljava/lang/Thread;

.field private final sendLock:Ljava/lang/Object;

.field private final socket:Landroid/bluetooth/BluetoothSocket;

.field private socketCloseStarted:Z


# direct methods
.method public static synthetic $r8$lambda$9kW6kw-vSwz7VnS5D7oSl0-M7Qk(Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->readLoop()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->Companion:Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream$Companion;

    const/4 v0, 0x0

    .line 217
    new-array v0, v0, [B

    sput-object v0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 2

    const-string/jumbo v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->sendLock:Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->input:Ljava/io/InputStream;

    .line 20
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->output:Ljava/io/OutputStream;

    .line 21
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pending:Ljava/util/ArrayDeque;

    .line 28
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;)V

    const-string/jumbo v1, "xcertplay-bluetooth-rfcomm-reader"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 28
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->reader:Ljava/lang/Thread;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private final closeSocketOnce()Ljava/io/IOException;
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->socketCloseStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 185
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->socketCloseStarted:Z

    .line 186
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    monitor-exit v0

    .line 188
    :try_start_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 191
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 192
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not close the Bluetooth RFCOMM socket"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 191
    :cond_1
    throw v0

    :catchall_1
    move-exception v1

    .line 183
    monitor-exit v0

    throw v1
.end method

.method private final combine(Ljava/io/IOException;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-eq p1, p2, :cond_1

    .line 208
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    return-object p1
.end method

.method private final deadlineAfter(J)J
    .locals 7

    .line 201
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    const-wide v2, 0x7fffffffffffffffL

    sub-long v4, v2, v0

    cmp-long v6, v4, p1

    if-gez v6, :cond_0

    return-wide v2

    :cond_0
    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final endedCleanly()Z
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closed:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->peerEnded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final fail(Ljava/io/IOException;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->failure:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->failure:Ljava/io/IOException;

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 178
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit v0

    .line 179
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closeSocketOnce()Ljava/io/IOException;

    return-void

    :catchall_0
    move-exception p1

    .line 175
    monitor-exit v0

    throw p1
.end method

.method private final isClosed()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final readLoop()V
    .locals 6

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 117
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closed:Z

    const/high16 v3, 0x10000

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->failure:Ljava/io/IOException;

    if-nez v4, :cond_1

    iget v4, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pendingBytes:I

    if-lt v4, v3, :cond_1

    .line 118
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_1
    if-nez v2, :cond_6

    .line 120
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->failure:Ljava/io/IOException;

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 121
    :cond_2
    iget v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pendingBytes:I

    sub-int/2addr v3, v2

    const/16 v2, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 116
    :try_start_2
    monitor-exit v1

    .line 124
    new-array v1, v2, [B

    .line 125
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->input:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_0

    .line 135
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 136
    :try_start_3
    iget-boolean v5, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 155
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closeSocketOnce()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 156
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->isClosed()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->endedCleanly()Z

    move-result v1

    if-nez v1, :cond_c

    .line 157
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->fail(Ljava/io/IOException;)V

    return-void

    .line 137
    :cond_3
    :try_start_5
    iget-object v5, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pending:Ljava/util/ArrayDeque;

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 138
    iget v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pendingBytes:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pendingBytes:I

    .line 139
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 140
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    :try_start_6
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v2, 0x1

    .line 128
    :try_start_7
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->peerEnded:Z

    .line 129
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 130
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 127
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 155
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closeSocketOnce()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 156
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->isClosed()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->endedCleanly()Z

    move-result v1

    if-nez v1, :cond_c

    .line 157
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->fail(Ljava/io/IOException;)V

    return-void

    :catchall_1
    move-exception v2

    .line 127
    :try_start_9
    monitor-exit v1

    throw v2

    .line 120
    :cond_6
    :goto_3
    monitor-exit v1
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 155
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closeSocketOnce()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 156
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->isClosed()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->endedCleanly()Z

    move-result v1

    if-nez v1, :cond_c

    .line 157
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->fail(Ljava/io/IOException;)V

    return-void

    :catchall_2
    move-exception v2

    .line 116
    :try_start_a
    monitor-exit v1

    throw v2
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v1

    .line 151
    :try_start_b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bluetooth RFCOMM reader failed"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 152
    :try_start_c
    instance-of v0, v1, Ljava/lang/Error;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-nez v0, :cond_7

    .line 154
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->fail(Ljava/io/IOException;)V

    .line 155
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closeSocketOnce()Ljava/io/IOException;

    goto :goto_5

    .line 152
    :cond_7
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v1

    .line 149
    :try_start_e
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->isClosed()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-nez v2, :cond_8

    move-object v0, v1

    :cond_8
    if-eqz v0, :cond_9

    .line 154
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->fail(Ljava/io/IOException;)V

    .line 155
    :cond_9
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closeSocketOnce()Ljava/io/IOException;

    move-result-object v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_c

    .line 156
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->endedCleanly()Z

    move-result v0

    if-nez v0, :cond_c

    .line 157
    :goto_4
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->fail(Ljava/io/IOException;)V

    goto :goto_5

    :catch_1
    move-exception v1

    .line 144
    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 145
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 146
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bluetooth RFCOMM reader was interrupted"

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object v0, v2

    :cond_a
    if-eqz v0, :cond_b

    .line 154
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->fail(Ljava/io/IOException;)V

    .line 155
    :cond_b
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closeSocketOnce()Ljava/io/IOException;

    move-result-object v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_c

    .line 156
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->endedCleanly()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    :goto_5
    return-void

    :catchall_5
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6
    if-eqz v2, :cond_d

    .line 154
    invoke-direct {p0, v2}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->fail(Ljava/io/IOException;)V

    .line 155
    :cond_d
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closeSocketOnce()Ljava/io/IOException;

    move-result-object v1

    if-nez v2, :cond_e

    if-eqz v1, :cond_e

    .line 156
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->endedCleanly()Z

    move-result v2

    if-nez v2, :cond_e

    .line 157
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->fail(Ljava/io/IOException;)V

    :cond_e
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method private final takePendingLocked(I)[B
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 164
    :cond_0
    iget v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pendingBytes:I

    array-length v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pendingBytes:I

    .line 165
    array-length v1, v0

    if-gt v1, p1, :cond_1

    return-object v0

    .line 167
    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    array-length v2, v0

    invoke-static {v0, p1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 170
    iget v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pendingBytes:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->pendingBytes:I

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closed:Z

    .line 85
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit v0

    if-nez v1, :cond_1

    goto :goto_2

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closeSocketOnce()Ljava/io/IOException;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->reader:Ljava/lang/Thread;

    if-eq v1, v2, :cond_2

    const-wide/16 v3, 0x3e8

    .line 94
    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 99
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted while closing the Bluetooth RFCOMM reader"

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-direct {p0, v0, v2}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->combine(Ljava/io/IOException;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->reader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bluetooth RFCOMM reader did not stop after close"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->combine(Ljava/io/IOException;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    :goto_2
    return-void

    .line 109
    :cond_3
    throw v0

    :catchall_0
    move-exception v1

    .line 80
    monitor-exit v0

    throw v1
.end method

.method public recv(IJ)[B
    .locals 11

    if-lez p1, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->deadlineAfter(J)J

    move-result-wide p2

    .line 57
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->takePendingLocked(I)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v2

    return-object v3

    .line 60
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->failure:Ljava/io/IOException;

    if-nez v3, :cond_4

    .line 61
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->peerEnded:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closed:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v3, p2, v3

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-gtz v6, :cond_2

    .line 64
    monitor-exit v2

    return-object v5

    .line 66
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    const-wide/32 v7, 0xf4240

    .line 67
    div-long v9, v3, v7

    .line 68
    rem-long/2addr v3, v7

    long-to-int v4, v3

    .line 66
    invoke-virtual {v6, v9, v10, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 71
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    monitor-exit v2

    return-object v5

    .line 61
    :cond_3
    :goto_1
    :try_start_4
    sget-object p1, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->EMPTY:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    return-object p1

    .line 60
    :cond_4
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v2

    throw p1

    .line 54
    :cond_5
    const-string/jumbo p1, "timeoutMillis must not be negative"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
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
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->sendLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->failure:Ljava/io/IOException;

    if-nez v2, :cond_1

    .line 40
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->closed:Z

    if-nez v2, :cond_0

    .line 41
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    :try_start_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 44
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :try_start_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 46
    :try_start_5
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/BluetoothRfcommDuplexStream;->fail(Ljava/io/IOException;)V

    .line 47
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 40
    :cond_0
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    const-string v2, "Bluetooth RFCOMM stream is closed"

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    .line 38
    :try_start_7
    monitor-exit v1

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 37
    monitor-exit v0

    throw p1
.end method
