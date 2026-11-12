.class public final Lcom/shilapi/xcertplay/transport/GocSppTransport;
.super Ljava/lang/Object;
.source "GocSppTransport.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/GocSppTransport$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGocSppTransport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GocSppTransport.kt\ncom/shilapi/xcertplay/transport/GocSppTransport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,238:1\n1#2:239\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 %2\u00020\u0001:\u0001%B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0015H\u0016J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0005H\u0002J\u0008\u0010 \u001a\u00020\u0015H\u0002J\u0008\u0010!\u001a\u00020\u0013H\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/GocSppTransport;",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "socket",
        "Lcom/shilapi/xcertplay/transport/GocSppSocket;",
        "remoteAddress",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/GocSppSocket;Ljava/lang/String;)V",
        "getRemoteAddress",
        "()Ljava/lang/String;",
        "inputStream",
        "Ljava/io/InputStream;",
        "outputStream",
        "Ljava/io/OutputStream;",
        "stateLock",
        "",
        "readLock",
        "writeLock",
        "closed",
        "",
        "send",
        "",
        "data",
        "",
        "recv",
        "maxBytes",
        "",
        "timeoutMillis",
        "",
        "close",
        "writeHandshake",
        "address",
        "ensureOpen",
        "isClosed",
        "failAndClose",
        "Ljava/io/IOException;",
        "failure",
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
.field private static final COLON_ADDRESS:Lkotlin/text/Regex;

.field public static final Companion:Lcom/shilapi/xcertplay/transport/GocSppTransport$Companion;

.field private static final DEFAULT_CONNECT_ATTEMPTS:I = 0x3

.field private static final DEFAULT_RETRY_DELAY_MILLIS:J = 0xc8L

