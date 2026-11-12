.class public final Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;
.super Ljava/lang/Object;
.source "DiagnosticReportHttp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiagnosticReportHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Server"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiagnosticReportHttp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticReportHttp.kt\ncom/shilapi/xcertplay/DiagnosticReportHttp$Server\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n1#2:270\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0006\u0010%\u001a\u00020&J\u0006\u0010\'\u001a\u00020&J\u0008\u0010(\u001a\u00020&H\u0002J\u0010\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020+H\u0002J\u0012\u0010,\u001a\u0004\u0018\u00010\u00072\u0006\u0010-\u001a\u00020.H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010!\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;",
        "",
        "bind",
        "Ljava/net/InetAddress;",
        "payload",
        "",
        "token",
        "",
        "clock",
        "Lkotlin/Function0;",
        "",
        "ttlMs",
        "readTimeoutMs",
        "",
        "deadlineMs",
        "maxConnections",
        "<init>",
        "(Ljava/net/InetAddress;[BLjava/lang/String;Lkotlin/jvm/functions/Function0;JIJI)V",
        "socket",
        "Ljava/net/ServerSocket;",
        "stopped",
        "",
        "active",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getActive",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "value",
        "startedAt",
        "getStartedAt",
        "()J",
        "port",
        "getPort",
        "()I",
        "isRunning",
        "()Z",
        "reaper",
        "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
        "start",
        "",
        "stop",
        "acceptLoop",
        "handle",
        "client",
        "Ljava/net/Socket;",
        "readLine",
        "input",
        "Ljava/io/InputStream;",
        "common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final active:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final bind:Ljava/net/InetAddress;

.field private final clock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final deadlineMs:J

.field private final maxConnections:I

