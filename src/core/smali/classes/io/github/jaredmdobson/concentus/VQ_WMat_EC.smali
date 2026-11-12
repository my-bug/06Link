.class Lio/github/jaredmdobson/concentus/VQ_WMat_EC;
.super Ljava/lang/Object;
.source "VQ_WMat_EC.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_VQ_WMat_EC(Lio/github/jaredmdobson/concentus/BoxedValueByte;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SI[II[[B[S[SIII)V
    .locals 17

    move-object/from16 v0, p1

    const v1, 0x7fffffff

    .line 59
    iput v1, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v1, 0x0

    move/from16 v2, p12

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 62
    aget-object v4, p7, v4

    .line 63
    aget-short v6, p8, v3

    .line 65
    aget-short v7, p3, p4

    aget-byte v8, v4, v1

    const/4 v9, 0x7

    invoke-static {v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-short v7, v7

    add-int/lit8 v8, p4, 0x1

    .line 66
    aget-short v8, p3, v8

    const/4 v10, 0x1

    aget-byte v11, v4, v10

    invoke-static {v11, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v11

    sub-int/2addr v8, v11

    int-to-short v8, v8

    add-int/lit8 v11, p4, 0x2

    .line 67
    aget-short v11, p3, v11

    const/4 v12, 0x2

    aget-byte v13, v4, v12

    invoke-static {v13, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v13

    sub-int/2addr v11, v13

    int-to-short v11, v11

    add-int/lit8 v13, p4, 0x3

    .line 68
    aget-short v13, p3, v13

    const/4 v14, 0x3

    aget-byte v15, v4, v14

    invoke-static {v15, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v15

    sub-int/2addr v13, v15

    int-to-short v13, v13

    const/4 v15, 0x4

    add-int/lit8 v16, p4, 0x4

    .line 69
    aget-short v16, p3, v16

    aget-byte v4, v4, v15

    invoke-static {v4, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    sub-int v4, v16, v4

    int-to-short v4, v4

    const/4 v9, 0x5

    new-array v9, v9, [S

    aput-short v7, v9, v1

    aput-short v8, v9, v10

    aput-short v11, v9, v12

    aput-short v13, v9, v14

    aput-short v4, v9, v15

    .line 72
    aget-short v4, p9, v3

    move/from16 v7, p10

    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    move/from16 v8, p11

    .line 75
    invoke-static {v6, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB32(II)I

    move-result v11

    invoke-static {v11, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max(II)I

    move-result v11

    const/16 v13, 0xa

    invoke-static {v4, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    .line 77
    :goto_1
    invoke-static {v11}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v11, p6, 0x1

    .line 80
    aget v11, p5, v11

    aget-short v13, v9, v10

    invoke-static {v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    add-int/lit8 v13, p6, 0x2

    .line 81
    aget v13, p5, v13

    const/16 v16, 0x0

    aget-short v1, v9, v12

    invoke-static {v11, v13, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v11, p6, 0x3

    .line 82
    aget v11, p5, v11

    aget-short v13, v9, v14

    invoke-static {v1, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v11, p6, 0x4

    .line 83
    aget v11, p5, v11

    aget-short v13, v9, v15

    invoke-static {v1, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    .line 84
    invoke-static {v1, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    .line 85
    aget v11, p5, p6

    aget-short v13, v9, v16

    invoke-static {v1, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    .line 86
    aget-short v11, v9, v16

    invoke-static {v4, v1, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v4, p6, 0x7

    .line 89
    aget v4, p5, v4

    aget-short v11, v9, v12

    invoke-static {v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    add-int/lit8 v11, p6, 0x8

    .line 90
    aget v11, p5, v11

    aget-short v13, v9, v14

    invoke-static {v4, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    add-int/lit8 v11, p6, 0x9

    .line 91
    aget v11, p5, v11

    aget-short v13, v9, v15

    invoke-static {v4, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    .line 92
    invoke-static {v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    add-int/lit8 v11, p6, 0x6

    .line 93
    aget v11, p5, v11

    aget-short v13, v9, v10

    invoke-static {v4, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    .line 94
    aget-short v11, v9, v10

    invoke-static {v1, v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v4, p6, 0xd

    .line 97
    aget v4, p5, v4

    aget-short v11, v9, v14

    invoke-static {v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    add-int/lit8 v11, p6, 0xe

    .line 98
    aget v11, p5, v11

    aget-short v13, v9, v15

    invoke-static {v4, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    .line 99
    invoke-static {v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    add-int/lit8 v11, p6, 0xc

    .line 100
    aget v11, p5, v11

    aget-short v13, v9, v12

    invoke-static {v4, v11, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    .line 101
    aget-short v11, v9, v12

    invoke-static {v1, v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v4, p6, 0x13

    .line 104
    aget v4, p5, v4

    aget-short v11, v9, v15

    invoke-static {v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    .line 105
    invoke-static {v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    add-int/lit8 v11, p6, 0x12

    .line 106
    aget v11, p5, v11

    aget-short v12, v9, v14

    invoke-static {v4, v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    .line 107
    aget-short v11, v9, v14

    invoke-static {v1, v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    add-int/lit8 v4, p6, 0x18

    .line 110
    aget v4, p5, v4

    aget-short v11, v9, v15

    invoke-static {v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    .line 111
    aget-short v9, v9, v15

    invoke-static {v1, v4, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 113
    :goto_2
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 116
    iget v4, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    if-ge v1, v4, :cond_2

    .line 117
    iput v1, v0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    int-to-byte v1, v3

    move-object/from16 v4, p0

    .line 118
    iput-byte v1, v4, Lio/github/jaredmdobson/concentus/BoxedValueByte;->Val:B

    move-object/from16 v1, p2

    .line 119
    iput v6, v1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    goto :goto_3

    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v1, p2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    return-void
.end method
