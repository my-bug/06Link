.class public final Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;
.super Ljava/lang/Object;
.source "Iap2CsmChannel.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIap2CsmChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iap2CsmChannel.kt\ncom/shilapi/xcertplay/transport/Iap2CsmChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,237:1\n1#2:238\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0001\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 .2\u00020\u0001:\u0001.B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0018\u001a\u00020\u0019J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\n\u0010 \u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010!\u001a\u00020\u001bH\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0014H\u0002J\u0014\u0010%\u001a\u00020#2\n\u0010&\u001a\u00060\'j\u0002`(H\u0002J\u0010\u0010)\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u0014H\u0002J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u0019H\u0002J\u0010\u0010-\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0015\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006/"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;",
        "Ljava/io/Closeable;",
        "link",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)V",
        "stateLock",
        "Ljava/lang/Object;",
        "sendLock",
        "receiveLock",
        "framer",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;",
        "receivedFrames",
        "Ljava/util/ArrayDeque;",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "receivedBytes",
        "",
        "closed",
        "",
        "terminalFailure",
        "",
        "isClosed",
        "()Z",
        "awaitReady",
        "timeoutMillis",
        "",
        "send",
        "",
        "frame",
        "recv",
        "close",
        "enqueue",
        "takeReceived",
        "checkOpen",
        "failClosed",
        "",
        "failure",
        "fatal",
        "error",
        "Ljava/lang/Error;",
        "Lkotlin/Error;",
        "terminalize",
        "deadlineAfter",
        "remainingMillis",
        "deadlineNanos",
        "requireTimeout",
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
.field public static final Companion:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;

.field private static final DEFAULT_SEND_TIMEOUT_MILLIS:J = 0x1388L

.field private static final MAX_PENDING_FRAMES:I = 0x40

.field private static final MAX_PENDING_FRAME_BYTES:I = 0x100000

.field private static final MAX_TIMEOUT_MILLIS:J = 0x493e0L

.field private static final NANOS_PER_MILLISECOND:J = 0xf4240L


# instance fields
.field private closed:Z

.field private final framer:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;

.field private final link:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

.field private final receiveLock:Ljava/lang/Object;

.field private receivedBytes:I

.field private final receivedFrames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
            ">;"
        }
    .end annotation
.end field

.field private final sendLock:Ljava/lang/Object;

.field private final stateLock:Ljava/lang/Object;

.field private terminalFailure:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->Companion:Lcom/shilapi/xcertplay/transport/Iap2CsmChannel$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->link:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    .line 20
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->stateLock:Ljava/lang/Object;

    .line 21
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->sendLock:Ljava/lang/Object;

    .line 22
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receiveLock:Ljava/lang/Object;

    .line 23
    new-instance p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->framer:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;

    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receivedFrames:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;-><init>(Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;)V

    return-void
.end method

.method private final checkOpen()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->terminalFailure:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 162
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->closed:Z

    if-nez v1, :cond_0

    .line 163
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit v0

    return-void

    .line 162
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "CSM channel is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 160
    monitor-exit v0

    throw v1
.end method

