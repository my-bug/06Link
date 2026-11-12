.class public final Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;
.super Ljava/lang/Object;
.source "AirPlayIapTunnelStream.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAirPlayIapTunnelStream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AirPlayIapTunnelStream.kt\ncom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,175:1\n1#2:176\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 )2\u00020\u0001:\u0001)B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001a\u0008\u0002\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010\u0018\u001a\u00020\u0012J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0008H\u0016J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\tH\u0016J\u0008\u0010\u001f\u001a\u00020\u001aH\u0016J\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u0008H\u0002J\u0012\u0010\"\u001a\u00020\n2\u0008\u0010#\u001a\u0004\u0018\u00010\u0015H\u0002J\u0008\u0010$\u001a\u00020\u001aH\u0002J\u0008\u0010%\u001a\u00020&H\u0002J\u0008\u0010\'\u001a\u00020\u0017H\u0002J\u0012\u0010(\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u001d\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "session",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
        "tunnel",
        "Lcom/shilapi/xcertplay/airplay/IapTunnel;",
        "sendCommand",
        "Lkotlin/Function2;",
        "",
        "",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/IapTunnel;Lkotlin/jvm/functions/Function2;)V",
        "lock",
        "Ljava/lang/Object;",
        "pending",
        "Ljava/util/ArrayDeque;",
        "pendingBytes",
        "",
        "closed",
        "terminalFailure",
        "",
        "closeLocation",
        "",
        "listen",
        "send",
        "",
        "data",
        "recv",
        "maxBytes",
        "timeoutMillis",
        "close",
        "offer",
        "bytes",
        "markFailed",
        "cause",
        "throwTerminalFailureLocked",
        "closedFailureLocked",
        "Ljava/io/IOException;",
        "closeCaller",
        "takePendingLocked",
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
.field private static final Companion:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$Companion;

