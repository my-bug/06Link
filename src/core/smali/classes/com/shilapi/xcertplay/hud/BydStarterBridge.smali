.class public final Lcom/shilapi/xcertplay/hud/BydStarterBridge;
.super Ljava/lang/Object;
.source "BydStarterBridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydStarterBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydStarterBridge.kt\ncom/shilapi/xcertplay/hud/BydStarterBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,121:1\n1#2:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001.B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0005J\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0002J\u001e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007J\u0010\u0010$\u001a\u00020\u001a2\u0008\u0008\u0002\u0010%\u001a\u00020\u0010J\u000e\u0010&\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0008\u0010\'\u001a\u00020\u001aH\u0002J \u0010(\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0002J\u0008\u0010+\u001a\u00020\u001aH\u0002J\u0010\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydStarterBridge;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "MAGIC",
        "",
        "latest",
        "Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;",
        "demoStartMs",
        "",
        "Ljava/lang/Long;",
        "token",
        "",
        "started",
        "",
        "socket",
        "Ljava/net/Socket;",
        "output",
        "Ljava/io/DataOutputStream;",
        "input",
        "Ljava/io/DataInputStream;",
        "retryAfterMs",
        "lastNotice",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "configure",
        "secret",
        "decodeToken",
        "update",
        "icon",
        "exit",
        "distance",
        "clear",
        "cancelDemo",
        "demonstrate",
        "tick",
        "send",
        "operation",
        "turn",
        "close",
        "notice",
        "message",
        "Frame",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydStarterBridge;

.field private static final MAGIC:I = 0x42594431

.field private static final TAG:Ljava/lang/String; = "BYD-Starter-Bridge"

.field private static volatile demoStartMs:Ljava/lang/Long;

.field private static input:Ljava/io/DataInputStream;

.field private static lastNotice:Ljava/lang/String;

.field private static volatile latest:Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;

.field private static output:Ljava/io/DataOutputStream;

.field private static retryAfterMs:J

.field private static socket:Ljava/net/Socket;

.field private static started:Z