.method private final deadlineAfter(J)J
    .locals 4

    .line 202
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final enqueue(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V
    .locals 3

    .line 145
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->encodedFrame()[B

    move-result-object v0

    array-length v0, v0

    .line 146
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receivedFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    const/high16 v1, 0x100000

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receivedBytes:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receivedFrames:Ljava/util/ArrayDeque;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    iget p1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receivedBytes:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receivedBytes:I

    return-void

    .line 147
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "CSM received-frame queue limit exceeded"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->failClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final failClosed(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 2

    .line 168
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->terminalize(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 172
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    if-eq v0, p1, :cond_0

    .line 173
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 175
    :cond_0
    :goto_0
    throw p1

    .line 172
    :cond_1
    throw v0
.end method

.method private final fatal(Ljava/lang/Error;)Ljava/lang/Void;
    .locals 1

    .line 180
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->terminalize(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :catchall_0
    throw p1
.end method

.method private final remainingMillis(J)J
    .locals 3

    .line 206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0xf423f

    add-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    .line 208
    div-long/2addr p1, v0

    const-wide/32 v0, 0x493e0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final requireTimeout(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const-wide/32 v0, 0x493e1

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeoutMillis must be in 0..300000"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic send$default(Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x1388

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V

    return-void
.end method

.method private final takeReceived()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receivedFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receivedBytes:I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->encodedFrame()[B

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receivedBytes:I

    return-object v0
.end method

.method private final terminalize(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->terminalFailure:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 193
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->terminalFailure:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit v0

    return-object p1

    :cond_0
    if-eq v1, p1, :cond_1

    .line 196
    :try_start_1
    invoke-static {v1, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final awaitReady(J)Z
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->requireTimeout(J)V

    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->checkOpen()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->link:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->awaitReady(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->link:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->peerMaxControlPayloadBytes()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "iAP2 link became writable without a peer control payload limit"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 50
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Error;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->fatal(Ljava/lang/Error;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 51
    :cond_2
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->failClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 41
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->fatal(Ljava/lang/Error;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->closed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :goto_0
    monitor-exit v0

    if-nez v1, :cond_1

    return-void

    .line 134
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->link:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 136
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 137
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->terminalize(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw v0

    .line 140
    :cond_2
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->terminalize(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :catchall_1
    move-exception v1

    .line 126
    monitor-exit v0

    throw v1
.end method

.method public final isClosed()Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->closed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->terminalFailure:Ljava/lang/Throwable;
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

    .line 31
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final recv(J)Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;
    .locals 7

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->requireTimeout(J)V

    .line 95
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->receiveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->takeReceived()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    .line 97
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->deadlineAfter(J)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 100
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->checkOpen()V
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    :try_start_3
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->link:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->remainingMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->recvControl(J)[B

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 109
    monitor-exit v0

    return-object v2

    .line 112
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->framer:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;

    invoke-virtual {v3, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->offer([B)Ljava/util/List;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :try_start_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->enqueue(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->takeReceived()Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_4

    monitor-exit v0

    return-object v1

    .line 119
    :cond_4
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->remainingMillis(J)J

    move-result-wide v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 114
    :try_start_7
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/lang/Error;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->fatal(Ljava/lang/Error;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 115
    :cond_5
    new-instance p2, Ljava/io/IOException;

    const-string v1, "Invalid CSM control payload"

    invoke-direct {p2, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->failClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 107
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_6

    check-cast p1, Ljava/lang/Error;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->fatal(Ljava/lang/Error;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 108
    :cond_6
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->failClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 102
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->fatal(Ljava/lang/Error;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 119
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final send(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;J)V
    .locals 9

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->requireTimeout(J)V

    .line 64
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->sendLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->checkOpen()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->link:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->peerMaxControlPayloadBytes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
    sget-object v2, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer;->Companion:Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v5

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01GpsDiagnostic;->hasPosition(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2, p1, v1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2CsmFramer$Companion;->splitForLink(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->link:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    invoke-static {v8, v5, v7, v6}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->begin(Ljava/lang/Object;IIZ)V

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->deadlineAfter(J)J

    move-result-wide p2

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :try_start_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->link:Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;

    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->remainingMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/shilapi/xcertplay/transport/Iap2LinkChannel;->sendControlAwaitCapacity$shared_release([BJ)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "iAP2 could not queue the complete CSM frame before its timeout"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->failClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 78
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Error;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->fatal(Ljava/lang/Error;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 79
    :cond_1
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->failClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 85
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    monitor-exit v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->end(Z)V

    return-void

    .line 71
    :cond_3
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CSM send requires a successful iAP2 awaitReady"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shilapi/xcertplay/E01GpsLinkProbe;->end(Z)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 68
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2CsmChannel;->fatal(Ljava/lang/Error;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
