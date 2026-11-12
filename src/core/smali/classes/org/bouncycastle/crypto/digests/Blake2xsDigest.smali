.class public Lorg/bouncycastle/crypto/digests/Blake2xsDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Xof;


# static fields
.field private static final DIGEST_LENGTH:I = 0x20

.field private static final MAX_NUMBER_BLOCKS:J = 0x100000000L

.field public static final UNKNOWN_DIGEST_LENGTH:I = 0xffff


# instance fields
.field private blockPos:J

.field private buf:[B

.field private bufPos:I

.field private digestLength:I

.field private digestPos:I

.field private h0:[B

.field private hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

.field private nodeOffset:J

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0xffff

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;-><init>(I[B[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 6

    const/4 v4, 0x0

    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;-><init>(I[B[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(I[B[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->computeNodeOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    iput-object p5, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    new-instance v2, Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    const/16 v3, 0x20

    iget-wide v7, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>(I[B[B[BJLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BLAKE2xs digest length must be between 1 and 2^16-1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Blake2xsDigest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    new-instance v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>(Lorg/bouncycastle/crypto/digests/Blake2sDigest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    iget-object p1, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-void
.end method

.method private computeNodeOffset()J
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    int-to-long v0, v0

    const-wide v2, 0x100000000L

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private computeStepLength()I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    const v1, 0xffff

    const/16 v2, 0x20

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->doFinal([BII)I

    move-result p1

    return p1
.end method

.method public doFinal([BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->doOutput([BII)I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->reset()V

    return p1
.end method

.method public doOutput([BII)I
    .locals 7

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->doFinal([BI)I

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    const v2, 0xffff

    if-eq v0, v2, :cond_2

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    add-int/2addr v2, p3

    if-gt v2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output length is above the digest length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    const/4 v0, 0x5

    shl-long/2addr v2, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->getUnknownMaxLength()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_4

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    new-instance v2, Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->computeStepLength()I

    move-result v4

    iget-wide v5, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    invoke-direct {v2, v4, v3, v5, v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>(IIJ)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    array-length v4, v3

    invoke-virtual {v2, v3, v1, v4}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    invoke-static {v3, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->doFinal([BI)I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    :cond_3
    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v2

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return p3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum length is 2^32 blocks of 32 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "BLAKE2xs"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    return v0
.end method

.method public getUnknownMaxLength()J
    .locals 2

    const-wide v0, 0x2000000000L

    return-wide v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->computeNodeOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update([BII)V

    return-void
.end method
