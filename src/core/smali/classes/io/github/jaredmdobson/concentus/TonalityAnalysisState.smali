.class Lio/github/jaredmdobson/concentus/TonalityAnalysisState;
.super Ljava/lang/Object;
.source "TonalityAnalysisState.java"


# instance fields
.field final E:[[F

.field E_count:I

.field Etracker:F

.field analysis_offset:I

.field final angle:[F

.field final cmean:[F

.field count:I

.field final d2_angle:[F

.field final d_angle:[F

.field enabled:Z

.field final highE:[F

.field final info:[Lio/github/jaredmdobson/concentus/AnalysisInfo;

.field final inmem:[I

.field last_music:I

.field last_transition:I

.field final lowE:[F

.field lowECount:F

.field final meanE:[F

.field final mem:[F

.field mem_fill:I

.field music_confidence:F

.field music_confidence_count:I

.field music_prob:F

.field final pmusic:[F

.field final prev_band_tonality:[F

.field prev_tonality:F

.field final pspeech:[F

.field read_pos:I

.field read_subframe:I

.field speech_confidence:F

.field speech_confidence_count:I

.field final std:[F

.field final subframe_mem:[F

.field write_pos:I


# direct methods
.method constructor <init>()V
    .locals 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->enabled:Z

    const/16 v1, 0xf0

    .line 40
    new-array v2, v1, [F

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->angle:[F

    .line 41
    new-array v2, v1, [F

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->d_angle:[F

    .line 42
    new-array v1, v1, [F

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->d2_angle:[F

    const/16 v1, 0x2d0

    .line 43
    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->inmem:[I

    const/16 v1, 0x12

    .line 46
    new-array v2, v1, [F

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->prev_band_tonality:[F

    const/16 v2, 0x8

    .line 48
    invoke-static {v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayFloat(II)[[F

    move-result-object v3

    iput-object v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->E:[[F

    .line 49
    new-array v3, v1, [F

    iput-object v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowE:[F

    .line 50
    new-array v1, v1, [F

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->highE:[F

    const/16 v1, 0x15

    .line 51
    new-array v1, v1, [F

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->meanE:[F

    const/16 v1, 0x20

    .line 52
    new-array v1, v1, [F

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    .line 53
    new-array v1, v2, [F

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->cmean:[F

    const/16 v1, 0x9

    .line 54
    new-array v1, v1, [F

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->std:[F

    const/4 v1, 0x3

    .line 62
    new-array v1, v1, [F

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->subframe_mem:[F

    const/16 v1, 0xc8

    .line 69
    new-array v2, v1, [F

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    .line 75
    new-array v2, v1, [F

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    .line 83
    new-array v2, v1, [Lio/github/jaredmdobson/concentus/AnalysisInfo;

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->info:[Lio/github/jaredmdobson/concentus/AnalysisInfo;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 87
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->info:[Lio/github/jaredmdobson/concentus/AnalysisInfo;

    new-instance v3, Lio/github/jaredmdobson/concentus/AnalysisInfo;

    invoke-direct {v3}, Lio/github/jaredmdobson/concentus/AnalysisInfo;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method Reset()V
    .locals 5

    .line 92
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->angle:[F

    const/4 v1, 0x0

    const/16 v2, 0xf0

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 93
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->d_angle:[F

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 94
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->d2_angle:[F

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 95
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->inmem:[I

    const/16 v2, 0x2d0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 96
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem_fill:I

    .line 97
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->prev_band_tonality:[F

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 98
    iput v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->prev_tonality:F

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    .line 100
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->E:[[F

    aget-object v4, v4, v0

    invoke-static {v4, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowE:[F

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 103
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->highE:[F

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 104
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->meanE:[F

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 105
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->mem:[F

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 106
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->cmean:[F

    invoke-static {v0, v1, v4}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 107
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->std:[F

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 108
    iput v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_prob:F

    .line 109
    iput v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->Etracker:F

    .line 110
    iput v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->lowECount:F

    .line 111
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->E_count:I

    .line 112
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->last_music:I

    .line 113
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->last_transition:I

    .line 114
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->count:I

    .line 115
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->subframe_mem:[F

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 116
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->analysis_offset:I

    .line 117
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pspeech:[F

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 118
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->pmusic:[F

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([FFI)V

    .line 119
    iput v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence:F

    .line 120
    iput v1, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence:F

    .line 121
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->speech_confidence_count:I

    .line 122
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->music_confidence_count:I

    .line 123
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->write_pos:I

    .line 124
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_pos:I

    .line 125
    iput v3, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->read_subframe:I

    :goto_1
    if-ge v3, v2, :cond_1

    .line 127
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/TonalityAnalysisState;->info:[Lio/github/jaredmdobson/concentus/AnalysisInfo;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lio/github/jaredmdobson/concentus/AnalysisInfo;->Reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
