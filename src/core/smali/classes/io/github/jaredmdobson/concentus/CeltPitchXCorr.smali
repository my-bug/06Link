.class Lio/github/jaredmdobson/concentus/CeltPitchXCorr;
.super Ljava/lang/Object;
.source "CeltPitchXCorr.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static pitch_xcorr([I[I[III)I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_0
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 48
    new-instance v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v6, v0}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 49
    new-instance v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v7, v0}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 50
    new-instance v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v8, v0}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 51
    new-instance v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v9, v0}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v2, p4, -0x3

    if-ge v5, v2, :cond_1

    .line 53
    iput v0, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 54
    iput v0, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 55
    iput v0, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 56
    iput v0, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    move-object v3, p0

    move-object v4, p1

    move v10, p3

    .line 57
    invoke-static/range {v3 .. v10}, Lio/github/jaredmdobson/concentus/Kernels;->xcorr_kernel([I[IILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)V

    .line 58
    iget p0, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput p0, p2, v5

    add-int/lit8 p0, v5, 0x1

    .line 59
    iget p1, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput p1, p2, p0

    add-int/lit8 p0, v5, 0x2

    .line 60
    iget p1, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput p1, p2, p0

    add-int/lit8 p0, v5, 0x3

    .line 61
    iget p1, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput p1, p2, p0

    .line 62
    iget p0, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget p1, v7, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result p0

    iput p0, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 63
    iget p0, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget p1, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result p0

    iput p0, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 64
    iget p0, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget p1, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {p0, p1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result p0

    iput p0, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 65
    iget p0, v6, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v1

    add-int/lit8 v5, v5, 0x4

    move-object p0, v3

    move-object p1, v4

    goto :goto_1

    :cond_1
    move-object v3, p0

    move-object v4, p1

    move v10, p3

    :goto_2
    if-ge v5, p4, :cond_2

    .line 69
    invoke-static {v3, v0, v4, v5, v10}, Lio/github/jaredmdobson/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result p0

    .line 70
    aput p0, p2, v5

    .line 71
    invoke-static {v1, p0}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    return v1
.end method

.method static pitch_xcorr([SI[SI[III)I
    .locals 13

    move/from16 v0, p6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 86
    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 87
    new-instance v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v8, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 88
    new-instance v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v9, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 89
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v10, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 90
    new-instance v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v11, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v0, -0x3

    if-ge v3, v4, :cond_1

    .line 92
    iput v1, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 93
    iput v1, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 94
    iput v1, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 95
    iput v1, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    add-int v7, p3, v3

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move/from16 v12, p5

    .line 96
    invoke-static/range {v4 .. v12}, Lio/github/jaredmdobson/concentus/Kernels;->xcorr_kernel([SI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)V

    .line 98
    iget v7, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v7, p4, v3

    add-int/lit8 v7, v3, 0x1

    .line 99
    iget v12, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v12, p4, v7

    add-int/lit8 v7, v3, 0x2

    .line 100
    iget v12, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v12, p4, v7

    add-int/lit8 v7, v3, 0x3

    .line 101
    iget v12, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v12, p4, v7

    .line 102
    iget v7, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v12, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v7, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v7

    iput v7, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 103
    iget v7, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v12, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v7, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v7

    iput v7, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 104
    iget v7, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v12, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v7, v12}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v7

    iput v7, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 105
    iget v7, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v2, v7}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v0, :cond_2

    add-int v1, p3, v3

    move/from16 v12, p5

    .line 109
    invoke-static {p0, p1, p2, v1, v12}, Lio/github/jaredmdobson/concentus/Kernels;->celt_inner_prod([SI[SII)I

    move-result v1

    .line 110
    aput v1, p4, v3

    .line 111
    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return v2
.end method

.method static pitch_xcorr([S[S[III)I
    .locals 13

    move/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 124
    :goto_0
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 125
    new-instance v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v8, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 126
    new-instance v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v9, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 127
    new-instance v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v10, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    .line 128
    new-instance v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;

    invoke-direct {v11, v1}, Lio/github/jaredmdobson/concentus/BoxedValueInt;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v3, v0, -0x3

    if-ge v7, v3, :cond_1

    .line 130
    iput v1, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 131
    iput v1, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 132
    iput v1, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 133
    iput v1, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    const/4 v5, 0x0

    move-object v4, p0

    move-object v6, p1

    move/from16 v12, p3

    .line 134
    invoke-static/range {v4 .. v12}, Lio/github/jaredmdobson/concentus/Kernels;->xcorr_kernel([SI[SILio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;I)V

    .line 136
    iget v3, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v3, p2, v7

    add-int/lit8 v3, v7, 0x1

    .line 137
    iget v5, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v5, p2, v3

    add-int/lit8 v3, v7, 0x2

    .line 138
    iget v5, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v5, p2, v3

    add-int/lit8 v3, v7, 0x3

    .line 139
    iget v5, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    aput v5, p2, v3

    .line 140
    iget v3, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v5, v9, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v3

    iput v3, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 141
    iget v3, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v5, v11, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v3

    iput v3, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 142
    iget v3, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    iget v5, v10, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v3, v5}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v3

    iput v3, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 143
    iget v3, v8, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    invoke-static {v2, v3}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x4

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v7, v0, :cond_2

    move/from16 v12, p3

    .line 147
    invoke-static {p0, p1, v7, v12}, Lio/github/jaredmdobson/concentus/Kernels;->celt_inner_prod([S[SII)I

    move-result v1

    .line 148
    aput v1, p2, v7

    .line 149
    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Inlines;->MAX32(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    return v2
.end method
