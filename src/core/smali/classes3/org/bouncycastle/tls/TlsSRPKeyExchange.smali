.class public Lorg/bouncycastle/tls/TlsSRPKeyExchange;
.super Lorg/bouncycastle/tls/AbstractTlsKeyExchange;


# instance fields
.field protected serverCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

.field protected serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedSigner;

.field protected srpClient:Lorg/bouncycastle/tls/crypto/TlsSRP6Client;

.field protected srpConfigVerifier:Lorg/bouncycastle/tls/TlsSRPConfigVerifier;

.field protected srpIdentity:Lorg/bouncycastle/tls/TlsSRPIdentity;

.field protected srpLoginParameters:Lorg/bouncycastle/tls/TlsSRPLoginParameters;

.field protected srpPeerCredentials:Ljava/math/BigInteger;

.field protected srpSalt:[B

.field protected srpServer:Lorg/bouncycastle/tls/crypto/TlsSRP6Server;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/tls/TlsSRPIdentity;Lorg/bouncycastle/tls/TlsSRPConfigVerifier;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->checkKeyExchange(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsKeyExchange;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->serverCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpSalt:[B

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/tls/crypto/TlsSRP6Client;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedSigner;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpServer:Lorg/bouncycastle/tls/crypto/TlsSRP6Server;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpIdentity:Lorg/bouncycastle/tls/TlsSRPIdentity;

    iput-object p3, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpConfigVerifier:Lorg/bouncycastle/tls/TlsSRPConfigVerifier;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/tls/TlsSRPLoginParameters;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->checkKeyExchange(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/AbstractTlsKeyExchange;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->serverCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpSalt:[B

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/tls/crypto/TlsSRP6Client;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedSigner;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpServer:Lorg/bouncycastle/tls/crypto/TlsSRP6Server;

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpLoginParameters:Lorg/bouncycastle/tls/TlsSRPLoginParameters;

    return-void
.end method

.method private static checkKeyExchange(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported key exchange algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    return p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpIdentity:Lorg/bouncycastle/tls/TlsSRPIdentity;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsSRPIdentity;->getSRPIdentity()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpIdentity:Lorg/bouncycastle/tls/TlsSRPIdentity;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsSRPIdentity;->getSRPPassword()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/tls/crypto/TlsSRP6Client;

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpSalt:[B

    invoke-interface {v2, v3, v0, v1}, Lorg/bouncycastle/tls/crypto/TlsSRP6Client;->generateClientCredentials([B[B[B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/TlsSRPUtils;->writeSRPParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p1

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/tls/SecurityParameters;->srpIdentity:[B

    return-void
.end method

.method public generatePreMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpServer:Lorg/bouncycastle/tls/crypto/TlsSRP6Server;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsSRP6Server;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/tls/crypto/TlsSRP6Client;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsSRP6Client;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createSecret([B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    return-object v0
.end method

.method public generateServerKeyExchange()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpLoginParameters:Lorg/bouncycastle/tls/TlsSRPLoginParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->getConfig()Lorg/bouncycastle/tls/crypto/TlsSRPConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpLoginParameters:Lorg/bouncycastle/tls/TlsSRPLoginParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->getVerifier()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createSRP6Server(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;Ljava/math/BigInteger;)Lorg/bouncycastle/tls/crypto/TlsSRP6Server;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpServer:Lorg/bouncycastle/tls/crypto/TlsSRP6Server;

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsSRP6Server;->generateServerCredentials()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;->getExplicitNG()[Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/tls/ServerSRPParams;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpLoginParameters:Lorg/bouncycastle/tls/TlsSRPLoginParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->getSalt()[B

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/bouncycastle/tls/ServerSRPParams;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;)V

    new-instance v0, Lorg/bouncycastle/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/bouncycastle/tls/DigestInputBuffer;-><init>()V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/tls/ServerSRPParams;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedSigner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedSigner;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/tls/TlsUtils;->generateServerKeyExchangeSignature(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsCredentialedSigner;[BLorg/bouncycastle/tls/DigestInputBuffer;)V

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public processClientCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V
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

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpLoginParameters:Lorg/bouncycastle/tls/TlsSRPLoginParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->getConfig()Lorg/bouncycastle/tls/crypto/TlsSRPConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;->getExplicitNG()[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsSRPUtils;->readSRPParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpLoginParameters:Lorg/bouncycastle/tls/TlsSRPLoginParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->getIdentity()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/tls/SecurityParameters;->srpIdentity:[B

    return-void
.end method

.method public processServerCertificate(Lorg/bouncycastle/tls/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->keyExchange:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->serverCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->keyExchange:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->requireSignerCredentials(Lorg/bouncycastle/tls/TlsCredentials;)Lorg/bouncycastle/tls/TlsCredentialedSigner;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/bouncycastle/tls/TlsCredentialedSigner;

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->keyExchange:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/bouncycastle/tls/DigestInputBuffer;-><init>()V

    new-instance v1, Lorg/bouncycastle/util/io/TeeInputStream;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    move-object v0, v2

    :goto_0
    invoke-static {v1}, Lorg/bouncycastle/tls/ServerSRPParams;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/ServerSRPParams;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->serverCertificate:Lorg/bouncycastle/tls/crypto/TlsCertificate;

    invoke-static {v3, p1, v4, v2, v0}, Lorg/bouncycastle/tls/TlsUtils;->verifyServerKeyExchangeSignature(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Lorg/bouncycastle/tls/crypto/TlsCertificate;[BLorg/bouncycastle/tls/DigestInputBuffer;)V

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;

    invoke-direct {p1}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ServerSRPParams;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ServerSRPParams;->getG()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {p1, v3}, Lorg/bouncycastle/tls/crypto/TlsSRPConfig;->setExplicitNG([Ljava/math/BigInteger;)V

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpConfigVerifier:Lorg/bouncycastle/tls/TlsSRPConfigVerifier;

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsSRPConfigVerifier;->accept(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ServerSRPParams;->getS()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpSalt:[B

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ServerSRPParams;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ServerSRPParams;->getB()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createSRP6Client(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;)Lorg/bouncycastle/tls/crypto/TlsSRP6Client;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/tls/crypto/TlsSRP6Client;

    return-void

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x47

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;->keyExchange:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
