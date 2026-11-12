.class Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;
.super Ljava/lang/Object;


# instance fields
.field common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

.field fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    return-void
.end method

.method private static MKN(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method


# virtual methods
.method do_sign_dyn(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I
    .locals 21

    invoke-static/range {p15 .. p15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v6

    add-int v2, p17, v6

    add-int v12, v2, v6

    add-int v7, v12, v6

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p15

    move-object/from16 v1, p16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v3, p7

    move/from16 v4, p8

    move v10, v2

    move/from16 v2, p17

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v3, p9

    move/from16 v4, p10

    move v8, v2

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move v3, v12

    move v12, v2

    move v2, v3

    move-object/from16 v3, p11

    move/from16 v4, p12

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object v7, v0

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v12, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v12, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v9, v12, v6

    add-int v4, v9, v6

    invoke-static {v1, v10, v1, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v9, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    invoke-static {v1, v8, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p16

    move/from16 v20, v4

    move v4, v2

    move/from16 v2, v20

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v16, v2

    move v11, v4

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v2, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v8, v4

    invoke-static {v1, v10, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v2, v10

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v2, v4

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v11, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    invoke-static {v1, v12, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v2, v11

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v9, v4

    add-int v2, v9, v6

    const/4 v13, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    add-int v4, v9, v0

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v14, p14, v0

    aget-short v14, p13, v14

    int-to-long v14, v14

    invoke-virtual {v3, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v9, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inverse_of_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-static {v1, v9, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p16

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v15, v2

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v15, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v2, v9

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v14, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    mul-int/lit8 v0, v6, 0x2

    invoke-static {v1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v5, p16

    move-object/from16 v7, p16

    move-object/from16 v9, p16

    move v12, v11

    move-object/from16 v11, p16

    move/from16 v14, p15

    move v3, v15

    move-object/from16 v15, p16

    move/from16 v13, p15

    move/from16 v19, v0

    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v17, v6

    move v6, v8

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v8, p17

    move-object v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object v1, v3

    move v8, v6

    move v2, v10

    move v11, v12

    move/from16 v9, v16

    move/from16 v6, v19

    move v12, v4

    invoke-static {v1, v12, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p15

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v3, p7

    move/from16 v4, p8

    move/from16 v2, p17

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v3, p9

    move/from16 v4, p10

    move v6, v2

    move v2, v12

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 p8, p11

    move/from16 p9, p12

    move-object/from16 p5, v0

    move-object/from16 p6, v1

    move v4, v2

    move/from16 p10, v5

    move/from16 p7, v11

    invoke-virtual/range {p5 .. p10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move/from16 v2, p7

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v3, v17

    move/from16 v15, v18

    add-int v7, v15, v3

    invoke-static {v1, v8, v1, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v9, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v12, p16

    move/from16 p9, v6

    move-object/from16 p5, v11

    move-object/from16 p8, v12

    move/from16 p7, v15

    invoke-virtual/range {p5 .. p10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v5, p16

    move/from16 p10, p15

    move-object/from16 p6, p16

    move-object/from16 p5, v1

    move/from16 p9, v2

    move-object/from16 p8, v5

    move/from16 p7, v7

    invoke-virtual/range {p5 .. p10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v2, p7

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 p5, v1

    move/from16 p9, v2

    move/from16 p7, v15

    invoke-virtual/range {p5 .. p10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v1, p6

    invoke-static {v1, v8, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v6, p16

    move/from16 p7, v2

    move-object/from16 p5, v5

    move-object/from16 p8, v6

    move/from16 p9, v10

    invoke-virtual/range {p5 .. p10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    invoke-static {v1, v15, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 p9, v4

    move-object/from16 p5, v5

    move/from16 p7, v9

    invoke-virtual/range {p5 .. p10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v16, p7

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v4, p16

    move-object/from16 p5, v1

    move/from16 p9, v2

    move-object/from16 p8, v4

    invoke-virtual/range {p5 .. p10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v1, p6

    move/from16 v2, p7

    move/from16 v5, p10

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v4, v1, v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v4, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    new-array v4, v3, [S

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v3, :cond_1

    add-int v9, p14, v13

    aget-short v9, p13, v9

    const v10, 0xffff

    and-int/2addr v9, v10

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v11, v8, v13

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v10

    long-to-int v11, v10

    sub-int/2addr v9, v11

    mul-int v10, v9, v9

    add-int/2addr v6, v10

    or-int/2addr v7, v6

    int-to-short v9, v9

    aput-short v9, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v4, v7, 0x1f

    neg-int v4, v4

    or-int/2addr v4, v6

    new-array v6, v3, [S

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v3, :cond_2

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v8, v2, v13

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v7

    neg-long v7, v7

    long-to-int v8, v7

    int-to-short v7, v8

    aput-short v7, v6, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v6, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->is_short_half(I[SII)I

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, p3

    move/from16 v4, p4

    invoke-static {v6, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    return v1

    :cond_3
    return v2
.end method

.method do_sign_tree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v5, p9

    move-object/from16 v1, p10

    move/from16 v10, p11

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v7

    add-int v2, v10, v7

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b00(I)I

    move-result v3

    add-int v16, p6, v3

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b01(I)I

    move-result v3

    add-int v4, p6, v3

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b10(I)I

    move-result v3

    add-int v17, p6, v3

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b11(I)I

    move-result v3

    add-int v8, p6, v3

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_tree(I)I

    move-result v3

    add-int v9, p6, v3

    const/4 v11, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_0

    add-int v6, v10, v3

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v13, p8, v3

    aget-short v13, p7, v13

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    aput-object v12, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v12, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inverse_of_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-static {v1, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v3, v2

    move v6, v5

    move-object/from16 v2, p10

    move v5, v4

    move-object/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object v1, v2

    move v13, v3

    move/from16 v18, v5

    move v5, v6

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v2, v1, v13, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v2, p10

    move v5, v8

    move v3, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object v1, v2

    move/from16 v19, v5

    move v5, v6

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v10, v12, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    add-int v2, v13, v7

    add-int v4, v2, v7

    add-int v15, v4, v7

    move-object/from16 v5, p10

    move v8, v9

    move-object/from16 v9, p10

    const/4 v3, 0x0

    move-object/from16 v11, p10

    move-object/from16 v14, p10

    move-object v3, v1

    move v6, v4

    move/from16 v20, v7

    move v12, v13

    move-object/from16 v1, p1

    move-object/from16 v7, p5

    move/from16 v13, p9

    move v4, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object v1, v3

    move v2, v4

    move v8, v6

    move/from16 v7, v20

    move-object v6, v0

    invoke-static {v1, v2, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v8, v1, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p5

    move/from16 v5, p9

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v9, v2

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v1, p10

    move v2, v8

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v4, v2

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p10

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    invoke-static {v1, v10, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p5

    move v2, v4

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v8, v2

    invoke-static {v1, v9, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v2, v12

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p10

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v12, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    new-array v0, v7, [S

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_1

    add-int v4, p8, v11

    aget-short v4, p7, v4

    const v8, 0xffff

    and-int/2addr v4, v8

    iget-object v8, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v9, v10, v11

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v8

    long-to-int v9, v8

    sub-int/2addr v4, v9

    mul-int v8, v4, v4

    add-int/2addr v2, v8

    or-int/2addr v3, v2

    int-to-short v4, v4

    aput-short v4, v0, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v3, v3, 0x1f

    neg-int v3, v3

    or-int/2addr v2, v3

    new-array v3, v7, [S

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v7, :cond_2

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v8, v12, v11

    aget-object v8, v1, v8

    invoke-virtual {v4, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-int v4, v8

    int-to-short v4, v4

    aput-short v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v3, v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->is_short_half(I[SII)I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, p3

    move/from16 v4, p4

    invoke-static {v3, v8, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v8, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v8
.end method

.method expand_privkey([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BI[BI[BI[BII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v5, p11

    move-object/from16 v6, p12

    move/from16 v7, p13

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v8

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b00(I)I

    move-result v1

    add-int v9, p2, v1

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b01(I)I

    move-result v1

    add-int v2, p2, v1

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b10(I)I

    move-result v1

    add-int v10, p2, v1

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b11(I)I

    move-result v1

    add-int v11, p2, v1

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_tree(I)I

    move-result v1

    add-int v12, p2, v1

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move v3, v9

    move v9, v2

    move v2, v3

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move v3, v11

    move v11, v2

    move v2, v3

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 p5, p9

    move/from16 p6, p10

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p7, v5

    move/from16 p4, v10

    invoke-virtual/range {p2 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move/from16 v3, p4

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v4, v1, v9, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v4, v1, v11, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v4, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v4, v1, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v4, v1, v9, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v4, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v4, v7, v8

    add-int v10, v4, v8

    add-int v13, v10, v8

    invoke-static {v1, v11, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v14, v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    invoke-static {v1, v9, v6, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v14, v6, v13, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v15, p12

    move-object/from16 p3, v6

    move/from16 p4, v7

    move/from16 p6, v13

    move-object/from16 p2, v14

    move-object/from16 p5, v15

    invoke-virtual/range {p2 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v5, p6

    invoke-static {v1, v11, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 p7, p11

    move-object/from16 p5, v1

    move/from16 p6, v3

    move/from16 p4, v4

    move-object/from16 p2, v7

    invoke-virtual/range {p2 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    invoke-static {v1, v9, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 p6, v2

    move/from16 p4, v5

    move-object/from16 p2, v7

    invoke-virtual/range {p2 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p12

    move-object/from16 p3, p12

    move/from16 p4, v4

    move/from16 p6, v5

    move-object/from16 p2, v6

    move-object/from16 p5, v7

    invoke-virtual/range {p2 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v6, p3

    move/from16 v11, p6

    move/from16 v5, p7

    invoke-static {v1, v3, v6, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v6, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    invoke-static {v1, v2, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v6, v11, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p12

    move-object/from16 p2, v2

    move-object/from16 p5, v3

    move/from16 p4, v10

    invoke-virtual/range {p2 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v8, p4

    move/from16 v5, p6

    move-object/from16 v2, p12

    move-object/from16 v10, p12

    move/from16 v9, p11

    move v6, v4

    move v11, v5

    move/from16 v4, p13

    move-object v5, v2

    move v2, v12

    invoke-virtual/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move v5, v9

    invoke-virtual {v0, v1, v2, v5, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V

    return-void
.end method

.method ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V
    .locals 2

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v0, p1, p2

    invoke-virtual {p4, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqrt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object p3, v1, p3

    invoke-virtual {p4, v0, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p3

    aput-object p3, p1, p2

    return-void

    :cond_0
    add-int/2addr p2, v0

    sub-int/2addr p4, v1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V

    invoke-virtual {p0, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V

    return-void
.end method

.method ffLDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v2, p10

    move/from16 v13, p11

    invoke-static/range {p9 .. p9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    aget-object v1, v6, v7

    aput-object v1, p1, p2

    return-void

    :cond_0
    shr-int/lit8 v16, v14, 0x1

    add-int v4, v13, v14

    shl-int/lit8 v1, v14, 0x1

    add-int v17, v13, v1

    invoke-static {v6, v7, v2, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v5, p2

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move v3, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_LDLmv_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v9, v3

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v5, v17, v16

    move-object/from16 v4, p10

    move-object/from16 v6, p10

    move/from16 v8, p9

    move-object/from16 v2, p10

    move v7, v13

    move/from16 v3, v17

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v4, v9

    move v9, v3

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v5, p11, v16

    move v7, v4

    move-object/from16 v4, p10

    move/from16 v3, p11

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v10, v5

    move v4, v7

    invoke-static {v2, v9, v2, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p2, v14

    add-int v6, v4, v16

    add-int/lit8 v7, p9, -0x1

    move-object/from16 v5, p10

    move-object/from16 v8, p10

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v1

    add-int/2addr v2, v1

    move-object/from16 v1, p1

    move-object/from16 v3, p10

    move/from16 v4, p11

    move v6, v10

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    return-void
.end method

.method ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-object v1, p3, p4

    aput-object v1, p1, p2

    return-void

    :cond_0
    shr-int/lit8 v3, v1, 0x1

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v15, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v4 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_LDLmv_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v6, p6, v3

    move-object/from16 v7, p5

    move-object/from16 v5, p5

    move/from16 v11, p7

    move v8, v6

    move/from16 v6, p6

    invoke-virtual/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v12, v8

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v6, p4, v3

    move-object/from16 v7, p3

    move-object/from16 v5, p3

    move-object/from16 v9, p8

    move/from16 v10, p9

    move v8, v6

    move/from16 v6, p4

    invoke-virtual/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v10, v8

    add-int v1, p2, v1

    add-int/lit8 v7, p7, -0x1

    move-object/from16 v5, p5

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move v2, v1

    move v6, v12

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v1

    add-int/2addr v2, v1

    move-object/from16 v5, p3

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v6, v10

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    return-void
.end method

.method ffLDL_treesize(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    shl-int p1, v0, p1

    return p1
.end method

.method ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p13

    const/4 v3, 0x2

    if-ne v5, v3, :cond_0

    add-int/lit8 v3, p8, 0x4

    add-int/lit8 v4, p8, 0x8

    aget-object v5, p11, p12

    add-int/lit8 v6, p12, 0x2

    aget-object v7, p11, v6

    add-int/lit8 v8, p12, 0x1

    aget-object v9, p11, v8

    add-int/lit8 v10, p12, 0x3

    aget-object v11, p11, v10

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v5, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v5, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v5, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v9, v11, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v11, v5, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    add-int/lit8 v7, p8, 0xb

    aget-object v7, p7, v7

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v9, v7}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v11, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v5, v7}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v7

    move/from16 p13, v3

    move/from16 p14, v4

    int-to-long v3, v7

    invoke-virtual {v14, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v9, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    aget-object v7, p7, p14

    add-int/lit8 v9, p8, 0x9

    aget-object v9, p7, v9

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v4, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move/from16 p14, v6

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v5, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {v14, v15, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v4, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v5, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v6, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v4, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    add-int/lit8 v6, p8, 0xa

    aget-object v6, p7, v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v5

    int-to-long v12, v5

    invoke-virtual {v7, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v4

    int-to-long v12, v4

    invoke-virtual {v7, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v11, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v6, v7, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v11, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v7, v3, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    aput-object v7, p5, p6

    add-int/lit8 v9, p6, 0x2

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    aput-object v11, p5, v9

    add-int/lit8 v9, p6, 0x1

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    aput-object v5, p5, v9

    add-int/lit8 v6, p6, 0x3

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p5, v6

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v6, p11, p12

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v7, p11, v8

    invoke-virtual {v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v7, p11, p14

    invoke-virtual {v6, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v8, p11, v10

    invoke-virtual {v7, v8, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aget-object v7, p7, p8

    add-int/lit8 v8, p8, 0x2

    aget-object v8, p7, v8

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v4, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v4, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {v10, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    add-int/lit8 v6, p8, 0x1

    aget-object v6, p7, v6

    add-int/lit8 v7, p8, 0x3

    aget-object v7, p7, v7

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v3, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v5, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v10, v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v6, p9, p10

    invoke-virtual {v5, v9, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v7, p10, 0x1

    aget-object v7, p9, v7

    invoke-virtual {v6, v8, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v8, p10, 0x2

    aget-object v8, p9, v8

    invoke-virtual {v7, v4, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v8, p10, 0x3

    aget-object v8, p9, v8

    invoke-virtual {v7, v3, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v4, v6, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    add-int/lit8 v5, p8, 0x7

    aget-object v5, p7, v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v6, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aget-object v9, p7, p13

    add-int/lit8 v10, p8, 0x5

    aget-object v10, p7, v10

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v4, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v3, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v4, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v3, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v12, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v11, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v3, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    add-int/lit8 v7, p8, 0x6

    aget-object v7, p7, v7

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v4, v7}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v4

    int-to-long v9, v4

    invoke-virtual {v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v3, v7}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v2, v3, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v4, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    aput-object v5, p3, p4

    add-int/lit8 v5, p4, 0x2

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    aput-object v6, p3, v5

    add-int/lit8 v5, p4, 0x1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v4, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p3, v5

    add-int/lit8 v2, p4, 0x3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    aput-object v1, p3, v2

    return-void

    :cond_0
    const/4 v4, 0x1

    if-ne v5, v4, :cond_1

    aget-object v5, p11, p12

    add-int/lit8 v6, p12, 0x1

    aget-object v6, p11, v6

    add-int/lit8 v7, p8, 0x3

    aget-object v7, p7, v7

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v5, v7}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    aput-object v8, p5, p6

    add-int/lit8 v9, p6, 0x1

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v7

    int-to-long v11, v7

    invoke-virtual {v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    aput-object v7, p5, v9

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v5, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    aget-object v7, p7, p8

    add-int/lit8 v8, p8, 0x1

    aget-object v8, p7, v8

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v5, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v5, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v7, p9, p10

    invoke-virtual {v6, v9, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v8, p10, 0x1

    aget-object v8, p9, v8

    invoke-virtual {v7, v5, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    add-int/lit8 v3, p8, 0x2

    aget-object v3, p7, v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v6

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    aput-object v6, p3, p4

    add-int/lit8 v4, p4, 0x1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    aput-object v1, p3, v4

    return-void

    :cond_1
    shl-int v11, v4, v5

    shr-int/lit8 v16, v11, 0x1

    add-int v17, p8, v11

    add-int/lit8 v13, v5, -0x1

    invoke-virtual {v0, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v3

    add-int v12, v17, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v7, p6, v16

    move-object/from16 v6, p5

    move-object/from16 v4, p5

    move-object/from16 v8, p11

    move/from16 v9, p12

    move v10, v5

    move/from16 v5, p6

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v6, p15, v16

    add-int v15, p15, v11

    move-object/from16 v5, p14

    move v3, v11

    move-object/from16 v11, p5

    move-object/from16 v14, p14

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v4, p15

    move/from16 v18, v3

    move v8, v12

    move-object/from16 v3, p14

    move v12, v7

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object v8, v0

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v7, p13

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p11

    move/from16 v9, p12

    move-object v1, v3

    move v2, v4

    move v10, v6

    move/from16 v3, v18

    invoke-static {v0, v9, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p13

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v4, p4, v16

    move-object/from16 v3, p3

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v5, p14

    move/from16 v6, p15

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v11, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move-object/from16 v7, p7

    move-object/from16 v3, p14

    move v12, v4

    move-object v0, v8

    move v6, v10

    move/from16 v8, v17

    move/from16 v10, p4

    move/from16 v4, p15

    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v2, p14

    move-object/from16 p6, p3

    move/from16 p7, p4

    move/from16 p12, p13

    move-object/from16 p8, p14

    move/from16 p9, p15

    move-object/from16 p5, v1

    move-object/from16 p10, v2

    move/from16 p11, v6

    invoke-virtual/range {p5 .. p12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    return-void
.end method

.method ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez p14, :cond_0

    aget-object v3, p7, p8

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqrt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v5, v5, p13

    invoke-virtual {v4, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v5, p3, p4

    invoke-virtual {v1, v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, p3, p4

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v5, p5, p6

    invoke-virtual {v1, v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v4, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    aput-object v1, p5, p6

    return-void

    :cond_0
    const/4 v3, 0x1

    shl-int v11, v3, p14

    shr-int/lit8 v12, v11, 0x1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p9

    move/from16 v7, p10

    move-object/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p14

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_LDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object v13, v6

    move v14, v7

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v7, p16, v12

    move-object/from16 v6, p15

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v4, p15

    move/from16 v5, p16

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object v15, v8

    move v3, v9

    invoke-static {v4, v5, v15, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v1, p8

    move-object/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v6, v5

    move/from16 v17, v7

    move-object v3, v8

    move-object v5, v4

    move v4, v9

    invoke-static {v5, v6, v3, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v13, v14, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v15, v1, v13, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v7, v14, v12

    invoke-static {v3, v4, v13, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v16, v6, v11

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v8, v7

    add-int v7, v16, v12

    move-object/from16 v6, p15

    move/from16 v9, p6

    move-object v4, v5

    move/from16 v5, v16

    move/from16 v16, v12

    move v12, v8

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v4, v5

    move v6, v7

    add-int v10, p12, v16

    add-int/lit8 v14, p14, -0x1

    move/from16 v3, v16

    add-int v16, v4, v11

    move-object/from16 v5, p15

    move-object/from16 v9, p11

    move-object/from16 v15, p15

    move-object/from16 v1, p1

    move-object/from16 v7, p11

    move/from16 v8, p12

    move/from16 v19, v3

    move/from16 v18, v11

    move-object v11, v13

    move/from16 v13, p13

    move-object/from16 v3, p15

    invoke-virtual/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object v8, v0

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v9, v18

    shl-int/lit8 v1, v9, 0x1

    add-int v2, p16, v1

    move/from16 v7, p14

    move-object/from16 v1, p15

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static {v6, v7, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v5, v4

    move v4, v2

    move v2, v5

    move/from16 v5, p14

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v20, v4

    move v4, v2

    move/from16 v2, v20

    invoke-static {v1, v2, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v2, p16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v16, v4

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v4, p16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p14

    move-object/from16 v1, p15

    move/from16 v2, p16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move v7, v4

    add-int v10, p8, v19

    move-object/from16 v5, p15

    move-object/from16 v9, p7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v4, p16

    move v6, v7

    move-object v0, v8

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move v7, v6

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v2, p15

    move-object/from16 p6, p3

    move/from16 p7, p4

    move/from16 p12, p14

    move-object/from16 p8, p15

    move/from16 p9, p16

    move-object/from16 p5, v1

    move-object/from16 p10, v2

    move/from16 p11, v7

    invoke-virtual/range {p5 .. p12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    return-void
.end method

.method sign_dyn([SILorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 19

    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;-><init>()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;-><init>()V

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v0, v0, p14

    iput-object v0, v3, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_init(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)V

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    invoke-virtual/range {v1 .. v18}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->do_sign_dyn(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method sign_tree([SILorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 13

    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v0, v0, p8

    iput-object v0, v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    move-object/from16 v12, p3

    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_init(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)V

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->do_sign_tree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method skoff_b00(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method skoff_b01(I)I
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result p1

    return p1
.end method

.method skoff_b10(I)I
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method skoff_b11(I)I
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method skoff_tree(I)I
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    return p1
.end method

.method smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V
    .locals 5

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v3, p4, v0

    aget-byte v3, p3, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