.field private static volatile token:[B


# direct methods
.method public static synthetic $r8$lambda$45FZvSkMwtTtxRUxCKO_s9-ceLM(Lcom/shilapi/xcertplay/hud/BydStarterBridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->tick()V

    return-void
.end method

.method public static synthetic $r8$lambda$oLglV2ejEfACLR6P3b9KV6x1AYM(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->initialize$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydStarterBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic clear$default(Lcom/shilapi/xcertplay/hud/BydStarterBridge;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->clear(Z)V

    return-void
.end method

.method private final close()V
    .locals 1

    .line 113
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 114
    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->socket:Ljava/net/Socket;

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->input:Ljava/io/DataInputStream;

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->output:Ljava/io/DataOutputStream;

    return-void
.end method

.method private final decodeToken(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 47
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "[0-9a-f]{64}"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    const/16 v0, 0x20

    .line 48
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "substring(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method private static final initialize$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "byd-starter-client"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private final notice(Ljava/lang/String;)V
    .locals 1

    .line 118
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->lastNotice:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BYD-Starter-Bridge"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->lastNotice:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final send(III)V
    .locals 3

    .line 106
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->output:Ljava/io/DataOutputStream;

    const-string v1, "Required value was null."

    if-eqz v0, :cond_2

    const v2, 0x42594431

    .line 107
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 108
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->input:Ljava/io/DataInputStream;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Starter rejected command: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final tick()V
    .locals 10

    .line 66
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 67
    sget-object v2, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->demoStartMs:Ljava/lang/Long;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 70
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0x1f40

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    new-instance v4, Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;

    const/16 v2, 0x1f4

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;-><init>(IIJ)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0x3e80

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    new-instance v4, Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;

    const/4 v2, 0x2

    const/16 v5, 0x320

    invoke-direct {v4, v2, v5, v0, v1}, Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;-><init>(IIJ)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0x4e20

    cmp-long v2, v5, v7

    if-gez v2, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    sput-object v4, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->demoStartMs:Ljava/lang/Long;

    goto :goto_0

    .line 75
    :cond_3
    sget-object v2, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->latest:Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;->getReceivedMs()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0x1770

    cmp-long v9, v5, v7

    if-gez v9, :cond_4

    move-object v4, v2

    :cond_4
    :goto_0
    if-nez v4, :cond_5

    .line 77
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0, v0, v0}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->send(III)V

    .line 79
    const-string v0, "Guidance cleared"

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->notice(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->close()V

    return-void

    .line 84
    :cond_5
    sget-object v2, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->socket:Ljava/net/Socket;

    if-nez v2, :cond_9

    .line 85
    sget-wide v5, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->retryAfterMs:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_6

    goto :goto_1

    .line 86
    :cond_6
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->token:[B

    if-nez v0, :cond_8

    :cond_7
    :goto_1
    return-void

    .line 87
    :cond_8
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :try_start_1
    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v5, "127.0.0.1"

    const v6, 0xa6af

    invoke-direct {v2, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v2, Ljava/net/SocketAddress;

    const/16 v5, 0x3e8

    invoke-virtual {v1, v2, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/16 v2, 0x5dc

    .line 90
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 91
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    sput-object v2, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->output:Ljava/io/DataOutputStream;

    .line 92
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->input:Ljava/io/DataInputStream;

    .line 93
    sput-object v1, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->socket:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 94
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    throw v0

    .line 96
    :cond_9
    :goto_2
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;->getTurn()I

    move-result v0

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;->getDistance()I

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->send(III)V

    .line 97
    const-string v0, "Connected to ADB starter; navigation writes acknowledged"

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->notice(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 99
    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->close()V

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0xbb8

    int-to-long v3, v3

    add-long/2addr v1, v3

    sput-wide v1, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->retryAfterMs:J

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Waiting for ADB starter ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->notice(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clear(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->latest:Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;

    if-eqz p1, :cond_0

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->demoStartMs:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public final declared-synchronized configure(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secret"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.andrerinas.headunitrevived.bydhudtest"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.shihab.diplay.hudtest"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->decodeToken(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    const-string v1, "hud_starter"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->initialize(Landroid/content/Context;)V

    .line 43
    sput-object v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->token:[B

    .line 44
    const-string p1, "BYD-Starter-Bridge"

    const-string p2, "Temporary starter credentials received"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 40
    :cond_0
    :try_start_1
    const-string p1, "Invalid starter token"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final demonstrate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->initialize(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->demoStartMs:Ljava/lang/Long;

    .line 61
    const-string p1, "BYD-Starter-Bridge"

    const-string v0, "Parked demo requested: left 500m, right 800m, then clear"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized initialize(Landroid/content/Context;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.andrerinas.headunitrevived.bydhudtest"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.shihab.diplay.hudtest"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->started:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    const-string v0, "hud_starter"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v0, "token"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->decodeToken(Ljava/lang/String;)[B

    move-result-object p1

    sput-object p1, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->token:[B

    .line 32
    sput-boolean v3, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->started:Z

    .line 33
    new-instance p1, Lcom/shilapi/xcertplay/hud/BydStarterBridge$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/hud/BydStarterBridge$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/shilapi/xcertplay/hud/BydStarterBridge$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/shilapi/xcertplay/hud/BydStarterBridge$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/hud/BydStarterBridge;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 29
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final update(III)V
    .locals 2

    .line 51
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/hud/BydFactoryTurnCode;->map(II)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    if-ltz p3, :cond_0

    const p2, 0xffffff

    if-ge p3, p2, :cond_0

    .line 52
    new-instance p2, Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;-><init>(IIJ)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sput-object p2, Lcom/shilapi/xcertplay/hud/BydStarterBridge;->latest:Lcom/shilapi/xcertplay/hud/BydStarterBridge$Frame;

    return-void
.end method
