.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsKemDomain;


# instance fields
.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field protected final isServer:Z

.field protected final kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsKemConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/crypto/TlsKemConfig;->getNamedGroup()I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->getKyberParameters(I)Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/crypto/TlsKemConfig;->isServer()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->isServer:Z

    return-void
.end method

.method protected static getKyberParameters(I)Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;
    .locals 1

    const/16 v0, 0x768

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1024

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_512:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    return-object p0

    :cond_0
    :pswitch_1
    sget-object p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_1024:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    return-object p0

    :cond_1
    :pswitch_2
    sget-object p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_768:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x247
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1

    return-object p1
.end method

.method public createKem()Lorg/bouncycastle/tls/crypto/TlsAgreement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKem;

    invoke-direct {v0, p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKem;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;)V

    return-object v0
.end method

.method public decapsulate(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;[B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->extractSecret([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey([B)Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B)V

    return-object v0
.end method

.method public encapsulate(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;)[B
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getEncoded()[B

    move-result-object p1

    return-object p1
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->kyberParameters:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public isServer()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsMLKemDomain;->isServer:Z

    return v0
.end method
