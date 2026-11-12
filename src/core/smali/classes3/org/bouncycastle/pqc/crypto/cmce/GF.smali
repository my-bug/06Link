.class abstract Lorg/bouncycastle/pqc/crypto/cmce/GF;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract gf_frac(SS)S
.end method

.method protected abstract gf_inv(S)S
.end method

.method final gf_iszero(S)S
    .locals 0

    add-int/lit8 p1, p1, -0x1

    shr-int/lit8 p1, p1, 0x1f

    int-to-short p1, p1

    return p1
.end method

.method protected abstract gf_mul(SS)S
.end method

.method protected abstract gf_mul_ext(SS)I
.end method

.method protected abstract gf_mul_poly(I[I[S[S[S[I)V
.end method

.method protected abstract gf_reduce(I)S
.end method

.method protected abstract gf_sq(S)S
.end method

.method protected abstract gf_sq_ext(S)I
.end method

.method protected abstract gf_sqr_poly(I[I[S[S[I)V
.end method
