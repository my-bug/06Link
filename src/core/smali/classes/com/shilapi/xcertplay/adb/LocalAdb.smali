.class public final Lcom/shilapi/xcertplay/adb/LocalAdb;
.super Ljava/lang/Object;
.source "LocalAdb.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/adb/LocalAdb$Access;,
        Lcom/shilapi/xcertplay/adb/LocalAdb$Companion;,
        Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalAdb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalAdb.kt\ncom/shilapi/xcertplay/adb/LocalAdb\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \'2\u00020\u0001:\u0003%&\'B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\u0014H\u0002J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0019\u001a\u00020\u0005J\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0007J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0007H\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020\"H\u0002J\u0008\u0010$\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/shilapi/xcertplay/adb/LocalAdb;",
        "Ljava/io/Closeable;",
        "key",
        "Ljava/security/KeyPair;",
        "host",
        "",
        "port",
        "",
        "<init>",
        "(Ljava/security/KeyPair;Ljava/lang/String;I)V",
        "socket",
        "Ljava/net/Socket;",
        "input",
        "Ljava/io/InputStream;",
        "output",
        "Ljava/io/OutputStream;",
        "nextStreamId",
        "connect",
        "Lcom/shilapi/xcertplay/adb/LocalAdb$Access;",
        "mayAsk",
        "",
        "restartAsRoot",
        "Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;",
        "awaitReconnect",
        "shell",
        "command",
        "readTimeoutMillis",
        "openService",
        "service",
        "close",
        "",
        "handshake",
        "send",
        "packet",
        "Lcom/shilapi/xcertplay/adb/AdbPacket;",
        "receive",
        "closeQuietly",
        "Access",
        "RootResult",
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
.field private static final APPROVAL_TIMEOUT_MS:I = 0xea60

.field private static final CONNECT_TIMEOUT_MS:I = 0x7d0

.field public static final Companion:Lcom/shilapi/xcertplay/adb/LocalAdb$Companion;

.field public static final LONG_COMMAND_TIMEOUT_MS:I = 0x1d4c0

.field private static final READ_TIMEOUT_MS:I = 0x1388

.field private static final RESTART_RECONNECT_MS:I = 0x1770


# instance fields
.field private final host:Ljava/lang/String;

.field private input:Ljava/io/InputStream;

.field private final key:Ljava/security/KeyPair;

.field private nextStreamId:I

.field private output:Ljava/io/OutputStream;

.field private final port:I

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/adb/LocalAdb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/adb/LocalAdb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb;->Companion:Lcom/shilapi/xcertplay/adb/LocalAdb$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyPair;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->key:Ljava/security/KeyPair;

    .line 24
    iput-object p2, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->host:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->port:I

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->nextStreamId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/security/KeyPair;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 24
    const-string p2, "127.0.0.1"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x15b3

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/adb/LocalAdb;-><init>(Ljava/security/KeyPair;Ljava/lang/String;I)V

    return-void
.end method

.method private final awaitReconnect()Z
    .locals 6

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x1770

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 87
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-gez v5, :cond_1

    const-wide/16 v2, 0x12c

    .line 88
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-virtual {p0, v4}, Lcom/shilapi/xcertplay/adb/LocalAdb;->connect(Z)Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    .line 88
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return v4
.end method

.method private final closeQuietly()V
    .locals 3

    const/4 v0, 0x0

    .line 171
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/adb/LocalAdb;

    iget-object v1, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :goto_1
    iput-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    .line 173
    iput-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->input:Ljava/io/InputStream;

    .line 174
    iput-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->output:Ljava/io/OutputStream;

    const/4 v0, 0x1

    .line 175
    iput v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->nextStreamId:I

    return-void
.end method

