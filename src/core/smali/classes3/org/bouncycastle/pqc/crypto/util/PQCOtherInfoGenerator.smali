.class public Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;,
        Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;
    }
.end annotation


# instance fields
.field protected final otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

.field protected final random:Ljava/security/SecureRandom;

.field protected used:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->used:Z

    new-instance v0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->getEncoded(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->getPublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0
.end method

.method private static getEncoded(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 0

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/SubjectPublicKeyInfoFactory;->createSubjectPublicKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->createKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0
.end method
