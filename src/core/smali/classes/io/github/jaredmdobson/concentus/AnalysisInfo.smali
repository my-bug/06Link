.class Lio/github/jaredmdobson/concentus/AnalysisInfo;
.super Ljava/lang/Object;
.source "AnalysisInfo.java"


# instance fields
.field activity:F

.field bandwidth:I

.field enabled:Z

.field music_prob:F

.field noisiness:F

.field tonality:F

.field tonality_slope:F

.field valid:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->enabled:Z

    .line 40
    iput v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality:F

    .line 42
    iput v1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality_slope:F

    .line 43
    iput v1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->noisiness:F

    .line 44
    iput v1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->activity:F

    .line 45
    iput v1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->music_prob:F

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->bandwidth:I

    return-void
.end method


# virtual methods
.method Assign(Lio/github/jaredmdobson/concentus/AnalysisInfo;)V
    .locals 1

    .line 52
    iget v0, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    .line 53
    iget v0, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality:F

    iput v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality:F

    .line 54
    iget v0, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality_slope:F

    iput v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality_slope:F

    .line 55
    iget v0, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->noisiness:F

    iput v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->noisiness:F

    .line 56
    iget v0, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->activity:F

    iput v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->activity:F

    .line 57
    iget v0, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->music_prob:F

    iput v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->music_prob:F

    .line 58
    iget p1, p1, Lio/github/jaredmdobson/concentus/AnalysisInfo;->bandwidth:I

    iput p1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->bandwidth:I

    return-void
.end method

.method Reset()V
    .locals 2

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->valid:I

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality:F

    .line 64
    iput v1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->tonality_slope:F

    .line 65
    iput v1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->noisiness:F

    .line 66
    iput v1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->activity:F

    .line 67
    iput v1, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->music_prob:F

    .line 68
    iput v0, p0, Lio/github/jaredmdobson/concentus/AnalysisInfo;->bandwidth:I

    return-void
.end method