.method private final handshake(Z)Lcom/shilapi/xcertplay/adb/LocalAdb$Access;
    .locals 7

    .line 146
    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->receive()Lcom/shilapi/xcertplay/adb/AdbPacket;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getCommand()I

    move-result v1

    const v2, 0x534c5453

    if-ne v1, v2, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->UNSUPPORTED:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    return-object p1

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getCommand()I

    move-result v1

    const v2, 0x4e584e43    # 9.072519E8f

    if-ne v1, v2, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    return-object p1

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getCommand()I

    move-result v1

    const v3, 0x48545541

    if-ne v1, v3, :cond_8

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getArg0()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    new-instance v1, Lcom/shilapi/xcertplay/adb/AdbPacket;

    sget-object v4, Lcom/shilapi/xcertplay/adb/AdbKeys;->INSTANCE:Lcom/shilapi/xcertplay/adb/AdbKeys;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getPayload()[B

    move-result-object v0

    iget-object v5, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->key:Ljava/security/KeyPair;

    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    const-string v6, "getPrivate(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Lcom/shilapi/xcertplay/adb/AdbKeys;->sign([BLjava/security/PrivateKey;)[B

    move-result-object v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/shilapi/xcertplay/adb/AdbPacket;-><init>(III[B)V

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/adb/LocalAdb;->send(Lcom/shilapi/xcertplay/adb/AdbPacket;)V

    .line 151
    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->receive()Lcom/shilapi/xcertplay/adb/AdbPacket;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getCommand()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    .line 153
    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->NOT_APPROVED:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    return-object p1

    .line 155
    :cond_4
    new-instance p1, Lcom/shilapi/xcertplay/adb/AdbPacket;

    sget-object v0, Lcom/shilapi/xcertplay/adb/AdbKeys;->INSTANCE:Lcom/shilapi/xcertplay/adb/AdbKeys;

    iget-object v1, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->key:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    const-string v4, "getPublic(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/adb/AdbKeys;->publicKeyMessage(Ljava/security/PublicKey;)[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, v3, v1, v5, v0}, Lcom/shilapi/xcertplay/adb/AdbPacket;-><init>(III[B)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/adb/LocalAdb;->send(Lcom/shilapi/xcertplay/adb/AdbPacket;)V

    .line 156
    iget-object p1, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_5

    const v0, 0xea60

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 157
    :cond_5
    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->receive()Lcom/shilapi/xcertplay/adb/AdbPacket;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_6

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 159
    :cond_6
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getCommand()I

    move-result p1

    if-ne p1, v2, :cond_7

    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    return-object p1

    :cond_7
    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->NOT_APPROVED:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    return-object p1

    .line 149
    :cond_8
    :goto_0
    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->UNREACHABLE:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    return-object p1
.end method

.method private final openService(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    .line 107
    iget-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/adb/LocalAdb;->connect(Z)Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v0

    sget-object v3, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    if-eq v0, v3, :cond_1

    return-object v1

    .line 108
    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/adb/LocalAdb;

    iget-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    :cond_3
    check-cast v0, Ljava/lang/Integer;

    const/16 v3, 0x1388

    if-eq p2, v3, :cond_5

    .line 109
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/shilapi/xcertplay/adb/LocalAdb;

    iget-object v4, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_4
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_5
    :goto_3
    :try_start_2
    iget v4, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->nextStreamId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->nextStreamId:I

    .line 112
    new-instance v5, Lcom/shilapi/xcertplay/adb/AdbPacket;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v6, "getBytes(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x4e45504f    # 8.2759366E8f

    invoke-direct {v5, v6, v4, v2, p1}, Lcom/shilapi/xcertplay/adb/AdbPacket;-><init>(III[B)V

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/adb/LocalAdb;->send(Lcom/shilapi/xcertplay/adb/AdbPacket;)V

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_6
    :goto_4
    if-nez v5, :cond_b

    .line 117
    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->receive()Lcom/shilapi/xcertplay/adb/AdbPacket;

    move-result-object v7

    .line 119
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getCommand()I

    move-result v8

    const v9, 0x59414b4f

    if-ne v8, v9, :cond_7

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getArg1()I

    move-result v8

    if-ne v8, v4, :cond_7

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getArg0()I

    move-result v6

    goto :goto_4

    .line 120
    :cond_7
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getCommand()I

    move-result v8

    const v10, 0x45545257

    if-ne v8, v10, :cond_8

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getArg1()I

    move-result v8

    if-ne v8, v4, :cond_8

    .line 121
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getPayload()[B

    move-result-object v10

    sget-object v11, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v8, Lcom/shilapi/xcertplay/adb/AdbPacket;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getArg0()I

    move-result v7

    new-array v10, v2, [B

    invoke-direct {v8, v9, v4, v7, v10}, Lcom/shilapi/xcertplay/adb/AdbPacket;-><init>(III[B)V

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/adb/LocalAdb;->send(Lcom/shilapi/xcertplay/adb/AdbPacket;)V

    goto :goto_4

    .line 124
    :cond_8
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getCommand()I

    move-result v8

    const v9, 0x45534c43

    if-ne v8, v9, :cond_a

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getArg1()I

    move-result v8

    if-ne v8, v4, :cond_a

    if-eqz v6, :cond_9

    .line 125
    new-instance v5, Lcom/shilapi/xcertplay/adb/AdbPacket;

    new-array v7, v2, [B

    invoke-direct {v5, v9, v4, v6, v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;-><init>(III[B)V

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/adb/LocalAdb;->send(Lcom/shilapi/xcertplay/adb/AdbPacket;)V

    :cond_9
    const/4 v5, 0x1

    goto :goto_4

    .line 129
    :cond_a
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getCommand()I

    move-result v8

    if-ne v8, v10, :cond_6

    .line 130
    new-instance v8, Lcom/shilapi/xcertplay/adb/AdbPacket;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getArg1()I

    move-result v10

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/adb/AdbPacket;->getArg0()I

    move-result v7

    new-array v11, v2, [B

    invoke-direct {v8, v9, v10, v7, v11}, Lcom/shilapi/xcertplay/adb/AdbPacket;-><init>(III[B)V

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/adb/LocalAdb;->send(Lcom/shilapi/xcertplay/adb/AdbPacket;)V

    goto :goto_4

    .line 133
    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "toString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eq p2, v3, :cond_e

    if-eqz v0, :cond_e

    .line 138
    :try_start_3
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/adb/LocalAdb;

    iget-object p1, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_3
    move-exception p1

    goto :goto_7

    .line 135
    :catch_0
    :try_start_4
    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->closeQuietly()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eq p2, v3, :cond_e

    if-eqz v0, :cond_e

    .line 138
    :try_start_5
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :cond_e
    :goto_6
    return-object v1

    :goto_7
    if-eq p2, v3, :cond_10

    if-eqz v0, :cond_10

    :try_start_6
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    if-eqz p2, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_f
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_8
    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method static synthetic openService$default(Lcom/shilapi/xcertplay/adb/LocalAdb;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x1388

    .line 106
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/adb/LocalAdb;->openService(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final receive()Lcom/shilapi/xcertplay/adb/AdbPacket;
    .locals 2

    .line 168
    sget-object v0, Lcom/shilapi/xcertplay/adb/AdbPacket;->Companion:Lcom/shilapi/xcertplay/adb/AdbPacket$Companion;

    iget-object v1, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/adb/AdbPacket$Companion;->read(Ljava/io/InputStream;)Lcom/shilapi/xcertplay/adb/AdbPacket;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final send(Lcom/shilapi/xcertplay/adb/AdbPacket;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/adb/AdbPacket;->encode()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 165
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 163
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "not connected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->closeQuietly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized connect(Z)Lcom/shilapi/xcertplay/adb/LocalAdb$Access;
    .locals 5

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 38
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->host:Ljava/lang/String;

    iget v2, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 39
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 40
    check-cast v0, Ljava/net/SocketAddress;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/16 v0, 0x1388

    .line 41
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 44
    iput-object v1, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    .line 45
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->input:Ljava/io/InputStream;

    .line 46
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->output:Ljava/io/OutputStream;

    .line 47
    new-instance v0, Lcom/shilapi/xcertplay/adb/AdbPacket;

    const-string v1, "host::\u0000"

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x4e584e43    # 9.072519E8f

    const/high16 v3, 0x1000000

    const/high16 v4, 0x40000

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shilapi/xcertplay/adb/AdbPacket;-><init>(III[B)V

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->send(Lcom/shilapi/xcertplay/adb/AdbPacket;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/adb/LocalAdb;->handshake(Z)Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->closeQuietly()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 53
    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->closeQuietly()V

    .line 54
    sget-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->UNREACHABLE:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    goto :goto_1

    .line 50
    :catch_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->closeQuietly()V

    if-eqz p1, :cond_1

    .line 51
    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->NOT_APPROVED:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->UNREACHABLE:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move-object v0, p1

    .line 37
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized restartAsRoot()Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;
    .locals 4

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/adb/LocalAdb;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/adb/LocalAdb;->connect(Z)Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    move-result-object v0

    sget-object v2, Lcom/shilapi/xcertplay/adb/LocalAdb$Access;->READY:Lcom/shilapi/xcertplay/adb/LocalAdb$Access;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;->FAILED:Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 70
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "root:"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/shilapi/xcertplay/adb/LocalAdb;->openService$default(Lcom/shilapi/xcertplay/adb/LocalAdb;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;->FAILED:Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 72
    :cond_2
    :try_start_2
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "already running as root"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;->ALREADY_ROOT:Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;

    goto :goto_2

    .line 73
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "cannot run as root"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_7

    .line 74
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "production builds"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_7

    .line 75
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "not allowed"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 76
    :cond_4
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "restarting"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 78
    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->closeQuietly()V

    .line 79
    invoke-direct {p0}, Lcom/shilapi/xcertplay/adb/LocalAdb;->awaitReconnect()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;->RESTARTED:Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;->FAILED:Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;

    goto :goto_2

    .line 81
    :cond_6
    sget-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;->FAILED:Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;

    goto :goto_2

    .line 75
    :cond_7
    :goto_1
    sget-object v0, Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;->UNSUPPORTED:Lcom/shilapi/xcertplay/adb/LocalAdb$RootResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized shell(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "shell:"

    monitor-enter p0

    :try_start_0
    const-string v1, "command"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/shilapi/xcertplay/adb/LocalAdb;->openService$default(Lcom/shilapi/xcertplay/adb/LocalAdb;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized shell(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "shell:"

    monitor-enter p0

    :try_start_0
    const-string v1, "command"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/adb/LocalAdb;->openService(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
