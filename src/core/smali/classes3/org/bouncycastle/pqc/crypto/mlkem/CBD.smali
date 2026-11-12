.class final Lorg/bouncycastle/pqc/crypto/mlkem/CBD;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteTo24BitUnsignedInt([BI)J
    .locals 5

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v2, 0x10

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static convertByteTo32BitUnsignedInt([BI)J
    .locals 5

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static mlkemCBD(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;[BI)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    mul-int/lit8 v3, v2, 0x4

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/CBD;->convertByteTo32BitUnsignedInt([BI)J

    move-result-wide v3

    const-wide/32 v5, 0x55555555

    and-long v7, v3, v5

    shr-long/2addr v3, v1

    and-long/2addr v3, v5

    add-long/2addr v7, v3

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    mul-int/lit8 v4, v3, 0x4

    shr-long v5, v7, v4

    const-wide/16 v9, 0x3

    and-long/2addr v5, v9

    long-to-int v6, v5

    int-to-short v5, v6

    add-int/2addr v4, p2

    shr-long v11, v7, v4

    and-long/2addr v9, v11

    long-to-int v4, v9

    int-to-short v4, v4

    mul-int/lit8 v6, v2, 0x8

    add-int/2addr v6, v3

    sub-int/2addr v5, v4

    int-to-short v4, v5

    invoke-virtual {p0, v6, v4}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_2
    const/16 v3, 0x40

    if-ge p2, v3, :cond_3

    mul-int/lit8 v3, p2, 0x3

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/CBD;->convertByteTo24BitUnsignedInt([BI)J

    move-result-wide v3

    const-wide/32 v5, 0x249249

    and-long v7, v3, v5

    shr-long v9, v3, v1

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    const/4 v9, 0x2

    shr-long/2addr v3, v9

    and-long/2addr v3, v5

    add-long/2addr v7, v3

    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    mul-int/lit8 v4, v3, 0x6

    shr-long v5, v7, v4

    const-wide/16 v9, 0x7

    and-long/2addr v5, v9

    long-to-int v6, v5

    int-to-short v5, v6

    add-int/2addr v4, v2

    shr-long v11, v7, v4

    and-long/2addr v9, v11

    long-to-int v4, v9

    int-to-short v4, v4

    mul-int/lit8 v6, p2, 0x4

    add-int/2addr v6, v3

    sub-int/2addr v5, v4

    int-to-short v4, v5

    invoke-virtual {p0, v6, v4}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
