.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private encodedkey:[B

.field private nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    new-array v3, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    array-length v6, p1

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign(Z[B[BII[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result p1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getEncoded()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    new-instance p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result p2

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {p1, v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    return-void

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getH()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    new-instance p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result p2

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {p1, v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 10

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    new-array v5, v1, [B

    array-length v1, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    sub-int/2addr v1, v2

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    new-array v4, v1, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    invoke-static {p2, v9, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/2addr v1, v9

    array-length v2, p2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v9

    invoke-static {p2, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign_open(Z[B[B[B[BI)I

    move-result p1

    if-nez p1, :cond_1

    return v9

    :cond_1
    return v0
.end method
