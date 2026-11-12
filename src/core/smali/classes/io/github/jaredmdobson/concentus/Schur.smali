.class Lio/github/jaredmdobson/concentus/Schur;
.super Ljava/lang/Object;
.source "Schur.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_schur([S[II)I
    .locals 10

    const/16 v0, 0x11

    const/4 v1, 0x2

    .line 44
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_1

    const/16 v2, 0xa

    if-eq p2, v2, :cond_1

    const/16 v2, 0xc

    if-eq p2, v2, :cond_1

    const/16 v2, 0xe

    if-eq p2, v2, :cond_1

    const/16 v2, 0x10

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 47
    :goto_1
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 50
    aget v2, p1, v3

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v2

    if-ge v2, v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v2, p2, 0x1

    if-ge v1, v2, :cond_4

    .line 56
    aget-object v2, v0, v1

    aget v5, p1, v1

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    aput v5, v2, v4

    aput v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-le v2, v1, :cond_3

    add-int/lit8 v2, v2, -0x2

    const/4 v1, 0x0

    :goto_3
    add-int/lit8 v5, p2, 0x1

    if-ge v1, v5, :cond_4

    .line 62
    aget-object v5, v0, v1

    aget v6, p1, v1

    invoke-static {v6, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    aput v6, v5, v4

    aput v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_4
    add-int/lit8 v2, p2, 0x1

    if-ge v1, v2, :cond_4

    .line 67
    aget-object v2, v0, v1

    aget v5, p1, v1

    aput v5, v2, v4

    aput v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_5
    if-ge p1, p2, :cond_8

    add-int/lit8 v1, p1, 0x1

    .line 73
    aget-object v2, v0, v1

    aget v2, v2, v3

    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs_int32(I)I

    move-result v2

    aget-object v5, v0, v3

    aget v5, v5, v4

    if-lt v2, v5, :cond_6

    .line 74
    aget-object v2, v0, v1

    aget v2, v2, v3

    if-lez v2, :cond_5

    const/16 v2, -0x7eb8

    .line 75
    aput-short v2, p0, p1

    goto :goto_6

    :cond_5
    const/16 v2, 0x7eb8

    .line 77
    aput-short v2, p0, p1

    :goto_6
    move p1, v1

    goto :goto_8

    .line 84
    :cond_6
    aget-object v2, v0, v1

    aget v2, v2, v3

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    invoke-static {v5, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result v5

    invoke-static {v2, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x0

    .line 87
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SAT16(I)I

    move-result v2

    int-to-short v5, v2

    .line 90
    aput-short v5, p0, p1

    const/4 v5, 0x0

    :goto_7
    sub-int v6, p2, p1

    if-ge v5, v6, :cond_7

    add-int v6, v5, p1

    add-int/2addr v6, v4

    .line 94
    aget-object v6, v0, v6

    aget v7, v6, v3

    .line 95
    aget-object v8, v0, v5

    aget v8, v8, v4

    .line 96
    invoke-static {v8, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    invoke-static {v7, v9, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    aput v9, v6, v3

    .line 97
    aget-object v6, v0, v5

    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    invoke-static {v8, v7, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    aput v7, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    move p1, v1

    goto :goto_5

    :cond_8
    :goto_8
    if-ge p1, p2, :cond_9

    .line 102
    aput-short v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 106
    :cond_9
    aget-object p0, v0, v3

    aget p0, p0, v4

    invoke-static {v4, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result p0

    return p0
.end method

.method static silk_schur64([I[II)I
    .locals 10

    const/16 v0, 0x11

    const/4 v1, 0x2

    .line 117
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8

    if-eq p2, v1, :cond_1

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 v1, 0xc

    if-eq p2, v1, :cond_1

    const/16 v1, 0xe

    if-eq p2, v1, :cond_1

    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 120
    :goto_1
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 123
    aget v1, p1, v3

    if-gtz v1, :cond_2

    .line 124
    invoke-static {p0, v3, p2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    return v3

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v4, p2, 0x1

    if-ge v1, v4, :cond_3

    .line 129
    aget-object v4, v0, v1

    aget v5, p1, v1

    aput v5, v4, v2

    aput v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-ge p1, p2, :cond_7

    add-int/lit8 v1, p1, 0x1

    .line 134
    aget-object v4, v0, v1

    aget v4, v4, v3

    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs_int32(I)I

    move-result v4

    aget-object v5, v0, v3

    aget v5, v5, v2

    if-lt v4, v5, :cond_5

    .line 135
    aget-object v4, v0, v1

    aget v4, v4, v3

    if-lez v4, :cond_4

    const v4, -0xfd71

    .line 136
    aput v4, p0, p1

    goto :goto_4

    :cond_4
    const v4, 0xfd71

    .line 138
    aput v4, p0, p1

    :goto_4
    move p1, v1

    goto :goto_6

    .line 145
    :cond_5
    aget-object v4, v0, v1

    aget v4, v4, v3

    neg-int v4, v4

    const/16 v6, 0x1f

    invoke-static {v4, v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v4

    const/16 v5, 0xf

    .line 148
    invoke-static {v4, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    aput v5, p0, p1

    const/4 v5, 0x0

    :goto_5
    sub-int v6, p2, p1

    if-ge v5, v6, :cond_6

    add-int v6, v5, p1

    add-int/2addr v6, v2

    .line 152
    aget-object v6, v0, v6

    aget v7, v6, v3

    .line 153
    aget-object v8, v0, v5

    aget v8, v8, v2

    .line 156
    invoke-static {v8, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    invoke-static {v9, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v9

    add-int/2addr v9, v7

    aput v9, v6, v3

    .line 157
    aget-object v6, v0, v5

    invoke-static {v7, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    invoke-static {v7, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v7

    add-int/2addr v8, v7

    aput v8, v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    move p1, v1

    goto :goto_3

    :cond_7
    :goto_6
    if-ge p1, p2, :cond_8

    .line 162
    aput v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 165
    :cond_8
    aget-object p0, v0, v3

    aget p0, p0, v2

    invoke-static {v2, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_max_32(II)I

    move-result p0

    return p0
.end method
