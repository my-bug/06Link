.class Lio/github/jaredmdobson/concentus/QuantizeBands;
.super Ljava/lang/Object;
.source "QuantizeBands.java"


# static fields
.field private static final beta_coef:[I

.field private static final beta_intra:I = 0x1333

.field private static final pred_coef:[I

.field private static small_energy_icdf:[S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x5300

    const/16 v1, 0x4000

    const/16 v2, 0x7300

    const/16 v3, 0x6600

    .line 40
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/github/jaredmdobson/concentus/QuantizeBands;->pred_coef:[I

    const/16 v0, 0x2f5c

    const/16 v1, 0x199a

    const/16 v2, 0x75c3

    const/16 v3, 0x570a

    .line 41
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/github/jaredmdobson/concentus/QuantizeBands;->beta_coef:[I

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/QuantizeBands;->small_energy_icdf:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x2s
        0x1s
        0x0s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static amp2Log2(Lio/github/jaredmdobson/concentus/CeltMode;II[I[III)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 452
    iget v3, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v3, v3, v1

    add-int/2addr v3, p5

    add-int/2addr v3, v2

    iget v4, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v4, v4, v1

    add-int/2addr v4, v2

    aget v4, p3, v4

    const/4 v5, 0x2

    .line 453
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v4

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->celt_log2(I)I

    move-result v4

    sget-object v5, Lio/github/jaredmdobson/concentus/CeltTables;->eMeans:[B

    aget-byte v5, v5, v2

    const/4 v6, 0x6

    .line 454
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_1
    if-ge v2, p2, :cond_2

    .line 457
    iget v3, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v3, v3, v1

    add-int/2addr v3, p5

    add-int/2addr v3, v2

    const/16 v4, -0x3800

    aput v4, p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p6, :cond_0

    return-void
.end method

.method static amp2Log2(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[II)V
    .locals 6

    const/4 p0, 0x0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 427
    aget-object v2, p4, v0

    aget-object v3, p3, v0

    aget v3, v3, v1

    const/4 v4, 0x2

    .line 428
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->celt_log2(I)I

    move-result v3

    sget-object v4, Lio/github/jaredmdobson/concentus/CeltTables;->eMeans:[B

    aget-byte v4, v4, v1

    const/4 v5, 0x6

    .line 429
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_1
    if-ge v1, p2, :cond_2

    .line 432
    aget-object v2, p4, v0

    const/16 v3, -0x3800

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p5, :cond_0

    return-void
.end method

.method static loss_distortion([[I[[IIIII)I
    .locals 5

    const/4 p4, 0x0

    const/4 v0, 0x0

    :cond_0
    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_1

    .line 51
    aget-object v2, p0, p4

    aget v2, v2, v1

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v2

    aget-object v4, p1, p4

    aget v4, v4, v1

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v3

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v2

    .line 52
    invoke-static {v0, v2, v2}, Lio/github/jaredmdobson/concentus/Inlines;->MAC16_16(III)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, 0x1

    if-lt p4, p5, :cond_0

    const/16 p0, 0xe

    .line 56
    invoke-static {v0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result p0

    const/16 p1, 0xc8

    invoke-static {p1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result p0

    return p0
.end method

.method static quant_coarse_energy(Lio/github/jaredmdobson/concentus/CeltMode;III[[I[[II[[ILio/github/jaredmdobson/concentus/EntropyCoder;IIIILio/github/jaredmdobson/concentus/BoxedValueInt;III)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v5, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v1, p11

    move-object/from16 v2, p13

    .line 160
    new-instance v3, Lio/github/jaredmdobson/concentus/EntropyCoder;

    invoke-direct {v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;-><init>()V

    const/16 v16, 0x1

    const/4 v4, 0x0

    if-nez p12, :cond_1

    if-nez p14, :cond_0

    .line 166
    iget v6, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    mul-int/lit8 v7, v10, 0x2

    sub-int v8, p2, p1

    mul-int v7, v7, v8

    if-le v6, v7, :cond_0

    mul-int v8, v8, v10

    if-le v1, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 167
    :goto_1
    iget v7, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    mul-int v7, v7, v5

    mul-int v7, v7, p15

    mul-int/lit16 v8, v10, 0x200

    div-int v17, v7, v8

    .line 168
    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    move/from16 v12, p1

    move/from16 v13, p3

    move-object/from16 v11, p5

    move v15, v10

    move-object/from16 v10, p4

    invoke-static/range {v10 .. v15}, Lio/github/jaredmdobson/concentus/QuantizeBands;->loss_distortion([[I[[IIIII)I

    move-result v7

    move v8, v6

    move v10, v15

    .line 170
    invoke-virtual {v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v6

    add-int/lit8 v11, v6, 0x3

    if-le v11, v5, :cond_2

    const/4 v15, 0x0

    const/16 v18, 0x0

    goto :goto_2

    :cond_2
    move/from16 v15, p14

    move/from16 v18, v8

    :goto_2
    sub-int v8, p2, p1

    const/16 v11, 0xa

    const/16 v12, 0x4000

    if-le v8, v11, :cond_3

    const/4 v8, 0x7

    .line 177
    invoke-static {v1, v8}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v1

    invoke-static {v12, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MIN32(II)I

    move-result v12

    :cond_3
    if-eqz p16, :cond_4

    const/16 v12, 0xc00

    const/16 v13, 0xc00

    goto :goto_3

    :cond_4
    move v13, v12

    .line 182
    :goto_3
    invoke-virtual {v3, v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->Assign(Lio/github/jaredmdobson/concentus/EntropyCoder;)V

    .line 184
    iget v1, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v10, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v1

    .line 185
    iget v8, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v10, v8}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v8

    .line 186
    aget-object v11, p5, v4

    aget-object v12, v1, v4

    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v11, v4, v12, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 188
    aget-object v12, p5, v16

    aget-object v14, v1, v16

    iget v11, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v12, v4, v14, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    if-nez v15, :cond_7

    if-eqz v18, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v20, v1

    move-object/from16 p3, v3

    move/from16 v19, v7

    move/from16 p12, v15

    const/4 v15, 0x0

    goto :goto_5

    .line 192
    :cond_7
    :goto_4
    sget-object v11, Lio/github/jaredmdobson/concentus/CeltTables;->e_prob_model:[[[S

    aget-object v11, v11, p10

    aget-object v11, v11, v16

    const/4 v12, 0x1

    move/from16 v2, p2

    move/from16 v14, p16

    move-object v4, v1

    move-object/from16 p3, v3

    move/from16 v19, v7

    move-object v7, v11

    move/from16 p12, v15

    const/4 v15, 0x0

    move/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v11, p10

    invoke-static/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/QuantizeBands;->quant_coarse_energy_impl(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[III[S[[ILio/github/jaredmdobson/concentus/EntropyCoder;IIIII)I

    move-result v7

    move-object/from16 v20, v4

    move v4, v7

    :goto_5
    move-object/from16 v21, v8

    if-nez v18, :cond_d

    .line 198
    new-instance v0, Lio/github/jaredmdobson/concentus/EntropyCoder;

    invoke-direct {v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;-><init>()V

    .line 206
    invoke-virtual {v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v1

    .line 208
    invoke-virtual {v0, v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->Assign(Lio/github/jaredmdobson/concentus/EntropyCoder;)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->range_bytes()I

    move-result v2

    .line 211
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->range_bytes()I

    move-result v3

    sub-int/2addr v3, v2

    if-eqz v3, :cond_8

    .line 216
    new-array v5, v3, [B

    .line 218
    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/EntropyCoder;->get_buffer()[B

    move-result-object v7

    invoke-static {v7, v2, v5, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v7, p3

    .line 221
    invoke-virtual {v9, v7}, Lio/github/jaredmdobson/concentus/EntropyCoder;->Assign(Lio/github/jaredmdobson/concentus/EntropyCoder;)V

    .line 223
    sget-object v7, Lio/github/jaredmdobson/concentus/CeltTables;->e_prob_model:[[[S

    aget-object v7, v7, p10

    aget-object v7, v7, v18

    const/4 v12, 0x0

    move-object/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v14, p16

    move-object/from16 p14, v0

    move/from16 p15, v1

    move/from16 v22, v2

    move/from16 v23, v3

    move v15, v4

    move-object/from16 v24, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v14}, Lio/github/jaredmdobson/concentus/QuantizeBands;->quant_coarse_energy_impl(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[III[S[[ILio/github/jaredmdobson/concentus/EntropyCoder;IIIII)I

    move-result v1

    if-eqz p12, :cond_b

    if-lt v15, v1, :cond_9

    if-ne v15, v1, :cond_b

    .line 226
    invoke-virtual {v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell_frac()I

    move-result v1

    add-int v1, v1, v17

    move/from16 v2, p15

    if-le v1, v2, :cond_b

    :cond_9
    move-object/from16 v1, p14

    .line 227
    invoke-virtual {v9, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->Assign(Lio/github/jaredmdobson/concentus/EntropyCoder;)V

    move-object/from16 v5, v24

    if-eqz v5, :cond_a

    move/from16 v2, v22

    move/from16 v3, v23

    const/4 v15, 0x0

    .line 230
    invoke-virtual {v1, v5, v15, v2, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->write_buffer([BIII)V

    goto :goto_7

    :cond_a
    const/4 v15, 0x0

    .line 232
    :goto_7
    aget-object v1, v20, v15

    aget-object v2, p5, v15

    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v1, v15, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    aget-object v1, v21, v15

    aget-object v2, p7, v15

    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v1, v15, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    if-ne v10, v1, :cond_c

    .line 235
    aget-object v1, v20, v16

    aget-object v2, p5, v16

    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v1, v15, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    aget-object v1, v21, v16

    aget-object v2, p7, v16

    iget v0, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v1, v15, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_b
    move/from16 v16, v18

    :cond_c
    :goto_8
    move/from16 v18, v16

    goto :goto_9

    :cond_d
    move-object/from16 v0, p0

    move/from16 v10, p9

    .line 241
    aget-object v1, v20, v15

    aget-object v2, p5, v15

    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v1, v15, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    aget-object v1, v21, v15

    aget-object v2, p7, v15

    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v1, v15, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    if-ne v10, v1, :cond_e

    .line 244
    aget-object v1, v20, v16

    aget-object v2, p5, v16

    iget v3, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v1, v15, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    aget-object v1, v21, v16

    aget-object v2, p7, v16

    iget v0, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    invoke-static {v1, v15, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_9
    if-eqz v18, :cond_f

    move-object/from16 v2, p13

    move/from16 v0, v19

    .line 250
    iput v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void

    :cond_f
    move-object/from16 v2, p13

    move/from16 v0, v19

    .line 252
    sget-object v1, Lio/github/jaredmdobson/concentus/QuantizeBands;->pred_coef:[I

    aget v1, v1, p10

    invoke-static {v1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    iget v3, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v1

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->ADD32(II)I

    move-result v0

    iput v0, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static quant_coarse_energy_impl(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[III[S[[ILio/github/jaredmdobson/concentus/EntropyCoder;IIIII)I
    .locals 19

    move/from16 v0, p2

    move/from16 v1, p5

    move-object/from16 v2, p9

    move/from16 v3, p10

    move/from16 v4, p12

    const/4 v5, 0x2

    .line 66
    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v7, v6, v7

    const/4 v8, 0x1

    aput v7, v6, v8

    const/4 v9, 0x3

    add-int/lit8 v10, p6, 0x3

    if-gt v10, v1, :cond_0

    .line 71
    invoke-virtual {v2, v4, v9}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    :cond_0
    if-eqz v4, :cond_1

    const/16 v4, 0x1333

    const/4 v9, 0x0

    goto :goto_0

    .line 78
    :cond_1
    sget-object v4, Lio/github/jaredmdobson/concentus/QuantizeBands;->beta_coef:[I

    aget v4, v4, p11

    .line 79
    sget-object v9, Lio/github/jaredmdobson/concentus/QuantizeBands;->pred_coef:[I

    aget v9, v9, p11

    :goto_0
    move/from16 v10, p1

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v0, :cond_d

    const/4 v12, 0x0

    .line 93
    :goto_2
    aget-object v13, p3, v12

    aget v13, v13, v10

    .line 94
    aget-object v14, p4, v12

    aget v14, v14, v10

    const/16 v15, -0x2400

    invoke-static {v15, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v14

    .line 95
    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->EXTEND32(I)I

    move-result v15

    const/4 v7, 0x7

    invoke-static {v15, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v15

    const/16 p6, 0x7

    invoke-static {v9, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v7

    const/16 v5, 0x8

    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v7

    sub-int/2addr v15, v7

    aget v7, v6, v12

    sub-int/2addr v15, v7

    const/high16 v7, 0x10000

    add-int/2addr v7, v15

    shr-int/lit8 v7, v7, 0x11

    .line 98
    aget-object v16, p4, v12

    aget v5, v16, v10

    move/from16 v8, p13

    .line 99
    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->SUB32(II)I

    move-result v5

    const/16 v0, -0x7000

    .line 98
    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->EXTRACT16(I)S

    move-result v0

    const/16 v5, 0xa

    if-gez v7, :cond_3

    if-ge v13, v0, :cond_3

    .line 103
    invoke-static {v0, v13}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v0

    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v0

    add-int/2addr v0, v7

    if-lez v0, :cond_2

    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    move v7, v0

    .line 111
    :cond_3
    :goto_3
    invoke-virtual {v2}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v0

    sub-int v0, v1, v0

    mul-int/lit8 v13, v3, 0x3

    sub-int v17, p2, v10

    mul-int v13, v13, v17

    sub-int v13, v0, v13

    move/from16 v5, p1

    if-eq v10, v5, :cond_5

    const/16 v1, 0x1e

    if-ge v13, v1, :cond_5

    const/16 v1, 0x18

    if-ge v13, v1, :cond_4

    const/4 v1, 0x1

    .line 115
    invoke-static {v1, v7}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v18

    move/from16 v1, v18

    goto :goto_4

    :cond_4
    move v1, v7

    :goto_4
    const/16 v5, 0x10

    if-ge v13, v5, :cond_6

    const/4 v5, -0x1

    .line 118
    invoke-static {v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v7

    :cond_6
    :goto_5
    const/4 v5, 0x2

    if-eqz p14, :cond_7

    if-lt v10, v5, :cond_7

    const/4 v13, 0x0

    .line 122
    invoke-static {v1, v13}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v1

    :cond_7
    const/16 v13, 0xf

    if-lt v0, v13, :cond_8

    const/16 v0, 0x14

    .line 126
    invoke-static {v10, v0}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 127
    new-instance v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v5, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 128
    aget-short v1, p7, v0

    shl-int/lit8 v1, v1, 0x7

    move v13, v0

    int-to-long v0, v1

    move-object/from16 v18, v6

    const/4 v6, 0x1

    add-int/2addr v13, v6

    aget-short v13, p7, v13

    shl-int/lit8 v13, v13, 0x6

    invoke-static {v2, v5, v0, v1, v13}, Lio/github/jaredmdobson/concentus/Laplace;->ec_laplace_encode(Lio/github/jaredmdobson/concentus/EntropyCoder;Lio/github/jaredmdobson/concentus/BoxedValueInt;JI)V

    .line 129
    iget v5, v5, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move v0, v5

    :goto_6
    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    move-object/from16 v18, v6

    const/4 v6, 0x1

    if-lt v0, v5, :cond_a

    .line 131
    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v0

    const/4 v6, -0x1

    invoke-static {v6, v0}, Lio/github/jaredmdobson/concentus/Inlines;->IMAX(II)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    if-gez v0, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    const/4 v13, 0x0

    rsub-int/lit8 v6, v6, 0x0

    xor-int/2addr v1, v6

    .line 132
    sget-object v6, Lio/github/jaredmdobson/concentus/QuantizeBands;->small_energy_icdf:[S

    invoke-virtual {v2, v1, v6, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_icdf(I[SI)V

    goto :goto_6

    :cond_a
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v13, 0x0

    if-lt v0, v5, :cond_b

    .line 134
    invoke-static {v13, v1}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v0

    neg-int v1, v0

    .line 135
    invoke-virtual {v2, v1, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bit_logp(II)V

    goto :goto_8

    :cond_b
    const/4 v0, -0x1

    .line 139
    :goto_8
    aget-object v1, p8, v12

    const/4 v6, 0x7

    invoke-static {v15, v6}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v13

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v15

    sub-int/2addr v13, v15

    aput v13, v1, v10

    sub-int/2addr v7, v0

    .line 140
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->abs(I)I

    move-result v1

    add-int/2addr v11, v1

    .line 141
    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v0

    .line 143
    invoke-static {v9, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    const/16 v6, 0x8

    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v1

    aget v6, v18, v12

    add-int/2addr v1, v6

    const/4 v6, 0x7

    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v7

    add-int/2addr v1, v7

    const/high16 v7, -0x380000

    .line 144
    invoke-static {v7, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v1

    .line 145
    aget-object v7, p4, v12

    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v1

    aput v1, v7, v10

    .line 146
    aget v1, v18, v12

    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v6

    add-int/2addr v1, v6

    const/16 v6, 0x8

    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v0

    invoke-static {v4, v0}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v0

    sub-int/2addr v1, v0

    aput v1, v18, v12

    add-int/lit8 v12, v12, 0x1

    if-lt v12, v3, :cond_c

    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p2

    move/from16 v1, p5

    move-object/from16 v6, v18

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_c
    move/from16 v0, p2

    move/from16 v1, p5

    move-object/from16 v6, v18

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_d
    if-eqz p14, :cond_e

    const/4 v13, 0x0

    return v13

    :cond_e
    return v11
.end method

.method static quant_energy_finalise(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[I[I[IILio/github/jaredmdobson/concentus/EntropyCoder;I)V
    .locals 10

    move/from16 p0, p9

    const/4 v0, 0x0

    move/from16 v1, p7

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    move v3, p1

    :goto_1
    if-ge v3, p2, :cond_4

    if-lt v1, p0, :cond_4

    .line 296
    aget v4, p5, v3

    const/16 v5, 0x8

    if-ge v4, v5, :cond_3

    aget v4, p6, v3

    if-eq v4, v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    .line 304
    :cond_1
    aget-object v5, p4, v4

    aget v5, v5, v3

    const/4 v6, 0x1

    if-gez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_2
    int-to-long v7, v5

    move-object/from16 v9, p8

    .line 305
    invoke-virtual {v9, v7, v8, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bits(JI)V

    const/16 v7, 0xa

    .line 306
    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v5

    add-int/lit16 v5, v5, -0x200

    aget v7, p5, v3

    add-int/2addr v7, v6

    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v5

    .line 307
    aget-object v6, p3, v4

    aget v7, v6, v3

    add-int/2addr v7, v5

    aput v7, v6, v3

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, 0x1

    if-lt v4, p0, :cond_1

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v9, p8

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v9, p8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static quant_fine_energy(Lio/github/jaredmdobson/concentus/CeltMode;II[[I[[I[ILio/github/jaredmdobson/concentus/EntropyCoder;I)V
    .locals 8

    :goto_0
    if-ge p1, p2, :cond_4

    .line 262
    aget p0, p5, p1

    const/4 v0, 0x1

    shl-int v1, v0, p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    const/4 v2, 0x0

    .line 271
    :cond_1
    aget-object v3, p4, v2

    aget v3, v3, p1

    const/16 v4, 0x200

    add-int/2addr v3, v4

    aget v5, p5, p1

    rsub-int/lit8 v6, v5, 0xa

    shr-int/2addr v3, v6

    add-int/lit8 v6, v1, -0x1

    if-le v3, v6, :cond_2

    move v3, v6

    :cond_2
    if-gez v3, :cond_3

    const/4 v3, 0x0

    :cond_3
    int-to-long v6, v3

    .line 278
    invoke-virtual {p6, v6, v7, v5}, Lio/github/jaredmdobson/concentus/EntropyCoder;->enc_bits(JI)V

    const/16 v5, 0xa

    .line 281
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v3

    add-int/2addr v3, v4

    aget v5, p5, p1

    .line 280
    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v3

    .line 279
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v3

    .line 284
    aget-object v4, p3, v2

    aget v5, v4, p1

    add-int/2addr v5, v3

    aput v5, v4, p1

    .line 285
    aget-object v4, p4, v2

    aget v5, v4, p1

    sub-int/2addr v5, v3

    aput v5, v4, p1

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p7, :cond_1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static unquant_coarse_energy(Lio/github/jaredmdobson/concentus/CeltMode;II[IILio/github/jaredmdobson/concentus/EntropyCoder;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 315
    sget-object v2, Lio/github/jaredmdobson/concentus/CeltTables;->e_prob_model:[[[S

    aget-object v2, v2, p7

    aget-object v2, v2, p4

    const/4 v3, 0x2

    .line 317
    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    if-eqz p4, :cond_0

    const/16 v7, 0x1333

    const/4 v8, 0x0

    goto :goto_0

    .line 327
    :cond_0
    sget-object v7, Lio/github/jaredmdobson/concentus/QuantizeBands;->beta_coef:[I

    aget v7, v7, p7

    .line 328
    sget-object v8, Lio/github/jaredmdobson/concentus/QuantizeBands;->pred_coef:[I

    aget v8, v8, p7

    .line 331
    :goto_0
    iget v9, v1, Lio/github/jaredmdobson/concentus/EntropyCoder;->storage:I

    const/16 v10, 0x8

    mul-int/lit8 v9, v9, 0x8

    move/from16 v11, p1

    move/from16 v12, p2

    :goto_1
    if-ge v11, v12, :cond_6

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v3, :cond_1

    const/4 v14, 0x1

    goto :goto_3

    :cond_1
    const/4 v14, 0x0

    .line 343
    :goto_3
    invoke-static {v14}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 344
    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->tell()I

    move-result v14

    sub-int v14, v9, v14

    const/16 v15, 0xf

    const/16 v16, 0x0

    const/4 v5, 0x7

    if-lt v14, v15, :cond_2

    const/16 v14, 0x14

    .line 347
    invoke-static {v11, v14}, Lio/github/jaredmdobson/concentus/Inlines;->IMIN(II)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    .line 348
    aget-short v15, v2, v14

    shl-int/2addr v15, v5

    move/from16 p1, v11

    int-to-long v10, v15

    add-int/2addr v14, v6

    aget-short v14, v2, v14

    shl-int/lit8 v14, v14, 0x6

    invoke-static {v1, v10, v11, v14}, Lio/github/jaredmdobson/concentus/Laplace;->ec_laplace_decode(Lio/github/jaredmdobson/concentus/EntropyCoder;JI)I

    move-result v10

    goto :goto_4

    :cond_2
    move/from16 p1, v11

    if-lt v14, v3, :cond_3

    .line 351
    sget-object v10, Lio/github/jaredmdobson/concentus/QuantizeBands;->small_energy_icdf:[S

    invoke-virtual {v1, v10, v3}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v10

    shr-int/lit8 v11, v10, 0x1

    and-int/2addr v10, v6

    neg-int v10, v10

    xor-int/2addr v10, v11

    goto :goto_4

    :cond_3
    if-lt v14, v6, :cond_4

    const-wide/16 v10, 0x1

    .line 354
    invoke-virtual {v1, v10, v11}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x0

    goto :goto_4

    :cond_4
    const/4 v10, -0x1

    :goto_4
    const/16 v11, 0xa

    .line 358
    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v10

    .line 360
    iget v11, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v11, v11, v13

    add-int v11, p1, v11

    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v14, v14, v13

    add-int v14, p1, v14

    aget v14, p3, v14

    const/16 v15, -0x2400

    invoke-static {v15, v14}, Lio/github/jaredmdobson/concentus/Inlines;->MAX16(II)I

    move-result v14

    aput v14, p3, v11

    .line 361
    iget v11, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v11, v11, v13

    add-int v11, p1, v11

    aget v11, p3, v11

    invoke-static {v8, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v11

    const/16 v14, 0x8

    invoke-static {v11, v14}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v11

    aget v14, v4, v13

    add-int/2addr v11, v14

    invoke-static {v10, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v14

    add-int/2addr v11, v14

    const/high16 v14, -0x380000

    .line 362
    invoke-static {v14, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v11

    .line 363
    iget v14, v0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v14, v14, v13

    add-int v14, p1, v14

    invoke-static {v11, v5}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v11

    aput v11, p3, v14

    .line 364
    aget v11, v4, v13

    invoke-static {v10, v5}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v5

    add-int/2addr v11, v5

    const/16 v14, 0x8

    invoke-static {v10, v14}, Lio/github/jaredmdobson/concentus/Inlines;->PSHR32(II)I

    move-result v5

    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    sub-int/2addr v11, v5

    aput v11, v4, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, p6

    if-lt v13, v5, :cond_5

    add-int/lit8 v11, p1, 0x1

    const/4 v5, 0x0

    const/16 v10, 0x8

    goto/16 :goto_1

    :cond_5
    move/from16 v11, p1

    const/4 v5, 0x0

    const/16 v10, 0x8

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method static unquant_energy_finalise(Lio/github/jaredmdobson/concentus/CeltMode;II[I[I[IILio/github/jaredmdobson/concentus/EntropyCoder;I)V
    .locals 11

    move/from16 v0, p8

    const/4 v1, 0x0

    move/from16 v2, p6

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    move v4, p1

    :goto_1
    if-ge v4, p2, :cond_3

    if-lt v2, v0, :cond_3

    .line 396
    aget v5, p4, v4

    const/16 v6, 0x8

    if-ge v5, v6, :cond_2

    aget v5, p5, v4

    if-eq v5, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    const/4 v6, 0x1

    move-object/from16 v7, p7

    .line 403
    invoke-virtual {v7, v6}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bits(I)I

    move-result v8

    const/16 v9, 0xa

    .line 404
    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->SHL16(II)I

    move-result v8

    add-int/lit16 v8, v8, -0x200

    aget v9, p4, v4

    add-int/2addr v9, v6

    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->SHR16(II)I

    move-result v8

    .line 405
    iget v9, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v9, v9, v5

    add-int/2addr v9, v4

    aget v10, p3, v9

    add-int/2addr v10, v8

    aput v10, p3, v9

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v5, v6

    if-lt v5, v0, :cond_1

    goto :goto_3

    :cond_2
    :goto_2
    move-object/from16 v7, p7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v7, p7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static unquant_fine_energy(Lio/github/jaredmdobson/concentus/CeltMode;II[I[ILio/github/jaredmdobson/concentus/EntropyCoder;I)V
    .locals 4

    :goto_0
    if-ge p1, p2, :cond_2

    .line 373
    aget v0, p4, p1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 380
    :cond_1
    aget v1, p4, p1

    invoke-virtual {p5, v1}, Lio/github/jaredmdobson/concentus/EntropyCoder;->dec_bits(I)I

    move-result v1

    const/16 v2, 0xa

    .line 382
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SHL32(II)I

    move-result v1

    const/16 v2, 0x200

    add-int/2addr v1, v2

    aget v3, p4, p1

    .line 381
    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->SHR32(II)I

    move-result v1

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->SUB16(II)I

    move-result v1

    .line 385
    iget v2, p0, Lio/github/jaredmdobson/concentus/CeltMode;->nbEBands:I

    mul-int v2, v2, v0

    add-int/2addr v2, p1

    aget v3, p3, v2

    add-int/2addr v3, v1

    aput v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p6, :cond_1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
