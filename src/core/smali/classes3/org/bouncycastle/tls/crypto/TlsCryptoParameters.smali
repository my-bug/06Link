.class public Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;
.super Ljava/lang/Object;


# instance fields
.field private final context:Lorg/bouncycastle/tls/TlsContext;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/TlsContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->context:Lorg/bouncycastle/tls/TlsContext;

    return-void
.end method


# virtual methods
.method public getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getNonceGenerator()Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getNonceGenerator()Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;

    move-result-object v0

    return-object v0
.end method

.method public getRSAPreMasterSecretVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getRSAPreMasterSecretVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    return-object v0
.end method

.method public getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public isServer()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->isServer()Z

    move-result v0

    return v0
.end method
