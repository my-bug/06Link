.class public abstract Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;
.super Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;->n()I

    move-result v0

    const/16 v1, 0x55d

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V

    return-object v0
.end method

.method public sampleFgBytes()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;->sampleIidBytes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public sampleRmBytes()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;->sampleIidBytes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
