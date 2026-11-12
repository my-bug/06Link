.class Lio/github/jaredmdobson/concentus/SilkPrefilterState;
.super Ljava/lang/Object;
.source "SilkPrefilterState.java"


# instance fields
.field lagPrev:I

.field rand_seed:I

.field final sAR_shp:[I

.field sHarmHP_Q2:I

.field sLF_AR_shp_Q12:I

.field sLF_MA_shp_Q12:I

.field final sLTP_shp:[S

.field sLTP_shp_buf_idx:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    .line 39
    new-array v0, v0, [S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sLTP_shp:[S

    const/16 v0, 0x11

    .line 40
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sAR_shp:[I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sLTP_shp_buf_idx:I

    .line 42
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sLF_AR_shp_Q12:I

    .line 43
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sLF_MA_shp_Q12:I

    .line 44
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sHarmHP_Q2:I

    .line 45
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->rand_seed:I

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->lagPrev:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 3

    .line 53
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sLTP_shp:[S

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 54
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sAR_shp:[I

    const/16 v1, 0x11

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 55
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sLTP_shp_buf_idx:I

    .line 56
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sLF_AR_shp_Q12:I

    .line 57
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sLF_MA_shp_Q12:I

    .line 58
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->sHarmHP_Q2:I

    .line 59
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->rand_seed:I

    .line 60
    iput v2, p0, Lio/github/jaredmdobson/concentus/SilkPrefilterState;->lagPrev:I

    return-void
.end method
