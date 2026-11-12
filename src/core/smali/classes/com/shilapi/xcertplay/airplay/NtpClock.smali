.class public final Lcom/shilapi/xcertplay/airplay/NtpClock;
.super Ljava/lang/Object;
.source "NtpClock.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/NtpClock$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtpClock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtpClock.kt\ncom/shilapi/xcertplay/airplay/NtpClock\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,276:1\n1#2:277\n12518#3,2:278\n*S KotlinDebug\n*F\n+ 1 NtpClock.kt\ncom/shilapi/xcertplay/airplay/NtpClock\n*L\n198#1:278,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0012\n\u0002\u0008\n\u0018\u0000 E2\u00020\u0001:\u0001EB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010,\u001a\u00020$J*\u0010-\u001a\u00020\u00152\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2\u0016\u0008\u0002\u00100\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\'\u0018\u000101J\u0016\u00102\u001a\u00020\'2\u0006\u00103\u001a\u00020/2\u0006\u00104\u001a\u00020\u0015J\u0006\u00105\u001a\u00020\u001bJ\u0008\u00106\u001a\u00020\'H\u0016J\u0008\u00107\u001a\u00020\'H\u0002J\u0008\u00108\u001a\u00020\'H\u0002J\u0008\u00109\u001a\u00020\'H\u0002J\u0018\u0010:\u001a\u00020\'2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u000fH\u0002J\u0018\u0010>\u001a\u00020\'2\u0006\u0010?\u001a\u00020<2\u0006\u0010=\u001a\u00020\u000fH\u0002J\u0010\u0010@\u001a\u00020\'2\u0006\u0010A\u001a\u00020<H\u0002J\u0010\u0010B\u001a\u00020\'2\u0006\u0010C\u001a\u00020\u0018H\u0002J\n\u0010D\u001a\u0004\u0018\u00010\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010%\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006F"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/NtpClock;",
        "Ljava/io/Closeable;",
        "<init>",
        "()V",
        "running",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "socketLock",
        "",
        "clockLock",
        "socket",
        "Ljava/net/DatagramSocket;",
        "receiver",
        "Ljava/lang/Thread;",
        "sender",
        "peer",
        "Ljava/net/InetSocketAddress;",
        "clockOffsetNs",
        "",
        "delays",
        "",
        "delayIndex",
        "",
        "pickCount",
        "pickRtt",
        "",
        "pickOffset",
        "pendingT1",
        "Ljava/math/BigInteger;",
        "synced",
        "",
        "requestsSent",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "sendErrors",
        "responsesReceived",
        "requestsAnswered",
        "lastSendError",
        "",
        "onResponse",
        "Lkotlin/Function0;",
        "",
        "getOnResponse",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnResponse",
        "(Lkotlin/jvm/functions/Function0;)V",
        "stats",
        "listen",
        "localAddress",
        "Ljava/net/InetAddress;",
        "log",
        "Lkotlin/Function1;",
        "start",
        "peerAddress",
        "port",
        "syncedNtp",
        "close",
        "runSender",
        "sendRequest",
        "runReceiver",
        "handleMessage",
        "message",
        "",
        "source",
        "respondToRequest",
        "request",
        "handleResponse",
        "response",
        "applyOffset",
        "offsetSec",
        "currentSocket",
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
.field private static final Companion:Lcom/shilapi/xcertplay/airplay/NtpClock$Companion;

.field public static final DELAY_WINDOW:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NTP_ORIGINATE_OFFSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NTP_PACKET_BYTES:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NTP_RECEIVE_OFFSET:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NTP_TRANSMIT_OFFSET:I = 0x18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PICK_COUNT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PT_REQUEST:I = 0xd2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PT_RESPONSE:I = 0xd3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECEIVE_BUFFER_BYTES:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REQUEST_INTERVAL_MS:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SLEW_GAIN:D = 0.125
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STEP_THRESHOLD_SEC:D = 0.128
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TWO32_DOUBLE:D = 4.294967296E9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final clockLock:Ljava/lang/Object;

.field private clockOffsetNs:J

.field private delayIndex:I