.field private final payload:[B

.field private final readTimeoutMs:I

.field private final reaper:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final socket:Ljava/net/ServerSocket;

.field private startedAt:J

.field private volatile stopped:Z

.field private final token:Ljava/lang/String;

.field private final ttlMs:J


# direct methods
.method public static synthetic $r8$lambda$BiVSwIg8kBk5LsD30nfMKh6T4po(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;Ljava/net/Socket;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->acceptLoop$lambda$6(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dKo9RuwEl77pWQUwaHtbX3FGCok(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->reaper$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nsEcPNH4oVMA-Tmwf_5gNI98u_g(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;Ljava/net/Socket;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->handle$lambda$10$lambda$9(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xQlv2PWLhv809cf7fp8gRGR6rcE(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->start$lambda$2(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;[BLjava/lang/String;Lkotlin/jvm/functions/Function0;JIJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;JIJI)V"
        }
    .end annotation

    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->bind:Ljava/net/InetAddress;

    .line 148
    iput-object p2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->payload:[B

    .line 149
    iput-object p3, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->token:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->clock:Lkotlin/jvm/functions/Function0;

    .line 151
    iput-wide p5, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->ttlMs:J

    .line 152
    iput p7, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->readTimeoutMs:I

    .line 153
    iput-wide p8, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->deadlineMs:J

    .line 154
    iput p10, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->maxConnections:I

    .line 156
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1}, Ljava/net/ServerSocket;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->socket:Ljava/net/ServerSocket;

    .line 158
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda3;-><init>()V

    const/4 p3, 0x1

    invoke-direct {p1, p3, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->reaper:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/InetAddress;[BLjava/lang/String;Lkotlin/jvm/functions/Function0;JIJIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const-wide/32 v1, 0x493e0

    move-wide v8, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    const/16 v1, 0x1388

    const/16 v10, 0x1388

    goto :goto_1

    :cond_1
    move/from16 v10, p7

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x7530

    move-wide v11, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v11, p8

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    const/4 v13, 0x4

    goto :goto_3

    :cond_3
    move/from16 v13, p10

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 146
    invoke-direct/range {v3 .. v13}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;-><init>(Ljava/net/InetAddress;[BLjava/lang/String;Lkotlin/jvm/functions/Function0;JIJI)V

    return-void
.end method

.method private final acceptLoop()V
    .locals 5

    .line 189
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->stopped:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->startedAt:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->ttlMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :try_start_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget v2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->maxConnections:I

    if-le v1, v2, :cond_0

    .line 198
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    :try_start_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;Ljava/net/Socket;)V

    const-string v0, "06Link-diag-http-conn"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 205
    :catch_1
    :cond_1
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->stop()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->stop()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static final acceptLoop$lambda$6(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;Ljava/net/Socket;)V
    .locals 0

    .line 202
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->handle(Ljava/net/Socket;)V

    return-void
.end method

.method private final handle(Ljava/net/Socket;)V
    .locals 14

    .line 211
    const-string v1, "/r/"

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    .line 212
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->reaper:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;Ljava/net/Socket;)V

    iget-wide v3, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->deadlineMs:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v0, v3

    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x0

    .line 215
    :try_start_1
    iget v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->readTimeoutMs:I

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 216
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v5, :cond_2

    if-eqz v2, :cond_1

    .line 250
    invoke-interface {v2, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 251
    :cond_1
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :cond_2
    const/4 v6, 0x0

    .line 221
    :cond_3
    :try_start_3
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 222
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    .line 223
    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    const/16 v7, 0x4000

    if-le v6, v7, :cond_3

    .line 225
    :goto_2
    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v9, v0, [C

    const/16 v5, 0x20

    aput-char v5, v9, v4

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 226
    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_6

    const-string v6, ""

    .line 227
    :cond_6
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "GET"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->stopped:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->token:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->token:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v6, v1, v4, v5, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 228
    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 229
    const-string v3, "\r\nConnection: close\r\n\r\n"

    const-string v5, "getBytes(...)"

    if-eqz v0, :cond_9

    .line 233
    :try_start_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->payload:[B

    array-length v0, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP/1.0 200 OK\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Disposition: inline; filename=\"06Link-report.txt\"\r\nCache-Control: no-store\r\nContent-Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    sget-object v3, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 236
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->payload:[B

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    .line 238
    :cond_9
    const-string v0, "Gone or bad path\n"

    sget-object v6, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    array-length v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.0 404 Not Found\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 243
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 245
    :goto_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 246
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_5
    if-eqz v2, :cond_a

    .line 250
    invoke-interface {v2, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 251
    :cond_a
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object p1, v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_b

    .line 250
    invoke-interface {v2, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 251
    :cond_b
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_6
    iget-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v1

    :catch_0
    nop

    if-eqz v2, :cond_c

    .line 250
    invoke-interface {v2, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 251
    :cond_c
    :try_start_9
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object p1, v0

    :goto_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_8
    iget-object p1, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method private static final handle$lambda$10$lambda$9(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;Ljava/net/Socket;)V
    .locals 0

    .line 212
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x800

    if-ge v1, v2, :cond_3

    .line 260
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_1

    .line 261
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-char v1, v0, v2

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    int-to-char v1, v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final reaper$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "06Link-diag-http-deadline"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static final start$lambda$2(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->acceptLoop()V

    return-void
.end method


# virtual methods
.method public final getActive()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public final getStartedAt()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->startedAt:J

    return-wide v0
.end method

.method public final isRunning()Z
    .locals 5

    .line 162
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->stopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->startedAt:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->ttlMs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->socket:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 171
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->socket:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->bind:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    check-cast v2, Ljava/net/SocketAddress;

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 172
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->socket:Ljava/net/ServerSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->startedAt:J

    .line 178
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;)V

    const-string v3, "06Link-diag-http"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->stop()V

    .line 175
    throw v0
.end method

.method public final stop()V
    .locals 2

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->stopped:Z

    .line 183
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiagnosticReportHttp$Server;->reaper:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    return-void
.end method
