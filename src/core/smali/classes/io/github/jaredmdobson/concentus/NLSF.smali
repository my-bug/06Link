.class Lio/github/jaredmdobson/concentus/NLSF;
.super Ljava/lang/Object;
.source "NLSF.java"


# static fields
.field private static final BIN_DIV_STEPS_A2NLSF:I = 0x3

.field private static final MAX_ITERATIONS_A2NLSF:I = 0x1e

.field private static final MAX_STABILIZE_LOOPS:I = 0x14

.field private static final QA:I = 0x10

.field private static final ordering10:[B

.field private static final ordering16:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 707
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/NLSF;->ordering16:[B

    const/16 v0, 0xa

    .line 708
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lio/github/jaredmdobson/concentus/NLSF;->ordering10:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0xft
        0x8t
        0x7t
        0x4t
        0xbt
        0xct
        0x3t
        0x2t
        0xdt
        0xat
        0x5t
        0x6t
        0x9t
        0xet
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x9t
        0x6t
        0x3t
        0x4t
        0x5t
        0x8t
        0x1t
        0x2t
        0x7t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_A2NLSF([S[II)V
    .locals 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/16 v2, 0x9

    .line 927
    new-array v3, v2, [I

    .line 928
    new-array v2, v2, [I

    const/4 v4, 0x2

    .line 934
    new-array v4, v4, [[I

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v6, 0x1

    aput-object v2, v4, v6

    .line 936
    invoke-static {v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    .line 938
    invoke-static {v0, v3, v2, v7}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF_init([I[I[II)V

    .line 944
    sget-object v8, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LSFCosTab_Q12:[S

    aget-short v8, v8, v5

    .line 946
    invoke-static {v3, v8, v7}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF_eval_poly([III)I

    move-result v9

    if-gez v9, :cond_0

    .line 950
    aput-short v5, p0, v5

    .line 953
    invoke-static {v2, v8, v7}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF_eval_poly([III)I

    move-result v9

    move-object v11, v2

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move-object v11, v3

    const/4 v10, 0x0

    :goto_0
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 967
    :goto_1
    sget-object v15, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LSFCosTab_Q12:[S

    aget-short v15, v15, v12

    const/16 v16, 0x0

    .line 969
    invoke-static {v11, v15, v7}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF_eval_poly([III)I

    move-result v5

    if-gtz v9, :cond_1

    if-ge v5, v13, :cond_2

    :cond_1
    if-ltz v9, :cond_c

    neg-int v13, v13

    if-gt v5, v13, :cond_c

    :cond_2
    if-nez v5, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    const/16 v19, -0x100

    move-object/from16 v19, v4

    move/from16 v20, v5

    const/16 v4, -0x100

    const/4 v6, 0x0

    :goto_3
    const/4 v5, 0x3

    if-ge v6, v5, :cond_7

    add-int v5, v8, v15

    move/from16 v21, v8

    const/4 v8, 0x1

    .line 984
    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    .line 985
    invoke-static {v11, v5, v7}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF_eval_poly([III)I

    move-result v8

    if-gtz v9, :cond_4

    if-gez v8, :cond_5

    :cond_4
    if-ltz v9, :cond_6

    if-gtz v8, :cond_6

    :cond_5
    move v15, v5

    move/from16 v20, v8

    move/from16 v8, v21

    goto :goto_4

    :cond_6
    const/16 v9, 0x80

    .line 996
    invoke-static {v4, v9, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT(III)I

    move-result v4

    move v9, v8

    move v8, v5

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1001
    :cond_7
    invoke-static {v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v5

    const/4 v6, 0x5

    const/high16 v8, 0x10000

    if-ge v5, v8, :cond_8

    sub-int v5, v9, v20

    .line 1004
    invoke-static {v9, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    const/4 v8, 0x1

    invoke-static {v5, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    add-int/2addr v6, v9

    if-eqz v5, :cond_9

    .line 1006
    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v5

    goto :goto_5

    :cond_8
    sub-int v5, v9, v20

    .line 1010
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    invoke-static {v9, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v5

    :goto_5
    add-int/2addr v4, v5

    :cond_9
    const/16 v5, 0x8

    .line 1012
    invoke-static {v12, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    add-int/2addr v5, v4

    const/16 v4, 0x7fff

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_32(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v10

    if-ltz v4, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    .line 1014
    :goto_6
    invoke-static {v8}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v10, v10, 0x1

    if-lt v10, v1, :cond_b

    goto :goto_8

    :cond_b
    and-int/lit8 v4, v10, 0x1

    .line 1024
    aget-object v11, v19, v4

    .line 1027
    sget-object v4, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LSFCosTab_Q12:[S

    add-int/lit8 v5, v12, -0x1

    aget-short v8, v4, v5

    and-int/lit8 v4, v10, 0x2

    const/16 v17, 0x1

    rsub-int/lit8 v6, v4, 0x1

    const/16 v4, 0xc

    .line 1029
    invoke-static {v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    move-object/from16 v4, v19

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_c
    move-object/from16 v19, v4

    const/16 v17, 0x1

    add-int/lit8 v12, v12, 0x1

    const/16 v9, 0x80

    if-le v12, v9, :cond_10

    add-int/lit8 v4, v14, 0x1

    const/16 v5, 0x1e

    if-le v4, v5, :cond_e

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    const v2, 0x8000

    .line 1041
    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, v16

    const/4 v6, 0x1

    :goto_7
    if-ge v6, v1, :cond_d

    add-int/lit8 v0, v6, 0x1

    .line 1043
    aget-short v2, p0, v16

    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p0, v6

    move v6, v0

    goto :goto_7

    :cond_d
    :goto_8
    return-void

    :cond_e
    add-int/lit8 v14, v14, 0xb

    .line 1049
    invoke-static {v14, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    const/high16 v18, 0x10000

    sub-int v6, v18, v5

    invoke-static {v0, v1, v6}, Lio/github/jaredmdobson/concentus/Filters;->silk_bwexpander_32([III)V

    .line 1052
    invoke-static {v0, v3, v2, v7}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF_init([I[I[II)V

    .line 1055
    sget-object v5, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LSFCosTab_Q12:[S

    aget-short v8, v5, v16

    .line 1057
    invoke-static {v3, v8, v7}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF_eval_poly([III)I

    move-result v5

    if-gez v5, :cond_f

    .line 1060
    aput-short v16, p0, v16

    .line 1063
    invoke-static {v2, v8, v7}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF_eval_poly([III)I

    move-result v5

    move-object v11, v2

    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    move-object v11, v3

    const/4 v10, 0x0

    :goto_9
    move v9, v5

    move v14, v4

    move-object/from16 v4, v19

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x1

    goto :goto_a

    :cond_10
    move v9, v5

    move v8, v15

    move-object/from16 v4, v19

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_a
    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method static silk_A2NLSF_eval_poly([III)I
    .locals 4

    .line 862
    aget v0, p0, p2

    const/4 v1, 0x4

    .line 864
    invoke-static {p1, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v2, p2, :cond_0

    const/4 p2, 0x7

    .line 867
    aget p2, p0, p2

    invoke-static {p2, v0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result p2

    const/4 v0, 0x6

    .line 868
    aget v0, p0, v0

    invoke-static {v0, p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result p2

    const/4 v0, 0x5

    .line 869
    aget v0, p0, v0

    invoke-static {v0, p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result p2

    .line 870
    aget v0, p0, v1

    invoke-static {v0, p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result p2

    const/4 v0, 0x3

    .line 871
    aget v0, p0, v0

    invoke-static {v0, p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result p2

    const/4 v0, 0x2

    .line 872
    aget v0, p0, v0

    invoke-static {v0, p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result p2

    .line 873
    aget v0, p0, v3

    invoke-static {v0, p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result p2

    const/4 v0, 0x0

    .line 874
    aget p0, p0, v0

    invoke-static {p0, p2, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result p0

    return p0

    :cond_0
    sub-int/2addr p2, v3

    :goto_0
    if-ltz p2, :cond_1

    .line 877
    aget v1, p0, p2

    invoke-static {v1, v0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static silk_A2NLSF_init([I[I[II)V
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 893
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    aput v2, p1, p3

    .line 894
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    aput v1, p2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    sub-int v2, p3, v1

    sub-int/2addr v2, v0

    .line 896
    aget v3, p0, v2

    neg-int v3, v3

    add-int v4, p3, v1

    aget v5, p0, v4

    sub-int/2addr v3, v5

    aput v3, p1, v1

    .line 898
    aget v2, p0, v2

    neg-int v2, v2

    aget v3, p0, v4

    add-int/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p0, p3

    :goto_1
    if-lez p0, :cond_1

    add-int/lit8 v0, p0, -0x1

    .line 906
    aget v1, p1, v0

    aget v2, p1, p0

    sub-int/2addr v1, v2

    aput v1, p1, v0

    .line 907
    aget v1, p2, v0

    aget v2, p2, p0

    add-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 911
    :cond_1
    invoke-static {p1, p3}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF_trans_poly([II)V

    .line 912
    invoke-static {p2, p3}, Lio/github/jaredmdobson/concentus/NLSF;->silk_A2NLSF_trans_poly([II)V

    return-void
.end method

.method static silk_A2NLSF_trans_poly([II)V
    .locals 5

    const/4 v0, 0x2

    :goto_0
    if-gt v0, p1, :cond_1

    move v1, p1

    :goto_1
    if-le v1, v0, :cond_0

    add-int/lit8 v2, v1, -0x2

    .line 845
    aget v3, p0, v2

    aget v4, p0, v1

    sub-int/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, -0x2

    .line 847
    aget v2, p0, v1

    aget v3, p0, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static silk_NLSF2A([S[SI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 723
    new-array v2, v1, [I

    .line 724
    div-int/lit8 v3, v1, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v3, [I

    .line 725
    new-array v3, v3, [I

    .line 726
    new-array v6, v1, [I

    .line 731
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/16 v9, 0xa

    if-eq v1, v9, :cond_1

    if-ne v1, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v10, 0x1

    .line 732
    :goto_1
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ne v1, v7, :cond_2

    .line 735
    sget-object v10, Lio/github/jaredmdobson/concentus/NLSF;->ordering16:[B

    goto :goto_2

    :cond_2
    sget-object v10, Lio/github/jaredmdobson/concentus/NLSF;->ordering10:[B

    :goto_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v1, :cond_6

    .line 738
    aget-short v12, p1, v11

    if-ltz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    :goto_4
    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 741
    aget-short v12, p1, v11

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v12

    .line 744
    aget-short v14, p1, v11

    invoke-static {v12, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v15

    sub-int/2addr v14, v15

    if-ltz v12, :cond_4

    const/4 v15, 0x1

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    .line 746
    :goto_5
    invoke-static {v15}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v15, 0x80

    if-ge v12, v15, :cond_5

    const/4 v15, 0x1

    goto :goto_6

    :cond_5
    const/4 v15, 0x0

    .line 747
    :goto_6
    invoke-static {v15}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 750
    sget-object v15, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LSFCosTab_Q12:[S

    aget-short v15, v15, v12

    .line 752
    sget-object v16, Lio/github/jaredmdobson/concentus/SilkTables;->silk_LSFCosTab_Q12:[S

    add-int/lit8 v12, v12, 0x1

    aget-short v12, v16, v12

    sub-int/2addr v12, v15

    .line 756
    aget-byte v16, v10, v11

    invoke-static {v15, v13}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v13

    invoke-static {v12, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v12

    add-int/2addr v13, v12

    const/4 v12, 0x4

    invoke-static {v13, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v12

    aput v12, v2, v16

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 760
    :cond_6
    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v10

    .line 763
    invoke-static {v5, v2, v8, v10}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF2A_find_poly([I[III)V

    .line 764
    invoke-static {v3, v2, v4, v10}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF2A_find_poly([I[III)V

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v10, :cond_7

    add-int/lit8 v11, v2, 0x1

    .line 768
    aget v12, v5, v11

    aget v13, v5, v2

    add-int/2addr v12, v13

    .line 769
    aget v13, v3, v11

    aget v14, v3, v2

    sub-int/2addr v13, v14

    neg-int v14, v13

    sub-int/2addr v14, v12

    .line 772
    aput v14, v6, v2

    sub-int v2, v1, v2

    sub-int/2addr v2, v4

    sub-int/2addr v13, v12

    .line 774
    aput v13, v6, v2

    move v2, v11

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x5

    const/4 v5, 0x2

    if-ge v2, v9, :cond_a

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_9
    if-ge v10, v1, :cond_9

    .line 783
    aget v12, v6, v10

    invoke-static {v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v12

    if-le v12, v11, :cond_8

    move v3, v10

    move v11, v12

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 790
    :cond_9
    invoke-static {v11, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v10

    const/16 v11, 0x7fff

    if-le v10, v11, :cond_a

    const v4, 0x27ffe

    .line 795
    invoke-static {v10, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v4

    add-int/lit16 v10, v4, -0x7fff

    const/16 v11, 0xe

    .line 797
    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v10

    add-int/lit8 v11, v3, 0x1

    .line 798
    invoke-static {v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v4

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v4

    .line 797
    invoke-static {v10, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v4

    const v5, 0xffbe

    sub-int/2addr v5, v4

    .line 799
    invoke-static {v6, v1, v5}, Lio/github/jaredmdobson/concentus/Filters;->silk_bwexpander_32([III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    if-ne v2, v9, :cond_b

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_c

    .line 808
    aget v3, v6, v2

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v2

    .line 810
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    aput v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_c

    .line 814
    aget v3, v6, v2

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_c
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v7, :cond_e

    .line 820
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Filters;->silk_LPC_inverse_pred_gain([SI)I

    move-result v3

    const v9, 0x1a36e

    if-ge v3, v9, :cond_e

    const/high16 v3, 0x10000

    .line 823
    invoke-static {v5, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    sub-int/2addr v3, v9

    invoke-static {v6, v1, v3}, Lio/github/jaredmdobson/concentus/Filters;->silk_bwexpander_32([III)V

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_d

    .line 826
    aget v9, v6, v3

    invoke-static {v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_e
    return-void
.end method

.method static silk_NLSF2A_find_poly([I[III)V
    .locals 9

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 692
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    const/4 v3, 0x0

    aput v2, p0, v3

    .line 693
    aget v2, p1, p2

    sub-int/2addr v3, v2

    aput v3, p0, v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p2

    .line 695
    aget v3, p1, v3

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, -0x1

    .line 697
    aget v5, p0, v5

    invoke-static {v5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    aget v6, p0, v2

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULL(II)J

    move-result-wide v6

    invoke-static {v6, v7, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND64(JI)J

    move-result-wide v6

    long-to-int v7, v6

    sub-int/2addr v5, v7

    aput v5, p0, v4

    :goto_1
    if-le v2, v0, :cond_0

    .line 699
    aget v5, p0, v2

    add-int/lit8 v6, v2, -0x2

    aget v6, p0, v6

    add-int/lit8 v7, v2, -0x1

    aget v7, p0, v7

    invoke-static {v3, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULL(II)J

    move-result-wide v7

    invoke-static {v7, v8, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND64(JI)J

    move-result-wide v7

    long-to-int v8, v7

    sub-int/2addr v6, v8

    add-int/2addr v5, v6

    aput v5, p0, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 701
    :cond_0
    aget v2, p0, v0

    sub-int/2addr v2, v3

    aput v2, p0, v0

    move v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method static silk_NLSF_VQ([I[S[SII)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 63
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v2, 0x10

    if-gt p4, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 64
    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 65
    :goto_2
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v2, p3, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v4, p4, :cond_5

    .line 73
    aget-short v6, p1, v4

    add-int/lit8 v7, v3, 0x1

    aget-short v8, p2, v3

    const/4 v9, 0x7

    invoke-static {v6, v8, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result v6

    .line 74
    invoke-static {v6, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v6

    add-int/lit8 v8, v4, 0x1

    .line 77
    aget-short v8, p1, v8

    add-int/lit8 v3, v3, 0x2

    aget-short v7, p2, v7

    invoke-static {v8, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result v7

    .line 78
    invoke-static {v6, v7, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v6

    const/4 v7, 0x4

    .line 80
    invoke-static {v5, v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT32(III)I

    move-result v5

    if-ltz v5, :cond_3

    const/4 v7, 0x1

    goto :goto_5

    :cond_3
    const/4 v7, 0x0

    .line 82
    :goto_5
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_6

    :cond_4
    const/4 v6, 0x0

    .line 83
    :goto_6
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 86
    :cond_5
    aput v5, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method static silk_NLSF_VQ_weights_laroia([S[SI)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 100
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-lez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 101
    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 102
    :goto_2
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 105
    aget-short v2, p1, v0

    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v2

    const/high16 v3, 0x20000

    .line 106
    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v2

    .line 107
    aget-short v4, p1, v1

    aget-short v5, p1, v0

    sub-int/2addr v4, v5

    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v4

    .line 108
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v4

    add-int/2addr v2, v4

    const/16 v5, 0x7fff

    .line 109
    invoke-static {v2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p0, v0

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 111
    :goto_3
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v2, 0x1

    :goto_4
    add-int/lit8 v6, p2, -0x1

    if-ge v2, v6, :cond_6

    add-int/lit8 v6, v2, 0x1

    .line 115
    aget-short v7, p1, v6

    aget-short v8, p1, v2

    sub-int/2addr v7, v8

    invoke-static {v7, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v7

    .line 116
    invoke-static {v3, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v7

    add-int/2addr v4, v7

    .line 117
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v2

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    .line 118
    :goto_5
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v2, v2, 0x2

    .line 120
    aget-short v4, p1, v2

    aget-short v8, p1, v6

    sub-int/2addr v4, v8

    invoke-static {v4, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v4

    .line 121
    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result v4

    add-int/2addr v7, v4

    .line 122
    invoke-static {v7, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, p0, v6

    if-lez v7, :cond_5

    const/4 v6, 0x1

    goto :goto_6

    :cond_5
    const/4 v6, 0x0

    .line 123
    :goto_6
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    goto :goto_4

    :cond_6
    const p2, 0x8000

    .line 127
    aget-short p1, p1, v6

    sub-int/2addr p2, p1

    invoke-static {p2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result p1

    .line 128
    invoke-static {v3, p1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32(II)I

    move-result p1

    add-int/2addr p1, v4

    .line 129
    invoke-static {p1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result p1

    int-to-short p1, p1

    aput-short p1, p0, v6

    if-lez p1, :cond_7

    const/4 v0, 0x1

    .line 131
    :cond_7
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return-void
.end method

.method static silk_NLSF_decode([S[BLio/github/jaredmdobson/concentus/NLSFCodebook;)V
    .locals 10

    .line 303
    iget-short v0, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v4, v0, [S

    .line 304
    iget-short v0, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v0, v0, [S

    .line 305
    iget-short v1, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v1, v1, [S

    .line 306
    iget-short v2, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v7, v2, [S

    .line 310
    iget-object v2, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_NLSF_Q8:[S

    const/4 v8, 0x0

    .line 311
    aget-byte v3, p1, v8

    iget-short v5, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    mul-int v3, v3, v5

    const/4 v5, 0x0

    .line 313
    :goto_0
    iget-short v6, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    if-ge v5, v6, :cond_0

    add-int v6, v3, v5

    .line 314
    aget-short v6, v2, v6

    const/4 v9, 0x7

    invoke-static {v6, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT16(SI)S

    move-result v6

    aput-short v6, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 318
    :cond_0
    aget-byte v2, p1, v8

    invoke-static {v0, v4, p2, v2}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_unpack([S[SLio/github/jaredmdobson/concentus/NLSFCodebook;I)V

    .line 321
    iget-short v5, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->quantStepSize_Q16:S

    iget-short v6, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    const/4 v3, 0x1

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_residual_dequant([S[BI[SIS)V

    .line 329
    iget-short p1, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    invoke-static {v7, p0, p1}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_VQ_weights_laroia([S[SI)V

    const/4 p1, 0x0

    .line 332
    :goto_1
    iget-short v0, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    if-ge p1, v0, :cond_1

    .line 333
    aget-short v0, v7, p1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v0

    .line 334
    aget-short v2, p0, p1

    aget-short v3, v1, p1

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    int-to-short v0, v0

    invoke-static {v3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v0

    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    const/16 v2, 0x7fff

    .line 335
    invoke-static {v0, v8, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 339
    :cond_1
    iget-object p1, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->deltaMin_Q15:[S

    iget-short p2, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    invoke-static {p0, p1, p2}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_stabilize([S[SI)V

    return-void
.end method

.method static silk_NLSF_del_dec_quant([B[S[S[S[S[SISIS)I
    .locals 26

    move/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p9

    const/4 v3, 0x4

    .line 371
    new-array v4, v3, [I

    .line 372
    new-array v5, v3, [[B

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_0

    const/16 v8, 0x10

    .line 374
    new-array v8, v8, [B

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/16 v7, 0x8

    .line 377
    new-array v8, v7, [S

    .line 378
    new-array v9, v7, [I

    .line 379
    new-array v10, v3, [I

    .line 380
    new-array v11, v3, [I

    const/16 v12, 0x14

    .line 383
    new-array v13, v12, [I

    .line 384
    new-array v12, v12, [I

    const/16 v15, -0xa

    const/16 v16, 0x0

    :goto_1
    const/16 v6, 0x9

    const/16 v3, 0xa

    if-gt v15, v6, :cond_4

    .line 387
    invoke-static {v15, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    int-to-short v6, v3

    const/16 v14, 0x400

    .line 388
    invoke-static {v6, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD16(SS)S

    move-result v14

    const/16 v7, 0x66

    if-lez v15, :cond_1

    .line 391
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB16(SS)S

    move-result v3

    int-to-short v6, v14

    .line 392
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB16(SS)S

    move-result v14

    goto :goto_2

    :cond_1
    if-nez v15, :cond_2

    int-to-short v6, v14

    .line 394
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB16(SS)S

    move-result v14

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    if-ne v15, v3, :cond_3

    .line 396
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD16(SS)S

    move-result v3

    goto :goto_2

    .line 398
    :cond_3
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD16(SS)S

    move-result v3

    int-to-short v6, v14

    .line 399
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD16(SS)S

    move-result v14

    :goto_2
    add-int/lit8 v6, v15, 0xa

    .line 402
    invoke-static {v3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    aput v3, v13, v6

    .line 403
    invoke-static {v14, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    aput v3, v12, v6

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x4

    const/16 v7, 0x8

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 406
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 409
    aput v16, v9, v16

    .line 410
    aput-short v16, v8, v16

    add-int/lit8 v7, v2, -0x1

    const/4 v14, 0x1

    .line 413
    :goto_3
    aget-short v15, p3, v7

    const/16 v3, 0x8

    invoke-static {v15, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v15

    .line 414
    aget-short v3, p1, v7

    const/16 p6, 0x1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v14, :cond_9

    .line 417
    aget-short v6, v8, v0

    invoke-static {v15, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    move/from16 v19, v0

    int-to-short v0, v3

    int-to-short v6, v6

    move/from16 v20, v3

    .line 418
    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB16(SS)S

    move-result v3

    move-object/from16 v21, v4

    move/from16 v4, p7

    .line 419
    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    move-object/from16 v18, v5

    const/16 v4, 0x9

    const/16 v5, -0xa

    .line 420
    invoke-static {v3, v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result v3

    .line 421
    aget-object v5, v18, v19

    int-to-byte v4, v3

    aput-byte v4, v5, v7

    .line 422
    aget-short v4, p4, v7

    add-int/2addr v4, v3

    add-int/lit8 v5, v3, 0xa

    move/from16 v22, v4

    .line 425
    aget v4, v13, v5

    .line 426
    aget v5, v12, v5

    int-to-short v4, v4

    .line 428
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD16(SS)S

    move-result v4

    int-to-short v5, v5

    .line 429
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD16(SS)S

    move-result v5

    int-to-short v4, v4

    .line 430
    aput-short v4, v8, v19

    add-int v6, v19, v14

    int-to-short v5, v5

    .line 431
    aput-short v5, v8, v6

    move/from16 v23, v6

    add-int/lit8 v6, v3, 0x1

    const/16 v24, 0x118

    move/from16 v25, v7

    const/4 v7, 0x4

    if-lt v6, v7, :cond_6

    if-ne v6, v7, :cond_5

    add-int/lit8 v3, v22, 0x4

    .line 436
    aget-short v3, p5, v3

    const/16 v6, 0x118

    goto :goto_6

    :cond_5
    const/16 v6, 0x6c

    const/16 v7, 0x2b

    .line 439
    invoke-static {v6, v7, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v3

    int-to-short v6, v3

    .line 440
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD16(SS)S

    move-result v24

    :goto_5
    move/from16 v6, v24

    goto :goto_6

    :cond_6
    const/4 v6, -0x4

    if-gt v3, v6, :cond_8

    if-ne v3, v6, :cond_7

    add-int/lit8 v3, v22, 0x5

    .line 445
    aget-short v3, p5, v3

    move v6, v3

    const/16 v3, 0x118

    goto :goto_6

    :cond_7
    const/16 v6, -0x2b

    const/16 v7, 0x6c

    .line 447
    invoke-static {v7, v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v3

    int-to-short v6, v3

    const/16 v7, 0x2b

    .line 448
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB16(SS)S

    move-result v24

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v22, 0x4

    .line 451
    aget-short v24, p5, v3

    add-int/lit8 v3, v22, 0x5

    .line 452
    aget-short v3, p5, v3

    move v6, v3

    move/from16 v3, v24

    .line 455
    :goto_6
    aget v7, v9, v19

    .line 456
    invoke-static {v0, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB16(SS)S

    move-result v4

    .line 457
    invoke-static {v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    move-object/from16 v22, v8

    aget-short v8, p2, v25

    invoke-static {v7, v4, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA(III)I

    move-result v4

    invoke-static {v4, v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v3

    aput v3, v9, v19

    .line 458
    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB16(SS)S

    move-result v0

    .line 459
    invoke-static {v0, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    aget-short v3, p2, v25

    invoke-static {v7, v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MLA(III)I

    move-result v0

    invoke-static {v0, v1, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v0

    aput v0, v9, v23

    add-int/lit8 v0, v19, 0x1

    move-object/from16 v5, v18

    move/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v8, v22

    move/from16 v7, v25

    const/16 v6, 0x9

    goto/16 :goto_4

    :cond_9
    move-object/from16 v21, v4

    move-object/from16 v18, v5

    move/from16 v25, v7

    move-object/from16 v22, v8

    const/4 v0, 0x2

    if-gt v14, v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v14, :cond_a

    add-int v3, v0, v14

    .line 465
    aget-object v3, v18, v3

    aget-object v4, v18, v0

    aget-byte v4, v4, v25

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v25

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x1

    .line 467
    invoke-static {v14, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v14

    move v0, v14

    :goto_8
    const/4 v7, 0x4

    if-ge v0, v7, :cond_11

    .line 470
    aget-object v4, v18, v0

    sub-int v5, v0, v14

    aget-object v5, v18, v5

    aget-byte v5, v5, v25

    aput-byte v5, v4, v25

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v3, 0x1

    const v4, 0x7fffffff

    if-lez v25, :cond_13

    const/4 v5, 0x0

    :goto_9
    const/4 v7, 0x4

    if-ge v5, v7, :cond_d

    .line 475
    aget v6, v9, v5

    add-int/lit8 v7, v5, 0x4

    aget v8, v9, v7

    if-le v6, v8, :cond_c

    .line 476
    aput v6, v11, v5

    .line 477
    aget v6, v9, v7

    aput v6, v10, v5

    .line 478
    aput v6, v9, v5

    .line 479
    aget v6, v11, v5

    aput v6, v9, v7

    .line 482
    aget-short v6, v22, v5

    .line 483
    aget-short v8, v22, v7

    aput-short v8, v22, v5

    int-to-short v6, v6

    .line 484
    aput-short v6, v22, v7

    .line 485
    aput v7, v21, v5

    goto :goto_a

    .line 487
    :cond_c
    aput v6, v10, v5

    .line 488
    aget v6, v9, v7

    aput v6, v11, v5

    .line 489
    aput v5, v21, v5

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    :goto_b
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v15, 0x7fffffff

    :goto_c
    const/4 v3, 0x4

    if-ge v5, v3, :cond_10

    .line 502
    aget v3, v11, v5

    if-le v15, v3, :cond_e

    move v15, v3

    move v8, v5

    .line 506
    :cond_e
    aget v3, v10, v5

    if-ge v6, v3, :cond_f

    move v6, v3

    move v7, v5

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_10
    if-lt v15, v6, :cond_12

    const/4 v3, 0x0

    :goto_d
    const/4 v7, 0x4

    if-ge v3, v7, :cond_11

    .line 527
    aget v4, v21, v3

    invoke-static {v4, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    int-to-byte v4, v4

    .line 528
    aget-object v5, v18, v3

    aget-byte v6, v5, v25

    add-int/2addr v6, v4

    int-to-byte v4, v6

    aput-byte v4, v5, v25

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_11
    add-int/lit8 v7, v25, -0x1

    move-object/from16 v5, v18

    move-object/from16 v4, v21

    move-object/from16 v8, v22

    const/4 v0, 0x1

    const/16 v3, 0xa

    const/16 v6, 0x9

    goto/16 :goto_3

    .line 517
    :cond_12
    aget v3, v21, v8

    const/16 v17, 0x4

    xor-int/lit8 v3, v3, 0x4

    aput v3, v21, v7

    add-int/lit8 v3, v8, 0x4

    .line 518
    aget v5, v9, v3

    aput v5, v9, v7

    .line 519
    aget-short v3, v22, v3

    aput-short v3, v22, v7

    .line 520
    aput v16, v10, v7

    .line 521
    aput v4, v11, v8

    .line 522
    aget-object v3, v18, v8

    aget-object v5, v18, v7

    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    const/16 v16, 0x0

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v3, :cond_15

    .line 540
    aget v5, v9, v6

    if-le v4, v5, :cond_14

    move v4, v5

    move v1, v6

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    :goto_f
    if-ge v6, v2, :cond_18

    and-int/lit8 v3, v1, 0x3

    .line 547
    aget-object v3, v18, v3

    aget-byte v3, v3, v6

    aput-byte v3, p0, v6

    const/16 v5, -0xa

    if-lt v3, v5, :cond_16

    const/4 v3, 0x1

    goto :goto_10

    :cond_16
    const/4 v3, 0x0

    .line 548
    :goto_10
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 549
    aget-byte v3, p0, v6

    const/16 v7, 0xa

    if-gt v3, v7, :cond_17

    const/4 v3, 0x1

    goto :goto_11

    :cond_17
    const/4 v3, 0x0

    :goto_11
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_18
    const/16 v16, 0x0

    .line 552
    aget-byte v2, p0, v16

    invoke-static {v1, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    add-int/2addr v2, v0

    int-to-byte v0, v2

    aput-byte v0, p0, v16

    const/16 v7, 0xa

    if-gt v0, v7, :cond_19

    const/4 v6, 0x1

    goto :goto_12

    :cond_19
    const/4 v6, 0x0

    .line 553
    :goto_12
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v4, :cond_1a

    const/4 v6, 0x1

    goto :goto_13

    :cond_1a
    const/4 v6, 0x0

    .line 554
    :goto_13
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return v4
.end method

.method static silk_NLSF_encode([B[SLio/github/jaredmdobson/concentus/NLSFCodebook;[SIII)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v11, p4

    move/from16 v13, p5

    move/from16 v14, p6

    .line 583
    iget-short v3, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v15, v3, [S

    .line 584
    iget-short v3, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v4, v3, [S

    .line 585
    iget-short v3, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v3, v3, [S

    .line 586
    iget-short v5, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v5, v5, [S

    .line 587
    iget-short v6, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v6, v6, [S

    .line 588
    iget-short v7, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v7, v7, [S

    .line 589
    iget-short v8, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    new-array v8, v8, [S

    .line 590
    iget-object v9, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_NLSF_Q8:[S

    const/16 v10, 0x20

    move-object/from16 v16, v15

    if-gt v13, v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 594
    :goto_0
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v10, 0x2

    if-ltz v14, :cond_1

    if-gt v14, v10, :cond_1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    .line 595
    :goto_1
    invoke-static/range {v17 .. v17}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v10, 0x7fff

    if-gt v11, v10, :cond_2

    if-ltz v11, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 596
    :goto_2
    invoke-static {v10}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 599
    iget-object v10, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->deltaMin_Q15:[S

    iget-short v12, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    invoke-static {v1, v10, v12}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_stabilize([S[SI)V

    .line 602
    iget-short v10, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->nVectors:S

    new-array v10, v10, [I

    .line 603
    iget-object v12, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_NLSF_Q8:[S

    const/16 v19, 0x1

    iget-short v15, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->nVectors:S

    move-object/from16 v20, v4

    iget-short v4, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    invoke-static {v10, v1, v12, v15, v4}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_VQ([I[S[SII)V

    .line 606
    new-array v15, v13, [I

    .line 607
    iget-short v4, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->nVectors:S

    invoke-static {v10, v15, v4, v13}, Lio/github/jaredmdobson/concentus/Sort;->silk_insertion_sort_increasing([I[III)V

    .line 609
    new-array v4, v13, [I

    const/16 v10, 0x10

    .line 610
    invoke-static {v13, v10}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayByte(II)[[B

    move-result-object v21

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v13, :cond_7

    .line 614
    aget v10, v15, v12

    move-object/from16 v23, v4

    .line 617
    iget-short v4, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    mul-int v4, v4, v10

    move/from16 v24, v4

    move-object/from16 v25, v6

    const/4 v4, 0x0

    .line 618
    :goto_4
    iget-short v6, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    if-ge v4, v6, :cond_3

    add-int v6, v24, v4

    .line 619
    aget-short v6, v9, v6

    move/from16 v26, v4

    const/4 v4, 0x7

    invoke-static {v6, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT16(SI)S

    move-result v4

    aput-short v4, v3, v26

    .line 620
    aget-short v6, v1, v26

    sub-int/2addr v6, v4

    int-to-short v4, v6

    aput-short v4, v16, v26

    add-int/lit8 v4, v26, 0x1

    goto :goto_4

    .line 624
    :cond_3
    iget-short v4, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    invoke-static {v5, v3, v4}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_VQ_weights_laroia([S[SI)V

    const/4 v4, 0x0

    .line 627
    :goto_5
    iget-short v6, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    if-ge v4, v6, :cond_4

    .line 628
    aget-short v6, v5, v4

    move-object/from16 v24, v3

    const/16 v3, 0x10

    invoke-static {v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v6

    .line 629
    aget-short v3, v16, v4

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    const/16 v6, 0xe

    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v20, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v24

    goto :goto_5

    :cond_4
    move-object/from16 v24, v3

    const/4 v3, 0x0

    .line 633
    :goto_6
    iget-short v4, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    if-ge v3, v4, :cond_5

    .line 634
    aget-short v4, p3, v3

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    aget-short v6, v5, v3

    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v25, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 638
    :cond_5
    invoke-static {v8, v7, v2, v10}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_unpack([S[SLio/github/jaredmdobson/concentus/NLSFCodebook;I)V

    .line 641
    aget-object v3, v21, v12

    move-object v6, v7

    move-object v7, v8

    iget-object v8, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_Rates_Q5:[S

    move-object v4, v9

    iget-short v9, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->quantStepSize_Q16:S

    move/from16 v26, v10

    iget-short v10, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->invQuantStepSize_Q6:S

    move/from16 v27, v12

    iget-short v12, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object/from16 v4, v20

    move-object/from16 v14, v23

    move-object/from16 v5, v25

    const/16 v22, 0x10

    move-object/from16 v20, v15

    const/4 v15, 0x2

    invoke-static/range {v3 .. v12}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_del_dec_quant([B[S[S[S[S[SISIS)I

    move-result v3

    aput v3, v14, v27

    shr-int/lit8 v3, p6, 0x1

    .line 654
    iget-short v5, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->nVectors:S

    mul-int v3, v3, v5

    if-nez v26, :cond_6

    .line 657
    iget-object v5, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_iCDF:[S

    add-int v3, v3, v26

    aget-short v3, v5, v3

    rsub-int v3, v3, 0x100

    goto :goto_7

    .line 659
    :cond_6
    iget-object v5, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_iCDF:[S

    add-int v3, v3, v26

    add-int/lit8 v8, v3, -0x1

    aget-short v5, v5, v8

    iget-object v8, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_iCDF:[S

    aget-short v3, v8, v3

    sub-int v3, v5, v3

    .line 662
    :goto_7
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v3

    rsub-int v3, v3, 0x400

    .line 663
    aget v5, v14, v27

    invoke-static {v11, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    invoke-static {v5, v3, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB(III)I

    move-result v3

    aput v3, v14, v27

    add-int/lit8 v12, v27, 0x1

    move-object v8, v7

    move-object/from16 v5, v17

    move-object/from16 v9, v18

    move-object/from16 v15, v20

    move-object/from16 v3, v24

    const/16 v10, 0x10

    move-object/from16 v20, v4

    move-object v7, v6

    move-object v4, v14

    move-object/from16 v6, v25

    move/from16 v14, p6

    goto/16 :goto_3

    :cond_7
    move-object v14, v4

    move-object/from16 v20, v15

    const/4 v3, 0x1

    .line 667
    new-array v4, v3, [I

    .line 668
    invoke-static {v14, v4, v13, v3}, Lio/github/jaredmdobson/concentus/Sort;->silk_insertion_sort_increasing([I[III)V

    const/4 v5, 0x0

    .line 670
    aget v4, v4, v5

    aget v6, v20, v4

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 671
    aget-object v4, v21, v4

    iget-short v6, v2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    invoke-static {v4, v5, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_decode([S[BLio/github/jaredmdobson/concentus/NLSFCodebook;)V

    .line 676
    aget v0, v14, v5

    return v0
.end method

.method static silk_NLSF_residual_dequant([S[BI[SIS)V
    .locals 3

    add-int/lit8 p5, p5, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz p5, :cond_2

    .line 154
    aget-short v1, p3, p5

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    add-int v1, p2, p5

    .line 155
    aget-byte v1, p1, v1

    int-to-short v1, v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT16(SI)S

    move-result v1

    const/16 v2, 0x66

    if-lez v1, :cond_0

    .line 157
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SUB16(SS)S

    move-result v1

    goto :goto_1

    :cond_0
    if-gez v1, :cond_1

    .line 159
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD16(SS)S

    move-result v1

    .line 161
    :cond_1
    :goto_1
    invoke-static {v0, v1, p4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    int-to-short v0, v0

    .line 162
    aput-short v0, p0, p5

    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static silk_NLSF_stabilize([S[SI)V
    .locals 10

    .line 201
    aget-short v0, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x14

    const v4, 0x8000

    if-ge v0, v3, :cond_9

    .line 212
    aget-short v3, p0, v1

    aget-short v5, p1, v1

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v7, p2, -0x1

    if-gt v5, v7, :cond_2

    .line 217
    aget-short v7, p0, v5

    add-int/lit8 v8, v5, -0x1

    aget-short v8, p0, v8

    aget-short v9, p1, v5

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    if-ge v7, v3, :cond_1

    move v6, v5

    move v3, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 225
    :cond_2
    aget-short v5, p0, v7

    aget-short v8, p1, p2

    add-int/2addr v5, v8

    sub-int v5, v4, v5

    if-ge v5, v3, :cond_3

    move v6, p2

    move v3, v5

    :cond_3
    if-ltz v3, :cond_4

    goto/16 :goto_8

    :cond_4
    if-nez v6, :cond_5

    .line 244
    aget-short v3, p1, v1

    aput-short v3, p0, v1

    goto :goto_5

    :cond_5
    if-ne v6, p2, :cond_6

    sub-int/2addr v4, v8

    int-to-short v3, v4

    .line 247
    aput-short v3, p0, v7

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v3, v6, :cond_7

    .line 252
    aget-short v7, p1, v3

    add-int/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 255
    :cond_7
    aget-short v3, p1, v6

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    add-int/2addr v5, v3

    move v3, p2

    :goto_4
    if-le v3, v6, :cond_8

    .line 260
    aget-short v7, p1, v3

    sub-int/2addr v4, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 263
    :cond_8
    aget-short v3, p1, v6

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    sub-int/2addr v4, v3

    add-int/lit8 v3, v6, -0x1

    .line 266
    aget-short v7, p0, v3

    aget-short v8, p0, v6

    add-int/2addr v7, v8

    invoke-static {v7, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v7

    invoke-static {v7, v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result v4

    int-to-short v4, v4

    .line 268
    aget-short v5, p1, v6

    invoke-static {v5, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p0, v3

    .line 269
    aget-short v3, p1, v6

    add-int/2addr v4, v3

    int-to-short v3, v4

    aput-short v3, p0, v6

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    if-ne v0, v3, :cond_b

    .line 275
    invoke-static {p0, p2}, Lio/github/jaredmdobson/concentus/Sort;->silk_insertion_sort_increasing_all_values_int16([SI)V

    .line 278
    aget-short v0, p0, v1

    aget-short v3, p1, v1

    invoke-static {v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, v1

    :goto_6
    if-ge v2, p2, :cond_a

    .line 282
    aget-short v0, p0, v2

    add-int/lit8 v1, v2, -0x1

    aget-short v1, p0, v1

    aget-short v3, p1, v2

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_int(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v0, p2, -0x1

    .line 286
    aget-short v1, p0, v0

    aget-short v2, p1, p2

    sub-int/2addr v4, v2

    invoke-static {v1, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p0, v0

    add-int/lit8 p2, p2, -0x2

    :goto_7
    if-ltz p2, :cond_b

    .line 290
    aget-short v0, p0, p2

    add-int/lit8 v1, p2, 0x1

    aget-short v2, p0, v1

    aget-short v1, p1, v1

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min_int(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_b
    :goto_8
    return-void
.end method

.method static silk_NLSF_unpack([S[SLio/github/jaredmdobson/concentus/NLSFCodebook;I)V
    .locals 8

    .line 176
    iget-object v0, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_sel:[S

    .line 177
    iget-short v1, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    mul-int p3, p3, v1

    div-int/lit8 p3, p3, 0x2

    const/4 v1, 0x0

    .line 179
    :goto_0
    iget-short v2, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    if-ge v1, v2, :cond_0

    .line 180
    aget-short v2, v0, p3

    const/4 v3, 0x1

    add-int/2addr p3, v3

    .line 182
    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v1

    .line 183
    iget-object v4, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->pred_Q8:[S

    and-int/lit8 v6, v2, 0x1

    iget-short v7, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    sub-int/2addr v7, v3

    mul-int v6, v6, v7

    add-int/2addr v6, v1

    aget-short v4, v4, v6

    aput-short v4, p1, v1

    add-int/lit8 v4, v1, 0x1

    const/4 v6, 0x5

    .line 184
    invoke-static {v2, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    invoke-static {v6, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, p0, v4

    .line 185
    iget-object v5, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->pred_Q8:[S

    const/4 v6, 0x4

    invoke-static {v2, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    and-int/2addr v2, v3

    iget-short v6, p2, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    sub-int/2addr v6, v3

    mul-int v2, v2, v6

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    aget-short v2, v5, v2

    aput-short v2, p1, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_process_NLSFs(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;[[S[S[S)V
    .locals 12

    const/16 v0, 0x10

    .line 1093
    new-array v1, v0, [S

    .line 1094
    new-array v5, v0, [S

    .line 1095
    new-array v0, v0, [S

    .line 1097
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 1098
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    const/16 v3, 0x100

    if-gt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 1099
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    const/4 v3, 0x4

    if-eq v2, v10, :cond_3

    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const v2, -0x41892

    .line 1109
    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    const/16 v6, 0xc4a

    invoke-static {v6, v2, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    .line 1110
    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->nb_subfr:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 1112
    invoke-static {v2, v2, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT(III)I

    move-result v2

    :cond_4
    move v6, v2

    if-lez v6, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 1115
    :goto_4
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v2, 0x147b

    if-gt v6, v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 1116
    :goto_5
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 1119
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {v5, p2, v2}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_VQ_weights_laroia([S[SI)V

    .line 1122
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    if-ne v2, v10, :cond_7

    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    if-ge v2, v3, :cond_7

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_9

    .line 1125
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {v1, p3, p2, v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_interpolate([S[S[SII)V

    .line 1129
    iget v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_VQ_weights_laroia([S[SI)V

    .line 1132
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v2, v2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    iget-object v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v3, v3, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    const/4 v3, 0x0

    .line 1134
    :goto_7
    iget v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    if-ge v3, v4, :cond_9

    .line 1135
    aget-short v4, v5, v3

    invoke-static {v4, v10}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    aget-short v7, v0, v3

    invoke-static {v4, v7, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v5, v3

    if-lt v4, v10, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    .line 1136
    :goto_8
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1141
    :cond_9
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-object v2, v0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFIndices:[B

    iget-object v4, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->psNLSF_CB:Lio/github/jaredmdobson/concentus/NLSFCodebook;

    iget v7, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->NLSF_MSVQ_Survivors:I

    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte v8, v0, Lio/github/jaredmdobson/concentus/SideInfoIndices;->signalType:B

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF_encode([B[SLio/github/jaredmdobson/concentus/NLSFCodebook;[SIII)I

    .line 1145
    aget-object p2, p1, v10

    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {p2, v3, v0}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF2A([S[SI)V

    if-eqz v11, :cond_a

    .line 1149
    iget-object p2, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->indices:Lio/github/jaredmdobson/concentus/SideInfoIndices;

    iget-byte p2, p2, Lio/github/jaredmdobson/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {v1, p3, v3, p2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_interpolate([S[S[SII)V

    .line 1153
    aget-object p1, p1, v9

    iget p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {p1, v1, p0}, Lio/github/jaredmdobson/concentus/NLSF;->silk_NLSF2A([S[SI)V

    return-void

    .line 1157
    :cond_a
    aget-object p2, p1, v10

    aget-object p1, p1, v9

    iget p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {p2, v9, p1, v9, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
