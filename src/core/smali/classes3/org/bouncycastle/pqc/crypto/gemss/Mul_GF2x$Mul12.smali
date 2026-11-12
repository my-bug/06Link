.class public Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;
.super Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mul12"
.end annotation


# instance fields
.field private Buffer:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;->Buffer:[J

    return-void
.end method


# virtual methods
.method public mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 6

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;->Buffer:[J

    # invokes: Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul384_no_simd_gf2x([J[JI[JI[J)V
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->access$600([J[JI[JI[J)V

    return-void
.end method

.method public mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 6

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;->Buffer:[J

    # invokes: Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul384_no_simd_gf2x_xor([J[JI[JI[J)V
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->access$700([J[JI[JI[J)V

    return-void
.end method

.method public sqr_gf2x([J[JI)V
    .locals 2

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    # invokes: Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR128_NO_SIMD_GF2X([JI[JI)V
    invoke-static {p1, v1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->access$100([JI[JI)V

    const/4 v0, 0x0

    # invokes: Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR256_NO_SIMD_GF2X([JI[JI)V
    invoke-static {p1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->access$400([JI[JI)V

    return-void
.end method
