.class Lio/github/jaredmdobson/concentus/HPVariableCutoff;
.super Ljava/lang/Object;
.source "HPVariableCutoff.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_HP_variable_cutoff([Lio/github/jaredmdobson/concentus/SilkChannelEncoder;)V
    .locals 4

    const/4 v0, 0x0

    .line 43
    aget-object p0, p0, v0

    .line 46
    iget-byte v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevSignalType:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 48
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v3, 0x3e8

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->prevLag:I

    invoke-static {v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v1

    .line 49
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v1

    add-int/lit16 v1, v1, -0x800

    .line 52
    iget-object v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->input_quality_bands_Q15:[I

    aget v0, v3, v0

    neg-int v3, v0

    .line 53
    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    invoke-static {v2, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULWB(II)I

    move-result v0

    const/high16 v2, 0x3c0000

    .line 54
    invoke-static {v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x800

    sub-int v2, v1, v2

    .line 53
    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 57
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v1, 0x3

    .line 60
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_MUL(II)I

    move-result v0

    :cond_0
    const/16 v1, -0x33

    const/16 v3, 0x33

    .line 64
    invoke-static {v0, v1, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result v0

    .line 70
    iget v1, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    iget v3, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    .line 71
    invoke-static {v3, v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    const/16 v3, 0x199a

    .line 70
    invoke-static {v1, v0, v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    .line 74
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    const/16 v1, 0x3c

    .line 75
    invoke-static {v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v1

    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    const/16 v3, 0x64

    .line 76
    invoke-static {v3}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v3

    invoke-static {v3, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    .line 74
    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result v0

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    :cond_1
    return-void
.end method
