.class Lio/github/jaredmdobson/concentus/ApplySineWindow;
.super Ljava/lang/Object;
.source "ApplySineWindow.java"


# static fields
.field private static final freq_table_Q16:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1b

    .line 46
    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/jaredmdobson/concentus/ApplySineWindow;->freq_table_Q16:[S

    return-void

    :array_0
    .array-data 2
        0x2f4fs
        0x264cs
        0x202bs
        0x1bbcs
        0x185fs
        0x15bds
        0x139es
        0x11dfs
        0x106as
        0xf2ds
        0xe1cs
        0xd2fs
        0xc5fs
        0xba8s
        0xb04s
        0xa72s
        0x9ees
        0x976s
        0x909s
        0x8a6s
        0x84bs
        0x7f6s
        0x7a9s
        0x761s
        0x71es
        0x6e0s
        0x6a6s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_apply_sine_window([SI[SIII)V
    .locals 13

    move/from16 v0, p4

    move/from16 v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 62
    :goto_1
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/16 v4, 0x10

    if-lt v1, v4, :cond_2

    const/16 v4, 0x78

    if-gt v1, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 65
    :goto_2
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    and-int/lit8 v4, v1, 0x3

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 66
    :goto_3
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    shr-int/lit8 v4, v1, 0x2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    if-ltz v4, :cond_4

    const/16 v6, 0x1a

    if-gt v4, v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    .line 70
    :goto_4
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 71
    sget-object v6, Lio/github/jaredmdobson/concentus/ApplySineWindow;->freq_table_Q16:[S

    aget-short v4, v6, v4

    neg-int v6, v4

    .line 74
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    const/16 v7, -0x8000

    if-lt v6, v7, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 75
    :goto_5
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/high16 v7, 0x10000

    const/4 v8, 0x3

    if-ne v0, v3, :cond_6

    .line 82
    invoke-static {v1, v8}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    add-int/2addr v4, v0

    const/4 v0, 0x0

    goto :goto_6

    .line 87
    :cond_6
    invoke-static {v6, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    add-int/2addr v0, v7

    invoke-static {v1, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    add-int/2addr v4, v0

    const/high16 v0, 0x10000

    :goto_6
    if-ge v2, v1, :cond_7

    add-int v5, p1, v2

    add-int v9, p3, v2

    add-int v10, v0, v4

    .line 95
    invoke-static {v10, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v10

    aget-short v11, p2, v9

    invoke-static {v10, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v10

    int-to-short v10, v10

    aput-short v10, p0, v5

    add-int/lit8 v10, v5, 0x1

    add-int/lit8 v11, v9, 0x1

    .line 96
    aget-short v11, p2, v11

    invoke-static {v4, v11}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, p0, v10

    .line 97
    invoke-static {v4, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v10

    invoke-static {v4, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v0

    add-int/2addr v10, v3

    .line 98
    invoke-static {v10, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v0

    add-int/lit8 v10, v5, 0x2

    add-int v11, v0, v4

    .line 100
    invoke-static {v11, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v11

    add-int/lit8 v12, v9, 0x2

    aget-short v12, p2, v12

    invoke-static {v11, v12}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, p0, v10

    add-int/2addr v5, v8

    add-int/2addr v9, v8

    .line 101
    aget-short v9, p2, v9

    invoke-static {v0, v9}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, p0, v5

    .line 102
    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v5

    invoke-static {v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    add-int/2addr v5, v9

    sub-int/2addr v5, v4

    .line 103
    invoke-static {v5, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_min(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x4

    goto :goto_6

    :cond_7
    return-void
.end method
