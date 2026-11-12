.class public Lorg/bouncycastle/crypto/constraints/ConstraintUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitsOfSecurityFor(Ljava/math/BigInteger;)I
    .locals 0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityForFF(I)I

    move-result p0

    return p0
.end method

.method public static bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    const/16 v0, 0x100

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static bitsOfSecurityForFF(I)I
    .locals 1

    const/16 v0, 0x800

    if-lt p0, v0, :cond_3

    const/16 v0, 0xc00

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_1

    const/16 v0, 0x3c00

    if-lt p0, v0, :cond_0

    const/16 p0, 0x100

    return p0

    :cond_0
    const/16 p0, 0xc0

    return p0

    :cond_1
    const/16 p0, 0x80

    return p0

    :cond_2
    const/16 p0, 0x70

    return p0

    :cond_3
    const/16 v0, 0x400

    if-lt p0, v0, :cond_4

    const/16 p0, 0x50

    return p0

    :cond_4
    const/16 p0, 0x14

    return p0
.end method
