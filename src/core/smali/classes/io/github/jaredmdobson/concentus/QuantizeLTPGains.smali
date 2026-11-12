.class Lio/github/jaredmdobson/concentus/QuantizeLTPGains;
.super Ljava/lang/Object;
.source "QuantizeLTPGains.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_quant_LTP_gains([S[BLio/github/jaredmdobson/concentus/BoxedValueByte;Lio/github/jaredmdobson/concentus/BoxedValueInt;[IIII)V
    .locals 27

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p7

    const/4 v4, 0x4

    .line 47
    new-array v4, v4, [B

    const v5, 0x7fffffff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x3

    if-ge v7, v9, :cond_3

    .line 71
    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTP_gain_BITS_Q5_ptrs:[[S

    aget-object v20, v9, v7

    .line 72
    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTP_vq_ptrs_Q7:[[[B

    aget-object v18, v9, v7

    .line 73
    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTP_vq_gain_ptrs_Q7:[[S

    aget-object v19, v9, v7

    .line 74
    sget-object v9, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTP_vq_sizes:[B

    aget-byte v23, v9, v7

    .line 81
    iget v9, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_1
    if-ge v11, v3, :cond_0

    rsub-int v13, v9, 0x1855

    .line 83
    invoke-static {v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_log2lin(I)I

    move-result v13

    const/16 v24, 0x33

    add-int/lit8 v22, v13, -0x33

    move v13, v11

    .line 86
    new-instance v11, Lio/github/jaredmdobson/concentus/BoxedValueByte;

    aget-byte v14, v4, v13

    invoke-direct {v11, v14}, Lio/github/jaredmdobson/concentus/BoxedValueByte;-><init>(B)V

    move v14, v12

    .line 87
    new-instance v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v12, v6}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move/from16 v16, v13

    .line 88
    new-instance v13, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v13, v6}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    move/from16 v21, p5

    move v10, v14

    move/from16 v25, v16

    const/16 v26, 0x5

    move-object/from16 v14, p0

    move-object/from16 v16, p4

    .line 89
    invoke-static/range {v11 .. v23}, Lio/github/jaredmdobson/concentus/VQ_WMat_EC;->silk_VQ_WMat_EC(Lio/github/jaredmdobson/concentus/BoxedValueByte;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SI[II[[B[S[SIII)V

    .line 104
    iget v12, v12, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 105
    iget v13, v13, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 106
    iget-byte v11, v11, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    aput-byte v11, v4, v25

    .line 108
    invoke-static {v10, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_POS_SAT32(II)I

    move-result v12

    add-int v24, v24, v13

    .line 110
    invoke-static/range {v24 .. v24}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit16 v9, v9, -0x380

    .line 109
    invoke-static {v6, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v9

    add-int/lit8 v15, v15, 0x5

    add-int/lit8 v17, v17, 0x19

    add-int/lit8 v11, v25, 0x1

    goto :goto_1

    :cond_0
    move v10, v12

    const/16 v26, 0x5

    const v11, 0x7ffffffe

    .line 117
    invoke-static {v11, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v10

    if-ge v10, v5, :cond_1

    int-to-byte v5, v7

    .line 121
    iput-byte v5, v1, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    .line 122
    invoke-static {v4, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v9

    move v5, v10

    :cond_1
    if-eqz p6, :cond_2

    const/16 v9, 0x3010

    if-ge v10, v9, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v26, 0x5

    .line 132
    :goto_2
    sget-object v4, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LTP_vq_ptrs_Q7:[[[B

    iget-byte v1, v1, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    aget-object v1, v4, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_5

    const/4 v5, 0x0

    const/4 v7, 0x5

    :goto_4
    if-ge v5, v7, :cond_4

    mul-int/lit8 v9, v4, 0x5

    add-int/2addr v9, v5

    .line 135
    aget-byte v10, v0, v4

    aget-object v10, v1, v10

    aget-byte v10, v10, v5

    const/4 v11, 0x7

    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v10

    int-to-short v10, v10

    aput-short v10, p0, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/16 v26, 0x5

    goto :goto_3

    .line 139
    :cond_5
    iput v8, v2, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method
