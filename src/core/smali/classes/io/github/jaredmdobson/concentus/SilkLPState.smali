.class Lio/github/jaredmdobson/concentus/SilkLPState;
.super Ljava/lang/Object;
.source "SilkLPState.java"


# instance fields
.field final In_LP_State:[I

.field mode:I

.field transition_frame_no:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->In_LP_State:[I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->transition_frame_no:I

    .line 52
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 3

    .line 55
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->In_LP_State:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 56
    aput v1, v0, v2

    .line 57
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->transition_frame_no:I

    .line 58
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    return-void
.end method

.method silk_LP_variable_cutoff([SII)V
    .locals 10

    const/4 v0, 0x3

    .line 70
    new-array v3, v0, [I

    const/4 v0, 0x2

    .line 71
    new-array v4, v0, [I

    .line 75
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->transition_frame_no:I

    const/16 v1, 0x100

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-ltz v0, :cond_0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 78
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    if-eqz v0, :cond_3

    .line 80
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->transition_frame_no:I

    rsub-int v0, v0, 0x100

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    const/16 v6, 0x10

    .line 82
    invoke-static {v0, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    .line 83
    invoke-static {v7, v6}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    sub-int/2addr v0, v6

    if-ltz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 85
    :goto_1
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    const/4 v6, 0x5

    if-ge v7, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 86
    :goto_2
    invoke-static {v6}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 89
    invoke-static {v3, v4, v7, v0}, Lio/github/jaredmdobson/concentus/Filters;->silk_LP_interpolate_filter_taps([I[III)V

    .line 92
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->transition_frame_no:I

    iget v6, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->mode:I

    add-int/2addr v0, v6

    invoke-static {v0, v5, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT(III)I

    move-result v0

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->transition_frame_no:I

    .line 95
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->OpusAssert(Z)V

    .line 96
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/SilkLPState;->In_LP_State:[I

    const/4 v9, 0x1

    move-object v6, p1

    move v7, p2

    move-object v1, p1

    move v2, p2

    move v8, p3

    invoke-static/range {v1 .. v9}, Lio/github/jaredmdobson/concentus/Filters;->silk_biquad_alt([SI[I[I[I[SIII)V

    :cond_3
    return-void
.end method
