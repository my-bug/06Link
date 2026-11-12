.class Lio/github/jaredmdobson/concentus/FFTState;
.super Ljava/lang/Object;
.source "FFTState.java"


# instance fields
.field bitrev:[S

.field factors:[S

.field nfft:I

.field scale:S

.field scale_shift:I

.field shift:I

.field twiddles:[S


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lio/github/jaredmdobson/concentus/FFTState;->nfft:I

    .line 40
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/FFTState;->scale:S

    .line 41
    iput v0, p0, Lio/github/jaredmdobson/concentus/FFTState;->scale_shift:I

    .line 42
    iput v0, p0, Lio/github/jaredmdobson/concentus/FFTState;->shift:I

    const/16 v0, 0x10

    .line 43
    new-array v0, v0, [S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/FFTState;->factors:[S

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/FFTState;->bitrev:[S

    .line 45
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/FFTState;->twiddles:[S

    return-void
.end method
