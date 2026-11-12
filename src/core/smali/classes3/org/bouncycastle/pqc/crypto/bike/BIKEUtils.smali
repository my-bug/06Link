.class Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static CHECK_BIT([BI)I
    .locals 1

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 p1, p1, 0x8

    aget-byte p0, p0, v0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected static SET_BIT([BI)V
    .locals 5

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 p1, p1, 0x8

    aget-byte v1, p0, v0

    int-to-long v1, v1

    int-to-long v3, p1

    long-to-int p1, v3

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    long-to-int p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void
.end method

.method static fromBitArrayToByteArray([B[BII)V
    .locals 9

    int-to-long v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    int-to-long v4, v2

    cmp-long v6, v4, v0

    if-gez v6, :cond_3

    add-int/lit8 v4, v2, 0x8

    const/4 v5, 0x1

    if-lt v4, p3, :cond_1

    add-int v6, p2, v2

    aget-byte v7, p1, v6

    sub-int v2, p3, v2

    sub-int/2addr v2, v5

    :goto_1
    if-lt v2, v5, :cond_0

    add-int v8, v6, v2

    aget-byte v8, p1, v8

    shl-int/2addr v8, v2

    or-int/2addr v7, v8

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    int-to-byte v2, v7

    aput-byte v2, p0, v3

    goto :goto_3

    :cond_1
    add-int/2addr v2, p2

    aget-byte v6, p1, v2

    const/4 v7, 0x7

    :goto_2
    if-lt v7, v5, :cond_2

    add-int v8, v2, v7

    aget-byte v8, p1, v8

    shl-int/2addr v8, v7

    or-int/2addr v6, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    int-to-byte v2, v6

    aput-byte v2, p0, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method static generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [B

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2, v0}, Lorg/bouncycastle/crypto/Xof;->doOutput([BII)I

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-int v4, p1, p2

    int-to-long v4, v4

    mul-long v2, v2, v4

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v3, p2

    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->CHECK_BIT([BI)I

    move-result v2

    if-eqz v2, :cond_0

    move v3, p2

    :cond_0
    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->SET_BIT([BI)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static getHammingWeight([B)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
