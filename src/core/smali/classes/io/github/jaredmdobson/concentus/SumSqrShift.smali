.class Lio/github/jaredmdobson/concentus/SumSqrShift;
.super Ljava/lang/Object;
.source "SumSqrShift.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SI)V
    .locals 9

    add-int/lit8 p3, p3, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, p3, :cond_1

    .line 119
    aget-short v4, p2, v1

    invoke-static {v2, v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB_ovflw(III)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    .line 120
    aget-short v4, p2, v4

    invoke-static {v2, v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB_ovflw(III)I

    move-result v2

    if-gez v2, :cond_0

    int-to-long v4, v2

    .line 123
    invoke-static {v4, v5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_uint(JI)J

    move-result-wide v4

    long-to-int v2, v4

    add-int/lit8 v1, v1, 0x2

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p3, :cond_3

    .line 131
    aget-short v4, p2, v1

    invoke-static {v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    .line 132
    aget-short v5, p2, v5

    invoke-static {v4, v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB_ovflw(III)I

    move-result v4

    int-to-long v5, v2

    int-to-long v7, v4

    .line 133
    invoke-static {v5, v6, v7, v8, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT_uint(JJI)J

    move-result-wide v4

    long-to-int v2, v4

    if-gez v2, :cond_2

    int-to-long v4, v2

    .line 136
    invoke-static {v4, v5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_uint(JI)J

    move-result-wide v4

    long-to-int v2, v4

    add-int/lit8 v0, v0, 0x2

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    if-ne v1, p3, :cond_4

    .line 143
    aget-short p2, p2, v1

    invoke-static {p2, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p2

    int-to-long v1, v2

    int-to-long p2, p2

    .line 144
    invoke-static {v1, v2, p2, p3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT_uint(JJI)J

    move-result-wide p2

    long-to-int v2, p2

    :cond_4
    const/high16 p2, -0x40000000    # -2.0f

    and-int/2addr p2, v2

    if-eqz p2, :cond_5

    int-to-long p2, v2

    .line 149
    invoke-static {p2, p3, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_uint(JI)J

    move-result-wide p2

    long-to-int v2, p2

    add-int/lit8 v0, v0, 0x2

    .line 154
    :cond_5
    iput v0, p1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 155
    iput v2, p0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static silk_sum_sqr_shift(Lio/github/jaredmdobson/concentus/BoxedValueInt;Lio/github/jaredmdobson/concentus/BoxedValueInt;[SII)V
    .locals 9

    add-int/lit8 p4, p4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, p4, :cond_1

    add-int v4, p3, v1

    .line 58
    aget-short v5, p2, v4

    invoke-static {v2, v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB_ovflw(III)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    .line 59
    aget-short v4, p2, v4

    invoke-static {v2, v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB_ovflw(III)I

    move-result v2

    if-gez v2, :cond_0

    int-to-long v4, v2

    .line 62
    invoke-static {v4, v5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_uint(JI)J

    move-result-wide v4

    long-to-int v2, v4

    add-int/lit8 v1, v1, 0x2

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p4, :cond_3

    add-int v4, p3, v1

    .line 70
    aget-short v5, p2, v4

    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    .line 71
    aget-short v4, p2, v4

    invoke-static {v5, v4, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLABB_ovflw(III)I

    move-result v4

    int-to-long v5, v2

    int-to-long v7, v4

    .line 72
    invoke-static {v5, v6, v7, v8, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT_uint(JJI)J

    move-result-wide v4

    long-to-int v2, v4

    if-gez v2, :cond_2

    int-to-long v4, v2

    .line 75
    invoke-static {v4, v5, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_uint(JI)J

    move-result-wide v4

    long-to-int v2, v4

    add-int/lit8 v0, v0, 0x2

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    if-ne v1, p4, :cond_4

    add-int/2addr p3, v1

    .line 82
    aget-short p2, p2, p3

    invoke-static {p2, p2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result p2

    int-to-long p3, v2

    int-to-long v1, p2

    .line 83
    invoke-static {p3, p4, v1, v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_ADD_RSHIFT_uint(JJI)J

    move-result-wide p2

    long-to-int v2, p2

    :cond_4
    const/high16 p2, -0x40000000    # -2.0f

    and-int/2addr p2, v2

    if-eqz p2, :cond_5

    int-to-long p2, v2

    .line 88
    invoke-static {p2, p3, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT_uint(JI)J

    move-result-wide p2

    long-to-int v2, p2

    add-int/lit8 v0, v0, 0x2

    .line 93
    :cond_5
    iput v0, p1, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    .line 94
    iput v2, p0, Lio/github/jaredmdobson/concentus/BoxedValueInt;->Val:I

    return-void
.end method
