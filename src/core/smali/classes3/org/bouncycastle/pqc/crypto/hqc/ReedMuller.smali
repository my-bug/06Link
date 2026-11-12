.class Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Bit0Mask(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    return p0
.end method

.method public static decode([B[JII)V
    .locals 11

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    invoke-static {v3, p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByte32Array([I[J)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    if-ge v5, v1, :cond_1

    new-instance v7, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;-><init>()V

    aput-object v7, v2, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v2, v5

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    mul-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v7

    aget v9, v3, v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x80

    new-array v5, v3, [I

    const/4 v7, 0x0

    :goto_2
    if-ge v7, p2, :cond_2

    mul-int v8, v7, p3

    invoke-static {v5, v2, v8, p3}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->expandThenSum([I[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;II)V

    new-array v8, v3, [I

    invoke-static {v5, v8}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->hadamardTransform([I[I)V

    aget v9, v8, v4

    mul-int/lit8 v10, p3, 0x40

    sub-int/2addr v9, v10

    aput v9, v8, v4

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->findPeaks([I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    mul-int/lit8 p2, v1, 0x4

    new-array p2, p2, [I

    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge p3, v1, :cond_3

    aget-object v5, v2, p3

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget-object v7, v2, p3

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    array-length v7, v7

    invoke-static {v5, v4, p2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v6

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_3
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByte32ArrayToLongArray([J[I)V

    array-length p1, p0

    invoke-static {v0, v4, p0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static encode([J[BII)V
    .locals 8

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    mul-int v0, p2, p3

    new-array v1, v0, [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_2

    mul-int v4, v3, p3

    aget-object v5, v1, v4

    aget-byte v6, p1, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->encodeSub(Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;I)V

    const/4 v5, 0x1

    :goto_2
    if-ge v5, p3, :cond_1

    add-int v6, v4, v5

    aget-object v7, v1, v4

    aput-object v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 p1, v0, 0x4

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_3
    if-ge p2, v0, :cond_3

    aget-object v3, v1, p2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget-object v4, v1, p2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    array-length v4, v4

    invoke-static {v3, v2, p1, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByte32ArrayToLongArray([J[I)V

    return-void
.end method

.method static encodeSub(Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;I)V
    .locals 4

    shr-int/lit8 v0, p1, 0x7

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0x55555556

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0x33333334

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0xf0f0f10

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0xff0100

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    shr-int/lit8 v1, p1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v3, 0x1

    aput v0, v2, v3

    shr-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result p1

    xor-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x3

    aput p1, v0, v2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v0

    xor-int/2addr p1, v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v0, 0x2

    aput p1, p0, v0

    return-void
.end method

.method private static expandThenSum([I[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;II)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, p1, p2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v5, v5, v1

    mul-int/lit8 v5, v1, 0x20

    add-int/2addr v5, v2

    aget-object v6, p1, p2

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v6, v6, v1

    shr-int/2addr v6, v2

    and-int/2addr v6, v4

    aput v6, p0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_2
    if-ge v1, p3, :cond_4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_2

    mul-int/lit8 v7, v5, 0x20

    add-int/2addr v7, v6

    aget v8, p0, v7

    add-int v9, v1, p2

    aget-object v9, p1, v9

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v9, v9, v5

    shr-int/2addr v9, v6

    and-int/2addr v9, v4

    add-int/2addr v8, v9

    aput v8, p0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static findPeaks([I)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x80

    if-ge v1, v5, :cond_4

    aget v5, p0, v1

    const/4 v6, -0x1

    if-lez v5, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    and-int v8, v7, v5

    xor-int/2addr v6, v7

    neg-int v7, v5

    and-int/2addr v6, v7

    or-int/2addr v6, v8

    if-le v6, v4, :cond_1

    move v2, v5

    :cond_1
    if-le v6, v4, :cond_2

    move v3, v1

    :cond_2
    if-le v6, v4, :cond_3

    move v4, v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-lez v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit16 v0, v0, 0x80

    or-int p0, v3, v0

    return p0
.end method

.method private static hadamardTransform([I[I)V
    .locals 10

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    mul-int/lit8 v5, v4, 0x2

    aget v6, v1, v5

    add-int/lit8 v7, v5, 0x1

    aget v8, v1, v7

    add-int/2addr v6, v8

    aput v6, v0, v4

    add-int/lit8 v6, v4, 0x40

    aget v5, v1, v5

    aget v7, v1, v7

    sub-int/2addr v5, v7

    aput v5, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_0

    :cond_1
    array-length v3, p0

    invoke-static {v0, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p1

    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
