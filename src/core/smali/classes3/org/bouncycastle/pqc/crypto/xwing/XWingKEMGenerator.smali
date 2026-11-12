.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->sr:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 9

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getKyberPublicKey()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->getAgreementSize()I

    move-result v4

    add-int/2addr v3, v4

    new-array v4, v3, [B

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    new-instance v5, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    new-instance v7, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v5, v7}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getXDHPublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v7

    array-length v2, v2

    invoke-virtual {v1, v7, v4, v2}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v5, 0x100

    invoke-direct {v2, v5}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    const-string v5, "\\.//^\\"

    invoke-static {v5}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x6

    invoke-virtual {v2, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v2, v4, v6, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v6, v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getXDHPublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v2, p1, v6, v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    new-array p1, v4, [B

    invoke-virtual {v2, p1, v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v2
.end method