.field private static final EMPTY:[B

.field public static final EVENT_READY_TIMEOUT_MILLIS:J = 0x2710L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_PENDING_BYTES:I = 0x100000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NANOS_PER_MILLISECOND:J = 0xf4240L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PEER_CONNECT_TIMEOUT_MILLIS:J = 0x3a98L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private closeLocation:Ljava/lang/String;

.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private final pending:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private pendingBytes:I

.field private final sendCommand:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "[B",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

.field private terminalFailure:Ljava/lang/Throwable;

.field private final tunnel:Lcom/shilapi/xcertplay/airplay/IapTunnel;


# direct methods
.method public static synthetic $r8$lambda$MzMh0QHu3WNkVIwGba1nRL21nrw(Lcom/shilapi/xcertplay/airplay/AirPlaySession;[BJ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->_init_$lambda$0(Lcom/shilapi/xcertplay/airplay/AirPlaySession;[BJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dGe7WNGPqmaCG9uTEd4y5qeVwVU(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closeCaller$lambda$12(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->Companion:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$Companion;

    const/4 v0, 0x0

    .line 172
    new-array v0, v0, [B

    sput-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/IapTunnel;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Lcom/shilapi/xcertplay/airplay/IapTunnel;",
            "Lkotlin/jvm/functions/Function2<",
            "-[B-",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tunnel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendCommand"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    .line 16
    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->tunnel:Lcom/shilapi/xcertplay/airplay/IapTunnel;

    .line 17
    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->sendCommand:Lkotlin/jvm/functions/Function2;

    .line 21
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    .line 22
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pending:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/IapTunnel;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 17
    new-instance p3, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/IapTunnel;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/shilapi/xcertplay/airplay/AirPlaySession;[BJ)Z
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->sendIapMessage([BJ)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getEMPTY$cp()[B
    .locals 1

    .line 14
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->EMPTY:[B

    return-object v0
.end method

.method public static final synthetic access$getSession$p(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    return-object p0
.end method

.method public static final synthetic access$markFailed(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;Ljava/lang/Throwable;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->markFailed(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$offer(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;[B)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->offer([B)V

    return-void
.end method

.method private final closeCaller()Ljava/lang/String;
    .locals 10

    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "getStackTrace(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    .line 149
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->drop([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0x8

    .line 150
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 151
    const-string v0, " <- "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final closeCaller$lambda$12(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;
    .locals 4

    .line 152
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getClassName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x2e

    invoke-static {v0, v3, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final closedFailureLocked()Ljava/io/IOException;
    .locals 4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AirPlay iAP tunnel is closed"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closeLocation:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "; requested by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private final markFailed(Ljava/lang/Throwable;)Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->terminalFailure:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 125
    new-instance p1, Ljava/io/IOException;

    const-string v1, "AirPlay iAP tunnel terminated"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    :cond_1
    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->terminalFailure:Ljava/lang/Throwable;

    .line 126
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 124
    :cond_2
    :goto_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 127
    monitor-exit v0

    throw p1
.end method

.method private final offer([B)V
    .locals 4

    .line 107
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->terminalFailure:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pendingBytes:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_2

    .line 111
    new-instance p1, Ljava/io/IOException;

    const-string v1, "AirPlay iAP tunnel pending-data limit exceeded"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->terminalFailure:Ljava/lang/Throwable;

    .line 112
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 113
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->tunnel:Lcom/shilapi/xcertplay/airplay/IapTunnel;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    .line 116
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pending:Ljava/util/ArrayDeque;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "copyOf(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 117
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pendingBytes:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pendingBytes:I

    .line 118
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 119
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit v0

    return-void

    .line 109
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 108
    monitor-exit v0

    throw p1
.end method

.method private final takePendingLocked(I)[B
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    iget v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pendingBytes:I

    array-length v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pendingBytes:I

    .line 158
    array-length v1, v0

    if-gt v1, p1, :cond_1

    return-object v0

    .line 160
    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    array-length v2, v0

    invoke-static {v0, p1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 163
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pendingBytes:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->pendingBytes:I

    return-object v1
.end method

.method private final throwTerminalFailureLocked()V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->terminalFailure:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "unknown error"

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AirPlay iAP tunnel failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 99
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closed:Z

    .line 100
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closeCaller()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closeLocation:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 102
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit v0

    .line 103
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->tunnel:Lcom/shilapi/xcertplay/airplay/IapTunnel;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 97
    monitor-exit v0

    throw v1
.end method

.method public final listen()I
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->tunnel:Lcom/shilapi/xcertplay/airplay/IapTunnel;

    .line 29
    new-instance v1, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1;-><init>(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;)V

    check-cast v1, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    .line 28
    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->listen(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;)I

    move-result v0

    return v0
.end method

.method public recv(IJ)[B
    .locals 11

    if-lez p1, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 75
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long p2, p2, v4

    add-long/2addr v2, p2

    .line 76
    iget-object p2, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    monitor-enter p2

    .line 78
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->takePendingLocked(I)[B

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    monitor-exit p2

    return-object p3

    .line 79
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->throwTerminalFailureLocked()V

    .line 80
    iget-boolean p3, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closed:Z

    if-eqz p3, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->EMPTY:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    return-object p1

    .line 81
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v6, v2, v6

    const/4 p3, 0x0

    cmp-long v8, v6, v0

    if-gtz v8, :cond_2

    .line 82
    monitor-exit p2

    return-object p3

    .line 84
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    .line 85
    div-long v9, v6, v4

    .line 86
    rem-long/2addr v6, v4

    long-to-int v7, v6

    .line 84
    invoke-virtual {v8, v9, v10, v7}, Ljava/lang/Object;->wait(JI)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 89
    :catch_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    monitor-exit p2

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    .line 73
    :cond_3
    const-string/jumbo p1, "timeoutMillis must not be negative"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 72
    :cond_4
    const-string p1, "maxBytes must be positive"

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

.method public send([B)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->throwTerminalFailureLocked()V

    .line 57
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closed:Z

    if-nez v1, :cond_3

    .line 58
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    monitor-exit v0

    .line 59
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->tunnel:Lcom/shilapi/xcertplay/airplay/IapTunnel;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/IapTunnel;->awaitPeerConnection(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->throwTerminalFailureLocked()V

    .line 64
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closed:Z

    if-nez v1, :cond_1

    .line 65
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    monitor-exit v0

    .line 66
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->sendCommand:Lkotlin/jvm/functions/Function2;

    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "AirPlay event channel rejected an iAP message"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closedFailureLocked()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit v0

    throw p1

    .line 60
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "CarPlay iAP tunnel peer did not connect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->closedFailureLocked()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 55
    monitor-exit v0

    throw p1
.end method
