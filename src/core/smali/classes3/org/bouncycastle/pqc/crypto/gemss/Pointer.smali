.class Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
.super Ljava/lang/Object;


# instance fields
.field protected array:[J

.field protected cp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method


# virtual methods
.method public changeIndex(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 1

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 2

    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p2, p3

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    invoke-static {v0, p2, p3, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 3

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    invoke-static {v0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public fill(I[BII)V
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v1, 0x8

    if-gt v3, p4, :cond_0

    invoke-static {p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v4

    aput-wide v4, v2, v0

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    if-ge v1, p4, :cond_1

    array-length v3, v2

    if-ge v0, v3, :cond_1

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    :goto_1
    const/16 v2, 0x8

    if-ge p1, v2, :cond_1

    if-ge v1, p4, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v3, v2, v0

    aget-byte v5, p2, p3

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    shl-int/lit8 v7, p1, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public fillRandom(ILjava/security/SecureRandom;I)V
    .locals 1

    new-array v0, p3, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    return-void
.end method

.method public get()J
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public get(I)J
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getArray()[J
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    return-object v0
.end method

.method public getD_for_not0_or_plus(II)I
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    if-lez p2, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v0

    const/4 v0, 0x1

    :goto_1
    if-ge v0, p1, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v8, v5, 0x1

    aget-wide v9, v4, v5

    or-long/2addr v6, v9

    add-int/lit8 v0, v0, 0x1

    move v5, v8

    goto :goto_1

    :cond_0
    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->ORBITS_UINT(J)J

    move-result-wide v6

    or-long/2addr v2, v6

    int-to-long v0, v1

    add-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 p2, p2, -0x1

    move v0, v5

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getDotProduct(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)J
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v0

    iget v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p3, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v1, p1, 0x1

    aget-wide v2, v0, p1

    iget-object p1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v0, p3, 0x1

    aget-wide v4, p1, p3

    and-long/2addr v2, v4

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p4, :cond_0

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v1, 0x1

    aget-wide v5, p3, v1

    iget-object p3, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v1, v0, 0x1

    aget-wide v7, p3, v0

    and-long/2addr v5, v7

    xor-long/2addr v2, v5

    add-int/lit8 p1, p1, 0x1

    move v0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return v0
.end method

.method public getLength()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public indexReset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public is0_gf2n(II)I
    .locals 5

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->NORBITS_UINT(J)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method public isEqual_nocst_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .locals 9

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v1, 0x1

    aget-wide v6, v4, v1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v0, 0x1

    aget-wide v0, v1, v0

    cmp-long v8, v6, v0

    if-eqz v8, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v0, v4

    move v1, v5

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public move(I)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public moveIncremental()V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public searchDegree(III)I
    .locals 1

    :goto_0
    mul-int v0, p1, p3

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->is0_gf2n(II)I

    move-result v0

    if-eqz v0, :cond_0

    if-lt p1, p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public set(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aput-wide p2, v0, v1

    return-void
.end method

.method public set(J)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public set1_gf2n(II)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x1

    aput-wide v2, p1, v0

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v1, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v1

    add-int/lit8 p1, p1, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAnd(IJ)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    and-long/2addr p2, v2

    aput-wide p2, v0, v1

    return-void
.end method

.method public setAnd(J)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v2, v0, v1

    and-long/2addr p1, v2

    aput-wide p1, v0, v1

    return-void
.end method

.method public setClear(I)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public setRangeClear(II)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/2addr p2, p1

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v0

    iget v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p3, v0

    iget v0, p4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p6, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, p3, 0x1

    aget-wide v5, v3, p3

    iget-object p3, p4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, p5, 0x1

    aget-wide v7, p3, p5

    xor-long/2addr v5, v7

    aput-wide v5, v1, p1

    add-int/lit8 v0, v0, 0x1

    move p1, v2

    move p5, v3

    move p3, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v7, v1, 0x1

    aget-wide v8, v6, v1

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v2, 0x1

    aget-wide v10, v1, v2

    xor-long v1, v8, v10

    aput-wide v1, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    move v2, v6

    move v1, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRangeFromXorAndMask_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v5, v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v6, 0x0

    move/from16 v7, p5

    :goto_0
    if-ge v6, v7, :cond_0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v9, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v10, v9, v4

    iget-object v12, v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v13, v12, v5

    xor-long/2addr v10, v13

    and-long v10, v10, p3

    aput-wide v10, v8, v3

    add-int/lit8 v13, v4, 0x1

    aget-wide v14, v9, v4

    xor-long/2addr v10, v14

    aput-wide v10, v9, v4

    add-int/lit8 v4, v5, 0x1

    aget-wide v9, v12, v5

    add-int/lit8 v11, v3, 0x1

    aget-wide v14, v8, v3

    xor-long/2addr v9, v14

    aput-wide v9, v12, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v4

    move v3, v11

    move v4, v13

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V
    .locals 12

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    invoke-static {v0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x3

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v1, v1, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v8, v7, v3

    ushr-long v7, v8, v1

    iget-object v9, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v3, v3, 0x1

    aget-wide v10, v9, v3

    shl-long v9, v10, v0

    xor-long/2addr v7, v9

    aput-wide v7, v5, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    and-int/lit8 v3, p3, 0x3f

    rsub-int/lit8 v4, v3, 0x40

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    const/4 v8, 0x0

    if-nez v7, :cond_0

    :goto_0
    if-ge v8, v2, :cond_1

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v5, 0x1

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v11, v10, v6

    ushr-long v10, v11, v3

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v6, v6, 0x1

    aget-wide v13, v12, v6

    shl-long v12, v13, v4

    xor-long/2addr v10, v12

    aput-wide v10, v7, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_0

    :cond_0
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v7, v7, 0x3

    iget v9, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v9, v9, 0x8

    shl-int/lit8 v9, v9, 0x3

    :goto_1
    if-ge v8, v2, :cond_1

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v11, v5, 0x1

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v13, v12, v6

    ushr-long v12, v13, v7

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v15, v6, 0x1

    aget-wide v16, v14, v15

    shl-long v16, v16, v9

    or-long v12, v12, v16

    ushr-long/2addr v12, v3

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v16, v14, v15

    ushr-long v16, v16, v7

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v6, v6, 0x2

    aget-wide v18, v14, v6

    shl-long v18, v18, v9

    or-long v16, v16, v18

    shl-long v16, v16, v4

    xor-long v12, v12, v16

    aput-wide v12, v10, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v11

    move v6, v15

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setRangePointerUnion_Check(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    and-int/lit8 v3, p3, 0x3f

    rsub-int/lit8 v4, v3, 0x40

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    const/4 v8, 0x0

    if-nez v7, :cond_1

    :goto_0
    if-ge v8, v2, :cond_0

    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v5, 0x1

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v11, v10, v6

    ushr-long v10, v11, v3

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v6, v6, 0x1

    aget-wide v13, v12, v6

    shl-long v12, v13, v4

    xor-long/2addr v10, v12

    aput-wide v10, v7, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_0

    :cond_0
    if-ge v8, v2, :cond_3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v6, v1, v6

    ushr-long v3, v6, v3

    aput-wide v3, v2, v5

    return-void

    :cond_1
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v7, v7, 0x3

    iget v9, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v9, v9, 0x8

    shl-int/lit8 v9, v9, 0x3

    :goto_1
    if-ge v8, v2, :cond_2

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v10, v10

    add-int/lit8 v10, v10, -0x2

    if-ge v6, v10, :cond_2

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v11, v5, 0x1

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v13, v12, v6

    ushr-long v12, v13, v7

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v15, v6, 0x1

    aget-wide v16, v14, v15

    shl-long v16, v16, v9

    or-long v12, v12, v16

    ushr-long/2addr v12, v3

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v16, v14, v15

    ushr-long v16, v16, v7

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v6, v6, 0x2

    aget-wide v18, v14, v6

    shl-long v18, v18, v9

    or-long v16, v16, v18

    shl-long v16, v16, v4

    xor-long v12, v12, v16

    aput-wide v12, v10, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v11

    move v6, v15

    goto :goto_1

    :cond_2
    if-ge v8, v2, :cond_3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v10, v8, v6

    ushr-long/2addr v10, v7

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v6, v6, 0x1

    aget-wide v12, v8, v6

    shl-long v8, v12, v9

    or-long/2addr v8, v10

    ushr-long/2addr v8, v3

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v10, v1, v6

    ushr-long v6, v10, v7

    shl-long v3, v6, v4

    xor-long/2addr v3, v8

    aput-wide v3, v2, v5

    :cond_3
    return-void
.end method

.method public setRangeRotate(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V
    .locals 9

    rsub-int/lit8 v0, p5, 0x40

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v1

    iget v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p3, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v5, v4, p3

    ushr-long/2addr v5, v0

    add-int/lit8 p3, p3, 0x1

    aget-wide v7, v4, p3

    shl-long/2addr v7, p5

    xor-long/2addr v5, v7

    aput-wide v5, v2, p1

    add-int/lit8 v1, v1, 0x1

    move p1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRange_xi(JII)I
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v2, p3

    ushr-long v3, p1, v0

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    neg-long v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method

.method public setXor(IJ)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    xor-long/2addr p2, v2

    aput-wide p2, v0, v1

    return-void
.end method

.method public setXor(J)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v2, v0, v1

    xor-long/2addr p1, v2

    aput-wide p1, v0, v1

    return-void
.end method

.method public setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    move v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v4, 0x1

    aget-wide v7, v5, v4

    iget-object v9, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v10, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v10, v9, v10

    xor-long/2addr v7, v10

    aput-wide v7, v5, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public setXorMatrix_NoMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    move v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v4, 0x1

    aget-wide v7, v5, v4

    iget-object v9, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v10, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v10, v9, v10

    xor-long/2addr v7, v10

    aput-wide v7, v5, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v0

    iget v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, p1, 0x1

    aget-wide v3, v1, p1

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, p3, 0x1

    aget-wide v7, v5, p3

    xor-long/2addr v3, v7

    aput-wide v3, v1, p1

    add-int/lit8 v0, v0, 0x1

    move p1, v2

    move p3, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v3, p1, v3

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int v4, p3, v4

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    const/4 v6, 0x0

    if-nez v5, :cond_0

    :goto_0
    if-ge v6, v2, :cond_1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v7, v3, 0x1

    aget-wide v8, v5, v3

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v11, v4, 0x1

    aget-wide v12, v10, v4

    xor-long/2addr v8, v12

    aput-wide v8, v5, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v7

    move v4, v11

    goto :goto_0

    :cond_0
    iget v5, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v5, v5, 0x3

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/lit8 v7, v7, 0x3

    :goto_1
    if-ge v6, v2, :cond_1

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v3, 0x1

    aget-wide v10, v8, v3

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v13, v12, v4

    ushr-long v12, v13, v5

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v4, v4, 0x1

    aget-wide v15, v14, v4

    shl-long v14, v15, v7

    or-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, v8, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v9

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v0, 0x1

    aget-wide v5, v3, v0

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v8, v1, 0x1

    aget-wide v9, v7, v1

    xor-long/2addr v5, v9

    aput-wide v5, v3, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    move v1, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p2, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v0, 0x1

    aget-wide v4, v2, v0

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v7, p2, 0x1

    aget-wide v8, v6, p2

    xor-long/2addr v4, v8

    aput-wide v4, v2, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    move p2, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v0, 0x1

    aget-wide v5, v3, v0

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v8, v1, 0x1

    aget-wide v9, v7, v1

    and-long/2addr v9, p3

    xor-long/2addr v5, v9

    aput-wide v5, v3, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    move v1, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v0, 0x1

    aget-wide v4, v2, v0

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v7, v6, v7

    and-long/2addr v7, p3

    xor-long/2addr v4, v7

    aput-wide v4, v2, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRangeXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v3, p1, v3

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v4, p3, v4

    iget v5, v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v5, p5, v5

    const/4 v6, 0x0

    move/from16 v7, p6

    :goto_0
    if-ge v6, v7, :cond_0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v3, 0x1

    aget-wide v10, v8, v3

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v13, v4, 0x1

    aget-wide v14, v12, v4

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v12, v5, 0x1

    aget-wide v16, v4, v5

    xor-long v4, v14, v16

    xor-long/2addr v4, v10

    aput-wide v4, v8, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v9

    move v5, v12

    move v4, v13

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRange_SelfMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 10

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v4, v2, v3

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v7, v0, 0x1

    aget-wide v8, v6, v0

    xor-long/2addr v4, v8

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    move v0, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method public swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public toBytes(I)[B
    .locals 5

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    ushr-int/lit8 v4, v1, 0x3

    add-int/2addr v3, v4

    aget-wide v3, v2, v3

    and-int/lit8 v2, v1, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long v2, v3, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
