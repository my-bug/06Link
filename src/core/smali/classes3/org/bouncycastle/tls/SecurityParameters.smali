.class public Lorg/bouncycastle/tls/SecurityParameters;
.super Ljava/lang/Object;


# instance fields
.field applicationProtocol:Lorg/bouncycastle/tls/ProtocolName;

.field applicationProtocolSet:Z

.field baseKeyClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field baseKeyServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field cipherSuite:I

.field clientCertTypes:[S

.field clientCertificateType:S

.field clientRandom:[B

.field clientServerNames:Ljava/util/Vector;

.field clientSigAlgs:Ljava/util/Vector;

.field clientSigAlgsCert:Ljava/util/Vector;

.field clientSupportedGroups:[I

.field connectionIDLocal:[B

.field connectionIDPeer:[B

.field earlyExporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field earlySecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field encryptThenMAC:Z

.field entity:I

.field exporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field extendedMasterSecret:Z

.field extendedPadding:Z

.field handshakeSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field keyExchangeAlgorithm:I

.field localCertificate:Lorg/bouncycastle/tls/Certificate;

.field localVerifyData:[B

.field masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field maxFragmentLength:S

.field negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

.field peerCertificate:Lorg/bouncycastle/tls/Certificate;

.field peerVerifyData:[B

.field prfAlgorithm:I

.field prfCryptoHashAlgorithm:I

.field prfHashLength:I

.field pskIdentity:[B

.field renegotiating:Z

.field resumedSession:Z

.field secureRenegotiation:Z

.field serverCertificateType:S

.field serverRandom:[B

.field serverSigAlgs:Ljava/util/Vector;

.field serverSigAlgsCert:Ljava/util/Vector;

.field serverSupportedGroups:[I

.field sessionHash:[B

.field sessionID:[B

.field srpIdentity:[B

.field statusRequestVersion:I

.field tlsServerEndPoint:[B

.field tlsUnique:[B

.field trafficSecretClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field trafficSecretServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field truncatedHMac:Z

.field verifyDataLength:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->entity:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->resumedSession:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->renegotiating:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    iput v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->cipherSuite:I

    iput-short v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->maxFragmentLength:S

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfAlgorithm:I

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfCryptoHashAlgorithm:I

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfHashLength:I

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->verifyDataLength:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->baseKeyClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->baseKeyServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->earlyExporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->earlySecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->exporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->handshakeSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->trafficSecretClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->trafficSecretServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientRandom:[B

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverRandom:[B

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->sessionHash:[B

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->pskIdentity:[B

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->srpIdentity:[B

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->tlsServerEndPoint:[B

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->tlsUnique:[B

    iput-boolean v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->encryptThenMAC:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->extendedMasterSecret:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->extendedPadding:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->truncatedHMac:Z

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocol:Lorg/bouncycastle/tls/ProtocolName;

    iput-boolean v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocolSet:Z

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientCertTypes:[S

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientServerNames:Ljava/util/Vector;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgs:Ljava/util/Vector;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgsCert:Ljava/util/Vector;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSupportedGroups:[I

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSigAlgs:Ljava/util/Vector;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSigAlgsCert:Ljava/util/Vector;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSupportedGroups:[I

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->keyExchangeAlgorithm:I

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    iput v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    iput-short v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientCertificateType:S

    iput-short v1, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverCertificateType:S

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->localVerifyData:[B

    iput-object v2, p0, Lorg/bouncycastle/tls/SecurityParameters;->peerVerifyData:[B

    return-void
.end method

.method private static clearSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->sessionHash:[B

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientCertTypes:[S

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientServerNames:Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgs:Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgsCert:Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSupportedGroups:[I

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSigAlgs:Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSigAlgsCert:Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSupportedGroups:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->baseKeyClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-static {v0}, Lorg/bouncycastle/tls/SecurityParameters;->clearSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->baseKeyClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->baseKeyServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-static {v0}, Lorg/bouncycastle/tls/SecurityParameters;->clearSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->baseKeyServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->earlyExporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-static {v0}, Lorg/bouncycastle/tls/SecurityParameters;->clearSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->earlyExporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->earlySecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-static {v0}, Lorg/bouncycastle/tls/SecurityParameters;->clearSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->earlySecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->exporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-static {v0}, Lorg/bouncycastle/tls/SecurityParameters;->clearSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->exporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->handshakeSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-static {v0}, Lorg/bouncycastle/tls/SecurityParameters;->clearSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->handshakeSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-static {v0}, Lorg/bouncycastle/tls/SecurityParameters;->clearSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-void
.end method

.method public getApplicationProtocol()Lorg/bouncycastle/tls/ProtocolName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocol:Lorg/bouncycastle/tls/ProtocolName;

    return-object v0
.end method

.method public getBaseKeyClient()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->baseKeyClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getBaseKeyServer()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->baseKeyServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getCipherSuite()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->cipherSuite:I

    return v0
.end method

.method public getClientCertTypes()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientCertTypes:[S

    return-object v0
.end method

.method public getClientCertificateType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientCertificateType:S

    return v0
.end method

.method public getClientRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientRandom:[B

    return-object v0
.end method

.method public getClientServerNames()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientServerNames:Ljava/util/Vector;

    return-object v0
.end method

.method public getClientSigAlgs()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgs:Ljava/util/Vector;

    return-object v0
.end method

.method public getClientSigAlgsCert()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgsCert:Ljava/util/Vector;

    return-object v0
.end method

.method public getClientSupportedGroups()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSupportedGroups:[I

    return-object v0
.end method

.method public getCompressionAlgorithm()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionIDLocal()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->connectionIDLocal:[B

    return-object v0
.end method

.method public getConnectionIDPeer()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->connectionIDPeer:[B

    return-object v0
.end method

.method public getEarlyExporterMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->earlyExporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getEarlySecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->earlySecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getEntity()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->entity:I

    return v0
.end method

.method public getExporterMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->exporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getHandshakeSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->handshakeSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getKeyExchangeAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->keyExchangeAlgorithm:I

    return v0
.end method

.method public getLocalCertificate()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    return-object v0
.end method

.method public getLocalVerifyData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->localVerifyData:[B

    return-object v0
.end method

.method public getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getMaxFragmentLength()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->maxFragmentLength:S

    return v0
.end method

.method public getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->negotiatedVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0
.end method

.method public getPRFAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfAlgorithm:I

    return v0
.end method

.method public getPRFCryptoHashAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfCryptoHashAlgorithm:I

    return v0
.end method

.method public getPRFHashLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfHashLength:I

    return v0
.end method

.method public getPSKIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->pskIdentity:[B

    return-object v0
.end method

.method public getPeerCertificate()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    return-object v0
.end method

.method public getPeerVerifyData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->peerVerifyData:[B

    return-object v0
.end method

.method public getPrfAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfAlgorithm:I

    return v0
.end method

.method public getSRPIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->srpIdentity:[B

    return-object v0
.end method

.method public getServerCertificateType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverCertificateType:S

    return v0
.end method

.method public getServerRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverRandom:[B

    return-object v0
.end method

.method public getServerSigAlgs()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSigAlgs:Ljava/util/Vector;

    return-object v0
.end method

.method public getServerSigAlgsCert()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSigAlgsCert:Ljava/util/Vector;

    return-object v0
.end method

.method public getServerSupportedGroups()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSupportedGroups:[I

    return-object v0
.end method

.method public getSessionHash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->sessionHash:[B

    return-object v0
.end method

.method public getSessionID()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->sessionID:[B

    return-object v0
.end method

.method public getStatusRequestVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->statusRequestVersion:I

    return v0
.end method

.method public getTLSServerEndPoint()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->tlsServerEndPoint:[B

    return-object v0
.end method

.method public getTLSUnique()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->tlsUnique:[B

    return-object v0
.end method

.method public getTrafficSecretClient()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->trafficSecretClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getTrafficSecretServer()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->trafficSecretServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public getVerifyDataLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->verifyDataLength:I

    return v0
.end method

.method public isApplicationProtocolSet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->applicationProtocolSet:Z

    return v0
.end method

.method public isEncryptThenMAC()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->encryptThenMAC:Z

    return v0
.end method

.method public isExtendedMasterSecret()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->extendedMasterSecret:Z

    return v0
.end method

.method public isExtendedPadding()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->extendedPadding:Z

    return v0
.end method

.method public isRenegotiating()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->renegotiating:Z

    return v0
.end method

.method public isResumedSession()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->resumedSession:Z

    return v0
.end method

.method public isSecureRenegotiation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->secureRenegotiation:Z

    return v0
.end method

.method public isTruncatedHMac()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->truncatedHMac:Z

    return v0
.end method