.field private static final EMPTY:[B

.field private static final PLAIN_ADDRESS:Lkotlin/text/Regex;

.field private static final READ_TIMEOUT_MESSAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOCKET_NOT_READY_ERRORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile closed:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Ljava/io/OutputStream;

.field private final readLock:Ljava/lang/Object;

.field private final remoteAddress:Ljava/lang/String;

.field private final socket:Lcom/shilapi/xcertplay/transport/GocSppSocket;

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/shilapi/xcertplay/transport/GocSppTransport$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/GocSppTransport$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->Companion:Lcom/shilapi/xcertplay/transport/GocSppTransport$Companion;

    const/4 v0, 0x0

    .line 107
    new-array v1, v0, [B

    sput-object v1, Lcom/shilapi/xcertplay/transport/GocSppTransport;->EMPTY:[B

    .line 108
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "^[0-9A-Fa-f]{12}$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/shilapi/xcertplay/transport/GocSppTransport;->PLAIN_ADDRESS:Lkotlin/text/Regex;

    .line 109
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "^([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/shilapi/xcertplay/transport/GocSppTransport;->COLON_ADDRESS:Lkotlin/text/Regex;

    const/4 v1, 0x4

    .line 111
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ENOENT"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "ECONNREFUSED"

    aput-object v4, v2, v3

    const/4 v4, 0x2

    const-string v5, "No such file or directory"

    aput-object v5, v2, v4

    const/4 v5, 0x3

    const-string v6, "Connection refused"

    aput-object v6, v2, v5

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/shilapi/xcertplay/transport/GocSppTransport;->SOCKET_NOT_READY_ERRORS:Ljava/util/List;

    .line 113
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "EAGAIN"

    aput-object v2, v1, v0

    const-string v0, "EWOULDBLOCK"

    aput-object v0, v1, v3

    const-string v0, "Try again"

    aput-object v0, v1, v4

    const-string v0, "Resource temporarily unavailable"

    aput-object v0, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->READ_TIMEOUT_MESSAGES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/shilapi/xcertplay/transport/GocSppSocket;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->socket:Lcom/shilapi/xcertplay/transport/GocSppSocket;

    .line 22
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->remoteAddress:Ljava/lang/String;

    .line 24
    invoke-interface {p1}, Lcom/shilapi/xcertplay/transport/GocSppSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->inputStream:Ljava/io/InputStream;

    .line 25
    invoke-interface {p1}, Lcom/shilapi/xcertplay/transport/GocSppSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->outputStream:Ljava/io/OutputStream;

    .line 26
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->stateLock:Ljava/lang/Object;

    .line 27
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->readLock:Ljava/lang/Object;

    .line 28
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->writeLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/GocSppSocket;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/GocSppTransport;-><init>(Lcom/shilapi/xcertplay/transport/GocSppSocket;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCOLON_ADDRESS$cp()Lkotlin/text/Regex;
    .locals 1

    .line 20
    sget-object v0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->COLON_ADDRESS:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static final synthetic access$getPLAIN_ADDRESS$cp()Lkotlin/text/Regex;
    .locals 1

    .line 20
    sget-object v0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->PLAIN_ADDRESS:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static final synthetic access$getREAD_TIMEOUT_MESSAGES$cp()Ljava/util/List;
    .locals 1

    .line 20
    sget-object v0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->READ_TIMEOUT_MESSAGES:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSOCKET_NOT_READY_ERRORS$cp()Ljava/util/List;
    .locals 1

    .line 20
    sget-object v0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->SOCKET_NOT_READY_ERRORS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$writeHandshake(Lcom/shilapi/xcertplay/transport/GocSppTransport;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/GocSppTransport;->writeHandshake(Ljava/lang/String;)V

    return-void
.end method

.method public static final connect(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/GocSppTransport;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->Companion:Lcom/shilapi/xcertplay/transport/GocSppTransport$Companion;

    invoke-virtual {v0, p0}, Lcom/shilapi/xcertplay/transport/GocSppTransport$Companion;->connect(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/GocSppTransport;

    move-result-object p0

    return-object p0
.end method

.method private final ensureOpen()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/GocSppTransport;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "GOC SPP transport is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final failAndClose(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/transport/GocSppTransport;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 100
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 101
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1

    .line 100
    :cond_1
    throw v0
.end method

.method private final isClosed()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final writeHandshake(Ljava/lang/String;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->outputStream:Ljava/io/OutputStream;

    sget-object v2, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "getBytes(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 83
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    :try_start_2
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/GocSppTransport;->failAndClose(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :goto_0
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->closed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :goto_0
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 76
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/transport/GocSppTransport;

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->socket:Lcom/shilapi/xcertplay/transport/GocSppSocket;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/GocSppSocket;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_1
    move-exception v1

    .line 70
    monitor-exit v0

    throw v1
.end method

.method public final getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->remoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public recv(IJ)[B
    .locals 10

    if-lez p1, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 46
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->readLock:Ljava/lang/Object;

    monitor-enter v2

    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/GocSppTransport;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/transport/GocSppTransport;->EMPTY:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    :cond_0
    const/4 v3, 0x0

    cmp-long v4, p2, v0

    if-nez v4, :cond_1

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v2

    return-object v3

    .line 50
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->socket:Lcom/shilapi/xcertplay/transport/GocSppSocket;

    const-wide/16 v6, 0x1

    const-wide/32 v8, 0x7fffffff

    move-wide v4, p2

    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-interface {v0, p3}, Lcom/shilapi/xcertplay/transport/GocSppSocket;->setReadTimeout(I)V

    .line 51
    new-array p2, p1, [B

    .line 52
    iget-object p3, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-gez p3, :cond_2

    .line 54
    sget-object v3, Lcom/shilapi/xcertplay/transport/GocSppTransport;->EMPTY:[B

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    if-ne p3, p1, :cond_4

    move-object v3, p2

    goto :goto_0

    .line 57
    :cond_4
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p1

    .line 53
    :goto_0
    monitor-exit v2

    return-object v3

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 62
    :try_start_3
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/GocSppTransport;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p1, Lcom/shilapi/xcertplay/transport/GocSppTransport;->EMPTY:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-object p1

    .line 63
    :cond_5
    :try_start_4
    sget-object p2, Lcom/shilapi/xcertplay/transport/GocSppTransport;->Companion:Lcom/shilapi/xcertplay/transport/GocSppTransport$Companion;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/transport/GocSppTransport$Companion;->isReadTimeoutIoException$shared_release(Ljava/io/IOException;)Z

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_6

    monitor-exit v2

    return-object v3

    .line 64
    :cond_6
    :try_start_5
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/GocSppTransport;->failAndClose(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    :catch_1
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 64
    monitor-exit v2

    throw p1

    .line 45
    :cond_7
    const-string/jumbo p1, "timeoutMillis must not be negative"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 44
    :cond_8
    const-string p1, "maxBytes must be positive"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public send([B)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/GocSppTransport;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 36
    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/GocSppTransport;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 38
    :try_start_3
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/GocSppTransport;->failAndClose(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0

    throw p1
.end method
