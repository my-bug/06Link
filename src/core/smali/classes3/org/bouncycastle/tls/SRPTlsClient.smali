.class public Lorg/bouncycastle/tls/SRPTlsClient;
.super Lorg/bouncycastle/tls/AbstractTlsClient;


# static fields
.field private static final DEFAULT_CIPHER_SUITES:[I


# instance fields
.field protected srpIdentity:Lorg/bouncycastle/tls/TlsSRPIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xc01e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SRPTlsClient;->DEFAULT_CIPHER_SUITES:[I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsSRPIdentity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    iput-object p2, p0, Lorg/bouncycastle/tls/SRPTlsClient;->srpIdentity:Lorg/bouncycastle/tls/TlsSRPIdentity;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;[B[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/BasicTlsSRPIdentity;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/tls/BasicTlsSRPIdentity;-><init>([B[B)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tls/SRPTlsClient;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsSRPIdentity;)V

    return-void
.end method


# virtual methods
.method public getAuthentication()Lorg/bouncycastle/tls/TlsAuthentication;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/tls/AbstractTlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/SRPTlsClient;->srpIdentity:Lorg/bouncycastle/tls/TlsSRPIdentity;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsSRPIdentity;->getSRPIdentity()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsSRPUtils;->addSRPExtension(Ljava/util/Hashtable;[B)V

    return-object v0
.end method

.method public getSRPIdentity()Lorg/bouncycastle/tls/TlsSRPIdentity;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SRPTlsClient;->srpIdentity:Lorg/bouncycastle/tls/TlsSRPIdentity;

    return-object v0
.end method

.method protected getSupportedCipherSuites()[I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SRPTlsClient;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/tls/SRPTlsClient;->DEFAULT_CIPHER_SUITES:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->getSupportedCipherSuites(Lorg/bouncycastle/tls/crypto/TlsCrypto;[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected getSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->only()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsSRPUtils;->EXT_SRP:Ljava/lang/Integer;

    const/16 v1, 0x2f

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SRPTlsClient;->requireSRPServerExtension()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected requireSRPServerExtension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
