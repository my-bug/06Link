.class public Lorg/bouncycastle/tls/crypto/impl/TlsImplUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateKeyBlock(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;I)[B
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFAlgorithm()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientRandom()[B

    move-result-object p0

    invoke-static {v2, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    const-string v2, "key expansion"

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/bouncycastle/tls/crypto/TlsSecret;->deriveUsingPRF(ILjava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsSecret;->extract()[B

    move-result-object p0

    return-object p0
.end method

.method public static isSSL(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isSSL()Z

    move-result p0

    return p0
.end method

.method public static isTLSv10(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isTLSv10(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/crypto/impl/TlsImplUtils;->isTLSv10(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isTLSv11(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isTLSv11(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/crypto/impl/TlsImplUtils;->isTLSv11(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isTLSv12(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isTLSv12(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/crypto/impl/TlsImplUtils;->isTLSv12(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isTLSv13(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/crypto/impl/TlsImplUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method
