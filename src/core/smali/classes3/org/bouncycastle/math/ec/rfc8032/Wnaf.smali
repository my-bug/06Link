.class abstract Lorg/bouncycastle/math/ec/rfc8032/Wnaf;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSignedVar([II[B)V
    .locals 9

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [I

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    shr-int/lit8 v2, v2, 0x1f

    array-length v3, p0

    move v4, v0

    :goto_0
    add-int/lit8 v3, v3, -0x1

    const/16 v5, 0x10

    if-ltz v3, :cond_0

    aget v6, p0, v3

    add-int/lit8 v7, v4, -0x1

    ushr-int/lit8 v8, v6, 0x10

    shl-int/2addr v2, v5

    or-int/2addr v2, v8

    aput v2, v1, v7

    add-int/lit8 v4, v4, -0x2

    aput v6, v1, v4

    move v2, v6

    goto :goto_0

    :cond_0
    rsub-int/lit8 p0, p1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget v6, v1, v2

    :goto_2
    if-ge v3, v5, :cond_2

    ushr-int v7, v6, v3

    and-int/lit8 v8, v7, 0x1

    if-ne v8, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    or-int/lit8 v4, v7, 0x1

    shl-int/2addr v4, p0

    ushr-int/lit8 v7, v4, 0x1f

    shl-int/lit8 v8, v2, 0x4

    add-int/2addr v8, v3

    shr-int/2addr v4, p0

    int-to-byte v4, v4

    aput-byte v4, p2, v8

    add-int/2addr v3, p1

    move v4, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x10

    goto :goto_1

    :cond_3
    return-void
.end method
