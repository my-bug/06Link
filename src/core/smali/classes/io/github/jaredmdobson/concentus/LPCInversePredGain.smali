.class Lio/github/jaredmdobson/concentus/LPCInversePredGain;
.super Ljava/lang/Object;
.source "LPCInversePredGain.java"


# static fields
.field private static final A_LIMIT:I = 0xffef9e

.field private static final QA:I = 0x18


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static LPC_inverse_pred_gain_QA([[II)I
    .locals 12

    and-int/lit8 v0, p1, 0x1

    .line 50
    aget-object v0, p0, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40000000    # 2.0f

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x7

    const v6, -0xffef9e

    const v7, 0xffef9e

    const/4 v8, 0x0

    if-lez p1, :cond_7

    .line 55
    aget v9, v0, p1

    if-gt v9, v7, :cond_6

    if-ge v9, v6, :cond_0

    goto :goto_6

    .line 60
    :cond_0
    invoke-static {v9, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x0

    .line 63
    invoke-static {v5, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v6

    sub-int v6, v2, v6

    const v7, 0x8000

    if-le v6, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 64
    :goto_1
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-gt v6, v2, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 66
    :goto_2
    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 69
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_abs(I)I

    move-result v7

    invoke-static {v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_CLZ32(I)I

    move-result v7

    rsub-int/lit8 v9, v7, 0x20

    rsub-int/lit8 v7, v7, 0x3e

    .line 70
    invoke-static {v6, v7}, Lio/github/jaredmdobson/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v7

    .line 74
    invoke-static {v3, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result v3

    invoke-static {v3, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    if-ltz v3, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 75
    :goto_3
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-gt v3, v2, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 76
    :goto_4
    invoke-static {v4}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    and-int/lit8 v4, p1, 0x1

    .line 80
    aget-object v4, p0, v4

    :goto_5
    if-ge v8, p1, :cond_5

    .line 84
    aget v6, v0, v8

    sub-int v10, p1, v8

    sub-int/2addr v10, v1

    aget v10, v0, v10

    const/16 v11, 0x1f

    invoke-static {v10, v5, v11}, Lio/github/jaredmdobson/concentus/Inlines;->MUL32_FRAC_Q(III)I

    move-result v10

    sub-int/2addr v6, v10

    .line 85
    invoke-static {v6, v7, v9}, Lio/github/jaredmdobson/concentus/Inlines;->MUL32_FRAC_Q(III)I

    move-result v6

    aput v6, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 p1, p1, -0x1

    move-object v0, v4

    goto :goto_0

    :cond_6
    :goto_6
    return v8

    .line 90
    :cond_7
    aget p0, v0, v8

    if-gt p0, v7, :cond_b

    if-ge p0, v6, :cond_8

    goto :goto_9

    .line 95
    :cond_8
    invoke-static {p0, v5}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    .line 98
    invoke-static {p0, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result p0

    sub-int p0, v2, p0

    .line 102
    invoke-static {v3, p0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMMUL(II)I

    move-result p0

    invoke-static {p0, v4}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    if-ltz p0, :cond_9

    const/4 p1, 0x1

    goto :goto_7

    :cond_9
    const/4 p1, 0x0

    .line 103
    :goto_7
    invoke-static {p1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    if-gt p0, v2, :cond_a

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    .line 104
    :goto_8
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    return p0

    :cond_b
    :goto_9
    return v8
.end method

.method static silk_LPC_inverse_pred_gain([SI)I
    .locals 7

    const/4 v0, 0x2

    const/16 v1, 0x10

    .line 115
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    .line 119
    aget-object v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 123
    aget-short v5, p0, v3

    add-int/2addr v4, v5

    const/16 v6, 0xc

    .line 124
    invoke-static {v5, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v5

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x1000

    if-lt v4, p0, :cond_1

    return v2

    .line 130
    :cond_1
    invoke-static {v0, p1}, Lio/github/jaredmdobson/concentus/LPCInversePredGain;->LPC_inverse_pred_gain_QA([[II)I

    move-result p0

    return p0
.end method

.method static silk_LPC_inverse_pred_gain_Q24([II)I
    .locals 5

    const/4 v0, 0x2

    const/16 v1, 0x10

    .line 138
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    .line 141
    aget-object v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 145
    aget v4, p0, v3

    invoke-static {v4, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {v0, p1}, Lio/github/jaredmdobson/concentus/LPCInversePredGain;->LPC_inverse_pred_gain_QA([[II)I

    move-result p0

    return p0
.end method
