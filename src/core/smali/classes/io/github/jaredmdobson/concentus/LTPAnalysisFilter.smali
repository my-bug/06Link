.class Lio/github/jaredmdobson/concentus/LTPAnalysisFilter;
.super Ljava/lang/Object;
.source "LTPAnalysisFilter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_LTP_analysis_filter([S[SI[S[I[IIII)V
    .locals 16

    const/4 v0, 0x0

    move/from16 v1, p2

    move/from16 v2, p7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 56
    aget v5, p4, v3

    sub-int v5, v1, v5

    mul-int/lit8 v6, v3, 0x5

    .line 58
    aget-short v7, p3, v6

    add-int/lit8 v8, v6, 0x1

    .line 59
    aget-short v8, p3, v8

    add-int/lit8 v9, v6, 0x2

    .line 60
    aget-short v9, p3, v9

    add-int/lit8 v10, v6, 0x3

    .line 61
    aget-short v10, p3, v10

    const/4 v11, 0x4

    add-int/2addr v6, v11

    .line 62
    aget-short v6, p3, v6

    const/4 v12, 0x5

    new-array v12, v12, [S

    aput-short v7, v12, v0

    const/4 v7, 0x1

    aput-short v8, v12, v7

    const/4 v8, 0x2

    aput-short v9, v12, v8

    const/4 v9, 0x3

    aput-short v10, v12, v9

    aput-short v6, v12, v11

    const/4 v6, 0x0

    :goto_1
    add-int v10, p6, p8

    if-ge v6, v10, :cond_0

    add-int v10, v4, v6

    add-int v13, v1, v6

    .line 67
    aget-short v14, p1, v13

    aput-short v14, p0, v10

    add-int/lit8 v14, v5, 0x2

    .line 70
    aget-short v14, p1, v14

    aget-short v15, v12, v0

    invoke-static {v14, v15}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v14

    add-int/lit8 v15, v5, 0x1

    .line 71
    aget-short v0, p1, v15

    const/16 p2, 0x1

    aget-short v7, v12, p2

    invoke-static {v14, v0, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB_ovflw(III)I

    move-result v0

    .line 72
    aget-short v7, p1, v5

    aget-short v14, v12, v8

    invoke-static {v0, v7, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB_ovflw(III)I

    move-result v0

    add-int/lit8 v7, v5, -0x1

    .line 73
    aget-short v7, p1, v7

    aget-short v14, v12, v9

    invoke-static {v0, v7, v14}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB_ovflw(III)I

    move-result v0

    sub-int/2addr v5, v8

    .line 74
    aget-short v5, p1, v5

    aget-short v7, v12, v11

    invoke-static {v0, v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB_ovflw(III)I

    move-result v0

    const/16 v5, 0xe

    .line 76
    invoke-static {v0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v0

    .line 80
    aget-short v5, p1, v13

    sub-int/2addr v5, v0

    invoke-static {v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, v10

    .line 83
    aget v5, p5, v3

    invoke-static {v5, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, v10

    add-int/lit8 v6, v6, 0x1

    move v5, v15

    const/4 v0, 0x0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v4, v10

    add-int v1, v1, p6

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    return-void
.end method
