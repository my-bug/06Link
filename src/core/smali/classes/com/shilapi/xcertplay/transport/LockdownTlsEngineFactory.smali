.class public final Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;
.super Ljava/lang/Object;
.source "LockdownTlsEngineFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;,
        Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockdownTlsEngineFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockdownTlsEngineFactory.kt\ncom/shilapi/xcertplay/transport/LockdownTlsEngineFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002J\u001e\u0010\u000b\u001a\u00020\u000c*\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000cH\u0002R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;",
        "",
        "<init>",
        "()V",
        "create",
        "Ljavax/net/ssl/SSLEngine;",
        "pairRecord",
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
        "decodePkcs8Pem",
        "",
        "pem",
        "indexOf",
        "",
        "needle",
        "startIndex",
        "KEY_ALIAS",
        "",
        "PEER_HOST",
        "PEER_PORT",
        "BEGIN_PRIVATE_KEY",
        "END_PRIVATE_KEY",
        "FixedIdentityKeyManager",
        "UsbLockdownTrustManager",
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
.field private static final BEGIN_PRIVATE_KEY:[B

.field private static final END_PRIVATE_KEY:[B

.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;

.field private static final KEY_ALIAS:Ljava/lang/String; = "lockdown-host"

.field private static final PEER_HOST:Ljava/lang/String; = "Device"

.field private static final PEER_PORT:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;

    .line 145
    sget-object v0, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "US_ASCII"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-----BEGIN PRIVATE KEY-----"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "getBytes(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->BEGIN_PRIVATE_KEY:[B

    .line 146
    sget-object v0, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-----END PRIVATE KEY-----"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->END_PRIVATE_KEY:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final decodePkcs8Pem([B)[B
    .locals 11

    .line 85
    sget-object v3, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->BEGIN_PRIVATE_KEY:[B

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->indexOf$default(Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;[B[BIILjava/lang/Object;)I

    move-result p1

    .line 86
    sget-object v0, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->END_PRIVATE_KEY:[B

    array-length v4, v3

    add-int/2addr v4, p1

    invoke-direct {p0, v2, v0, v4}, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->indexOf([B[BI)I

    move-result v0

    .line 87
    const-string v4, "Invalid PKCS#8 private key PEM"

    if-ltz p1, :cond_0

    if-ltz v0, :cond_0

    .line 88
    array-length v3, v3

    add-int/2addr p1, v3

    invoke-static {v2, p1, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v5

    .line 90
    :try_start_0
    invoke-static {}, Lj$/util/Base64;->getMimeDecoder()Lj$/util/Base64$Decoder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lj$/util/Base64$Decoder;->decode([B)[B

    move-result-object p1

    .line 89
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 94
    invoke-static/range {v5 .. v10}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 92
    :try_start_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v4, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 94
    invoke-static/range {v5 .. v10}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    throw p1

    .line 87
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final indexOf([B[BI)I
    .locals 6

    .line 99
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    array-length p1, p1

    invoke-static {p3, v1, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    return p1

    .line 100
    :cond_0
    invoke-static {p3, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p3

    array-length v0, p1

    array-length v2, p2

    sub-int/2addr v0, v2

    if-gt p3, v0, :cond_3

    .line 102
    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    add-int v4, p3, v3

    .line 103
    aget-byte v4, p1, v4

    aget-byte v5, p2, v3

    if-eq v4, v5, :cond_1

    if-eq p3, v0, :cond_3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return p3

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic indexOf$default(Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;[B[BIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 98
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->indexOf([B[BI)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final create(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;)Ljavax/net/ssl/SSLEngine;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "lockdown-host"

    const-string v1, "pairRecord"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 31
    new-array v2, v1, [C

    fill-array-data v2, :array_0

    .line 34
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getRootPrivateKeyPem()[B

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getRootCertificatePem()[B

    move-result-object p1

    .line 41
    sget-object v3, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/compat/LegacyWiredOverride;->getLegacyTlsAndTun()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-instance v3, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_1

    .line 42
    sget-object v5, Lcom/shilapi/xcertplay/compat/LegacyBcNames;->INSTANCE:Lcom/shilapi/xcertplay/compat/LegacyBcNames;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/compat/LegacyBcNames;->install()V

    .line 44
    :cond_1
    :try_start_0
    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory;->decodePkcs8Pem([B)[B

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 45
    const-string v5, "RSA"

    if-eqz v3, :cond_2

    :try_start_1
    move-object v6, v3

    check-cast v6, Ljava/security/Provider;

    invoke-static {v5, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v13, v1

    move-object v1, p1

    move-object p1, v13

    goto/16 :goto_7

    :cond_2
    :try_start_2
    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 46
    :goto_1
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    check-cast v6, Ljava/security/spec/KeySpec;

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 47
    const-string v6, "X.509"

    if-eqz v3, :cond_3

    :try_start_3
    move-object v7, v3

    check-cast v7, Ljava/security/Provider;

    invoke-static {v6, v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 48
    :cond_3
    :try_start_4
    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 49
    :goto_2
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v7, Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 47
    const-string v7, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_4

    .line 50
    :try_start_5
    const-string v7, "PKCS12"

    move-object v8, v3

    check-cast v8, Ljava/security/Provider;

    invoke-static {v7, v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 51
    :cond_4
    :try_start_6
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 52
    :goto_3
    invoke-virtual {v7, v4, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 53
    move-object v8, v5

    check-cast v8, Ljava/security/Key;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v10, 0x1

    :try_start_7
    new-array v11, v10, [Ljava/security/cert/X509Certificate;

    const/4 v12, 0x0

    aput-object v6, v11, v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    check-cast v11, [Ljava/security/cert/Certificate;

    invoke-virtual {v7, v0, v8, v2, v11}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_5

    .line 55
    :try_start_9
    new-instance v8, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v8, v3}, Lorg/bouncycastle/jsse/provider/BouncyCastleJsseProvider;-><init>(Ljava/security/Provider;)V

    goto :goto_4

    :cond_5
    move-object v8, v4

    :goto_4
    if-eqz v8, :cond_6

    .line 61
    new-array v3, v10, [Ljavax/net/ssl/KeyManager;

    new-instance v7, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v11, v10, [Ljava/security/cert/X509Certificate;

    aput-object v6, v11, v12

    invoke-direct {v7, v0, v5, v11}, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$FixedIdentityKeyManager;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    aput-object v7, v3, v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 62
    :cond_6
    :try_start_a
    const-string v0, "PKIX"

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v7, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 64
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_5
    if-eqz v8, :cond_7

    .line 65
    :try_start_b
    const-string v0, "TLSv1.2"

    check-cast v8, Ljava/security/Provider;

    invoke-static {v0, v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 66
    :cond_7
    :try_start_c
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 67
    :goto_6
    new-array v5, v10, [Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;

    sget-object v6, Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownTlsEngineFactory$UsbLockdownTrustManager;

    aput-object v6, v5, v12

    check-cast v5, [Ljavax/net/ssl/TrustManager;

    invoke-virtual {v0, v3, v5, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 69
    const-string v3, "Device"

    invoke-virtual {v0, v3, v12}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v10}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 72
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/16 v5, 0x18

    if-lt v3, v5, :cond_8

    .line 73
    :try_start_d
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Ljavax/net/ssl/SSLParameters;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 69
    :cond_8
    :try_start_e
    const-string v3, "apply(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([CCIIILjava/lang/Object;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    .line 78
    invoke-static/range {v3 .. v8}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    move-object v3, p1

    .line 79
    invoke-static/range {v3 .. v8}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    if-eqz v9, :cond_9

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v9

    const/4 v9, 0x0

    .line 80
    invoke-static/range {v6 .. v11}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    :cond_9
    return-object v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    move-object v6, v9

    move-object v9, v6

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    move-object v6, v9

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v13, v1

    move-object v1, p1

    move-object p1, v13

    move-object v9, v4

    :goto_7
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([CCIIILjava/lang/Object;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    .line 78
    invoke-static/range {v3 .. v8}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    move-object v3, v1

    .line 79
    invoke-static/range {v3 .. v8}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    if-eqz v9, :cond_a

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    .line 80
    invoke-static/range {v3 .. v8}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    :cond_a
    throw v0

    :array_0
    .array-data 2
        0x6cs
        0x6fs
        0x63s
        0x6bs
        0x64s
        0x6fs
        0x77s
        0x6es
    .end array-data
.end method
