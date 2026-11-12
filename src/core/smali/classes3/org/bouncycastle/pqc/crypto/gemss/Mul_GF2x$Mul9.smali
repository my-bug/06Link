.class public Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;
.super Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mul9"
.end annotation


# instance fields
.field private Buffer:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;->Buffer:[J

    return-void
.end method


# virtual methods
.method public mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 7

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v5, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;->Buffer:[J

    const/4 v1, 0x0

    # invokes: Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x([JI[JI[JI[J)V
    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->access$200([JI[JI[JI[J)V

    return-void
.end method

.method public mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 7

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v5, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;->Buffer:[J

    # invokes: Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x_xor([JI[JI[JI[J)V
    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->access$500([JI[JI[JI[J)V

    return-void
.end method

.method public sqr_gf2x([J[JI)V
    .locals 3

    add-int/lit8 v0, p3, 0x4

    aget-wide v0, p2, v0

    # invokes: Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR32_NO_SIMD_GF2X(J)J
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->access$300(J)J

    move-result-wide v0

    const/16 v2, 0x8

    aput-wide v0, p1, v2

    const/4 v0, 0x0

    # invokes: Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR256_NO_SIMD_GF2X([JI[JI)V
    invoke-static {p1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->access$400([JI[JI)V

    return-void
.end method
