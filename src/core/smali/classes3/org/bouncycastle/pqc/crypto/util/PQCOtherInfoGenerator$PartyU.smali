.class public Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;
.super Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartyU"
.end annotation


# instance fields
.field private aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

.field private encSE:Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/KEMParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V

    instance-of p2, p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    if-eqz p2, :cond_0

    new-instance p2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;-><init>()V

    new-instance p3, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-direct {p3, p5, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->encSE:Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;

    return-void

    :cond_0
    instance-of p2, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    if-eqz p2, :cond_1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;-><init>()V

    new-instance p3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    invoke-direct {p3, p5, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown KEMParameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public generate([B)Lorg/bouncycastle/crypto/util/DEROtherInfo;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->encSE:Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;->extractSecret([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->withSuppPrivInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->build()Lorg/bouncycastle/crypto/util/DEROtherInfo;

    move-result-object p1

    return-object p1
.end method

.method public getSuppPrivInfoPartA()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    # invokes: Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->getEncoded(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->access$000(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0
.end method

.method public withSuppPubInfo([B)Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->withSuppPubInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    return-object p0
.end method
