.class Lio/github/jaredmdobson/concentus/StereoEncodeState;
.super Ljava/lang/Object;
.source "StereoEncodeState.java"


# instance fields
.field final mid_only_flags:[B

.field final mid_side_amp_Q0:[I

.field final predIx:[[[B

.field final pred_prev_Q13:[S

.field final sMid:[S

.field final sSide:[S

.field silent_side_len:S

.field smth_width_Q14:S

.field width_prev_Q14:S


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 36
    new-array v1, v0, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->pred_prev_Q13:[S

    .line 37
    new-array v1, v0, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sMid:[S

    .line 38
    new-array v1, v0, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sSide:[S

    const/4 v1, 0x4

    .line 39
    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    const/4 v1, 0x0

    .line 40
    iput-short v1, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    .line 41
    iput-short v1, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->width_prev_Q14:S

    .line 42
    iput-short v1, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->silent_side_len:S

    const/4 v1, 0x3

    .line 43
    invoke-static {v1, v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitThreeDimensionalArrayByte(III)[[[B

    move-result-object v0

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->predIx:[[[B

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_only_flags:[B

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 6

    .line 47
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->pred_prev_Q13:[S

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 48
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sMid:[S

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 49
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->sSide:[S

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 50
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    const/4 v3, 0x4

    invoke-static {v0, v1, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 51
    iput-short v1, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->smth_width_Q14:S

    .line 52
    iput-short v1, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->width_prev_Q14:S

    .line 53
    iput-short v1, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->silent_side_len:S

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    .line 56
    iget-object v5, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->predIx:[[[B

    aget-object v5, v5, v0

    aget-object v5, v5, v4

    invoke-static {v5, v1, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([BBI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/StereoEncodeState;->mid_only_flags:[B

    invoke-static {v0, v1, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([BBI)V

    return-void
.end method
