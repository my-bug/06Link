.class public Lorg/bouncycastle/tls/TlsUtils;
.super Ljava/lang/Object;


# static fields
.field private static final CERT_SIG_ALG_OIDS:Ljava/util/Hashtable;

.field private static final DEFAULT_SUPPORTED_SIG_ALGS:Ljava/util/Vector;

.field private static DOWNGRADE_TLS11:[B = null

.field private static DOWNGRADE_TLS12:[B = null

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_INTS:[I

.field public static final EMPTY_LONGS:[J

.field public static final EMPTY_SHORTS:[S

.field public static final EMPTY_STRINGS:[Ljava/lang/String;

.field static final MINIMUM_HASH_PREFERRED:S = 0x4s

.field static final MINIMUM_HASH_STRICT:S = 0x2s


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "444F574E47524400"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsUtils;->DOWNGRADE_TLS11:[B

    const-string v0, "444F574E47524401"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsUtils;->DOWNGRADE_TLS12:[B

    invoke-static {}, Lorg/bouncycastle/tls/TlsUtils;->createCertSigAlgOIDs()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsUtils;->CERT_SIG_ALG_OIDS:Ljava/util/Hashtable;

    invoke-static {}, Lorg/bouncycastle/tls/TlsUtils;->createDefaultSupportedSigAlgs()Ljava/util/Vector;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsUtils;->DEFAULT_SUPPORTED_SIG_ALGS:Ljava/util/Vector;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    new-array v1, v0, [S

    sput-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_SHORTS:[S

    new-array v1, v0, [I

    sput-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_INTS:[I

    new-array v1, v0, [J

    sput-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_LONGS:[J

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PRF(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFAlgorithm()I

    move-result p0

    invoke-interface {p1, p0, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/TlsSecret;->deriveUsingPRF(ILjava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    return-object p0
.end method

.method public static PRF(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/TlsUtils;->PRF(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    return-object p0
.end method

.method private static addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V
    .locals 0

    invoke-static {p2, p3}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    return-void
.end method

.method public static addIfSupported(Ljava/util/Vector;Lorg/bouncycastle/tls/crypto/TlsCrypto;I)V
    .locals 0

    invoke-interface {p1, p2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasNamedGroup(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static addIfSupported(Ljava/util/Vector;Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V
    .locals 0

    invoke-interface {p1, p2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static addIfSupported(Ljava/util/Vector;Lorg/bouncycastle/tls/crypto/TlsCrypto;[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/tls/TlsUtils;->addIfSupported(Ljava/util/Vector;Lorg/bouncycastle/tls/crypto/TlsCrypto;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static addKeyShareToClientHello(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_supported_groups:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSupportedGroupsExtension(Ljava/util/Hashtable;)[I

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->getEarlyKeyShareGroups()Ljava/util/Vector;

    move-result-object p1

    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    invoke-static {p0, v0, p1, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->collectKeyShares(Lorg/bouncycastle/tls/TlsClientContext;[ILjava/util/Vector;Ljava/util/Hashtable;Ljava/util/Vector;)V

    invoke-static {p2, v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addKeyShareClientHello(Ljava/util/Hashtable;Ljava/util/Vector;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static addKeyShareToClientHelloRetry(Lorg/bouncycastle/tls/TlsClientContext;Ljava/util/Hashtable;I)Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-static {p2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object p2

    new-instance v1, Ljava/util/Hashtable;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/Hashtable;-><init>(IF)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    invoke-static {p0, v0, p2, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->collectKeyShares(Lorg/bouncycastle/tls/TlsClientContext;[ILjava/util/Vector;Ljava/util/Hashtable;Ljava/util/Vector;)V

    invoke-static {p1, v2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addKeyShareClientHello(Ljava/util/Hashtable;Ljava/util/Vector;)V

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static addPreSharedKeyToClientExtensions([Lorg/bouncycastle/tls/TlsPSK;Ljava/util/Hashtable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    new-instance v3, Lorg/bouncycastle/tls/PskIdentity;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsPSK;->getIdentity()[B

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-direct {v3, v2, v4, v5}, Lorg/bouncycastle/tls/PskIdentity;-><init>([BJ)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/OfferedPsks;

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/OfferedPsks;-><init>(Ljava/util/Vector;)V

    invoke-static {p1, p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addPreSharedKeyClientHello(Ljava/util/Hashtable;Lorg/bouncycastle/tls/OfferedPsks;)V

    return-void
.end method

.method static addPreSharedKeyToClientHello(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;Ljava/util/Hashtable;[I)Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1, p3}, Lorg/bouncycastle/tls/TlsUtils;->getPSKExternalsClient(Lorg/bouncycastle/tls/TlsClient;[I)[Lorg/bouncycastle/tls/TlsPSKExternal;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->getPskKeyExchangeModes()[S

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([S)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/bouncycastle/tls/TlsUtils;->getPSKEarlySecrets(Lorg/bouncycastle/tls/crypto/TlsCrypto;[Lorg/bouncycastle/tls/TlsPSK;)[Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    invoke-static {p3}, Lorg/bouncycastle/tls/OfferedPsks;->getBindersSize([Lorg/bouncycastle/tls/TlsPSK;)I

    move-result v0

    invoke-static {p3, p2}, Lorg/bouncycastle/tls/TlsUtils;->addPreSharedKeyToClientExtensions([Lorg/bouncycastle/tls/TlsPSK;Ljava/util/Hashtable;)V

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addPSKKeyExchangeModesExtension(Ljava/util/Hashtable;[S)V

    new-instance p2, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    invoke-direct {p2, p3, p1, p0, v0}, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;-><init>([Lorg/bouncycastle/tls/TlsPSK;[S[Lorg/bouncycastle/tls/crypto/TlsSecret;I)V

    return-object p2

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    const-string p2, "External PSKs configured but no PskKeyExchangeMode available"

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method static addPreSharedKeyToClientHelloRetry(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;Ljava/util/Hashtable;)Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getPRFAlgorithm13(I)I

    move-result p0

    iget-object v0, p1, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->psks:[Lorg/bouncycastle/tls/TlsPSK;

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->getPSKIndices([Lorg/bouncycastle/tls/TlsPSK;I)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p1, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->psks:[Lorg/bouncycastle/tls/TlsPSK;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-array v1, v0, [Lorg/bouncycastle/tls/TlsPSK;

    new-array v2, v0, [Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p1, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->psks:[Lorg/bouncycastle/tls/TlsPSK;

    aget-object v5, v5, v4

    aput-object v5, v1, v3

    iget-object v5, p1, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->earlySecrets:[Lorg/bouncycastle/tls/crypto/TlsSecret;

    aget-object v4, v5, v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/tls/OfferedPsks;->getBindersSize([Lorg/bouncycastle/tls/TlsPSK;)I

    move-result p0

    new-instance v0, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;

    iget-object p1, p1, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->pskKeyExchangeModes:[S

    invoke-direct {v0, v1, p1, v2, p0}, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;-><init>([Lorg/bouncycastle/tls/TlsPSK;[S[Lorg/bouncycastle/tls/crypto/TlsSecret;I)V

    move-object p1, v0

    :cond_2
    iget-object p0, p1, Lorg/bouncycastle/tls/OfferedPsks$BindersConfig;->psks:[Lorg/bouncycastle/tls/TlsPSK;

    invoke-static {p0, p2}, Lorg/bouncycastle/tls/TlsUtils;->addPreSharedKeyToClientExtensions([Lorg/bouncycastle/tls/TlsPSK;Ljava/util/Hashtable;)V

    return-object p1
.end method

.method public static addToSet(Ljava/util/Vector;I)Z
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return v1
.end method

.method static adjustTranscriptForRetry(Lorg/bouncycastle/tls/TlsHandshakeHash;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object v0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsHandshakeHash;->reset()V

    array-length v1, v0

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->checkUint8(I)V

    add-int/lit8 v2, v1, 0x4

    new-array v3, v2, [B

    const/16 v4, 0xfe

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(S[BI)V

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/tls/TlsUtils;->writeUint24(I[BI)V

    const/4 v4, 0x4

    invoke-static {v0, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p0, v3, v5, v2}, Lorg/bouncycastle/tls/TlsHandshakeHash;->update([BII)V

    return-void
.end method

.method private static areCertificatesEqual(Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/Certificate;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/tls/Certificate;->getLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/Certificate;->getLength()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object v3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object v4

    invoke-interface {v3}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getEncoded()[B

    move-result-object v3

    invoke-interface {v4}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    return v2
.end method

.method static calculateEndPointHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsCertificate;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p0, p1, p2, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->calculateEndPointHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsCertificate;[BII)[B

    move-result-object p0

    return-object p0
.end method

.method static calculateEndPointHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsCertificate;[BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getSigAlgParams()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/bouncycastle/tls/TlsUtils;->CERT_SIG_ALG_OIDS:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    move v1, p1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/bouncycastle/tls/TlsUtils;->createHash(Lorg/bouncycastle/tls/crypto/TlsCrypto;S)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object p0
.end method

.method public static calculateExporterSeed(Lorg/bouncycastle/tls/SecurityParameters;[B)[B
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object p0

    if-nez p1, :cond_0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    array-length v1, p1

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint16(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'context\' must have length less than 2^16 (or be null)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static calculateFinishedHMAC(IILorg/bouncycastle/tls/crypto/TlsSecret;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "finished"

    sget-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {p2, p0, v0, v1, p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->hkdfExpandLabel(Lorg/bouncycastle/tls/crypto/TlsSecret;ILjava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    :try_start_0
    array-length p2, p3

    const/4 v0, 0x0

    invoke-interface {p1, p0, p3, v0, p2}, Lorg/bouncycastle/tls/crypto/TlsSecret;->calculateHMAC(I[BII)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    throw p0
.end method

.method private static calculateFinishedHMAC(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFCryptoHashAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFHashLength()I

    move-result p0

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->calculateFinishedHMAC(IILorg/bouncycastle/tls/crypto/TlsSecret;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static calculateMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 3

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionHash()[B

    move-result-object v0

    const-string v1, "extended master secret"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->concat([B[B)[B

    move-result-object v0

    const-string v1, "master secret"

    :goto_0
    const/16 v2, 0x30

    invoke-static {p0, p1, v1, v0, v2}, Lorg/bouncycastle/tls/TlsUtils;->PRF(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    return-object p0
.end method

.method static calculatePSKBinder(Lorg/bouncycastle/tls/crypto/TlsCrypto;ZILorg/bouncycastle/tls/crypto/TlsSecret;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHashOutputSize(I)I

    move-result v0

    if-eqz p1, :cond_0

    const-string p1, "ext binder"

    goto :goto_0

    :cond_0
    const-string p1, "res binder"

    :goto_0
    invoke-interface {p0, p2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p0

    invoke-static {p2, v0, p3, p1, p0}, Lorg/bouncycastle/tls/TlsUtils;->deriveSecret(IILorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    :try_start_0
    invoke-static {p2, v0, p0, p4}, Lorg/bouncycastle/tls/TlsUtils;->calculateFinishedHMAC(IILorg/bouncycastle/tls/crypto/TlsSecret;[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    throw p1
.end method

.method static calculateSignatureHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[BLorg/bouncycastle/tls/DigestInputBuffer;)[B
    .locals 2

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/tls/CombinedHash;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/CombinedHash;-><init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->createHash(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p1

    :goto_0
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    if-eqz p2, :cond_1

    array-length p0, p2

    invoke-interface {p1, p2, v1, p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    :cond_1
    invoke-virtual {p3, p1}, Lorg/bouncycastle/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p0

    return-object p0
.end method

.method static calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getBaseKeyServer()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getBaseKeyClient()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p2

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object p1

    invoke-static {p0, p2, p1}, Lorg/bouncycastle/tls/TlsUtils;->calculateFinishedHMAC(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/SSL3Utils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    const-string p2, "server finished"

    goto :goto_1

    :cond_3
    const-string p2, "client finished"

    :goto_1
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getVerifyDataLength()I

    move-result v1

    invoke-static {p0, v0, p2, p1, v1}, Lorg/bouncycastle/tls/TlsUtils;->PRF(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsSecret;->extract()[B

    move-result-object p0

    return-object p0
.end method

.method private static checkClientCertificateType(Lorg/bouncycastle/tls/CertificateRequest;SS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static checkDowngradeMarker(Lorg/bouncycastle/tls/ProtocolVersion;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/TlsUtils;->DOWNGRADE_TLS11:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->checkDowngradeMarker([B[B)V

    :cond_0
    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->DOWNGRADE_TLS12:[B

    invoke-static {p1, p0}, Lorg/bouncycastle/tls/TlsUtils;->checkDowngradeMarker([B[B)V

    :cond_1
    return-void
.end method

.method private static checkDowngradeMarker([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    array-length v1, p0

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, p0, v1}, Lorg/bouncycastle/tls/TlsUtils;->constantTimeAreEqual(I[BI[BI)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static checkExtensionData13(Ljava/util/Hashtable;IS)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lorg/bouncycastle/tls/TlsUtils;->isPermittedExtensionType13(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid extension: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/tls/ExtensionType;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static checkPeerSigAlgs(Lorg/bouncycastle/tls/TlsContext;[Lorg/bouncycastle/tls/crypto/TlsCertificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->checkSigAlgOfClientCerts(Lorg/bouncycastle/tls/TlsContext;[Lorg/bouncycastle/tls/crypto/TlsCertificate;)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->checkSigAlgOfServerCerts(Lorg/bouncycastle/tls/TlsContext;[Lorg/bouncycastle/tls/crypto/TlsCertificate;)V

    return-void
.end method

.method private static checkSigAlgOfClientCerts(Lorg/bouncycastle/tls/TlsContext;[Lorg/bouncycastle/tls/crypto/TlsCertificate;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientCertTypes()[S

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgsCert()Ljava/util/Vector;

    move-result-object p0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    aget-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v6, p1, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/tls/TlsUtils;->getCertSigAndHashAlg(Lorg/bouncycastle/tls/crypto/TlsCertificate;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_2

    aget-short v7, v0, v6

    invoke-static {v7}, Lorg/bouncycastle/tls/TlsUtils;->getLegacySignatureAlgorithmClientCert(S)S

    move-result v7

    invoke-virtual {v5}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v8

    if-ne v8, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    invoke-static {p0, v5}, Lorg/bouncycastle/tls/TlsUtils;->containsSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2a

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_5
    return-void
.end method

.method private static checkSigAlgOfServerCerts(Lorg/bouncycastle/tls/TlsContext;[Lorg/bouncycastle/tls/crypto/TlsCertificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgsCert()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgs()Ljava/util/Vector;

    move-result-object v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    aget-object v5, p1, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/tls/TlsUtils;->getCertSigAndHashAlg(Lorg/bouncycastle/tls/crypto/TlsCertificate;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getKeyExchangeAlgorithm()I

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/tls/TlsUtils;->getLegacySignatureAlgorithmServerCert(I)S

    move-result v5

    invoke-virtual {v4}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v4

    if-ne v5, v4, :cond_4

    goto :goto_0

    :cond_3
    invoke-static {v0, v4}, Lorg/bouncycastle/tls/TlsUtils;->containsSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_4

    invoke-static {v1, v4}, Lorg/bouncycastle/tls/TlsUtils;->containsSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2a

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_5
    return-void
.end method

.method static checkTlsFeatures(Lorg/bouncycastle/tls/Certificate;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p0

    sget-object v1, Lorg/bouncycastle/tls/TlsObjectIdentifiers;->id_pe_tlsfeature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p0, v1}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[B

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2a

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    invoke-static {v1, p0}, Lorg/bouncycastle/tls/TlsUtils;->requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V

    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p0

    if-ge v0, p0, :cond_4

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_3

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2e

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static checkUint16(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint16(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint16(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint16(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint24(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint24(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint24(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint24(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint32(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint32(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint48(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint48(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint64(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint64(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint8(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint8(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint8(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint8(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint8(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint8(S)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static chooseSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/ProtocolVersion;Ljava/util/Vector;S)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->getDefaultSignatureAlgorithms(S)Ljava/util/Vector;

    move-result-object p1

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p0, v1, :cond_6

    invoke-virtual {p1, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    if-ne v2, p2, :cond_5

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_4

    if-le v2, v3, :cond_5

    goto :goto_1

    :cond_4
    if-lt v2, v4, :cond_5

    if-ge v2, v3, :cond_5

    :goto_1
    move-object v0, v1

    :cond_5
    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static chooseSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/TlsContext;Ljava/util/Vector;S)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->chooseSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/ProtocolVersion;Ljava/util/Vector;S)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public static clone([B)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    move-object v0, p0

    check-cast v0, [B

    return-object p0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object p0

    :cond_1
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static clone([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static collectKeyShares(Lorg/bouncycastle/tls/TlsClientContext;[ILjava/util/Vector;Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_7

    aget v2, p1, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p3, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {p0, v2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasNamedGroup(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnECDHCurve(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasECDHAgreement()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lorg/bouncycastle/tls/crypto/TlsECConfig;

    invoke-direct {v4, v2}, Lorg/bouncycastle/tls/crypto/TlsECConfig;-><init>(I)V

    invoke-interface {p0, v4}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createECDomain(Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/crypto/TlsECDomain;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/tls/crypto/TlsECDomain;->createECDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificFiniteField(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasDHAgreement()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/tls/crypto/TlsDHConfig;-><init>(IZ)V

    invoke-interface {p0, v4}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createDHDomain(Lorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/crypto/TlsDHDomain;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/tls/crypto/TlsDHDomain;->createDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificKem(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasKemAgreement()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lorg/bouncycastle/tls/crypto/TlsKemConfig;

    invoke-direct {v4, v2, v0}, Lorg/bouncycastle/tls/crypto/TlsKemConfig;-><init>(IZ)V

    invoke-interface {p0, v4}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createKemDomain(Lorg/bouncycastle/tls/crypto/TlsKemConfig;)Lorg/bouncycastle/tls/crypto/TlsKemDomain;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/tls/crypto/TlsKemDomain;->createKem()Lorg/bouncycastle/tls/crypto/TlsAgreement;

    move-result-object v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/bouncycastle/tls/crypto/TlsAgreement;->generateEphemeral()[B

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/tls/KeyShareEntry;

    invoke-direct {v6, v2, v5}, Lorg/bouncycastle/tls/KeyShareEntry;-><init>(I[B)V

    invoke-virtual {p4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p3, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method static concat([B[B)[B
    .locals 3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static constantTimeAreEqual(I[BI[BI)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    add-int v4, p4, v1

    aget-byte v4, p3, v4

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static contains([IIII)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, p1, v1

    aget v2, p0, v2

    if-ne p3, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static contains([SIIS)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, p1, v1

    aget-short v2, p0, v2

    if-ne p3, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static containsAll([S[S)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-short v2, p1, v1

    invoke-static {p0, v2}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static containsAnySignatureAlgorithm(Ljava/util/Vector;S)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static containsNonAscii(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static containsNonAscii([B)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-lt v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static containsNot([SIIS)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, p1, v1

    aget-short v2, p0, v2

    if-eq p3, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static containsSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static copyOfRangeExact([BII)[B
    .locals 2

    sub-int/2addr p2, p1

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static createCertSigAlgOIDs()Ljava/util/Hashtable;
    .locals 8

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x4

    invoke-static {v0, v1, v4, v3}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v5, 0x5

    invoke-static {v0, v1, v5, v3}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v6, 0x6

    invoke-static {v0, v1, v6, v3}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v3, v3}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v7, 0x1

    invoke-static {v0, v1, v3, v7}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v3, v7}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v2, v7}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v4, v7}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v5, v7}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v6, v7}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v3, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v2, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v4, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v5, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v6, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v3, v3}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v3, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v2, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v4, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v5, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v6, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v3, v7}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v4, v7}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v3, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v2, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v4, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v5, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1, v6, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;SS)V

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ed25519:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ed448:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->gostr34102012_256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->gostr34102012_512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->addCertSigAlgOID(Ljava/util/Hashtable;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    return-object v0
.end method

.method private static createDefaultSupportedSigAlgs()Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-object v1, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ed25519:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v1, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->ed448:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v4, 0x6

    invoke-static {v4, v2}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v5, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v5, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v5, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v5, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v5, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v5, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v3, v5}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v6, 0x2

    invoke-static {v1, v6}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v4, v6}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v2, v2}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v2, v5}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v2, v6}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v6, v2}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v6, v5}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v6, v6}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static createHash(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p0

    return-object p0
.end method

.method private static createHash(Lorg/bouncycastle/tls/crypto/TlsCrypto;S)Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHash(S)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p0

    return-object p0
.end method

.method private static createKeyExchangeClient(Lorg/bouncycastle/tls/TlsClient;I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClient;->getKeyExchangeFactory()Lorg/bouncycastle/tls/TlsKeyExchangeFactory;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClient;->getSRPIdentity()Lorg/bouncycastle/tls/TlsSRPIdentity;

    move-result-object v1

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClient;->getSRPConfigVerifier()Lorg/bouncycastle/tls/TlsSRPConfigVerifier;

    move-result-object p0

    invoke-interface {v0, p1, v1, p0}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createSRPKeyExchangeClient(ILorg/bouncycastle/tls/TlsSRPIdentity;Lorg/bouncycastle/tls/TlsSRPConfigVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createECDHanonKeyExchangeClient(I)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createECDHEKeyExchangeClient(I)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createECDHKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClient;->getPSKIdentity()Lorg/bouncycastle/tls/TlsPSKIdentity;

    move-result-object v1

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClient;->getDHGroupVerifier()Lorg/bouncycastle/tls/TlsDHGroupVerifier;

    move-result-object p0

    invoke-interface {v0, p1, v1, p0}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createPSKKeyExchangeClient(ILorg/bouncycastle/tls/TlsPSKIdentity;Lorg/bouncycastle/tls/TlsDHGroupVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClient;->getPSKIdentity()Lorg/bouncycastle/tls/TlsPSKIdentity;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createPSKKeyExchangeClient(ILorg/bouncycastle/tls/TlsPSKIdentity;Lorg/bouncycastle/tls/TlsDHGroupVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClient;->getDHGroupVerifier()Lorg/bouncycastle/tls/TlsDHGroupVerifier;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createDHanonKeyExchangeClient(ILorg/bouncycastle/tls/TlsDHGroupVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createDHKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClient;->getDHGroupVerifier()Lorg/bouncycastle/tls/TlsDHGroupVerifier;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createDHEKeyExchangeClient(ILorg/bouncycastle/tls/TlsDHGroupVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createRSAKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static createKeyExchangeServer(Lorg/bouncycastle/tls/TlsServer;I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getKeyExchangeFactory()Lorg/bouncycastle/tls/TlsKeyExchangeFactory;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getPSKIdentityManager()Lorg/bouncycastle/tls/TlsPSKIdentityManager;

    move-result-object v2

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getECDHConfig()Lorg/bouncycastle/tls/crypto/TlsECConfig;

    move-result-object p0

    invoke-interface {v0, p1, v2, v1, p0}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createPSKKeyExchangeServer(ILorg/bouncycastle/tls/TlsPSKIdentityManager;Lorg/bouncycastle/tls/crypto/TlsDHConfig;Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getSRPLoginParameters()Lorg/bouncycastle/tls/TlsSRPLoginParameters;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createSRPKeyExchangeServer(ILorg/bouncycastle/tls/TlsSRPLoginParameters;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getECDHConfig()Lorg/bouncycastle/tls/crypto/TlsECConfig;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createECDHanonKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getECDHConfig()Lorg/bouncycastle/tls/crypto/TlsECConfig;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createECDHEKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createECDHKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getPSKIdentityManager()Lorg/bouncycastle/tls/TlsPSKIdentityManager;

    move-result-object v2

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getDHConfig()Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    move-result-object p0

    invoke-interface {v0, p1, v2, p0, v1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createPSKKeyExchangeServer(ILorg/bouncycastle/tls/TlsPSKIdentityManager;Lorg/bouncycastle/tls/crypto/TlsDHConfig;Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getPSKIdentityManager()Lorg/bouncycastle/tls/TlsPSKIdentityManager;

    move-result-object p0

    invoke-interface {v0, p1, p0, v1, v1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createPSKKeyExchangeServer(ILorg/bouncycastle/tls/TlsPSKIdentityManager;Lorg/bouncycastle/tls/crypto/TlsDHConfig;Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getDHConfig()Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createDHanonKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createDHKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getDHConfig()Lorg/bouncycastle/tls/crypto/TlsDHConfig;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createDHEKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsKeyExchangeFactory;->createRSAKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static decodeOpaque16([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->decodeOpaque16([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeOpaque16([BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p0

    const/16 v1, 0x32

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    array-length v3, p0

    add-int/lit8 v4, v0, 0x2

    if-ne v3, v4, :cond_0

    if-lt v0, p1, :cond_0

    array-length p1, p0

    invoke-static {p0, v2, p1}, Lorg/bouncycastle/tls/TlsUtils;->copyOfRangeExact([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'buf\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeOpaque8([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->decodeOpaque8([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeOpaque8([BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p0

    const/16 v1, 0x32

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    if-ne v3, v4, :cond_0

    if-lt v0, p1, :cond_0

    array-length p1, p0

    invoke-static {p0, v2, p1}, Lorg/bouncycastle/tls/TlsUtils;->copyOfRangeExact([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'buf\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeUint16([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeUint16ArrayWithUint8Length([B)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    array-length v2, p0

    add-int/lit8 v3, v1, 0x1

    if-ne v2, v3, :cond_1

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p0, v3}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static decodeUint32([B)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint32([BI)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeUint8([B)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeUint8ArrayWithUint8Length([B)[S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    array-length v0, p0

    const/16 v1, 0x32

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v2

    array-length v3, p0

    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_1

    new-array v1, v2, [S

    :goto_0
    if-ge v0, v2, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v4

    aput-short v4, v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static deriveSecret(IILorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p4

    if-ne v0, p1, :cond_0

    invoke-static {p2, p0, p3, p4, p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->hkdfExpandLabel(Lorg/bouncycastle/tls/crypto/TlsSecret;ILjava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static deriveSecret(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFCryptoHashAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFHashLength()I

    move-result p0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/bouncycastle/tls/TlsUtils;->deriveSecret(IILorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    return-object p0
.end method

.method public static encodeOpaque16([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static encodeOpaque24([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint24(I)V

    array-length v0, p0

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static encodeOpaque8([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint8(I)V

    array-length v0, p0

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->prepend([BB)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeSupportedSignatureAlgorithms(Ljava/util/Vector;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static encodeUint16(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    return-object v0
.end method

.method public static encodeUint16ArrayWithUint16Length([I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16ArrayWithUint16Length([I[BI)V

    return-object v0
.end method

.method public static encodeUint16ArrayWithUint8Length([I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16ArrayWithUint8Length([I[BI)V

    return-object v0
.end method

.method public static encodeUint24(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint24(I)V

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint24(I[BI)V

    return-object v0
.end method

.method public static encodeUint32(J)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->checkUint32(J)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint32(J[BI)V

    return-object v0
.end method

.method public static encodeUint8(S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint8(S)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(S[BI)V

    return-object v0
.end method

.method public static encodeUint8ArrayWithUint8Length([S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8ArrayWithUint8Length([S[BI)V

    return-object v0
.end method

.method public static encodeVersion(Lorg/bouncycastle/tls/ProtocolVersion;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result p0

    int-to-byte p0, p0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p0, v1, v0

    return-object v1
.end method

.method static establish13ClientCredentials(Lorg/bouncycastle/tls/TlsAuthentication;Lorg/bouncycastle/tls/CertificateRequest;)Lorg/bouncycastle/tls/TlsCredentialedSigner;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/bouncycastle/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/tls/CertificateRequest;)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->validate13Credentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p0

    return-object p0
.end method

.method static establish13PhaseApplication(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/RecordStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v3

    const-string v4, "c ap traffic"

    const-string v5, "s ap traffic"

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/tls/TlsUtils;->establish13TrafficSecrets(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/tls/RecordStream;)V

    const-string p0, "exp master"

    invoke-static {v0, v3, p0, v2}, Lorg/bouncycastle/tls/TlsUtils;->deriveSecret(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/tls/SecurityParameters;->exporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-void
.end method

.method static establish13PhaseEarly(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/RecordStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getEarlySecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v3

    if-eqz p2, :cond_0

    const-string v4, "c e traffic"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/tls/TlsUtils;->establish13TrafficSecrets(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/tls/RecordStream;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    const-string p0, "e exp master"

    invoke-static {v0, v3, p0, v2}, Lorg/bouncycastle/tls/TlsUtils;->deriveSecret(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/tls/SecurityParameters;->earlyExporterMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-void
.end method

.method static establish13PhaseHandshake(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/RecordStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getHandshakeSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v3

    const-string v4, "c hs traffic"

    const-string v5, "s hs traffic"

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/tls/TlsUtils;->establish13TrafficSecrets(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/tls/RecordStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getTrafficSecretClient()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/tls/SecurityParameters;->baseKeyClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getTrafficSecretServer()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/tls/SecurityParameters;->baseKeyServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-void
.end method

.method static establish13PhaseSecrets(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsSecret;Lorg/bouncycastle/tls/crypto/TlsSecret;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFCryptoHashAlgorithm()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hkdfInit(I)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v2

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hkdfInit(I)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/tls/crypto/TlsSecret;->hkdfExtract(ILorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v2

    :cond_1
    const-string v0, "derived"

    invoke-static {p0, p1, v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->deriveSecret(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v4

    invoke-interface {v4, v1, p2}, Lorg/bouncycastle/tls/crypto/TlsSecret;->hkdfExtract(ILorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v4

    if-eq p2, v2, :cond_2

    invoke-interface {p2}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    :cond_2
    invoke-static {p0, v4, v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->deriveSecret(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p2

    invoke-interface {p2, v1, v2}, Lorg/bouncycastle/tls/crypto/TlsSecret;->hkdfExtract(ILorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p2

    iput-object p1, p0, Lorg/bouncycastle/tls/SecurityParameters;->earlySecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v4, p0, Lorg/bouncycastle/tls/SecurityParameters;->handshakeSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object p2, p0, Lorg/bouncycastle/tls/SecurityParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-void
.end method

.method static establish13ServerCredentials(Lorg/bouncycastle/tls/TlsServer;)Lorg/bouncycastle/tls/TlsCredentialedSigner;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getCredentials()Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->validate13Credentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p0

    return-object p0
.end method

.method private static establish13TrafficSecrets(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/tls/RecordStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-static {v0, p2, p3, p1}, Lorg/bouncycastle/tls/TlsUtils;->deriveSecret(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p3

    iput-object p3, v0, Lorg/bouncycastle/tls/SecurityParameters;->trafficSecretClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

    if-eqz p4, :cond_0

    invoke-static {v0, p2, p4, p1}, Lorg/bouncycastle/tls/TlsUtils;->deriveSecret(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;Ljava/lang/String;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/tls/SecurityParameters;->trafficSecretServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->initCipher(Lorg/bouncycastle/tls/TlsContext;)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p0

    invoke-virtual {p5, p0}, Lorg/bouncycastle/tls/RecordStream;->setPendingCipher(Lorg/bouncycastle/tls/crypto/TlsCipher;)V

    return-void
.end method

.method static establishClientCredentials(Lorg/bouncycastle/tls/TlsAuthentication;Lorg/bouncycastle/tls/CertificateRequest;)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/bouncycastle/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/tls/CertificateRequest;)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->validateCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p0

    return-object p0
.end method

.method static establishClientSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSignatureAlgorithmsExtension(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgs:Ljava/util/Vector;

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSignatureAlgorithmsCertExtension(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgsCert:Ljava/util/Vector;

    return-void
.end method

.method static establishServerCredentials(Lorg/bouncycastle/tls/TlsServer;)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServer;->getCredentials()Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->validateCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentials;

    move-result-object p0

    return-object p0
.end method

.method static establishServerSigAlgs(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/CertificateRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientCertTypes:[S

    invoke-virtual {p1}, Lorg/bouncycastle/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSigAlgs:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/CertificateRequest;->getSupportedSignatureAlgorithmsCert()Ljava/util/Vector;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSigAlgsCert:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgsCert()Ljava/util/Vector;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgs()Ljava/util/Vector;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/SecurityParameters;->serverSigAlgsCert:Ljava/util/Vector;

    :cond_0
    return-void
.end method

.method static generate13CertificateVerify(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsCredentialedSigner;Lorg/bouncycastle/tls/TlsHandshakeHash;)Lorg/bouncycastle/tls/DigitallySigned;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->getSignatureAndHashAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->isServer()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TLS 1.3, server CertificateVerify"

    goto :goto_0

    :cond_0
    const-string v1, "TLS 1.3, client CertificateVerify"

    :goto_0
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p0

    invoke-static {p0, p1, v1, p2, v0}, Lorg/bouncycastle/tls/TlsUtils;->generate13CertificateVerify(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsCredentialedSigner;Ljava/lang/String;Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)[B

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/tls/DigitallySigned;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/tls/DigitallySigned;-><init>(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)V

    return-object p1

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method private static generate13CertificateVerify(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsCredentialedSigner;Ljava/lang/String;Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->getStreamSigner()Lorg/bouncycastle/tls/crypto/TlsStreamSigner;

    move-result-object v0

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->getCertificateVerifyHeader(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p3}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object p3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsStreamSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    array-length p1, p2

    invoke-virtual {p0, p2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    array-length p1, p3

    invoke-virtual {p0, p3, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsStreamSigner;->getSignature()[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p4}, Lorg/bouncycastle/tls/TlsUtils;->createHash(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p0

    array-length p4, p2

    invoke-interface {p0, p2, v1, p4}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    array-length p2, p3

    invoke-interface {p0, p3, v1, p2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->generateRawSignature([B)[B

    move-result-object p0

    return-object p0
.end method

.method static generateCertificateVerifyClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsCredentialedSigner;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/tls/crypto/TlsStreamSigner;Lorg/bouncycastle/tls/TlsHandshakeHash;)Lorg/bouncycastle/tls/DigitallySigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/bouncycastle/tls/crypto/TlsStreamSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-interface {p4, p0}, Lorg/bouncycastle/tls/TlsHandshakeHash;->copyBufferTo(Ljava/io/OutputStream;)V

    invoke-interface {p3}, Lorg/bouncycastle/tls/crypto/TlsStreamSigner;->getSignature()[B

    move-result-object p0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionHash()[B

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result p0

    invoke-interface {p4, p0}, Lorg/bouncycastle/tls/TlsHandshakeHash;->getFinalHash(I)[B

    move-result-object p0

    :goto_0
    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->generateRawSignature([B)[B

    move-result-object p0

    :goto_1
    new-instance p1, Lorg/bouncycastle/tls/DigitallySigned;

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/tls/DigitallySigned;-><init>(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)V

    return-object p1

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static generateEncryptedPreMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsEncryptor;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getRSAPreMasterSecretVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->generateRSAPreMasterSecret(Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/crypto/TlsSecret;->encrypt(Lorg/bouncycastle/tls/crypto/TlsEncryptor;)[B

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeEncryptedPMS(Lorg/bouncycastle/tls/TlsContext;[BLjava/io/OutputStream;)V

    return-object v0
.end method

.method static generateServerKeyExchangeSignature(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsCredentialedSigner;[BLorg/bouncycastle/tls/DigestInputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/TlsCredentialedSigner;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->getStreamSigner()Lorg/bouncycastle/tls/crypto/TlsStreamSigner;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsStreamSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p0, p2, p3, p1}, Lorg/bouncycastle/tls/TlsUtils;->sendSignatureInput(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/DigestInputBuffer;Ljava/io/OutputStream;)V

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsStreamSigner;->getSignature()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0, p2, p3}, Lorg/bouncycastle/tls/TlsUtils;->calculateSignatureHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[BLorg/bouncycastle/tls/DigestInputBuffer;)[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->generateRawSignature([B)[B

    move-result-object p0

    :goto_0
    new-instance p1, Lorg/bouncycastle/tls/DigitallySigned;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/tls/DigitallySigned;-><init>(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)V

    invoke-virtual {p1, p3}, Lorg/bouncycastle/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    return-void
.end method

.method static getCertSigAndHashAlg(Lorg/bouncycastle/tls/crypto/TlsCertificate;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->CERT_SIG_ALG_OIDS:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getSigAlgParams()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x9

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :cond_1
    const/4 p0, 0x4

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha256:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0xa

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :cond_3
    const/4 p0, 0x5

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha384:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :cond_4
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0xb

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_pss_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :cond_5
    const/4 p0, 0x6

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->supportsSignatureAlgorithmCA(S)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->rsa_pss_rsae_sha512:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCertificateVerifyHeader(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x40

    add-int/lit8 v2, v0, 0x41

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    const/16 v5, 0x20

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x40

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    aput-byte v3, v2, v1

    return-object v2
.end method

.method public static getCipherType(I)I
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getEncryptionAlgorithm(I)I

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getEncryptionAlgorithmType(I)I

    move-result p0

    return p0
.end method

.method public static getCommonCipherSuite13(Lorg/bouncycastle/tls/ProtocolVersion;[I[IZ)I
    .locals 3

    if-eqz p3, :cond_0

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    :cond_0
    const/4 p3, 0x0

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_2

    aget v0, p1, p3

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getCommonCipherSuites([I[IZ)[I
    .locals 7

    if-eqz p2, :cond_0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :cond_0
    array-length p2, p0

    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    aget v4, p0, v2

    invoke-static {v0, v1, v3, v4}, Lorg/bouncycastle/tls/TlsUtils;->contains([IIII)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-ge v3, p2, :cond_3

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method static getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsHandshakeHash;->forkPRFHash()Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultDSSSignatureAlgorithms()Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->getDefaultSignatureAlgorithms(S)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultECDSASignatureAlgorithms()Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->getDefaultSignatureAlgorithms(S)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultRSASignatureAlgorithms()Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->getDefaultSignatureAlgorithms(S)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSignatureAlgorithm(S)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v1, p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultSignatureAlgorithms(S)Ljava/util/Vector;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getDefaultSignatureAlgorithm(S)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultSupportedSignatureAlgorithms(Lorg/bouncycastle/tls/TlsContext;)Ljava/util/Vector;
    .locals 1

    sget-object v0, Lorg/bouncycastle/tls/TlsUtils;->DEFAULT_SUPPORTED_SIG_ALGS:Ljava/util/Vector;

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->getSupportedSignatureAlgorithms(Lorg/bouncycastle/tls/TlsContext;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getEncryptionAlgorithm(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    packed-switch p0, :pswitch_data_8

    const/4 p0, -0x1

    return p0

    :pswitch_0
    :sswitch_0
    const/16 p0, 0x15

    return p0

    :sswitch_1
    const/16 p0, 0x1f

    return p0

    :sswitch_2
    const/16 p0, 0x1e

    return p0

    :sswitch_3
    const/16 p0, 0x1d

    return p0

    :sswitch_4
    const/16 p0, 0x12

    return p0

    :pswitch_1
    :sswitch_5
    const/16 p0, 0x10

    return p0

    :sswitch_6
    const/16 p0, 0x11

    return p0

    :pswitch_2
    :sswitch_7
    const/16 p0, 0xf

    return p0

    :sswitch_8
    const/16 p0, 0x14

    return p0

    :sswitch_9
    const/16 p0, 0x13

    return p0

    :sswitch_a
    const/16 p0, 0x19

    return p0

    :sswitch_b
    const/16 p0, 0x18

    return p0

    :sswitch_c
    const/16 p0, 0x17

    return p0

    :sswitch_d
    const/16 p0, 0x16

    return p0

    :sswitch_e
    const/16 p0, 0x1a

    return p0

    :sswitch_f
    const/16 p0, 0x1b

    return p0

    :pswitch_3
    :sswitch_10
    const/16 p0, 0xd

    return p0

    :pswitch_4
    :sswitch_11
    const/16 p0, 0xc

    return p0

    :pswitch_5
    :sswitch_12
    return v0

    :pswitch_6
    :sswitch_13
    const/16 p0, 0xb

    return p0

    :pswitch_7
    :sswitch_14
    const/16 p0, 0xa

    return p0

    :sswitch_15
    const/16 p0, 0xe

    return p0

    :pswitch_8
    :sswitch_16
    const/16 p0, 0x9

    return p0

    :pswitch_9
    :sswitch_17
    const/16 p0, 0x8

    return p0

    :pswitch_a
    :sswitch_18
    const/4 p0, 0x7

    return p0

    :pswitch_b
    :sswitch_19
    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_19
        0xa -> :sswitch_18
        0xd -> :sswitch_18
        0x10 -> :sswitch_18
        0x13 -> :sswitch_18
        0x16 -> :sswitch_18
        0x1b -> :sswitch_18
        0x93 -> :sswitch_18
        0x94 -> :sswitch_17
        0x95 -> :sswitch_16
        0x96 -> :sswitch_15
        0x97 -> :sswitch_15
        0x98 -> :sswitch_15
        0x99 -> :sswitch_15
        0x9a -> :sswitch_15
        0x9b -> :sswitch_15
        0x9c -> :sswitch_14
        0x9d -> :sswitch_13
        0x9e -> :sswitch_14
        0x9f -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa1 -> :sswitch_13
        0xa2 -> :sswitch_14
        0xa3 -> :sswitch_13
        0xa4 -> :sswitch_14
        0xa5 -> :sswitch_13
        0xa6 -> :sswitch_14
        0xa7 -> :sswitch_13
        0xa8 -> :sswitch_14
        0xa9 -> :sswitch_13
        0xaa -> :sswitch_14
        0xab -> :sswitch_13
        0xac -> :sswitch_14
        0xad -> :sswitch_13
        0xae -> :sswitch_17
        0xaf -> :sswitch_16
        0xb0 -> :sswitch_12
        0xb1 -> :sswitch_12
        0xb2 -> :sswitch_17
        0xb3 -> :sswitch_16
        0xb4 -> :sswitch_12
        0xb5 -> :sswitch_12
        0xb6 -> :sswitch_17
        0xb7 -> :sswitch_16
        0xb8 -> :sswitch_12
        0xb9 -> :sswitch_12
        0xba -> :sswitch_11
        0xbb -> :sswitch_11
        0xbc -> :sswitch_11
        0xbd -> :sswitch_11
        0xbe -> :sswitch_11
        0xbf -> :sswitch_11
        0xc0 -> :sswitch_10
        0xc1 -> :sswitch_10
        0xc2 -> :sswitch_10
        0xc3 -> :sswitch_10
        0xc4 -> :sswitch_10
        0xc5 -> :sswitch_10
        0xc6 -> :sswitch_f
        0xc7 -> :sswitch_e
        0xc001 -> :sswitch_19
        0xc012 -> :sswitch_18
        0xc013 -> :sswitch_17
        0xc014 -> :sswitch_16
        0xc015 -> :sswitch_19
        0xc017 -> :sswitch_18
        0xc018 -> :sswitch_17
        0xc019 -> :sswitch_16
        0xc01a -> :sswitch_18
        0xc01b -> :sswitch_18
        0xc01c -> :sswitch_18
        0xc01d -> :sswitch_17
        0xc01e -> :sswitch_17
        0xc01f -> :sswitch_17
        0xc020 -> :sswitch_16
        0xc021 -> :sswitch_16
        0xc022 -> :sswitch_16
        0xc023 -> :sswitch_17
        0xc024 -> :sswitch_16
        0xc025 -> :sswitch_17
        0xc026 -> :sswitch_16
        0xc027 -> :sswitch_17
        0xc028 -> :sswitch_16
        0xc029 -> :sswitch_17
        0xc02a -> :sswitch_16
        0xc02b -> :sswitch_14
        0xc02c -> :sswitch_13
        0xc02d -> :sswitch_14
        0xc02e -> :sswitch_13
        0xc02f -> :sswitch_14
        0xc030 -> :sswitch_13
        0xc031 -> :sswitch_14
        0xc032 -> :sswitch_13
        0xc034 -> :sswitch_18
        0xc035 -> :sswitch_17
        0xc036 -> :sswitch_16
        0xc037 -> :sswitch_17
        0xc038 -> :sswitch_16
        0xc039 -> :sswitch_19
        0xc03a -> :sswitch_12
        0xc03b -> :sswitch_12
        0xc03c -> :sswitch_d
        0xc03d -> :sswitch_c
        0xc03e -> :sswitch_d
        0xc03f -> :sswitch_c
        0xc040 -> :sswitch_d
        0xc041 -> :sswitch_c
        0xc042 -> :sswitch_d
        0xc043 -> :sswitch_c
        0xc044 -> :sswitch_d
        0xc045 -> :sswitch_c
        0xc046 -> :sswitch_d
        0xc047 -> :sswitch_c
        0xc048 -> :sswitch_d
        0xc049 -> :sswitch_c
        0xc04a -> :sswitch_d
        0xc04b -> :sswitch_c
        0xc04c -> :sswitch_d
        0xc04d -> :sswitch_c
        0xc04e -> :sswitch_d
        0xc04f -> :sswitch_c
        0xc050 -> :sswitch_b
        0xc051 -> :sswitch_a
        0xc052 -> :sswitch_b
        0xc053 -> :sswitch_a
        0xc054 -> :sswitch_b
        0xc055 -> :sswitch_a
        0xc056 -> :sswitch_b
        0xc057 -> :sswitch_a
        0xc058 -> :sswitch_b
        0xc059 -> :sswitch_a
        0xc05a -> :sswitch_b
        0xc05b -> :sswitch_a
        0xc05c -> :sswitch_b
        0xc05d -> :sswitch_a
        0xc05e -> :sswitch_b
        0xc05f -> :sswitch_a
        0xc060 -> :sswitch_b
        0xc061 -> :sswitch_a
        0xc062 -> :sswitch_b
        0xc063 -> :sswitch_a
        0xc064 -> :sswitch_d
        0xc065 -> :sswitch_c
        0xc066 -> :sswitch_d
        0xc067 -> :sswitch_c
        0xc068 -> :sswitch_d
        0xc069 -> :sswitch_c
        0xc06a -> :sswitch_b
        0xc06b -> :sswitch_a
        0xc06c -> :sswitch_b
        0xc06d -> :sswitch_a
        0xc06e -> :sswitch_b
        0xc06f -> :sswitch_a
        0xc070 -> :sswitch_d
        0xc071 -> :sswitch_c
        0xc072 -> :sswitch_11
        0xc073 -> :sswitch_10
        0xc074 -> :sswitch_11
        0xc075 -> :sswitch_10
        0xc076 -> :sswitch_11
        0xc077 -> :sswitch_10
        0xc078 -> :sswitch_11
        0xc079 -> :sswitch_10
        0xc07a -> :sswitch_9
        0xc07b -> :sswitch_8
        0xc07c -> :sswitch_9
        0xc07d -> :sswitch_8
        0xc07e -> :sswitch_9
        0xc07f -> :sswitch_8
        0xc080 -> :sswitch_9
        0xc081 -> :sswitch_8
        0xc082 -> :sswitch_9
        0xc083 -> :sswitch_8
        0xc084 -> :sswitch_9
        0xc085 -> :sswitch_8
        0xc086 -> :sswitch_9
        0xc087 -> :sswitch_8
        0xc088 -> :sswitch_9
        0xc089 -> :sswitch_8
        0xc08a -> :sswitch_9
        0xc08b -> :sswitch_8
        0xc08c -> :sswitch_9
        0xc08d -> :sswitch_8
        0xc08e -> :sswitch_9
        0xc08f -> :sswitch_8
        0xc090 -> :sswitch_9
        0xc091 -> :sswitch_8
        0xc092 -> :sswitch_9
        0xc093 -> :sswitch_8
        0xc094 -> :sswitch_11
        0xc095 -> :sswitch_10
        0xc096 -> :sswitch_11
        0xc097 -> :sswitch_10
        0xc098 -> :sswitch_11
        0xc099 -> :sswitch_10
        0xc09a -> :sswitch_11
        0xc09b -> :sswitch_10
        0xc09c -> :sswitch_7
        0xc09d -> :sswitch_6
        0xc09e -> :sswitch_7
        0xc09f -> :sswitch_6
        0xc0a0 -> :sswitch_5
        0xc0a1 -> :sswitch_4
        0xc0a2 -> :sswitch_5
        0xc0a3 -> :sswitch_4
        0xc0a4 -> :sswitch_7
        0xc0a5 -> :sswitch_6
        0xc0a6 -> :sswitch_7
        0xc0a7 -> :sswitch_6
        0xc0a8 -> :sswitch_5
        0xc0a9 -> :sswitch_4
        0xc0aa -> :sswitch_5
        0xc0ab -> :sswitch_4
        0xc0ac -> :sswitch_7
        0xc0ad -> :sswitch_6
        0xc0ae -> :sswitch_5
        0xc0af -> :sswitch_4
        0xc100 -> :sswitch_3
        0xc101 -> :sswitch_2
        0xc102 -> :sswitch_1
        0xcca8 -> :sswitch_0
        0xcca9 -> :sswitch_0
        0xccaa -> :sswitch_0
        0xccab -> :sswitch_0
        0xccac -> :sswitch_0
        0xccad -> :sswitch_0
        0xccae -> :sswitch_0
        0xd001 -> :sswitch_14
        0xd002 -> :sswitch_13
        0xd003 -> :sswitch_5
        0xd005 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8f
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1301
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xc003
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc008
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xc00d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static getEncryptionAlgorithmType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getKeyExchangeAlgorithm(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    packed-switch p0, :pswitch_data_8

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/16 p0, 0x1a

    return p0

    :sswitch_1
    const/16 p0, 0x18

    return p0

    :pswitch_0
    :sswitch_2
    const/16 p0, 0x12

    return p0

    :pswitch_1
    :sswitch_3
    const/16 p0, 0x11

    return p0

    :sswitch_4
    const/16 p0, 0x16

    return p0

    :sswitch_5
    const/16 p0, 0x17

    return p0

    :sswitch_6
    const/16 p0, 0x15

    return p0

    :sswitch_7
    const/16 p0, 0x14

    return p0

    :pswitch_2
    :sswitch_8
    const/16 p0, 0x13

    return p0

    :pswitch_3
    :sswitch_9
    const/16 p0, 0x10

    return p0

    :pswitch_4
    :sswitch_a
    const/4 p0, 0x0

    return p0

    :pswitch_5
    :sswitch_b
    const/16 p0, 0xe

    return p0

    :pswitch_6
    :sswitch_c
    const/16 p0, 0xd

    return p0

    :pswitch_7
    :sswitch_d
    const/16 p0, 0xf

    return p0

    :pswitch_8
    :sswitch_e
    const/16 p0, 0xb

    return p0

    :pswitch_9
    :sswitch_f
    const/4 p0, 0x5

    return p0

    :pswitch_a
    :sswitch_10
    const/4 p0, 0x3

    return p0

    :pswitch_b
    :sswitch_11
    const/16 p0, 0x9

    return p0

    :pswitch_c
    :sswitch_12
    const/4 p0, 0x7

    return p0

    :pswitch_d
    :sswitch_13
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_13
        0xa -> :sswitch_13
        0xd -> :sswitch_12
        0x10 -> :sswitch_11
        0x13 -> :sswitch_10
        0x16 -> :sswitch_f
        0x1b -> :sswitch_e
        0x93 -> :sswitch_d
        0x94 -> :sswitch_d
        0x95 -> :sswitch_d
        0x96 -> :sswitch_13
        0x97 -> :sswitch_12
        0x98 -> :sswitch_11
        0x99 -> :sswitch_10
        0x9a -> :sswitch_f
        0x9b -> :sswitch_e
        0x9c -> :sswitch_13
        0x9d -> :sswitch_13
        0x9e -> :sswitch_f
        0x9f -> :sswitch_f
        0xa0 -> :sswitch_11
        0xa1 -> :sswitch_11
        0xa2 -> :sswitch_10
        0xa3 -> :sswitch_10
        0xa4 -> :sswitch_12
        0xa5 -> :sswitch_12
        0xa6 -> :sswitch_e
        0xa7 -> :sswitch_e
        0xa8 -> :sswitch_c
        0xa9 -> :sswitch_c
        0xaa -> :sswitch_b
        0xab -> :sswitch_b
        0xac -> :sswitch_d
        0xad -> :sswitch_d
        0xae -> :sswitch_c
        0xaf -> :sswitch_c
        0xb0 -> :sswitch_c
        0xb1 -> :sswitch_c
        0xb2 -> :sswitch_b
        0xb3 -> :sswitch_b
        0xb4 -> :sswitch_b
        0xb5 -> :sswitch_b
        0xb6 -> :sswitch_d
        0xb7 -> :sswitch_d
        0xb8 -> :sswitch_d
        0xb9 -> :sswitch_d
        0xba -> :sswitch_13
        0xbb -> :sswitch_12
        0xbc -> :sswitch_11
        0xbd -> :sswitch_10
        0xbe -> :sswitch_f
        0xbf -> :sswitch_e
        0xc0 -> :sswitch_13
        0xc1 -> :sswitch_12
        0xc2 -> :sswitch_11
        0xc3 -> :sswitch_10
        0xc4 -> :sswitch_f
        0xc5 -> :sswitch_e
        0xc6 -> :sswitch_a
        0xc7 -> :sswitch_a
        0xc001 -> :sswitch_9
        0xc012 -> :sswitch_8
        0xc013 -> :sswitch_8
        0xc014 -> :sswitch_8
        0xc015 -> :sswitch_7
        0xc017 -> :sswitch_7
        0xc018 -> :sswitch_7
        0xc019 -> :sswitch_7
        0xc01a -> :sswitch_6
        0xc01b -> :sswitch_5
        0xc01c -> :sswitch_4
        0xc01d -> :sswitch_6
        0xc01e -> :sswitch_5
        0xc01f -> :sswitch_4
        0xc020 -> :sswitch_6
        0xc021 -> :sswitch_5
        0xc022 -> :sswitch_4
        0xc023 -> :sswitch_3
        0xc024 -> :sswitch_3
        0xc025 -> :sswitch_9
        0xc026 -> :sswitch_9
        0xc027 -> :sswitch_8
        0xc028 -> :sswitch_8
        0xc029 -> :sswitch_2
        0xc02a -> :sswitch_2
        0xc02b -> :sswitch_3
        0xc02c -> :sswitch_3
        0xc02d -> :sswitch_9
        0xc02e -> :sswitch_9
        0xc02f -> :sswitch_8
        0xc030 -> :sswitch_8
        0xc031 -> :sswitch_2
        0xc032 -> :sswitch_2
        0xc034 -> :sswitch_1
        0xc035 -> :sswitch_1
        0xc036 -> :sswitch_1
        0xc037 -> :sswitch_1
        0xc038 -> :sswitch_1
        0xc039 -> :sswitch_1
        0xc03a -> :sswitch_1
        0xc03b -> :sswitch_1
        0xc03c -> :sswitch_13
        0xc03d -> :sswitch_13
        0xc03e -> :sswitch_12
        0xc03f -> :sswitch_12
        0xc040 -> :sswitch_11
        0xc041 -> :sswitch_11
        0xc042 -> :sswitch_10
        0xc043 -> :sswitch_10
        0xc044 -> :sswitch_f
        0xc045 -> :sswitch_f
        0xc046 -> :sswitch_e
        0xc047 -> :sswitch_e
        0xc048 -> :sswitch_3
        0xc049 -> :sswitch_3
        0xc04a -> :sswitch_9
        0xc04b -> :sswitch_9
        0xc04c -> :sswitch_8
        0xc04d -> :sswitch_8
        0xc04e -> :sswitch_2
        0xc04f -> :sswitch_2
        0xc050 -> :sswitch_13
        0xc051 -> :sswitch_13
        0xc052 -> :sswitch_f
        0xc053 -> :sswitch_f
        0xc054 -> :sswitch_11
        0xc055 -> :sswitch_11
        0xc056 -> :sswitch_10
        0xc057 -> :sswitch_10
        0xc058 -> :sswitch_12
        0xc059 -> :sswitch_12
        0xc05a -> :sswitch_e
        0xc05b -> :sswitch_e
        0xc05c -> :sswitch_3
        0xc05d -> :sswitch_3
        0xc05e -> :sswitch_9
        0xc05f -> :sswitch_9
        0xc060 -> :sswitch_8
        0xc061 -> :sswitch_8
        0xc062 -> :sswitch_2
        0xc063 -> :sswitch_2
        0xc064 -> :sswitch_c
        0xc065 -> :sswitch_c
        0xc066 -> :sswitch_b
        0xc067 -> :sswitch_b
        0xc068 -> :sswitch_d
        0xc069 -> :sswitch_d
        0xc06a -> :sswitch_c
        0xc06b -> :sswitch_c
        0xc06c -> :sswitch_b
        0xc06d -> :sswitch_b
        0xc06e -> :sswitch_d
        0xc06f -> :sswitch_d
        0xc070 -> :sswitch_1
        0xc071 -> :sswitch_1
        0xc072 -> :sswitch_3
        0xc073 -> :sswitch_3
        0xc074 -> :sswitch_9
        0xc075 -> :sswitch_9
        0xc076 -> :sswitch_8
        0xc077 -> :sswitch_8
        0xc078 -> :sswitch_2
        0xc079 -> :sswitch_2
        0xc07a -> :sswitch_13
        0xc07b -> :sswitch_13
        0xc07c -> :sswitch_f
        0xc07d -> :sswitch_f
        0xc07e -> :sswitch_11
        0xc07f -> :sswitch_11
        0xc080 -> :sswitch_10
        0xc081 -> :sswitch_10
        0xc082 -> :sswitch_12
        0xc083 -> :sswitch_12
        0xc084 -> :sswitch_e
        0xc085 -> :sswitch_e
        0xc086 -> :sswitch_3
        0xc087 -> :sswitch_3
        0xc088 -> :sswitch_9
        0xc089 -> :sswitch_9
        0xc08a -> :sswitch_8
        0xc08b -> :sswitch_8
        0xc08c -> :sswitch_2
        0xc08d -> :sswitch_2
        0xc08e -> :sswitch_c
        0xc08f -> :sswitch_c
        0xc090 -> :sswitch_b
        0xc091 -> :sswitch_b
        0xc092 -> :sswitch_d
        0xc093 -> :sswitch_d
        0xc094 -> :sswitch_c
        0xc095 -> :sswitch_c
        0xc096 -> :sswitch_b
        0xc097 -> :sswitch_b
        0xc098 -> :sswitch_d
        0xc099 -> :sswitch_d
        0xc09a -> :sswitch_1
        0xc09b -> :sswitch_1
        0xc09c -> :sswitch_13
        0xc09d -> :sswitch_13
        0xc09e -> :sswitch_f
        0xc09f -> :sswitch_f
        0xc0a0 -> :sswitch_13
        0xc0a1 -> :sswitch_13
        0xc0a2 -> :sswitch_f
        0xc0a3 -> :sswitch_f
        0xc0a4 -> :sswitch_c
        0xc0a5 -> :sswitch_c
        0xc0a6 -> :sswitch_b
        0xc0a7 -> :sswitch_b
        0xc0a8 -> :sswitch_c
        0xc0a9 -> :sswitch_c
        0xc0aa -> :sswitch_b
        0xc0ab -> :sswitch_b
        0xc0ac -> :sswitch_3
        0xc0ad -> :sswitch_3
        0xc0ae -> :sswitch_3
        0xc0af -> :sswitch_3
        0xc100 -> :sswitch_0
        0xc101 -> :sswitch_0
        0xc102 -> :sswitch_0
        0xcca8 -> :sswitch_8
        0xcca9 -> :sswitch_3
        0xccaa -> :sswitch_f
        0xccab -> :sswitch_c
        0xccac -> :sswitch_1
        0xccad -> :sswitch_b
        0xccae -> :sswitch_d
        0xd001 -> :sswitch_1
        0xd002 -> :sswitch_1
        0xd003 -> :sswitch_1
        0xd005 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8b
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8f
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1301
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xc003
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc008
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xc00d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getKeyExchangeAlgorithms([I)Ljava/util/Vector;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/tls/TlsUtils;->addToSet(Ljava/util/Vector;I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static getLegacyClientCertType(S)S
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x40

    return p0

    :cond_1
    return v0
.end method

.method public static getLegacySignatureAlgorithmClient(S)S
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v0
.end method

.method public static getLegacySignatureAlgorithmClientCert(S)S
    .locals 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v3, 0x4

    if-eq p0, v3, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    return v2

    :cond_0
    return v1

    :cond_1
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLegacySignatureAlgorithmServer(I)S
    .locals 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/16 v1, 0x11

    if-eq p0, v1, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_2

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public static getLegacySignatureAlgorithmServerCert(I)S
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    const/4 v2, 0x7

    if-eq p0, v2, :cond_0

    const/16 v2, 0x9

    if-eq p0, v2, :cond_1

    const/16 v2, 0x16

    if-eq p0, v2, :cond_0

    const/16 v2, 0x17

    if-eq p0, v2, :cond_1

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    return v1

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getLegacySupportedSignatureAlgorithms()Ljava/util/Vector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x2

    invoke-static {v2, v2}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getInstance(SS)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getMACAlgorithm(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    packed-switch p0, :pswitch_data_8

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_0
    :sswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_1
    :sswitch_2
    const/4 p0, 0x0

    return p0

    :pswitch_2
    :sswitch_3
    const/4 p0, 0x2

    return p0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0xa -> :sswitch_3
        0xd -> :sswitch_3
        0x10 -> :sswitch_3
        0x13 -> :sswitch_3
        0x16 -> :sswitch_3
        0x1b -> :sswitch_3
        0x93 -> :sswitch_3
        0x94 -> :sswitch_3
        0x95 -> :sswitch_3
        0x96 -> :sswitch_3
        0x97 -> :sswitch_3
        0x98 -> :sswitch_3
        0x99 -> :sswitch_3
        0x9a -> :sswitch_3
        0x9b -> :sswitch_3
        0x9c -> :sswitch_2
        0x9d -> :sswitch_2
        0x9e -> :sswitch_2
        0x9f -> :sswitch_2
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_2
        0xa2 -> :sswitch_2
        0xa3 -> :sswitch_2
        0xa4 -> :sswitch_2
        0xa5 -> :sswitch_2
        0xa6 -> :sswitch_2
        0xa7 -> :sswitch_2
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_2
        0xaa -> :sswitch_2
        0xab -> :sswitch_2
        0xac -> :sswitch_2
        0xad -> :sswitch_2
        0xae -> :sswitch_1
        0xaf -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb1 -> :sswitch_0
        0xb2 -> :sswitch_1
        0xb3 -> :sswitch_0
        0xb4 -> :sswitch_1
        0xb5 -> :sswitch_0
        0xb6 -> :sswitch_1
        0xb7 -> :sswitch_0
        0xb8 -> :sswitch_1
        0xb9 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_1
        0xbc -> :sswitch_1
        0xbd -> :sswitch_1
        0xbe -> :sswitch_1
        0xbf -> :sswitch_1
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_1
        0xc4 -> :sswitch_1
        0xc5 -> :sswitch_1
        0xc6 -> :sswitch_2
        0xc7 -> :sswitch_2
        0xc001 -> :sswitch_3
        0xc012 -> :sswitch_3
        0xc013 -> :sswitch_3
        0xc014 -> :sswitch_3
        0xc015 -> :sswitch_3
        0xc017 -> :sswitch_3
        0xc018 -> :sswitch_3
        0xc019 -> :sswitch_3
        0xc01a -> :sswitch_3
        0xc01b -> :sswitch_3
        0xc01c -> :sswitch_3
        0xc01d -> :sswitch_3
        0xc01e -> :sswitch_3
        0xc01f -> :sswitch_3
        0xc020 -> :sswitch_3
        0xc021 -> :sswitch_3
        0xc022 -> :sswitch_3
        0xc023 -> :sswitch_1
        0xc024 -> :sswitch_0
        0xc025 -> :sswitch_1
        0xc026 -> :sswitch_0
        0xc027 -> :sswitch_1
        0xc028 -> :sswitch_0
        0xc029 -> :sswitch_1
        0xc02a -> :sswitch_0
        0xc02b -> :sswitch_2
        0xc02c -> :sswitch_2
        0xc02d -> :sswitch_2
        0xc02e -> :sswitch_2
        0xc02f -> :sswitch_2
        0xc030 -> :sswitch_2
        0xc031 -> :sswitch_2
        0xc032 -> :sswitch_2
        0xc034 -> :sswitch_3
        0xc035 -> :sswitch_3
        0xc036 -> :sswitch_3
        0xc037 -> :sswitch_1
        0xc038 -> :sswitch_0
        0xc039 -> :sswitch_3
        0xc03a -> :sswitch_1
        0xc03b -> :sswitch_0
        0xc03c -> :sswitch_1
        0xc03d -> :sswitch_0
        0xc03e -> :sswitch_1
        0xc03f -> :sswitch_0
        0xc040 -> :sswitch_1
        0xc041 -> :sswitch_0
        0xc042 -> :sswitch_1
        0xc043 -> :sswitch_0
        0xc044 -> :sswitch_1
        0xc045 -> :sswitch_0
        0xc046 -> :sswitch_1
        0xc047 -> :sswitch_0
        0xc048 -> :sswitch_1
        0xc049 -> :sswitch_0
        0xc04a -> :sswitch_1
        0xc04b -> :sswitch_0
        0xc04c -> :sswitch_1
        0xc04d -> :sswitch_0
        0xc04e -> :sswitch_1
        0xc04f -> :sswitch_0
        0xc050 -> :sswitch_2
        0xc051 -> :sswitch_2
        0xc052 -> :sswitch_2
        0xc053 -> :sswitch_2
        0xc054 -> :sswitch_2
        0xc055 -> :sswitch_2
        0xc056 -> :sswitch_2
        0xc057 -> :sswitch_2
        0xc058 -> :sswitch_2
        0xc059 -> :sswitch_2
        0xc05a -> :sswitch_2
        0xc05b -> :sswitch_2
        0xc05c -> :sswitch_2
        0xc05d -> :sswitch_2
        0xc05e -> :sswitch_2
        0xc05f -> :sswitch_2
        0xc060 -> :sswitch_2
        0xc061 -> :sswitch_2
        0xc062 -> :sswitch_2
        0xc063 -> :sswitch_2
        0xc064 -> :sswitch_1
        0xc065 -> :sswitch_0
        0xc066 -> :sswitch_1
        0xc067 -> :sswitch_0
        0xc068 -> :sswitch_1
        0xc069 -> :sswitch_0
        0xc06a -> :sswitch_2
        0xc06b -> :sswitch_2
        0xc06c -> :sswitch_2
        0xc06d -> :sswitch_2
        0xc06e -> :sswitch_2
        0xc06f -> :sswitch_2
        0xc070 -> :sswitch_1
        0xc071 -> :sswitch_0
        0xc072 -> :sswitch_1
        0xc073 -> :sswitch_0
        0xc074 -> :sswitch_1
        0xc075 -> :sswitch_0
        0xc076 -> :sswitch_1
        0xc077 -> :sswitch_0
        0xc078 -> :sswitch_1
        0xc079 -> :sswitch_0
        0xc07a -> :sswitch_2
        0xc07b -> :sswitch_2
        0xc07c -> :sswitch_2
        0xc07d -> :sswitch_2
        0xc07e -> :sswitch_2
        0xc07f -> :sswitch_2
        0xc080 -> :sswitch_2
        0xc081 -> :sswitch_2
        0xc082 -> :sswitch_2
        0xc083 -> :sswitch_2
        0xc084 -> :sswitch_2
        0xc085 -> :sswitch_2
        0xc086 -> :sswitch_2
        0xc087 -> :sswitch_2
        0xc088 -> :sswitch_2
        0xc089 -> :sswitch_2
        0xc08a -> :sswitch_2
        0xc08b -> :sswitch_2
        0xc08c -> :sswitch_2
        0xc08d -> :sswitch_2
        0xc08e -> :sswitch_2
        0xc08f -> :sswitch_2
        0xc090 -> :sswitch_2
        0xc091 -> :sswitch_2
        0xc092 -> :sswitch_2
        0xc093 -> :sswitch_2
        0xc094 -> :sswitch_1
        0xc095 -> :sswitch_0
        0xc096 -> :sswitch_1
        0xc097 -> :sswitch_0
        0xc098 -> :sswitch_1
        0xc099 -> :sswitch_0
        0xc09a -> :sswitch_1
        0xc09b -> :sswitch_0
        0xc09c -> :sswitch_2
        0xc09d -> :sswitch_2
        0xc09e -> :sswitch_2
        0xc09f -> :sswitch_2
        0xc0a0 -> :sswitch_2
        0xc0a1 -> :sswitch_2
        0xc0a2 -> :sswitch_2
        0xc0a3 -> :sswitch_2
        0xc0a4 -> :sswitch_2
        0xc0a5 -> :sswitch_2
        0xc0a6 -> :sswitch_2
        0xc0a7 -> :sswitch_2
        0xc0a8 -> :sswitch_2
        0xc0a9 -> :sswitch_2
        0xc0aa -> :sswitch_2
        0xc0ab -> :sswitch_2
        0xc0ac -> :sswitch_2
        0xc0ad -> :sswitch_2
        0xc0ae -> :sswitch_2
        0xc0af -> :sswitch_2
        0xcca8 -> :sswitch_2
        0xcca9 -> :sswitch_2
        0xccaa -> :sswitch_2
        0xccab -> :sswitch_2
        0xccac -> :sswitch_2
        0xccad -> :sswitch_2
        0xccae -> :sswitch_2
        0xd001 -> :sswitch_2
        0xd002 -> :sswitch_2
        0xd003 -> :sswitch_2
        0xd005 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8b
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8f
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1301
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xc003
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc008
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xc00d
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getMinimumVersion(I)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    packed-switch p0, :pswitch_data_8

    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    :pswitch_1
    :sswitch_0
    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xba
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc023
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xc03c -> :sswitch_0
        0xc03d -> :sswitch_0
        0xc03e -> :sswitch_0
        0xc03f -> :sswitch_0
        0xc040 -> :sswitch_0
        0xc041 -> :sswitch_0
        0xc042 -> :sswitch_0
        0xc043 -> :sswitch_0
        0xc044 -> :sswitch_0
        0xc045 -> :sswitch_0
        0xc046 -> :sswitch_0
        0xc047 -> :sswitch_0
        0xc048 -> :sswitch_0
        0xc049 -> :sswitch_0
        0xc04a -> :sswitch_0
        0xc04b -> :sswitch_0
        0xc04c -> :sswitch_0
        0xc04d -> :sswitch_0
        0xc04e -> :sswitch_0
        0xc04f -> :sswitch_0
        0xc050 -> :sswitch_0
        0xc051 -> :sswitch_0
        0xc052 -> :sswitch_0
        0xc053 -> :sswitch_0
        0xc054 -> :sswitch_0
        0xc055 -> :sswitch_0
        0xc056 -> :sswitch_0
        0xc057 -> :sswitch_0
        0xc058 -> :sswitch_0
        0xc059 -> :sswitch_0
        0xc05a -> :sswitch_0
        0xc05b -> :sswitch_0
        0xc05c -> :sswitch_0
        0xc05d -> :sswitch_0
        0xc05e -> :sswitch_0
        0xc05f -> :sswitch_0
        0xc060 -> :sswitch_0
        0xc061 -> :sswitch_0
        0xc062 -> :sswitch_0
        0xc063 -> :sswitch_0
        0xc064 -> :sswitch_0
        0xc065 -> :sswitch_0
        0xc066 -> :sswitch_0
        0xc067 -> :sswitch_0
        0xc068 -> :sswitch_0
        0xc069 -> :sswitch_0
        0xc06a -> :sswitch_0
        0xc06b -> :sswitch_0
        0xc06c -> :sswitch_0
        0xc06d -> :sswitch_0
        0xc06e -> :sswitch_0
        0xc06f -> :sswitch_0
        0xc070 -> :sswitch_0
        0xc071 -> :sswitch_0
        0xc072 -> :sswitch_0
        0xc073 -> :sswitch_0
        0xc074 -> :sswitch_0
        0xc075 -> :sswitch_0
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_0
        0xc078 -> :sswitch_0
        0xc079 -> :sswitch_0
        0xc07a -> :sswitch_0
        0xc07b -> :sswitch_0
        0xc07c -> :sswitch_0
        0xc07d -> :sswitch_0
        0xc07e -> :sswitch_0
        0xc07f -> :sswitch_0
        0xc080 -> :sswitch_0
        0xc081 -> :sswitch_0
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_0
        0xc084 -> :sswitch_0
        0xc085 -> :sswitch_0
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_0
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_0
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_0
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_0
        0xc08e -> :sswitch_0
        0xc08f -> :sswitch_0
        0xc090 -> :sswitch_0
        0xc091 -> :sswitch_0
        0xc092 -> :sswitch_0
        0xc093 -> :sswitch_0
        0xd001 -> :sswitch_0
        0xd002 -> :sswitch_0
        0xd003 -> :sswitch_0
        0xd005 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0xc09c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc100
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xcca8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNamedGroupRoles(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    const/4 v6, 0x7

    if-eq v2, v6, :cond_1

    const/16 v6, 0x9

    if-eq v2, v6, :cond_1

    const/16 v6, 0xb

    if-eq v2, v6, :cond_1

    const/16 v6, 0xe

    if-eq v2, v6, :cond_1

    const/16 v4, 0x18

    if-eq v2, v4, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->addToSet(Ljava/util/Vector;I)Z

    invoke-static {v0, v5}, Lorg/bouncycastle/tls/TlsUtils;->addToSet(Ljava/util/Vector;I)Z

    goto :goto_1

    :cond_0
    :pswitch_1
    invoke-static {v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->addToSet(Ljava/util/Vector;I)Z

    goto :goto_1

    :cond_1
    invoke-static {v0, v4}, Lorg/bouncycastle/tls/TlsUtils;->addToSet(Ljava/util/Vector;I)Z

    goto :goto_1

    :cond_2
    invoke-static {v0, v4}, Lorg/bouncycastle/tls/TlsUtils;->addToSet(Ljava/util/Vector;I)Z

    invoke-static {v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->addToSet(Ljava/util/Vector;I)Z

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lorg/bouncycastle/tls/TlsUtils;->addToSet(Ljava/util/Vector;I)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNamedGroupRoles([I)Ljava/util/Vector;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getKeyExchangeAlgorithms([I)Ljava/util/Vector;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getNamedGroupRoles(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getOIDForHashAlgorithm(S)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid HashAlgorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/bouncycastle/tls/HashAlgorithm;->getText(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getPRFAlgorithm(Lorg/bouncycastle/tls/SecurityParameters;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isSSL()Z

    move-result p0

    const/4 v4, 0x2

    const/16 v5, 0x2f

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 v6, 0x3

    packed-switch p1, :pswitch_data_2

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    packed-switch p1, :pswitch_data_8

    if-nez v0, :cond_3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    if-eqz v3, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_1
    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_2
    if-eqz v0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_3
    if-eqz v0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_4
    :sswitch_0
    if-nez v0, :cond_a

    if-eqz v3, :cond_8

    return v6

    :cond_8
    if-eqz p0, :cond_9

    return v2

    :cond_9
    return v1

    :cond_a
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_5
    :sswitch_1
    if-eqz v3, :cond_b

    return v6

    :cond_b
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_6
    :sswitch_2
    if-eqz v3, :cond_c

    return v4

    :cond_c
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v5}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9c
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xaf -> :sswitch_0
        0xb1 -> :sswitch_0
        0xb3 -> :sswitch_0
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_0
        0xc038 -> :sswitch_0
        0xc03b -> :sswitch_0
        0xc03c -> :sswitch_2
        0xc03d -> :sswitch_1
        0xc03e -> :sswitch_2
        0xc03f -> :sswitch_1
        0xc040 -> :sswitch_2
        0xc041 -> :sswitch_1
        0xc042 -> :sswitch_2
        0xc043 -> :sswitch_1
        0xc044 -> :sswitch_2
        0xc045 -> :sswitch_1
        0xc046 -> :sswitch_2
        0xc047 -> :sswitch_1
        0xc048 -> :sswitch_2
        0xc049 -> :sswitch_1
        0xc04a -> :sswitch_2
        0xc04b -> :sswitch_1
        0xc04c -> :sswitch_2
        0xc04d -> :sswitch_1
        0xc04e -> :sswitch_2
        0xc04f -> :sswitch_1
        0xc050 -> :sswitch_2
        0xc051 -> :sswitch_1
        0xc052 -> :sswitch_2
        0xc053 -> :sswitch_1
        0xc054 -> :sswitch_2
        0xc055 -> :sswitch_1
        0xc056 -> :sswitch_2
        0xc057 -> :sswitch_1
        0xc058 -> :sswitch_2
        0xc059 -> :sswitch_1
        0xc05a -> :sswitch_2
        0xc05b -> :sswitch_1
        0xc05c -> :sswitch_2
        0xc05d -> :sswitch_1
        0xc05e -> :sswitch_2
        0xc05f -> :sswitch_1
        0xc060 -> :sswitch_2
        0xc061 -> :sswitch_1
        0xc062 -> :sswitch_2
        0xc063 -> :sswitch_1
        0xc064 -> :sswitch_2
        0xc065 -> :sswitch_1
        0xc066 -> :sswitch_2
        0xc067 -> :sswitch_1
        0xc068 -> :sswitch_2
        0xc069 -> :sswitch_1
        0xc06a -> :sswitch_2
        0xc06b -> :sswitch_1
        0xc06c -> :sswitch_2
        0xc06d -> :sswitch_1
        0xc06e -> :sswitch_2
        0xc06f -> :sswitch_1
        0xc070 -> :sswitch_2
        0xc071 -> :sswitch_1
        0xc072 -> :sswitch_2
        0xc073 -> :sswitch_1
        0xc074 -> :sswitch_2
        0xc075 -> :sswitch_1
        0xc076 -> :sswitch_2
        0xc077 -> :sswitch_1
        0xc078 -> :sswitch_2
        0xc079 -> :sswitch_1
        0xc07a -> :sswitch_2
        0xc07b -> :sswitch_1
        0xc07c -> :sswitch_2
        0xc07d -> :sswitch_1
        0xc07e -> :sswitch_2
        0xc07f -> :sswitch_1
        0xc080 -> :sswitch_2
        0xc081 -> :sswitch_1
        0xc082 -> :sswitch_2
        0xc083 -> :sswitch_1
        0xc084 -> :sswitch_2
        0xc085 -> :sswitch_1
        0xc086 -> :sswitch_2
        0xc087 -> :sswitch_1
        0xc088 -> :sswitch_2
        0xc089 -> :sswitch_1
        0xc08a -> :sswitch_2
        0xc08b -> :sswitch_1
        0xc08c -> :sswitch_2
        0xc08d -> :sswitch_1
        0xc08e -> :sswitch_2
        0xc08f -> :sswitch_1
        0xc090 -> :sswitch_2
        0xc091 -> :sswitch_1
        0xc092 -> :sswitch_2
        0xc093 -> :sswitch_1
        0xc095 -> :sswitch_0
        0xc097 -> :sswitch_0
        0xc099 -> :sswitch_0
        0xd001 -> :sswitch_2
        0xd002 -> :sswitch_1
        0xd003 -> :sswitch_2
        0xd005 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0xb9
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1301
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc023
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xc09b
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc100
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xcca8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method static getPRFAlgorithm13(I)I
    .locals 1

    const/16 v0, 0xc6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1301
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static getPRFAlgorithms13([I)[I
    .locals 5

    const/4 v0, 0x3

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget v3, p0, v1

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsUtils;->getPRFAlgorithm13(I)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    aput v3, v0, v2

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v2}, Lorg/bouncycastle/tls/TlsUtils;->truncate([II)[I

    move-result-object p0

    return-object p0
.end method

.method static getPSKEarlySecret(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsPSK;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsPSK;->getPRFAlgorithm()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHashForPRF(I)I

    move-result v0

    invoke-interface {p0, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hkdfInit(I)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsPSK;->getKey()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/tls/crypto/TlsSecret;->hkdfExtract(ILorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    return-object p0
.end method

.method static getPSKEarlySecrets(Lorg/bouncycastle/tls/crypto/TlsCrypto;[Lorg/bouncycastle/tls/TlsPSK;)[Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lorg/bouncycastle/tls/TlsUtils;->getPSKEarlySecret(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsPSK;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static getPSKExternalsClient(Lorg/bouncycastle/tls/TlsClient;[I)[Lorg/bouncycastle/tls/TlsPSKExternal;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClient;->getExternalPSKs()Ljava/util/Vector;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty(Ljava/util/Vector;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getPRFAlgorithms13([I)[I

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/tls/TlsPSKExternal;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/bouncycastle/tls/TlsPSKExternal;

    const/16 v5, 0x50

    if-eqz v4, :cond_2

    check-cast v3, Lorg/bouncycastle/tls/TlsPSKExternal;

    invoke-interface {v3}, Lorg/bouncycastle/tls/TlsPSKExternal;->getPRFAlgorithm()I

    move-result v4

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_1

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p1, "External PSK incompatible with offered cipher suites"

    invoke-direct {p0, v5, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p1, "External PSKs element is not a TlsPSKExternal"

    invoke-direct {p0, v5, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    return-object v1
.end method

.method static getPSKIndices([Lorg/bouncycastle/tls/TlsPSK;I)Ljava/util/Vector;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsPSK;->getPRFAlgorithm()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static getSessionID(Lorg/bouncycastle/tls/TlsSession;)[B
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsSession;->getSessionID()[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object p0
.end method

.method static getSessionMasterSecret(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsSecret;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->adoptSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/TlsCredentialedSigner;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsCredentialedSigner;->getSignatureAndHashAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsCredentialedSigner;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/ProtocolVersion;Lorg/bouncycastle/tls/TlsCredentialedSigner;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedCipherSuites(Lorg/bouncycastle/tls/crypto/TlsCrypto;[I)[I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->getSupportedCipherSuites(Lorg/bouncycastle/tls/crypto/TlsCrypto;[III)[I

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedCipherSuites(Lorg/bouncycastle/tls/crypto/TlsCrypto;[II)[I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/bouncycastle/tls/TlsUtils;->getSupportedCipherSuites(Lorg/bouncycastle/tls/crypto/TlsCrypto;[III)[I

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedCipherSuites(Lorg/bouncycastle/tls/crypto/TlsCrypto;[III)[I
    .locals 5

    new-array v0, p3, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v3, p2, v1

    aget v3, p1, v3

    invoke-static {p0, v3}, Lorg/bouncycastle/tls/TlsUtils;->isSupportedCipherSuite(Lorg/bouncycastle/tls/crypto/TlsCrypto;I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    aput v3, v0, v2

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, p3, :cond_2

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getSupportedSignatureAlgorithms(Lorg/bouncycastle/tls/TlsContext;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 4

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-static {v1, p0, v3}, Lorg/bouncycastle/tls/TlsUtils;->addIfSupported(Ljava/util/Vector;Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getUsableSignatureAlgorithms(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 5

    const/4 v0, 0x2

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Lorg/bouncycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/bouncycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/bouncycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v4

    if-lt v4, v0, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static hasAnyRSASigAlgs(Lorg/bouncycastle/tls/crypto/TlsCrypto;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    invoke-interface {p0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    invoke-interface {p0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x9

    invoke-interface {p0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    invoke-interface {p0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xb

    invoke-interface {p0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static hasSigningCapability(S)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x40

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/TlsSessionImpl;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/TlsSessionImpl;-><init>([BLorg/bouncycastle/tls/SessionParameters;)V

    return-object v0
.end method

.method static initCipher(Lorg/bouncycastle/tls/TlsContext;)Lorg/bouncycastle/tls/crypto/TlsCipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->getEncryptionAlgorithm(I)I

    move-result v1

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->getMACAlgorithm(I)I

    move-result v0

    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

    invoke-direct {v3, p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;-><init>(Lorg/bouncycastle/tls/TlsContext;)V

    invoke-interface {v2, v3, v1, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createCipher(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static initKeyExchangeClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getKeyExchangeAlgorithm()I

    move-result v0

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->createKeyExchangeClient(Lorg/bouncycastle/tls/TlsClient;I)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/TlsKeyExchange;->init(Lorg/bouncycastle/tls/TlsContext;)V

    return-object p1
.end method

.method static initKeyExchangeServer(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/TlsServer;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getKeyExchangeAlgorithm()I

    move-result v0

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->createKeyExchangeServer(Lorg/bouncycastle/tls/TlsServer;I)Lorg/bouncycastle/tls/TlsKeyExchange;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/bouncycastle/tls/TlsKeyExchange;->init(Lorg/bouncycastle/tls/TlsContext;)V

    return-object p1
.end method

.method public static isAEADCipherSuite(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getCipherType(I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBlockCipherSuite(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getCipherType(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isExtendedMasterSecretOptional(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static isExtendedMasterSecretOptional([Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isNullOrContainsNull([Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNullOrEmpty(Ljava/util/Vector;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isNullOrEmpty([B)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length p0, p0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNullOrEmpty([I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length p0, p0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNullOrEmpty([Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length p0, p0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNullOrEmpty([S)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length p0, p0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method static isPermittedExtensionType13(II)Z
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v2, :cond_a

    const/4 v3, 0x5

    const/16 v4, 0xd

    if-eq p1, v3, :cond_8

    const/16 v3, 0xa

    if-eq p1, v3, :cond_a

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_6

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 v3, 0x6

    const/4 v5, 0x2

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    invoke-static {p1}, Lorg/bouncycastle/tls/ExtensionType;->isRecognized(I)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_0
    if-eq p0, v4, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_1
    if-eq p0, v2, :cond_1

    if-eq p0, v3, :cond_1

    return v1

    :cond_1
    return v2

    :pswitch_2
    if-eq p0, v2, :cond_2

    if-eq p0, v5, :cond_2

    if-eq p0, v3, :cond_2

    return v1

    :cond_2
    return v2

    :pswitch_3
    if-eq p0, v2, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_3

    if-eq p0, v0, :cond_3

    return v1

    :cond_3
    return v2

    :pswitch_4
    if-eq p0, v2, :cond_4

    if-eq p0, v5, :cond_4

    return v1

    :cond_4
    return v2

    :pswitch_5
    if-eq p0, v2, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    :pswitch_6
    if-eq p0, v2, :cond_7

    if-eq p0, v4, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    :pswitch_7
    if-eq p0, v2, :cond_9

    const/16 p1, 0xb

    if-eq p0, p1, :cond_9

    if-eq p0, v4, :cond_9

    return v1

    :cond_9
    return v2

    :cond_a
    :pswitch_8
    if-eq p0, v2, :cond_b

    if-eq p0, v0, :cond_b

    return v1

    :cond_b
    return v2

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x29
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2f
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public static isSSL(Lorg/bouncycastle/tls/TlsContext;)Z
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isSSL()Z

    move-result p0

    return p0
.end method

.method private static isSafeRenegotiationServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/Certificate;)Z
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->areCertificatesEqual(Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/Certificate;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStreamCipherSuite(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getCipherType(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportedCipherSuite(Lorg/bouncycastle/tls/crypto/TlsCrypto;I)Z
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->isSupportedKeyExchange(Lorg/bouncycastle/tls/crypto/TlsCrypto;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getEncryptionAlgorithm(I)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-interface {p0, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasEncryptionAlgorithm(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getMACAlgorithm(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ltz p1, :cond_2

    invoke-interface {p0, p1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasMacAlgorithm(I)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static isSupportedKeyExchange(Lorg/bouncycastle/tls/crypto/TlsCrypto;I)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_a

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_8

    const/4 v4, 0x5

    if-eq p1, v4, :cond_6

    const/4 v4, 0x7

    if-eq p1, v4, :cond_5

    const/16 v5, 0x9

    if-eq p1, v5, :cond_5

    const/16 v5, 0xb

    if-eq p1, v5, :cond_5

    packed-switch p1, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSRPAuthentication()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->hasAnyRSASigAlgs(Lorg/bouncycastle/tls/crypto/TlsCrypto;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3

    :pswitch_1
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSRPAuthentication()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v3

    :pswitch_2
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSRPAuthentication()Z

    move-result p0

    return p0

    :pswitch_3
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasECDHAgreement()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->hasAnyRSASigAlgs(Lorg/bouncycastle/tls/crypto/TlsCrypto;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v3

    :pswitch_4
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasECDHAgreement()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0, v2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p0, v4}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x8

    invoke-interface {p0, p1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v0

    :cond_4
    return v3

    :pswitch_5
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasECDHAgreement()Z

    move-result p0

    return p0

    :cond_5
    :pswitch_6
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasDHAgreement()Z

    move-result p0

    return p0

    :cond_6
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasDHAgreement()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->hasAnyRSASigAlgs(Lorg/bouncycastle/tls/crypto/TlsCrypto;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    return v3

    :cond_8
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasDHAgreement()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasSignatureAlgorithm(S)Z

    move-result p0

    if-eqz p0, :cond_9

    return v0

    :cond_9
    return v3

    :cond_a
    :pswitch_7
    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasRSAEncryption()Z

    move-result p0

    return p0

    :cond_b
    :pswitch_8
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
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

.method public static isTLSv10(Lorg/bouncycastle/tls/TlsContext;)Z
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv10(Lorg/bouncycastle/tls/ProtocolVersion;)Z

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

.method public static isTLSv11(Lorg/bouncycastle/tls/TlsContext;)Z
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv11(Lorg/bouncycastle/tls/ProtocolVersion;)Z

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

.method public static isTLSv12(Lorg/bouncycastle/tls/TlsContext;)Z
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/ProtocolVersion;)Z

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

.method public static isTLSv13(Lorg/bouncycastle/tls/TlsContext;)Z
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isValidCipherSuiteForSignatureAlgorithms(ILjava/util/Vector;)Z
    .locals 5

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0x11

    if-eq p0, v1, :cond_0

    const/16 v1, 0x13

    if-eq p0, v1, :cond_0

    const/16 v1, 0x16

    if-eq p0, v1, :cond_0

    const/16 v1, 0x17

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-static {v4, p0}, Lorg/bouncycastle/tls/TlsUtils;->isValidSignatureAlgorithmForServerKeyExchange(SI)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isValidCipherSuiteForVersion(ILorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method static isValidCipherSuiteSelection([II)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/CipherSuite;->isSCSV(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isValidKeyShareSelection(Lorg/bouncycastle/tls/ProtocolVersion;[ILjava/util/Hashtable;I)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1, p3}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3, p0}, Lorg/bouncycastle/tls/NamedGroup;->canBeNegotiated(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isValidSignatureAlgorithmForServerKeyExchange(SI)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/16 v4, 0x11

    if-eq p1, v4, :cond_0

    const/16 v2, 0x13

    if-eq p1, v2, :cond_2

    const/16 v2, 0x16

    if-eq p1, v2, :cond_4

    const/16 v2, 0x17

    if-eq p1, v2, :cond_2

    return v1

    :cond_0
    if-eq p0, v2, :cond_1

    const/4 p1, 0x7

    if-eq p0, p1, :cond_1

    const/16 p1, 0x8

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    if-eq p0, v0, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_3

    if-eq p0, v3, :cond_3

    const/4 p1, 0x6

    if-eq p0, p1, :cond_3

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_3
    :pswitch_0
    return v0

    :cond_4
    const/4 p1, 0x2

    if-ne p1, p0, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    if-eqz p0, :cond_7

    return v0

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidSignatureSchemeForServerKeyExchange(II)Z
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/tls/SignatureScheme;->getSignatureAlgorithm(I)S

    move-result p0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidSignatureAlgorithmForServerKeyExchange(SI)Z

    move-result p0

    return p0
.end method

.method public static isValidUint16(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidUint16(J)Z
    .locals 3

    const-wide/32 v0, 0xffff

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidUint24(I)Z
    .locals 1

    const v0, 0xffffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidUint24(J)Z
    .locals 3

    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidUint32(J)Z
    .locals 3

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidUint48(J)Z
    .locals 3

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidUint64(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isValidUint8(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidUint8(J)Z
    .locals 3

    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidUint8(S)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidVersionForCipherSuite(ILorg/bouncycastle/tls/ProtocolVersion;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p1

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getMinimumVersion(I)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/ProtocolVersion;->isEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    sget-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v1, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/ProtocolVersion;->isLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method static negotiatedCipherSuite(Lorg/bouncycastle/tls/SecurityParameters;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p1, p0, Lorg/bouncycastle/tls/SecurityParameters;->cipherSuite:I

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->keyExchangeAlgorithm:I

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->getPRFAlgorithm(Lorg/bouncycastle/tls/SecurityParameters;I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfAlgorithm:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHashForPRF(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfCryptoHashAlgorithm:I

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHashOutputSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfCryptoHashAlgorithm:I

    :goto_0
    iput v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->prfHashLength:I

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFHashLength()I

    move-result p1

    :goto_1
    iput p1, p0, Lorg/bouncycastle/tls/SecurityParameters;->verifyDataLength:I

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x24

    goto :goto_1

    :cond_2
    packed-switch p1, :pswitch_data_0

    const/16 p1, 0xc

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x20

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xc100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static negotiatedVersion(Lorg/bouncycastle/tls/SecurityParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgs:Ljava/util/Vector;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgsCert:Ljava/util/Vector;

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgs()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/bouncycastle/tls/TlsUtils;->getLegacySupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->clientSigAlgs:Ljava/util/Vector;

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgsCert()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgs()Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static negotiatedVersionDTLSClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isSupportedDTLSVersionClient(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedVersion(Lorg/bouncycastle/tls/SecurityParameters;)V

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static negotiatedVersionDTLSServer(Lorg/bouncycastle/tls/TlsServerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isSupportedDTLSVersionServer(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedVersion(Lorg/bouncycastle/tls/SecurityParameters;)V

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static negotiatedVersionTLSClient(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isSupportedTLSVersionClient(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedVersion(Lorg/bouncycastle/tls/SecurityParameters;)V

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static negotiatedVersionTLSServer(Lorg/bouncycastle/tls/TlsServerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isSupportedTLSVersionServer(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->negotiatedVersion(Lorg/bouncycastle/tls/SecurityParameters;)V

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static normalizeCertificateRequest(Lorg/bouncycastle/tls/CertificateRequest;[S)Lorg/bouncycastle/tls/CertificateRequest;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->containsAll([S[S)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->retainAll([S[S)[S

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/tls/CertificateRequest;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/CertificateRequest;->getCertificateAuthorities()Ljava/util/Vector;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lorg/bouncycastle/tls/CertificateRequest;-><init>([SLjava/util/Vector;Ljava/util/Vector;)V

    return-object v0
.end method

.method public static parseSupportedSignatureAlgorithms(Ljava/io/InputStream;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2

    div-int/2addr v0, v1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static processClientCertificate(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/TlsKeyExchange;Lorg/bouncycastle/tls/TlsServer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->processClientCertificate(Lorg/bouncycastle/tls/Certificate;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/tls/SecurityParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    invoke-interface {p3, p1}, Lorg/bouncycastle/tls/TlsServer;->notifyClientCertificate(Lorg/bouncycastle/tls/Certificate;)V

    return-void

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static processClientCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getClientCertificateTypeExtensionServer(Ljava/util/Hashtable;)S

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tls/CertificateType;->isValid(S)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getClientCertificateTypeExtensionClient(Ljava/util/Hashtable;)[S

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/bouncycastle/tls/TlsUtils;->contains([SIIS)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p1, "Invalid selection for client_certificate_type"

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p1, "Unknown value for client_certificate_type"

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method static processClientCertificateTypeExtension13(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->processClientCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p0

    invoke-static {p0, p2}, Lorg/bouncycastle/tls/TlsUtils;->validateCertificateType13(SS)S

    move-result p0

    return p0
.end method

.method static processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result p1

    if-ltz p1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/tls/MaxFragmentLength;->isValid(S)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    :goto_0
    return p1
.end method

.method static processServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/CertificateStatus;Lorg/bouncycastle/tls/TlsKeyExchange;Lorg/bouncycastle/tls/TlsAuthentication;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-nez p3, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lorg/bouncycastle/tls/TlsKeyExchange;->skipServerCredentials()V

    sget-object p1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    iput-object p1, p0, Lorg/bouncycastle/tls/SecurityParameters;->tlsServerEndPoint:[B

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x28

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object p0

    invoke-static {p0, p4, p5}, Lorg/bouncycastle/tls/TlsUtils;->checkTlsFeatures(Lorg/bouncycastle/tls/Certificate;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    if-nez v0, :cond_3

    invoke-interface {p2, p0}, Lorg/bouncycastle/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/tls/Certificate;)V

    :cond_3
    new-instance p2, Lorg/bouncycastle/tls/TlsServerCertificateImpl;

    invoke-direct {p2, p0, p1}, Lorg/bouncycastle/tls/TlsServerCertificateImpl;-><init>(Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/CertificateStatus;)V

    invoke-interface {p3, p2}, Lorg/bouncycastle/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/tls/TlsServerCertificate;)V

    return-void
.end method

.method static processServerCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getServerCertificateTypeExtensionServer(Ljava/util/Hashtable;)S

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tls/CertificateType;->isValid(S)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getServerCertificateTypeExtensionClient(Ljava/util/Hashtable;)[S

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/bouncycastle/tls/TlsUtils;->contains([SIIS)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p1, "Invalid selection for server_certificate_type"

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string p1, "Unknown value for server_certificate_type"

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method static processServerCertificateTypeExtension13(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->processServerCertificateTypeExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p0

    invoke-static {p0, p2}, Lorg/bouncycastle/tls/TlsUtils;->validateCertificateType13(SS)S

    move-result p0

    return p0
.end method

.method public static readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    const/16 v1, 0x32

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readAllOrNothing(ILjava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object p0

    :cond_0
    new-array v0, p0, [B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-ne p1, p0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readDERObject([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V

    return-object v0
.end method

.method static readEncryptedPMS(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isSSL(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/SSL3Utils;->readEncryptedPMS(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFully([BLjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    if-lez v0, :cond_1

    invoke-static {p1, p0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static readFully(ILjava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object p0

    :cond_0
    new-array v0, p0, [B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne p0, p1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readInt32([BI)I
    .locals 2

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readOpaque16(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readOpaque16(Ljava/io/InputStream;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readOpaque24(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readOpaque24(Ljava/io/InputStream;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readOpaque8(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readOpaque8(Ljava/io/InputStream;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readOpaque8(Ljava/io/InputStream;II)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    if-lt v0, p1, :cond_0

    if-lt p2, v0, :cond_0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readUint16(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readUint16([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readUint16Array(ILjava/io/InputStream;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static readUint24(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readUint24([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readUint32(Ljava/io/InputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readUint32([BI)J
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUint48(Ljava/io/InputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUint48([BI)J
    .locals 4

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint24([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint24([BI)I

    move-result p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x18

    shl-long/2addr v0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUint8(Ljava/io/InputStream;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readUint8([BI)S
    .locals 0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static readUint8Array(ILjava/io/InputStream;)[S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p0, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static readUint8ArrayWithUint8Length(Ljava/io/InputStream;I)[S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->get(II)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readVersion([BI)Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/ProtocolVersion;->get(II)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    return-object p0
.end method

.method static receive13ServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;Ljava/io/ByteArrayInputStream;Ljava/util/Hashtable;)Lorg/bouncycastle/tls/TlsAuthentication;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/bouncycastle/tls/Certificate$ParseOptions;

    invoke-direct {v0}, Lorg/bouncycastle/tls/Certificate$ParseOptions;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/tls/SecurityParameters;->getServerCertificateType()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->setCertificateType(S)Lorg/bouncycastle/tls/Certificate$ParseOptions;

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->getMaxCertificateChainLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->setMaxChainLength(I)Lorg/bouncycastle/tls/Certificate$ParseOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p2, v1}, Lorg/bouncycastle/tls/Certificate;->parse(Lorg/bouncycastle/tls/Certificate$ParseOptions;Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/Certificate;

    move-result-object p0

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/Certificate;->getCertificateRequestContext()[B

    move-result-object p2

    array-length p2, p2

    if-gtz p2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iput-object p0, p3, Lorg/bouncycastle/tls/SecurityParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    iput-object v1, p3, Lorg/bouncycastle/tls/SecurityParameters;->tlsServerEndPoint:[B

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/tls/TlsAuthentication;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static receiveServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsClient;Ljava/io/ByteArrayInputStream;Ljava/util/Hashtable;)Lorg/bouncycastle/tls/TlsAuthentication;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/tls/SecurityParameters;->getKeyExchangeAlgorithm()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/tls/KeyExchangeAlgorithm;->isAnonymous(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/tls/Certificate$ParseOptions;

    invoke-direct {v1}, Lorg/bouncycastle/tls/Certificate$ParseOptions;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/tls/SecurityParameters;->getServerCertificateType()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->setCertificateType(S)Lorg/bouncycastle/tls/Certificate$ParseOptions;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->getMaxCertificateChainLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->setMaxChainLength(I)Lorg/bouncycastle/tls/Certificate$ParseOptions;

    move-result-object v1

    invoke-static {v1, p0, p2, v0}, Lorg/bouncycastle/tls/Certificate;->parse(Lorg/bouncycastle/tls/Certificate$ParseOptions;Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/Certificate;

    move-result-object v1

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p3}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, v1}, Lorg/bouncycastle/tls/TlsUtils;->isSafeRenegotiationServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/Certificate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2e

    const-string p2, "Server certificate changed unsafely in renegotiation handshake"

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object v1, p3, Lorg/bouncycastle/tls/SecurityParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, p3, Lorg/bouncycastle/tls/SecurityParameters;->tlsServerEndPoint:[B

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/tls/TlsAuthentication;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_4
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static requireAgreementCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedAgreement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static requireDecryptorCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedDecryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static requireSignerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/tls/TlsCredentialedSigner;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/tls/TlsCredentialedSigner;

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static retainAll([S[S)[S
    .locals 5

    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-short v3, p1, v1

    invoke-static {p0, v3}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-short v4, p1, v1

    aput-short v4, v0, v2

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v2}, Lorg/bouncycastle/tls/TlsUtils;->truncate([SI)[S

    move-result-object p0

    return-object p0
.end method

.method static selectKeyShare(Ljava/util/Vector;I)Lorg/bouncycastle/tls/KeyShareEntry;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/tls/KeyShareEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/KeyShareEntry;->getNamedGroup()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static selectKeyShare(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/ProtocolVersion;Ljava/util/Vector;[I[I)Lorg/bouncycastle/tls/KeyShareEntry;
    .locals 4

    if-eqz p2, :cond_7

    invoke-static {p3}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p4}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([I)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tls/KeyShareEntry;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/KeyShareEntry;->getNamedGroup()I

    move-result v2

    invoke-static {v2, p1}, Lorg/bouncycastle/tls/NamedGroup;->canBeNegotiated(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p4, v2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p3, v2}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasNamedGroup(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnECDHCurve(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasECDHAgreement()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    invoke-static {v2}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificFiniteField(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasDHAgreement()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    invoke-static {v2}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificKem(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasKemAgreement()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method static selectKeyShareGroup(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/ProtocolVersion;[I[I)I
    .locals 3

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p3}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([I)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_7

    aget v1, p2, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/NamedGroup;->canBeNegotiated(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3, v1}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasNamedGroup(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnECDHCurve(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasECDHAgreement()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-static {v1}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificFiniteField(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasDHAgreement()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {v1}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificKem(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->hasKemAgreement()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method static selectPreSharedKey(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/TlsServer;Ljava/util/Hashtable;Lorg/bouncycastle/tls/HandshakeMessageInput;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getPreSharedKeyClientHello(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/OfferedPsks;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getPSKKeyExchangeModesExtension(Ljava/util/Hashtable;)[S

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([S)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/OfferedPsks;->getIdentities()Ljava/util/Vector;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/tls/TlsServer;->getExternalPSK(Ljava/util/Vector;)Lorg/bouncycastle/tls/TlsPSKExternal;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v2, Lorg/bouncycastle/tls/PskIdentity;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsPSKExternal;->getIdentity()[B

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/tls/PskIdentity;-><init>([BJ)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/tls/OfferedPsks;->getIndexOfIdentity(Lorg/bouncycastle/tls/PskIdentity;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/OfferedPsks;->getBinders()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServerContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->getPSKEarlySecret(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/TlsPSK;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v4

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsPSKExternal;->getPRFAlgorithm()I

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHashForPRF(I)I

    move-result v5

    invoke-virtual {v0}, Lorg/bouncycastle/tls/OfferedPsks;->getBindersSize()I

    move-result v0

    invoke-virtual {p3, p4, v0}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHashPrefix(Lorg/bouncycastle/tls/crypto/TlsHash;I)V

    if-eqz p5, :cond_0

    invoke-interface {p4, v5}, Lorg/bouncycastle/tls/TlsHandshakeHash;->getFinalHash(I)[B

    move-result-object p5

    goto :goto_0

    :cond_0
    invoke-interface {p0, v5}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p5

    new-instance v6, Lorg/bouncycastle/tls/crypto/TlsHashOutputStream;

    invoke-direct {v6, p5}, Lorg/bouncycastle/tls/crypto/TlsHashOutputStream;-><init>(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    invoke-interface {p4, v6}, Lorg/bouncycastle/tls/TlsHandshakeHash;->copyBufferTo(Ljava/io/OutputStream;)V

    invoke-interface {p5}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p5

    :goto_0
    invoke-virtual {p3, p4, v0}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHashSuffix(Lorg/bouncycastle/tls/crypto/TlsHash;I)V

    invoke-static {p0, v1, v5, v4, p5}, Lorg/bouncycastle/tls/TlsUtils;->calculatePSKBinder(Lorg/bouncycastle/tls/crypto/TlsCrypto;ZILorg/bouncycastle/tls/crypto/TlsSecret;[B)[B

    move-result-object p0

    invoke-static {p0, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;

    invoke-direct {p0, v2, p1, p2, v4}, Lorg/bouncycastle/tls/OfferedPsks$SelectedConfig;-><init>(ILorg/bouncycastle/tls/TlsPSK;[SLorg/bouncycastle/tls/crypto/TlsSecret;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x6d

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    invoke-virtual {p3, p4}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static sendSignatureInput(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/DigestInputBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerRandom()[B

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/OutputStream;->write([B)V

    if-eqz p1, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-virtual {p2, p3}, Lorg/bouncycastle/tls/DigestInputBuffer;->copyInputTo(Ljava/io/OutputStream;)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method static skip13ServerCertificate(Lorg/bouncycastle/tls/TlsClientContext;)Lorg/bouncycastle/tls/TlsAuthentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->tlsServerEndPoint:[B

    return-object v0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static trackHashAlgorithmClient(Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-interface {p0, p1}, Lorg/bouncycastle/tls/TlsHandshakeHash;->trackHashAlgorithm(I)V

    :cond_0
    return-void
.end method

.method static trackHashAlgorithms(Lorg/bouncycastle/tls/TlsHandshakeHash;Ljava/util/Vector;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    invoke-static {v1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-interface {p0, v2}, Lorg/bouncycastle/tls/TlsHandshakeHash;->trackHashAlgorithm(I)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v1

    if-ne v2, v1, :cond_1

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsHandshakeHash;->forceBuffering()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static truncate([II)[I
    .locals 2

    array-length v0, p0

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    new-array v0, p1, [I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static truncate([SI)[S
    .locals 2

    array-length v0, p0

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    new-array v0, p1, [S

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static update13TrafficSecret(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFCryptoHashAlgorithm()I

    move-result v0

    sget-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFHashLength()I

    move-result p0

    const-string v2, "traffic upd"

    invoke-static {p1, v0, v2, v1, p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->hkdfExpandLabel(Lorg/bouncycastle/tls/crypto/TlsSecret;ILjava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    return-object p0
.end method

.method private static update13TrafficSecret(Lorg/bouncycastle/tls/TlsContext;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getTrafficSecretServer()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->update13TrafficSecret(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->trafficSecretServer:Lorg/bouncycastle/tls/crypto/TlsSecret;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getTrafficSecretClient()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->update13TrafficSecret(Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/SecurityParameters;->trafficSecretClient:Lorg/bouncycastle/tls/crypto/TlsSecret;

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    :cond_1
    return-void
.end method

.method static update13TrafficSecretLocal(Lorg/bouncycastle/tls/TlsContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->isServer()Z

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->update13TrafficSecret(Lorg/bouncycastle/tls/TlsContext;Z)V

    return-void
.end method

.method static update13TrafficSecretPeer(Lorg/bouncycastle/tls/TlsContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->isServer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->update13TrafficSecret(Lorg/bouncycastle/tls/TlsContext;Z)V

    return-void
.end method

.method static validate13Credentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/tls/TlsCredentialedSigner;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/tls/TlsCredentialedSigner;

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static validateCertificateRequest(Lorg/bouncycastle/tls/CertificateRequest;Lorg/bouncycastle/tls/TlsKeyExchange;)Lorg/bouncycastle/tls/CertificateRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->getClientCertificateTypes()[S

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([S)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->normalizeCertificateRequest(Lorg/bouncycastle/tls/CertificateRequest;[S)Lorg/bouncycastle/tls/CertificateRequest;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method private static validateCertificateType13(SS)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq v0, p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string v0, "The OpenPGP certificate type MUST NOT be used with TLS 1.3"

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method static validateCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    instance-of v1, p0, Lorg/bouncycastle/tls/TlsCredentialedDecryptor;

    add-int/2addr v0, v1

    instance-of v1, p0, Lorg/bouncycastle/tls/TlsCredentialedSigner;

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static verify13CertificateVerify(Ljava/util/Vector;Ljava/lang/String;Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/crypto/TlsCertificate;Lorg/bouncycastle/tls/CertificateVerify;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x33

    :try_start_0
    invoke-virtual {p4}, Lorg/bouncycastle/tls/CertificateVerify;->getAlgorithm()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/tls/SignatureScheme;->getSignatureAndHashAlgorithm(I)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/bouncycastle/tls/TlsUtils;->verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    invoke-interface {p3, v1}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->createVerifier(I)Lorg/bouncycastle/tls/crypto/Tls13Verifier;

    move-result-object p0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->getCertificateVerifyHeader(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->getCurrentPRFHash(Lorg/bouncycastle/tls/TlsHandshakeHash;)[B

    move-result-object p2

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/Tls13Verifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p3, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    array-length p1, p2

    invoke-virtual {p3, p2, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p4}, Lorg/bouncycastle/tls/CertificateVerify;->getSignature()[B

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/tls/crypto/Tls13Verifier;->verifySignature([B)Z

    move-result p0
    :try_end_0
    .catch Lorg/bouncycastle/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method static verify13CertificateVerifyClient(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/CertificateVerify;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgs()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p0

    const-string v1, "TLS 1.3, client CertificateVerify"

    invoke-static {v0, v1, p1, p0, p2}, Lorg/bouncycastle/tls/TlsUtils;->verify13CertificateVerify(Ljava/util/Vector;Ljava/lang/String;Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/crypto/TlsCertificate;Lorg/bouncycastle/tls/CertificateVerify;)V

    return-void
.end method

.method static verify13CertificateVerifyServer(Lorg/bouncycastle/tls/TlsClientContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/CertificateVerify;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsClientContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgs()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p0

    const-string v1, "TLS 1.3, server CertificateVerify"

    invoke-static {v0, v1, p1, p0, p2}, Lorg/bouncycastle/tls/TlsUtils;->verify13CertificateVerify(Ljava/util/Vector;Ljava/lang/String;Lorg/bouncycastle/tls/TlsHandshakeHash;Lorg/bouncycastle/tls/crypto/TlsCertificate;Lorg/bouncycastle/tls/CertificateVerify;)V

    return-void
.end method

.method static verifyCertificateVerifyClient(Lorg/bouncycastle/tls/TlsServerContext;Lorg/bouncycastle/tls/CertificateRequest;Lorg/bouncycastle/tls/DigitallySigned;Lorg/bouncycastle/tls/TlsHandshakeHash;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsServerContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getLegacySignatureAlgorithm()S

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsUtils;->getLegacyClientCertType(S)S

    move-result v4

    const/16 v5, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getServerSigAlgs()Ljava/util/Vector;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/bouncycastle/tls/TlsUtils;->verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/tls/SignatureAlgorithm;->getClientCertificateType(S)S

    move-result v4

    const/16 v5, 0x2f

    :goto_0
    invoke-static {p1, v4, v5}, Lorg/bouncycastle/tls/TlsUtils;->checkClientCertificateType(Lorg/bouncycastle/tls/CertificateRequest;SS)V

    const/16 p1, 0x33

    :try_start_0
    invoke-interface {v1, v3}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->createVerifier(S)Lorg/bouncycastle/tls/crypto/TlsVerifier;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/bouncycastle/tls/crypto/TlsVerifier;->getStreamVerifier(Lorg/bouncycastle/tls/DigitallySigned;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-interface {p3, p0}, Lorg/bouncycastle/tls/TlsHandshakeHash;->copyBufferTo(Ljava/io/OutputStream;)V

    invoke-interface {v3}, Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;->isVerified()Z

    move-result p0

    goto :goto_2

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v2}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result p0

    invoke-interface {p3, p0}, Lorg/bouncycastle/tls/TlsHandshakeHash;->getFinalHash(I)[B

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionHash()[B

    move-result-object p0

    :goto_1
    invoke-interface {v1, p2, p0}, Lorg/bouncycastle/tls/crypto/TlsVerifier;->verifyRawSignature(Lorg/bouncycastle/tls/DigitallySigned;[B)Z

    move-result p0
    :try_end_0
    .catch Lorg/bouncycastle/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p2, p1, p0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    throw p0
.end method

.method static verifyServerKeyExchangeSignature(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Lorg/bouncycastle/tls/crypto/TlsCertificate;[BLorg/bouncycastle/tls/DigestInputBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/DigitallySigned;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/DigitallySigned;

    move-result-object p1

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getKeyExchangeAlgorithm()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->getLegacySignatureAlgorithmServer(I)S

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v3

    invoke-static {v3, v1}, Lorg/bouncycastle/tls/TlsUtils;->isValidSignatureAlgorithmForServerKeyExchange(SI)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSigAlgs()Ljava/util/Vector;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/tls/TlsUtils;->verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V

    move v0, v3

    :goto_0
    invoke-interface {p2, v0}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->createVerifier(S)Lorg/bouncycastle/tls/crypto/TlsVerifier;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/bouncycastle/tls/crypto/TlsVerifier;->getStreamVerifier(Lorg/bouncycastle/tls/DigitallySigned;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p0, p3, p4, p1}, Lorg/bouncycastle/tls/TlsUtils;->sendSignatureInput(Lorg/bouncycastle/tls/TlsContext;[BLorg/bouncycastle/tls/DigestInputBuffer;Ljava/io/OutputStream;)V

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;->isVerified()Z

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p0, v2, p3, p4}, Lorg/bouncycastle/tls/TlsUtils;->calculateSignatureHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[BLorg/bouncycastle/tls/DigestInputBuffer;)[B

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lorg/bouncycastle/tls/crypto/TlsVerifier;->verifyRawSignature(Lorg/bouncycastle/tls/DigitallySigned;[B)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x33

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2f

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;S)V

    return-void
.end method

.method static verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->containsSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'signatureAlgorithm\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static writeDowngradeMarker(Lorg/bouncycastle/tls/ProtocolVersion;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    if-ne v0, p0, :cond_0

    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->DOWNGRADE_TLS12:[B

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/bouncycastle/tls/TlsUtils;->DOWNGRADE_TLS11:[B

    :goto_0
    array-length v0, p1

    array-length v1, p0

    sub-int/2addr v0, v1

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method static writeEncryptedPMS(Lorg/bouncycastle/tls/TlsContext;[BLjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isSSL(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/SSL3Utils;->writeEncryptedPMS([BLjava/io/OutputStream;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method public static writeGMTUnixTime([BI)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    ushr-int/lit8 v0, v1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte v0, v1

    aput-byte v0, p0, p1

    return-void
.end method

.method public static writeOpaque16([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeOpaque16([B[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    array-length v0, p0

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    add-int/lit8 p2, p2, 0x2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static writeOpaque24([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint24(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeOpaque24([B[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint24(I)V

    array-length v0, p0

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint24(I[BI)V

    add-int/lit8 p2, p2, 0x3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static writeOpaque8([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint8(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeOpaque8([B[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint8(I)V

    array-length v0, p0

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(I[BI)V

    add-int/lit8 p2, p2, 0x1

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static writeUint16(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint16(I[BI)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeUint16Array([ILjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint16Array([I[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    return-void
.end method

.method public static writeUint16ArrayWithUint16Length([I[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    add-int/lit8 p2, p2, 0x2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16Array([I[BI)V

    return-void
.end method

.method public static writeUint16ArrayWithUint8Length([I[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint8(I)V

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(I[BI)V

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16Array([I[BI)V

    return-void
.end method

.method public static writeUint24(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint24(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x2

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeUint32(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p0

    int-to-byte p0, p1

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint32(J[BI)V
    .locals 3

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    long-to-int p1, p0

    int-to-byte p0, p1

    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeUint48(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p0

    int-to-byte p0, p1

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint48(J[BI)V
    .locals 3

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x5

    long-to-int p1, p0

    int-to-byte p0, p1

    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeUint64(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p0

    int-to-byte p0, p1

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint64(J[BI)V
    .locals 3

    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x7

    long-to-int p1, p0

    int-to-byte p0, p1

    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeUint8(ILjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint8(I[BI)V
    .locals 0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeUint8(SLjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint8(S[BI)V
    .locals 0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeUint8Array([SLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-short v1, p0, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint8Array([S[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-short v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(S[BI)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint8(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([S[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint8(I)V

    array-length v0, p0

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(I[BI)V

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8Array([S[BI)V

    return-void
.end method

.method public static writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;[BI)V
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/ProtocolVersion;->getMinorVersion()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method
