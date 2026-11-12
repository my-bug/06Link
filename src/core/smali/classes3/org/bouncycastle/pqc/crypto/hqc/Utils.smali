.class Lorg/bouncycastle/pqc/crypto/hqc/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitMask(JJ)J
    .locals 0

    rem-long/2addr p0, p2

    long-to-int p1, p0

    const-wide/16 p2, 0x1

    shl-long p0, p2, p1

    sub-long/2addr p0, p2

    return-wide p0
.end method

.method static copyBytes([II[III)V
    .locals 0

    div-int/lit8 p4, p4, 0x2

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static fromByte16ArrayToLongArray([J[I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    div-int/lit8 v1, v0, 0x4

    aget v2, p1, v0

    int-to-long v2, v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fromByte32ArrayToLongArray([J[I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    div-int/lit8 v1, v0, 0x2

    aget v2, p1, v0

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fromByteArrayToByte16Array([I[B)V
    .locals 4

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static fromByteArrayToLongArray([J[B)V
    .locals 4

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static fromLongArrayToByte32Array([I[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    aget-wide v2, p1, v0

    long-to-int v4, v2

    aput v4, p0, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v3, v2

    aput v3, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fromLongArrayToByteArray([B[J)V
    .locals 7

    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    aget-wide v3, p1, v2

    mul-int/lit8 v5, v2, 0x8

    invoke-static {v3, v4, p0, v5}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    mul-int/lit8 v2, v0, 0x8

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-wide v4, p1, v0

    add-int/lit8 v6, v1, 0x1

    mul-int/lit8 v1, v1, 0x8

    ushr-long/2addr v4, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    move v2, v3

    move v1, v6

    goto :goto_1

    :cond_1
    return-void
.end method

.method static getByte64SizeFromBitSize(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x3f

    div-int/lit8 p0, p0, 0x40

    return p0
.end method

.method static getByteSizeFromBitSize(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static resizeArray([JI[JIII)V
    .locals 3

    const/4 v0, 0x0

    if-ge p1, p3, :cond_2

    rem-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    rsub-int/lit8 p1, p1, 0x40

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, v0, p0, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-ge v0, p1, :cond_1

    add-int/lit8 p2, p5, -0x1

    aget-wide p3, p0, p2

    const-wide v1, 0x7fffffffffffffffL

    shr-long/2addr v1, v0

    and-long/2addr p3, v1

    aput-wide p3, p0, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    add-int/lit8 p3, p3, 0x7

    div-int/lit8 p3, p3, 0x8

    invoke-static {p2, v0, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static toUnsigned16Bits(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method static toUnsigned8bits(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static xorLongToByte16Array([IJI)V
    .locals 5

    aget v0, p0, p3

    long-to-int v1, p1

    const v2, 0xffff

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p0, p3

    add-int/lit8 v0, p3, 0x1

    aget v1, p0, v0

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    long-to-int v4, v3

    and-int v3, v4, v2

    xor-int/2addr v1, v3

    aput v1, p0, v0

    add-int/lit8 v0, p3, 0x2

    aget v1, p0, v0

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v4, v3

    and-int v3, v4, v2

    xor-int/2addr v1, v3

    aput v1, p0, v0

    add-int/lit8 p3, p3, 0x3

    aget v0, p0, p3

    const/16 v1, 0x30

    ushr-long/2addr p1, v1

    long-to-int p2, p1

    and-int p1, p2, v2

    xor-int/2addr p1, v0

    aput p1, p0, p3

    return-void
.end method
