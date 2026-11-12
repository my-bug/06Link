.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompose(II)[I
    .locals 2

    add-int/lit8 v0, p0, 0x7f

    shr-int/lit8 v0, v0, 0x7

    const v1, 0x3ff00

    if-ne p1, v1, :cond_0

    mul-int/lit16 v0, v0, 0x401

    const/high16 v1, 0x200000

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x16

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_0
    const v1, 0x17400

    if-ne p1, v1, :cond_1

    mul-int/lit16 v0, v0, 0x2c0b

    const/high16 v1, 0x800000

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x18

    rsub-int/lit8 v1, v0, 0x2b

    shr-int/lit8 v1, v1, 0x1f

    and-int/2addr v1, v0

    xor-int/2addr v0, v1

    :goto_0
    mul-int/lit8 v1, v0, 0x2

    mul-int v1, v1, p1

    sub-int/2addr p0, v1

    const p1, 0x3ff000

    sub-int/2addr p1, p0

    shr-int/lit8 p1, p1, 0x1f

    const v1, 0x7fe001

    and-int/2addr p1, v1

    sub-int/2addr p0, p1

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong Gamma2!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeHint(IILorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)I
    .locals 1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result p2

    if-le p0, p2, :cond_1

    const v0, 0x7fe001

    sub-int/2addr v0, p2

    if-gt p0, v0, :cond_1

    if-ne p0, v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static power2Round(I)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    add-int/lit16 v1, p0, 0xfff

    shr-int/lit8 v1, v1, 0xd

    const/4 v2, 0x0

    aput v1, v0, v2

    shl-int/lit8 v1, v1, 0xd

    sub-int/2addr p0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public static useHint(III)I
    .locals 3

    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->decompose(II)[I

    move-result-object p0

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget p0, p0, v2

    if-nez p1, :cond_0

    return p0

    :cond_0
    const p1, 0x3ff00

    if-ne p2, p1, :cond_2

    if-lez v1, :cond_1

    add-int/2addr p0, v2

    :goto_0
    and-int/lit8 p0, p0, 0xf

    return p0

    :cond_1
    sub-int/2addr p0, v2

    goto :goto_0

    :cond_2
    const p1, 0x17400

    if-ne p2, p1, :cond_6

    const/16 p1, 0x2b

    if-lez v1, :cond_4

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    add-int/2addr p0, v2

    return p0

    :cond_4
    if-nez p0, :cond_5

    return p1

    :cond_5
    sub-int/2addr p0, v2

    return p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong Gamma2!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method
