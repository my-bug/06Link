.class public Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;
.super Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartyV"
.end annotation


# instance fields
.field private encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/KEMParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V

    instance-of p2, p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    if-eqz p2, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;

    invoke-direct {p1, p5}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;

    return-void

    :cond_0
    instance-of p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;

    invoke-direct {p1, p5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

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
.method public generate()Lorg/bouncycastle/crypto/util/DEROtherInfo;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->used:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->used:Z

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->build()Lorg/bouncycastle/crypto/util/DEROtherInfo;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "builder already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuppPrivInfoPartB([B)[B
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->used:Z

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;

    # invokes: Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->getPublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->access$100([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->withSuppPrivInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot decode public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withSuppPubInfo([B)Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->withSuppPubInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    return-object p0
.end method
