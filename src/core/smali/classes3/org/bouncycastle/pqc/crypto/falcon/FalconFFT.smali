.class Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;
.super Ljava/lang/Object;


# instance fields
.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    return-void
.end method


# virtual methods
.method FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x1

    shl-int v3, v2, v1

    shr-int/2addr v3, v2

    const/4 v4, 0x2

    move v6, v3

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v1, :cond_2

    shr-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    add-int v11, v10, v7

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v13, v4, v9

    shl-int/2addr v13, v2

    aget-object v12, v12, v13

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int/2addr v13, v2

    aget-object v13, v14, v13

    move v14, v10

    :goto_2
    if-ge v14, v11, :cond_0

    add-int v15, p2, v14

    aget-object v2, p1, v15

    add-int v16, v15, v3

    aget-object v1, p1, v16

    add-int v17, v15, v7

    move/from16 v18, v3

    aget-object v3, p1, v17

    add-int v19, v17, v18

    move/from16 v20, v4

    aget-object v4, p1, v19

    invoke-virtual {v0, v3, v4, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v3

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move/from16 v21, v5

    invoke-virtual {v0, v2, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    move/from16 v22, v6

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v15

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v5, p1, v16

    invoke-virtual {v0, v2, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v1

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v2, p1, v17

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v19

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    move/from16 v3, v18

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    move/from16 v18, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    add-int/lit8 v9, v9, 0x1

    add-int v10, v10, v22

    move/from16 v1, p3

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move/from16 v18, v3

    move/from16 v20, v4

    move/from16 v21, v5

    add-int/lit8 v5, v21, 0x1

    shl-int/lit8 v4, v20, 0x1

    move/from16 v1, p3

    move v6, v7

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {p3, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p3, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p3
.end method

.method FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p3, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p4

    invoke-virtual {v1, p4, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {p4, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p2
.end method

.method FPC_INV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v0
.end method

.method FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {p4, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p2
.end method

.method FPC_SQR(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_double(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p2
.end method

.method FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {p3, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {p3, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object p3
.end method

.method iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p3

    shr-int/lit8 v3, v2, 0x1

    move/from16 v4, p3

    move v5, v2

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    if-le v4, v1, :cond_2

    shr-int/2addr v5, v1

    shl-int/lit8 v8, v6, 0x1

    const/4 v9, 0x0

    :goto_1
    if-ge v7, v3, :cond_1

    add-int v10, v7, v6

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v12, v5, v9

    shl-int/2addr v12, v1

    aget-object v11, v11, v12

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v13, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int/2addr v12, v1

    aget-object v12, v14, v12

    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    move v13, v7

    :goto_2
    if-ge v13, v10, :cond_0

    add-int v14, p2, v13

    aget-object v15, p1, v14

    add-int v16, v14, v3

    aget-object v1, p1, v16

    add-int v17, v14, v6

    move/from16 v18, v3

    aget-object v3, p1, v17

    add-int v19, v17, v18

    move/from16 v20, v4

    aget-object v4, p1, v19

    move/from16 v21, v5

    invoke-virtual {v0, v15, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    move/from16 v22, v6

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v14

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v5, p1, v16

    invoke-virtual {v0, v15, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v1

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v0, v3, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v1

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v3, p1, v17

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v19

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v18

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    move/from16 v18, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v8

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move/from16 v18, v3

    move/from16 v20, v4

    move/from16 v21, v5

    add-int/lit8 v4, v20, -0x1

    move v6, v8

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-lez p3, :cond_3

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v1, v1, p3

    :goto_3
    if-ge v7, v2, :cond_3

    add-int v3, p2, v7

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, p1, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method poly_LDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 13

    const/4 v0, 0x1

    shl-int v1, v0, p7

    shr-int/lit8 v0, v1, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    aget-object v3, p1, v2

    add-int/2addr v2, v0

    aget-object v2, p1, v2

    add-int v4, p4, v1

    aget-object v5, p3, v4

    add-int v6, v4, v0

    aget-object v7, p3, v6

    add-int v8, p6, v1

    aget-object v9, p5, v8

    add-int v10, v8, v0

    aget-object v11, p5, v10

    invoke-virtual {p0, v5, v7, v3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    invoke-virtual {p0, v3, v2, v5, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    iget-object v7, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {p0, v9, v11, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    iget-object v7, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v7, p5, v8

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v5, p5, v10

    aput-object v3, p3, v4

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_LDLmv_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 9

    const/4 v0, 0x1

    shl-int v1, v0, p11

    shr-int/lit8 v0, v1, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p6, v1

    aget-object v3, p5, v2

    add-int/2addr v2, v0

    aget-object v2, p5, v2

    add-int v4, p8, v1

    aget-object v5, p7, v4

    add-int/2addr v4, v0

    aget-object v4, p7, v4

    add-int v6, p10, v1

    aget-object v7, p9, v6

    add-int/2addr v6, v0

    aget-object v6, p9, v6

    invoke-virtual {p0, v5, v4, v3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    invoke-virtual {p0, v3, v2, v5, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {p0, v7, v6, v5, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    add-int v5, p2, v1

    iget-object v6, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v5

    add-int/2addr v5, v0

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v5

    add-int v4, p4, v1

    aput-object v3, p3, v4

    add-int/2addr v4, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 5

    const/4 v0, 0x1

    shl-int p5, v0, p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    add-int v4, p4, v0

    aget-object v4, p3, v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_add_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 11

    const/4 v0, 0x1

    shl-int v1, v0, p11

    shr-int/lit8 v0, v1, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p4, v1

    aget-object v3, p3, v2

    add-int/2addr v2, v0

    aget-object v2, p3, v2

    add-int v4, p6, v1

    aget-object v5, p5, v4

    add-int/2addr v4, v0

    aget-object v4, p5, v4

    add-int v6, p8, v1

    aget-object v7, p7, v6

    add-int/2addr v6, v0

    aget-object v6, p7, v6

    add-int v8, p10, v1

    aget-object v9, p9, v8

    add-int/2addr v8, v0

    aget-object v8, p9, v8

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {p0, v3, v2, v7, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {p0, v5, v4, v9, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v6, p2, v1

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v6

    add-int/2addr v6, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 4

    const/4 v0, 0x1

    shl-int p3, v0, p3

    shr-int/lit8 v0, p3, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_div_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 5

    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v2, p4, v0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/2addr v2, p5

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    aput-object v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_div_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 7

    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p5

    aget-object v4, p1, v3

    add-int v5, p4, v0

    aget-object v6, p3, v5

    add-int/2addr v5, p5

    aget-object v5, p3, v5

    invoke-virtual {p0, v2, v4, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v1

    iget-object v1, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 8

    const/4 v0, 0x1

    shl-int p7, v0, p7

    shr-int/2addr p7, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p7, :cond_0

    add-int v1, p4, v0

    aget-object v2, p3, v1

    add-int/2addr v1, p7

    aget-object v1, p3, v1

    add-int v3, p6, v0

    aget-object v4, p5, v3

    add-int/2addr v3, p7

    aget-object v3, p5, v3

    add-int v5, p2, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    aput-object v1, p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 11

    const/4 v0, 0x1

    shl-int v1, v0, p7

    shr-int/lit8 v2, v1, 0x1

    shr-int/lit8 v1, v1, 0x2

    aget-object v3, p3, p4

    aput-object v3, p1, p2

    add-int v3, p2, v2

    aget-object v4, p5, p6

    aput-object v4, p1, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    add-int v4, p4, v3

    aget-object v5, p3, v4

    add-int/2addr v4, v1

    aget-object v4, p3, v4

    add-int v6, p6, v3

    aget-object v7, p5, v6

    add-int/2addr v6, v1

    aget-object v6, p5, v6

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v9, v3, v2

    shl-int/2addr v9, v0

    aget-object v8, v8, v9

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int/2addr v9, v0

    aget-object v9, v10, v9

    invoke-virtual {p0, v7, v6, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v6

    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {p0, v5, v4, v7, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v8

    iget-object v9, v8, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    shl-int/lit8 v10, v3, 0x1

    add-int/2addr v10, p2

    aput-object v9, p1, v10

    add-int v9, v10, v2

    aput-object v8, p1, v9

    invoke-virtual {p0, v5, v4, v7, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int/2addr v10, v0

    aput-object v5, p1, v10

    add-int/2addr v10, v2

    aput-object v4, p1, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 6

    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    add-int v4, p4, v0

    aget-object v5, p3, v4

    invoke-virtual {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/2addr v1, p5

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    aget-object v4, p3, v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 7

    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p5

    aget-object v4, p1, v3

    add-int v5, p4, v0

    aget-object v6, p3, v5

    add-int/2addr v5, p5

    aget-object v5, p3, v5

    invoke-virtual {p0, v2, v4, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v1

    iget-object v1, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 8

    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p5

    aget-object v4, p1, v3

    add-int v5, p4, v0

    aget-object v6, p3, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/2addr v5, p5

    aget-object v5, p3, v5

    invoke-virtual {v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v1

    iget-object v1, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 4

    const/4 v0, 0x1

    shl-int p4, v0, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 7

    const/4 v0, 0x1

    shl-int p3, v0, p3

    shr-int/2addr p3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p3

    aget-object v4, p1, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 4

    const/4 v0, 0x1

    shl-int p3, v0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 12

    const/4 v0, 0x1

    shl-int v1, v0, p7

    shr-int/lit8 v2, v1, 0x1

    shr-int/lit8 v1, v1, 0x2

    aget-object v3, p5, p6

    aput-object v3, p1, p2

    add-int v3, p6, v2

    aget-object v3, p5, v3

    aput-object v3, p3, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    shl-int/lit8 v4, v3, 0x1

    add-int v4, p6, v4

    aget-object v5, p5, v4

    add-int v6, v4, v2

    aget-object v6, p5, v6

    add-int/2addr v4, v0

    aget-object v7, p5, v4

    add-int/2addr v4, v2

    aget-object v4, p5, v4

    invoke-virtual {p0, v5, v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v8

    iget-object v9, v8, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v10, p2, v3

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    aput-object v9, p1, v10

    add-int/2addr v10, v1

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    aput-object v8, p1, v10

    invoke-virtual {p0, v5, v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v7, v3, v2

    shl-int/2addr v7, v0

    aget-object v6, v6, v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v8, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int/2addr v7, v0

    aget-object v7, v9, v7

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    invoke-virtual {p0, v5, v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v6, p4, v3

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    aput-object v5, p3, v6

    add-int/2addr v6, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, p3, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 5

    const/4 v0, 0x1

    shl-int p5, v0, p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, p1, v1

    add-int v4, p4, v0

    aget-object v4, p3, v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
