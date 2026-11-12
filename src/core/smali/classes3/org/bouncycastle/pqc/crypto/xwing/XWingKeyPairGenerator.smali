.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;->random:Ljava/security/SecureRandom;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_768:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    new-instance v1, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method
