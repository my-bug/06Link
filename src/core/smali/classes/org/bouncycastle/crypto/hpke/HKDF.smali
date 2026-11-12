.class Lorg/bouncycastle/crypto/hpke/HKDF;
.super Ljava/lang/Object;


# static fields
.field private static final versionLabel:Ljava/lang/String; = "HPKE-v1"


# instance fields
.field private final hashLength:I

.field private final kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;


# direct methods
.method constructor <init>(S)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid kdf id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    :goto_0
    new-instance v0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    return-void
.end method


# virtual methods
.method protected Expand([B[BI)[B
    .locals 1

    const/high16 v0, 0x10000

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExtractParameters([B[B)Lorg/bouncycastle/crypto/params/HKDFParameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    new-array p1, p3, [B

    iget-object p2, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expand length cannot be larger than 2^16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected Extract([B[B)[B
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    new-array p1, p1, [B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->extractPRK([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected LabeledExpand([B[BLjava/lang/String;[BI)[B
    .locals 2

    const/high16 v0, 0x10000

    if-gt p5, v0, :cond_0

    int-to-short v0, p5

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v0

    const-string v1, "HPKE-v1"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {v0, v1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-static {p2, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExtractParameters([B[B)Lorg/bouncycastle/crypto/params/HKDFParameters;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    new-array p1, p5, [B

    iget-object p2, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p5}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expand length cannot be larger than 2^16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected LabeledExtract([B[BLjava/lang/String;[B)[B
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    new-array p1, p1, [B

    :cond_0
    const-string v0, "HPKE-v1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {v0, p2, p3, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->extractPRK([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method getHashSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    return v0
.end method