.field private final delays:[D

.field private volatile lastSendError:Ljava/lang/String;

.field private volatile onResponse:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile peer:Ljava/net/InetSocketAddress;

.field private pendingT1:Ljava/math/BigInteger;

.field private pickCount:I

.field private pickOffset:D

.field private pickRtt:D

.field private receiver:Ljava/lang/Thread;

.field private final requestsAnswered:Ljava/util/concurrent/atomic/AtomicLong;

.field private final requestsSent:Ljava/util/concurrent/atomic/AtomicLong;

.field private final responsesReceived:Ljava/util/concurrent/atomic/AtomicLong;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sendErrors:Ljava/util/concurrent/atomic/AtomicLong;

.field private sender:Ljava/lang/Thread;

.field private socket:Ljava/net/DatagramSocket;

.field private final socketLock:Ljava/lang/Object;

.field private synced:Z


# direct methods
.method public static synthetic $r8$lambda$1wZbRUVhnIUXDG_EahIUg9stL8Y(Lcom/shilapi/xcertplay/airplay/NtpClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->runSender()V

    return-void
.end method

.method public static synthetic $r8$lambda$9WzI77N5nnH4xMGmQ3x3vlU7FMQ(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->listen$lambda$5(Ljava/net/DatagramSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w__6eEbkNih8Q3cBL-MJ5BTLpEM(Lcom/shilapi/xcertplay/airplay/NtpClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->runReceiver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/NtpClock$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/NtpClock$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/NtpClock;->Companion:Lcom/shilapi/xcertplay/airplay/NtpClock$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->socketLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->clockLock:Ljava/lang/Object;

    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    # invokes: Lcom/shilapi/xcertplay/airplay/NtpClockKt;->wallClockNtpOffsetNs(J)J
    invoke-static {v2, v3}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->access$wallClockNtpOffsetNs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->clockOffsetNs:J

    const/16 v0, 0x8

    .line 30
    new-array v2, v0, [D

    :goto_0
    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ge v1, v0, :cond_0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->delays:[D

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickCount:I

    .line 33
    iput-wide v3, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickRtt:D

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->requestsSent:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->sendErrors:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->responsesReceived:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->requestsAnswered:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private final applyOffset(D)V
    .locals 12

    .line 206
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->synced:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3fc0624dd2f1a9fcL    # 0.128

    cmpl-double v0, v3, v5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-wide/high16 v3, 0x3fc0000000000000L    # 0.125

    mul-double p1, p1, v3

    .line 208
    :goto_2
    iget-wide v3, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->clockOffsetNs:J

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double p1, p1, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    add-long/2addr v3, p1

    iput-wide v3, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->clockOffsetNs:J

    if-eqz v0, :cond_3

    .line 210
    iget-object v5, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->delays:[D

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lkotlin/collections/ArraysKt;->fill$default([DDIIILjava/lang/Object;)V

    .line 211
    iput v1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->delayIndex:I

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pendingT1:Ljava/math/BigInteger;

    .line 213
    iput-boolean v2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->synced:Z

    :cond_3
    return-void
.end method

.method private final currentSocket()Ljava/net/DatagramSocket;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->socketLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final handleMessage([BLjava/net/InetSocketAddress;)V
    .locals 2

    const/4 v0, 0x1

    .line 149
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_2

    const/16 p2, 0xd3

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->responsesReceived:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 153
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/NtpClock;->handleResponse([B)V

    .line 154
    :try_start_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->onResponse:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->requestsAnswered:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/NtpClock;->respondToRequest([BLjava/net/InetSocketAddress;)V

    return-void
.end method

.method private final handleResponse([B)V
    .locals 13

    .line 171
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->syncedNtp()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x8

    .line 172
    # invokes: Lcom/shilapi/xcertplay/airplay/NtpClockKt;->readNtp([BI)Ljava/math/BigInteger;
    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->access$readNtp([BI)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    .line 173
    # invokes: Lcom/shilapi/xcertplay/airplay/NtpClockKt;->readNtp([BI)Ljava/math/BigInteger;
    invoke-static {p1, v3}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->access$readNtp([BI)Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x18

    .line 174
    # invokes: Lcom/shilapi/xcertplay/airplay/NtpClockKt;->readNtp([BI)Ljava/math/BigInteger;
    invoke-static {p1, v4}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->access$readNtp([BI)Ljava/math/BigInteger;

    move-result-object p1

    .line 176
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->clockLock:Ljava/lang/Object;

    monitor-enter v4

    .line 177
    :try_start_0
    iget-object v5, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pendingT1:Ljava/math/BigInteger;

    if-eqz v5, :cond_7

    .line 178
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v5, 0x0

    .line 179
    iput-object v5, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pendingT1:Ljava/math/BigInteger;

    .line 180
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    monitor-exit v4

    .line 182
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x41f0000000000000L    # 4.294967296E9

    div-double/2addr v4, v6

    .line 183
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    div-double/2addr v2, v6

    const-wide/16 v6, 0x0

    cmpg-double p1, v2, v6

    if-gez p1, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    iget-wide v6, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickRtt:D

    cmpg-double p1, v2, v6

    if-gez p1, :cond_2

    .line 187
    iput-wide v2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickRtt:D

    .line 188
    iput-wide v4, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickOffset:D

    .line 190
    :cond_2
    iget p1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickCount:I

    if-lez p1, :cond_3

    :goto_0
    return-void

    .line 192
    :cond_3
    iget-wide v2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickRtt:D

    .line 193
    iget-wide v4, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickOffset:D

    const/4 p1, 0x2

    .line 194
    iput p1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickCount:I

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 195
    iput-wide v6, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pickRtt:D

    .line 197
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->clockLock:Ljava/lang/Object;

    monitor-enter p1

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->delays:[D

    .line 278
    array-length v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v8, v6, :cond_4

    aget-wide v10, v0, v8

    cmpg-double v12, v2, v10

    if-gtz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->delays:[D

    iget v6, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->delayIndex:I

    aput-wide v2, v0, v6

    add-int/2addr v6, v9

    .line 200
    rem-int/2addr v6, v1

    iput v6, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->delayIndex:I

    if-eqz v7, :cond_6

    .line 201
    invoke-direct {p0, v4, v5}, Lcom/shilapi/xcertplay/airplay/NtpClock;->applyOffset(D)V

    .line 202
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 178
    :cond_7
    :goto_2
    monitor-exit v4

    return-void

    :catchall_1
    move-exception p1

    .line 176
    monitor-exit v4

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public static synthetic listen$default(Lcom/shilapi/xcertplay/airplay/NtpClock;Ljava/net/InetAddress;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)I
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/NtpClock;->listen(Ljava/net/InetAddress;Lkotlin/jvm/functions/Function1;)I

    move-result p0

    return p0
.end method

.method private static final listen$lambda$5(Ljava/net/DatagramSocket;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final respondToRequest([BLjava/net/InetSocketAddress;)V
    .locals 8

    const/16 v0, 0x20

    .line 160
    new-array v2, v0, [B

    const/4 v1, 0x0

    const/16 v3, -0x80

    .line 161
    aput-byte v3, v2, v1

    const/4 v1, 0x1

    const/16 v3, -0x2d

    .line 162
    aput-byte v3, v2, v1

    const/4 v1, 0x2

    const/4 v3, 0x7

    .line 163
    # invokes: Lcom/shilapi/xcertplay/airplay/NtpClockKt;->writeU16Be([BII)V
    invoke-static {v2, v1, v3}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->access$writeU16Be([BII)V

    const/16 v1, 0x8

    const/16 v3, 0x18

    .line 164
    invoke-static {p1, v2, v1, v3, v0}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 165
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->syncedNtp()Ljava/math/BigInteger;

    move-result-object p1

    # invokes: Lcom/shilapi/xcertplay/airplay/NtpClockKt;->ntpBytes(Ljava/math/BigInteger;)[B
    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->access$ntpBytes(Ljava/math/BigInteger;)[B

    move-result-object v1

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 166
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->syncedNtp()Ljava/math/BigInteger;

    move-result-object p1

    # invokes: Lcom/shilapi/xcertplay/airplay/NtpClockKt;->ntpBytes(Ljava/math/BigInteger;)[B
    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->access$ntpBytes(Ljava/math/BigInteger;)[B

    move-result-object v1

    const/16 v3, 0x18

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 167
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->currentSocket()Ljava/net/DatagramSocket;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Ljava/net/DatagramPacket;

    check-cast p2, Ljava/net/SocketAddress;

    invoke-direct {v1, v2, v0, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    invoke-virtual {p1, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    :cond_0
    return-void
.end method

.method private final runReceiver()V
    .locals 7

    const/16 v0, 0x800

    .line 131
    new-array v1, v0, [B

    .line 132
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->currentSocket()Ljava/net/DatagramSocket;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    new-instance v3, Ljava/net/DatagramPacket;

    invoke-direct {v3, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 136
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    const-string v4, "getData(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v4, "copyOf(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 142
    array-length v5, v2

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    if-eqz v4, :cond_0

    .line 143
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-direct {v5, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v2, v5}, Lcom/shilapi/xcertplay/airplay/NtpClock;->handleMessage([BLjava/net/InetSocketAddress;)V

    goto :goto_0

    .line 138
    :catch_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final runSender()V
    .locals 4

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->sendRequest()V

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 106
    iget-object v3, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->sendErrors:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->lastSendError:Ljava/lang/String;

    .line 109
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method private final sendRequest()V
    .locals 9

    .line 118
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->peer:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x20

    .line 119
    new-array v3, v1, [B

    const/4 v2, 0x0

    const/16 v4, -0x80

    .line 120
    aput-byte v4, v3, v2

    const/4 v2, 0x1

    const/16 v4, -0x2e

    .line 121
    aput-byte v4, v3, v2

    const/4 v2, 0x2

    const/4 v4, 0x7

    .line 122
    # invokes: Lcom/shilapi/xcertplay/airplay/NtpClockKt;->writeU16Be([BII)V
    invoke-static {v3, v2, v4}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->access$writeU16Be([BII)V

    .line 123
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->syncedNtp()Ljava/math/BigInteger;

    move-result-object v2

    .line 124
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->clockLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput-object v2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->pendingT1:Ljava/math/BigInteger;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 125
    # invokes: Lcom/shilapi/xcertplay/airplay/NtpClockKt;->ntpBytes(Ljava/math/BigInteger;)[B
    invoke-static {v2}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->access$ntpBytes(Ljava/math/BigInteger;)[B

    move-result-object v2

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 126
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/NtpClock;->currentSocket()Ljava/net/DatagramSocket;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v4, Ljava/net/DatagramPacket;

    check-cast v0, Ljava/net/SocketAddress;

    invoke-direct {v4, v3, v1, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->requestsSent:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void

    :catchall_0
    move-exception v0

    .line 124
    monitor-exit v4

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->socketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->socket:Ljava/net/DatagramSocket;

    .line 93
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v0

    .line 94
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->sender:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->receiver:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0

    throw v1
.end method

.method public final getOnResponse()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->onResponse:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final declared-synchronized listen(Ljava/net/InetAddress;Lkotlin/jvm/functions/Function1;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->socketLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return p1

    :cond_0
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1

    throw p1

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_2

    .line 64
    :try_start_4
    sget-object v2, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->INSTANCE:Lcom/shilapi/xcertplay/compat/AnyLocalBind;

    new-instance v7, Lcom/shilapi/xcertplay/airplay/NtpClock$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/airplay/NtpClock$$ExternalSyntheticLambda1;-><init>()V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v2 .. v9}, Lcom/shilapi/xcertplay/compat/AnyLocalBind;->bindDatagram$default(Lcom/shilapi/xcertplay/compat/AnyLocalBind;Ljava/net/InetAddress;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/net/DatagramSocket;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 69
    :try_start_5
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->socketLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->socket:Ljava/net/DatagramSocket;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p2

    .line 70
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/shilapi/xcertplay/airplay/NtpClock$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/airplay/NtpClock$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/airplay/NtpClock;)V

    const-string v2, "airplay-ntp-rx"

    invoke-direct {p2, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->receiver:Ljava/lang/Thread;

    .line 71
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 69
    :try_start_8
    monitor-exit p2

    throw p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 66
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    throw p1

    .line 60
    :cond_2
    const-string p1, "NtpClock is already running"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_2
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method public final setOnResponse(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->onResponse:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final declared-synchronized start(Ljava/net/InetAddress;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "peerAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_1

    .line 77
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->peer:Ljava/net/InetSocketAddress;

    .line 79
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->sender:Ljava/lang/Thread;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/shilapi/xcertplay/airplay/NtpClock$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/airplay/NtpClock$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/airplay/NtpClock;)V

    const-string v1, "airplay-ntp-tx"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->sender:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_2
    const-string/jumbo p1, "timing port must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final stats()Ljava/lang/String;
    .locals 12

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->requestsSent:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->responsesReceived:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 50
    iget-object v4, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->requestsAnswered:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->sendErrors:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 51
    iget-object v8, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->lastSendError:Ljava/lang/String;

    if-eqz v8, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " lastError="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, ""

    :cond_1
    iget-object v9, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->clockLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-boolean v10, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->synced:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "sent="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " responses="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " answeredPeerRequests="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " sendErrors="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " synced="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public final syncedNtp()Ljava/math/BigInteger;
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->clockLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/shilapi/xcertplay/airplay/NtpClock;->clockOffsetNs:J

    add-long/2addr v1, v3

    # invokes: Lcom/shilapi/xcertplay/airplay/NtpClockKt;->ntpFromNanos(J)Ljava/math/BigInteger;
    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/airplay/NtpClockKt;->access$ntpFromNanos(J)Ljava/math/BigInteger;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
