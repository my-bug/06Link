.class Lorg/bouncycastle/pqc/crypto/mlkem/Reduce;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static barretReduce(S)S
    .locals 2

    const-wide/16 v0, 0x4ebf

    long-to-int v1, v0

    int-to-short v0, v1

    mul-int v0, v0, p0

    shr-int/lit8 v0, v0, 0x1a

    int-to-short v0, v0

    mul-int/lit16 v0, v0, 0xd01

    int-to-short v0, v0

    sub-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static conditionalSubQ(S)S
    .locals 1

    add-int/lit16 p0, p0, -0xd01

    int-to-short p0, p0

    shr-int/lit8 v0, p0, 0xf

    and-int/lit16 v0, v0, 0xd01

    add-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static montgomeryReduce(I)S
    .locals 1

    const v0, 0xf301

    mul-int v0, v0, p0

    int-to-short v0, v0

    mul-int/lit16 v0, v0, 0xd01

    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    int-to-short p0, p0

    return p0
.end method
