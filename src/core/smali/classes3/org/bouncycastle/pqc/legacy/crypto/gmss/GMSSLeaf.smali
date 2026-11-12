.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
.super Ljava/lang/Object;


# instance fields
.field private concHashs:[B

.field private gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

.field private i:I

.field private j:I

.field private keysize:I

.field private leaf:[B

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field privateKeyOTS:[B

.field private seed:[B

.field private steps:I

.field private two_power_w:I

.field private w:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/Digest;II)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    int-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    shl-int v0, p1, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result v0

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    shl-int p2, v1, p2

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    sub-int/2addr p2, v1

    mul-int p2, p2, p1

    add-int/2addr p2, v1

    add-int/2addr p2, p1

    int-to-double p1, p2

    int-to-double v0, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int p1, p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;II[B)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    int-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    shl-int v0, p1, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result v0

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    shl-int p2, v1, p2

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    sub-int/2addr p2, v1

    mul-int p2, p2, p1

    add-int/2addr p2, v1

    add-int/2addr p2, p1

    int-to-double p1, p2

    int-to-double v0, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int p1, p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    invoke-virtual {p0, p4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget v1, p3, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    const/4 v1, 0x1

    aget v2, p3, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    const/4 v2, 0x2

    aget v3, p3, v2

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    const/4 v3, 0x3

    aget p3, p3, v3

    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p1, p3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/2addr p1, v3

    int-to-double v4, p1

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    int-to-double v6, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p1, v4

    iget p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    shl-int p3, p1, p3

    add-int/2addr p3, v1

    invoke-direct {p0, p3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result p3

    int-to-double v4, p3

    iget p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    int-to-double v6, p3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p3, v4

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    shl-int p1, v1, p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    aget-object p1, p2, v0

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    aget-object p1, p2, v1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    aget-object p1, p2, v2

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    aget-object p1, p2, v3

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    return-void
.end method

.method private getLog(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private updateLeafCalc()V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    add-int/lit16 v3, v3, 0x2710

    if-ge v2, v3, :cond_4

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void

    :cond_0
    if-eqz v3, :cond_2

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    array-length v5, v4

    invoke-interface {v3, v4, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    add-int/lit8 v6, v6, -0x1

    mul-int v6, v6, v5

    invoke-static {v3, v1, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to updateLeaf in steps: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public getLeaf()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    const/4 v4, 0x4

    new-array v4, v4, [[B

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    return-object v4
.end method

.method public getStatInt()[I
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    return-object v0
.end method

.method initLeafCalc([B)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    array-length v2, v2

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    return-void
.end method

.method nextLeaf()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;)V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->updateLeafCalc()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    const-string v4, " "

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v5, v2, v1

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    aget-object v6, v2, v1

    invoke-static {v6}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
