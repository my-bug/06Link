.class public abstract Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;
.super Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V

    return-object v0
.end method

.method public sampleFgBytes()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->sampleFixedTypeBytes()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public sampleRmBytes()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->sampleFixedTypeBytes()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public weight()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->q()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x2

    return v0
.end method
