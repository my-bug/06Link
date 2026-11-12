.class public Lorg/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private final defHash:[B

.field private final engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private final mgf1Hash:Lorg/bouncycastle/crypto/Digest;

.field private final mgf1NoMemoLimit:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-static {p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getMGF1NoMemoLimit(Lorg/bouncycastle/crypto/Digest;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1NoMemoLimit:I

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    const/4 p3, 0x0

    if-eqz p4, :cond_0

    array-length v0, p4

    invoke-interface {p2, p4, p3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    invoke-interface {p2, p1, p3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method private static getMGF1NoMemoLimit(Lorg/bouncycastle/crypto/Digest;)I
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/util/Memoable;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0
.end method

.method private maskGeneratorFunction1([BII[BII)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x4

    new-array v3, v2, [B

    add-int/2addr p6, p5

    sub-int v4, p6, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1NoMemoLimit:I

    const/4 v6, 0x0

    if-le p3, v5, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    check-cast p1, Lorg/bouncycastle/util/Memoable;

    invoke-interface {p1}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    if-ge p5, v4, :cond_2

    add-int/lit8 v5, p3, 0x1

    invoke-static {p3, v3, v6}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p3, v3, v6, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p3, v1, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-interface {p1, p2}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    invoke-static {v0, v1, v6, p4, p5}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    add-int/2addr p5, v0

    move p3, v5

    goto :goto_0

    :cond_0
    move v5, p5

    const/4 p5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    add-int/lit8 v7, p5, 0x1

    invoke-static {p5, v3, v6}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object p5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p5, v3, v6, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p5, v1, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {v0, v1, v6, p4, v5}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    add-int/2addr v5, v0

    move p5, v7

    goto :goto_1

    :cond_1
    move p3, p5

    move p5, v5

    :cond_2
    invoke-static {p3, v3, v6}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v3, v6, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v1, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    sub-int/2addr p6, p5

    invoke-static {p6, v1, v6, p4, p5}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    return-void
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getOutputBlockSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v3, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    array-length p2, p1

    sub-int p2, v1, p2

    or-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x1f

    array-length p3, p1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    sub-int v0, v1, p3

    const/4 v9, 0x0

    invoke-static {p1, v9, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v9}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, p1

    array-length p3, p1

    sub-int v5, v1, p3

    const/4 v7, 0x0

    array-length v8, p1

    move-object v6, v3

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    iget-object p1, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, p1

    array-length v7, p1

    array-length p1, p1

    sub-int v8, v1, p1

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    const/4 p1, 0x0

    :goto_0
    iget-object p3, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v0, p3

    if-eq p1, v0, :cond_0

    aget-byte v0, p3, p1

    array-length p3, p3

    add-int/2addr p3, p1

    aget-byte p3, v3, p3

    xor-int/2addr p3, v0

    or-int/2addr p2, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p3

    mul-int/lit8 p1, p1, 0x2

    const/4 p3, -0x1

    :goto_1
    if-eq p1, v1, :cond_1

    aget-byte v0, v3, p1

    and-int/lit16 v0, v0, 0xff

    neg-int v0, v0

    and-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x1f

    and-int/2addr v0, p1

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    shr-int/lit8 p1, p3, 0x1f

    or-int/2addr p1, p2

    add-int/lit8 p2, p3, 0x1

    aget-byte p2, v3, p2

    xor-int/lit8 p2, p2, 0x1

    or-int/2addr p1, p2

    if-nez p1, :cond_2

    add-int/lit8 p3, p3, 0x2

    sub-int/2addr v1, p3

    new-array p1, v1, [B

    invoke-static {v3, p3, p1, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v9}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object p1

    :cond_2
    invoke-static {v3, v9}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data wrong"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public encodeBlock([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v3, v0, [B

    sub-int v2, v0, p3

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v1

    aput-byte v1, v3, v2

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p2, p1

    array-length p3, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v3, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, p1

    move-object v6, v3

    new-array v3, v5, [B

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p1, p1

    invoke-static {v3, v1, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, p1

    array-length p1, p1

    sub-int v8, v0, p1

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    iget-object p1, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, p1

    array-length p2, p1

    sub-int v5, v0, p2

    const/4 v7, 0x0

    array-length v8, p1

    move-object v3, v6

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    iget-object p1, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p1, v6, v1, v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    move-object v2, p0

    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input data too long"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBlock([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object p1

    return-object p1
.end method
