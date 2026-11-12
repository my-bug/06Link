.class public abstract Lorg/bouncycastle/tls/AbstractTlsServer;
.super Lorg/bouncycastle/tls/AbstractTlsPeer;

# interfaces
.implements Lorg/bouncycastle/tls/TlsServer;


# instance fields
.field protected certificateStatusRequest:Lorg/bouncycastle/tls/CertificateStatusRequest;

.field protected cipherSuites:[I

.field protected clientExtensions:Ljava/util/Hashtable;

.field protected clientProtocolNames:Ljava/util/Vector;

.field protected clientSentECPointFormats:Z

.field protected context:Lorg/bouncycastle/tls/TlsServerContext;

.field protected encryptThenMACOffered:Z

.field protected maxFragmentLengthOffered:S

.field protected offeredCipherSuites:[I

.field protected protocolVersions:[Lorg/bouncycastle/tls/ProtocolVersion;

.field protected selectedCipherSuite:I

.field protected selectedProtocolName:Lorg/bouncycastle/tls/ProtocolName;

.field protected final serverExtensions:Ljava/util/Hashtable;

.field protected statusRequestV2:Ljava/util/Vector;

.field protected truncatedHMacOffered:Z

.field protected trustedCAKeys:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsPeer;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method protected allowCertificateStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected allowEncryptThenMAC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected allowMultiCertStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected allowTruncatedHMac()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected allowTrustedCAIndication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected checkServerExtensions()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getAllowedClientCertificateTypes()[S
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateRequest()Lorg/bouncycastle/tls/CertificateRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateStatus()Lorg/bouncycastle/tls/CertificateStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCipherSuites()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->cipherSuites:[I

    return-object v0
.end method

.method public getDHConfig()Lorg/bouncycastle/tls/crypto/TlsDHConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsDHUtils;->getMinimumFiniteFieldBits(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/AbstractTlsServer;->selectDH(I)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsDHUtils;->createNamedDHConfig(Lorg/bouncycastle/tls/TlsContext;I)Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getDetailMessageNoCipherSuite()Ljava/lang/String;
    .locals 1

    const-string v0, "No selectable cipher suite"

    return-object v0
.end method

.method public getECDHConfig()Lorg/bouncycastle/tls/crypto/TlsECConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsECCUtils;->getMinimumCurveBits(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/AbstractTlsServer;->selectECDH(I)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsECCUtils;->createNamedECConfig(Lorg/bouncycastle/tls/TlsContext;I)Lorg/bouncycastle/tls/crypto/TlsECConfig;

    move-result-object v0

    return-object v0
.end method

.method public getExternalPSK(Ljava/util/Vector;)Lorg/bouncycastle/tls/TlsPSKExternal;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getMaximumDefaultCurveBits()I
    .locals 1

    const/16 v0, 0x19

    invoke-static {v0}, Lorg/bouncycastle/tls/NamedGroup;->getCurveBits(I)I

    move-result v0

    return v0
.end method

.method protected getMaximumDefaultFiniteFieldBits()I
    .locals 1

    const/16 v0, 0x104

    invoke-static {v0}, Lorg/bouncycastle/tls/NamedGroup;->getFiniteFieldBits(I)I

    move-result v0

    return v0
.end method

.method protected getMaximumNegotiableCurveBits()I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSupportedGroups()[I

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget v3, v0, v1

    invoke-static {v3}, Lorg/bouncycastle/tls/NamedGroup;->getCurveBits(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getMaximumDefaultCurveBits()I

    move-result v0

    return v0
.end method

.method protected getMaximumNegotiableFiniteFieldBits()I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSupportedGroups()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget v4, v0, v1

    invoke-static {v4}, Lorg/bouncycastle/tls/NamedGroup;->isFiniteField(I)Z

    move-result v4

    or-int/2addr v3, v4

    aget v4, v0, v1

    invoke-static {v4}, Lorg/bouncycastle/tls/NamedGroup;->getFiniteFieldBits(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getMaximumDefaultFiniteFieldBits()I

    move-result v0

    return v0

    :cond_2
    return v2
.end method

.method protected getNewConnectionID()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewSessionID()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewSessionTicket()Lorg/bouncycastle/tls/NewSessionTicket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/NewSessionTicket;

    const-wide/16 v1, 0x0

    sget-object v3, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/tls/NewSessionTicket;-><init>(J[B)V

    return-object v0
.end method

.method public getPSKIdentityManager()Lorg/bouncycastle/tls/TlsPSKIdentityManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getProtocolNames()Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->protocolVersions:[Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0
.end method

.method public getSRPLoginParameters()Lorg/bouncycastle/tls/TlsSRPLoginParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedCipherSuite()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->offeredCipherSuites:[I

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getCipherSuites()[I

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->preferLocalCipherSuites()Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->getCommonCipherSuite13(Lorg/bouncycastle/tls/ProtocolVersion;[I[IZ)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/AbstractTlsServer;->selectCipherSuite(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgs()Ljava/util/Vector;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->getUsableSignatureAlgorithms(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getMaximumNegotiableCurveBits()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getMaximumNegotiableFiniteFieldBits()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->offeredCipherSuites:[I

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getCipherSuites()[I

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->preferLocalCipherSuites()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/tls/TlsUtils;->getCommonCipherSuites([I[IZ)[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget v5, v3, v4

    invoke-virtual {p0, v5, v1, v2, v0}, Lorg/bouncycastle/tls/AbstractTlsServer;->isSelectableCipherSuite(IIILjava/util/Vector;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5}, Lorg/bouncycastle/tls/AbstractTlsServer;->selectCipherSuite(I)Z

    move-result v6

    if-eqz v6, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getDetailMessageNoCipherSuite()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getServerExtensions()Ljava/util/Hashtable;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->certificateStatusRequest:Lorg/bouncycastle/tls/CertificateStatusRequest;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->allowCertificateStatus()Z

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->encryptThenMACOffered:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->allowEncryptThenMAC()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->selectedCipherSuite:I

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addEncryptThenMACExtension(Ljava/util/Hashtable;)V

    :cond_1
    iget-boolean v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->truncatedHMacOffered:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->allowTruncatedHMac()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addTruncatedHMacExtension(Ljava/util/Hashtable;)V

    :cond_2
    iget-boolean v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientSentECPointFormats:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->selectedCipherSuite:I

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    new-array v4, v1, [S

    aput-short v2, v4, v2

    invoke-static {v3, v4}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addSupportedPointFormatsExtension(Ljava/util/Hashtable;[S)V

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->statusRequestV2:Ljava/util/Vector;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->allowMultiCertStatus()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request_v2:Ljava/lang/Integer;

    :goto_0
    invoke-static {v3, v4}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->certificateStatusRequest:Lorg/bouncycastle/tls/CertificateStatusRequest;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->allowCertificateStatus()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->trustedCAKeys:Ljava/util/Vector;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->allowTrustedCAIndication()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addTrustedCAKeysExtensionServer(Ljava/util/Hashtable;)V

    :cond_6
    :goto_2
    iget-short v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->maxFragmentLengthOffered:S

    if-ltz v3, :cond_7

    invoke-static {v3}, Lorg/bouncycastle/tls/MaxFragmentLength;->isValid(S)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    iget-short v4, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->maxFragmentLengthOffered:S

    invoke-static {v3, v4}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addMaxFragmentLengthExtension(Ljava/util/Hashtable;S)V

    :cond_7
    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getServerCertificateTypeExtensionClient(Ljava/util/Hashtable;)[S

    move-result-object v3

    const/16 v4, 0x2b

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getCredentials()Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v5}, Lorg/bouncycastle/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/tls/Certificate;->getCertificateType()S

    move-result v5

    if-ne v1, v5, :cond_9

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    const-string v2, "The OpenPGP certificate type MUST NOT be used with TLS 1.3"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    array-length v6, v3

    invoke-static {v3, v2, v6, v5}, Lorg/bouncycastle/tls/TlsUtils;->contains([SIIS)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v3, v5}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addServerCertificateTypeExtensionServer(Ljava/util/Hashtable;S)V

    goto :goto_4

    :cond_a
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_b
    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getClientCertificateTypeExtensionClient(Ljava/util/Hashtable;)[S

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getAllowedClientCertificateTypes()[S

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->preferLocalClientCertificateTypes()Z

    move-result v6

    if-eqz v6, :cond_c

    move-object v10, v5

    move-object v5, v3

    move-object v3, v10

    :cond_c
    const/4 v6, 0x0

    :goto_5
    array-length v7, v3

    const/4 v8, -0x1

    if-ge v6, v7, :cond_f

    aget-short v7, v3, v6

    if-ne v1, v7, :cond_d

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    array-length v9, v5

    invoke-static {v5, v2, v9, v7}, Lorg/bouncycastle/tls/TlsUtils;->contains([SIIS)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_7

    :cond_e
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_f
    const/4 v7, -0x1

    :goto_7
    if-eq v7, v8, :cond_10

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0, v7}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addClientCertificateTypeExtensionServer(Ljava/util/Hashtable;S)V

    goto :goto_8

    :cond_10
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_11
    :goto_8
    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getServerExtensionsForConnection(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->shouldSelectProtocolNameEarly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientProtocolNames:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->selectProtocolName()Lorg/bouncycastle/tls/ProtocolName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->selectedProtocolName:Lorg/bouncycastle/tls/ProtocolName;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->selectedProtocolName:Lorg/bouncycastle/tls/ProtocolName;

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_application_layer_protocol_negotiation:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addALPNExtensionServer(Ljava/util/Hashtable;Lorg/bouncycastle/tls/ProtocolName;)V

    :goto_0
    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    iget-object v1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServerContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    const/16 v1, 0x36

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getNewConnectionID()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addConnectionIDExtension(Ljava/util/Hashtable;[B)V

    :cond_2
    return-void
.end method

.method public getServerSupplementalData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsServerContext;->getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-static {v0, v3}, Lorg/bouncycastle/tls/ProtocolVersion;->contains([Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getSessionToResume([B)Lorg/bouncycastle/tls/TlsSession;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSupportedGroups()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1d
        0x1e
        0x17
        0x18
        0x100
        0x101
        0x102
    .end array-data
.end method

.method public init(Lorg/bouncycastle/tls/TlsServerContext;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->protocolVersions:[Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getSupportedCipherSuites()[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->cipherSuites:[I

    return-void
.end method

.method protected isSelectableCipherSuite(IIILjava/util/Vector;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsECCUtils;->getMinimumCurveBits(I)I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsDHUtils;->getMinimumFiniteFieldBits(I)I

    move-result p2

    if-lt p3, p2, :cond_0

    invoke-static {p1, p4}, Lorg/bouncycastle/tls/TlsUtils;->isValidCipherSuiteForSignatureAlgorithms(ILjava/util/Vector;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyClientCertificate(Lorg/bouncycastle/tls/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public notifyClientVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public notifyFallback(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isTLS()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getLatestTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getLatestDTLS([Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x56

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public notifyHandshakeBeginning()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/tls/AbstractTlsPeer;->notifyHandshakeBeginning()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->offeredCipherSuites:[I

    iput-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientExtensions:Ljava/util/Hashtable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->encryptThenMACOffered:Z

    iput-short v1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->maxFragmentLengthOffered:S

    iput-boolean v1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->truncatedHMacOffered:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientSentECPointFormats:Z

    iput-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->certificateStatusRequest:Lorg/bouncycastle/tls/CertificateStatusRequest;

    const/4 v1, -0x1

    iput v1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->selectedCipherSuite:I

    iput-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->selectedProtocolName:Lorg/bouncycastle/tls/ProtocolName;

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public notifyOfferedCipherSuites([I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->offeredCipherSuites:[I

    return-void
.end method

.method public notifySession(Lorg/bouncycastle/tls/TlsSession;)V
    .locals 0

    return-void
.end method

.method protected preferLocalCipherSuites()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected preferLocalClientCertificateTypes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public processClientExtensions(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientExtensions:Ljava/util/Hashtable;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getALPNExtensionClient(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientProtocolNames:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->shouldSelectProtocolNameEarly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientProtocolNames:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->selectProtocolName()Lorg/bouncycastle/tls/ProtocolName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->selectedProtocolName:Lorg/bouncycastle/tls/ProtocolName;

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->encryptThenMACOffered:Z

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->truncatedHMacOffered:Z

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getStatusRequestV2Extension(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->statusRequestV2:Ljava/util/Vector;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getTrustedCAKeysExtensionClient(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->trustedCAKeys:Ljava/util/Vector;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedPointFormatsExtension(Ljava/util/Hashtable;)[S

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientSentECPointFormats:Z

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getStatusRequestExtension(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/CertificateStatusRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->certificateStatusRequest:Lorg/bouncycastle/tls/CertificateStatusRequest;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result p1

    iput-short p1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->maxFragmentLengthOffered:S

    if-ltz p1, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/tls/MaxFragmentLength;->isValid(S)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public processClientSupplementalData(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected selectCipherSuite(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->selectedCipherSuite:I

    const/4 p1, 0x1

    return p1
.end method

.method protected selectDH(I)I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSupportedGroups()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget v3, v0, v1

    invoke-static {v3}, Lorg/bouncycastle/tls/NamedGroup;->isFiniteField(I)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-static {v3}, Lorg/bouncycastle/tls/NamedGroup;->getFiniteFieldBits(I)I

    move-result v4

    if-lt v4, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsServer;->selectDHDefault(I)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method protected selectDHDefault(I)I
    .locals 1

    const/16 v0, 0x800

    if-gt p1, v0, :cond_0

    const/16 p1, 0x100

    return p1

    :cond_0
    const/16 v0, 0xc00

    if-gt p1, v0, :cond_1

    const/16 p1, 0x101

    return p1

    :cond_1
    const/16 v0, 0x1000

    if-gt p1, v0, :cond_2

    const/16 p1, 0x102

    return p1

    :cond_2
    const/16 v0, 0x1800

    if-gt p1, v0, :cond_3

    const/16 p1, 0x103

    return p1

    :cond_3
    const/16 v0, 0x2000

    if-gt p1, v0, :cond_4

    const/16 p1, 0x104

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method protected selectECDH(I)I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->context:Lorg/bouncycastle/tls/TlsServerContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSupportedGroups()[I

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsServer;->selectECDHDefault(I)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget v2, v0, v1

    invoke-static {v2}, Lorg/bouncycastle/tls/NamedGroup;->getCurveBits(I)I

    move-result v3

    if-lt v3, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected selectECDHDefault(I)I
    .locals 1

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    const/16 p1, 0x17

    return p1

    :cond_0
    const/16 v0, 0x180

    if-gt p1, v0, :cond_1

    const/16 p1, 0x18

    return p1

    :cond_1
    const/16 v0, 0x209

    if-gt p1, v0, :cond_2

    const/16 p1, 0x19

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected selectProtocolName()Lorg/bouncycastle/tls/ProtocolName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/AbstractTlsServer;->getProtocolNames()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/tls/AbstractTlsServer;->clientProtocolNames:Ljava/util/Vector;

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/tls/AbstractTlsServer;->selectProtocolName(Ljava/util/Vector;Ljava/util/Vector;)Lorg/bouncycastle/tls/ProtocolName;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected selectProtocolName(Ljava/util/Vector;Ljava/util/Vector;)Lorg/bouncycastle/tls/ProtocolName;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tls/ProtocolName;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected shouldSelectProtocolNameEarly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
