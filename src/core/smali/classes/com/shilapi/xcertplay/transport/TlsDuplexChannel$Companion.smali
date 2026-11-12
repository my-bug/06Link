.class public final Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;
.super Ljava/lang/Object;
.source "TlsDuplexChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlsDuplexChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlsDuplexChannel.kt\ncom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,438:1\n1#2:439\n3829#3:440\n4344#3,2:441\n37#4:443\n36#4,3:444\n*S KotlinDebug\n*F\n+ 1 TlsDuplexChannel.kt\ncom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion\n*L\n412#1:440\n412#1:441,2\n412#1:443\n412#1:444,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000fH\u0007J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002R\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;",
        "",
        "<init>",
        "()V",
        "ALLOWED_PROTOCOLS",
        "",
        "",
        "[Ljava/lang/String;",
        "RECEIVE_CHUNK_BYTES",
        "",
        "MAXIMUM_TLS_BUFFER_BYTES",
        "MAXIMUM_CONTROL_STEPS",
        "MAXIMUM_NO_PROGRESS_STEPS",
        "MAXIMUM_CLOSE_WRAP_STEPS",
        "NANOS_PER_MILLISECOND",
        "",
        "open",
        "Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;",
        "underlying",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "pairRecord",
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
        "handshakeTimeoutMillis",
        "isHandshakeComplete",
        "",
        "status",
        "Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;",
        "isNeedUnwrap",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isHandshakeComplete(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->isHandshakeComplete(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isNeedUnwrap(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->isNeedUnwrap(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result p0

    return p0
.end method

.method private final isHandshakeComplete(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    .locals 1

    .line 431
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_1

    .line 432
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final isNeedUnwrap(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    .locals 1

    .line 435
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NEED_UNWRAP_AGAIN"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic open$default(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/LockdownPairRecord;JILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/IphoneUsbException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x1388

    .line 401
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel$Companion;->open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/LockdownPairRecord;J)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final open(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Lcom/shilapi/xcertplay/transport/LockdownPairRecord;J)Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/IphoneUsbException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "underlying"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairRecord"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_3

    .line 410
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->create(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;)Ljavax/net/ssl/SSLEngine;

    move-result-object p2

    .line 411
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSupportedProtocols(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 412
    # getter for: Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->ALLOWED_PROTOCOLS:[Ljava/lang/String;
    invoke-static {}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->access$getALLOWED_PROTOCOLS$cp()[Ljava/lang/String;

    move-result-object v1

    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 441
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 412
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 441
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 442
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 440
    check-cast v2, Ljava/util/Collection;

    .line 446
    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 412
    check-cast v0, [Ljava/lang/String;

    .line 413
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 416
    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 417
    new-instance v0, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljavax/net/ssl/SSLEngine;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 418
    # invokes: Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->performHandshake(J)V
    invoke-static {v0, p3, p4}, Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;->access$performHandshake(Lcom/shilapi/xcertplay/transport/TlsDuplexChannel;J)V

    return-object v0

    .line 414
    :cond_2
    new-instance p2, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string p3, "TLS engine supports neither TLSv1.2 nor TLSv1.3"

    invoke-direct {p2, p3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 422
    :try_start_1
    invoke-interface {p1}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 426
    :catch_1
    throw p2

    .line 408
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handshakeTimeoutMillis must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
