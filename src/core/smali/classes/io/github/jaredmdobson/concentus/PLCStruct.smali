.class Lio/github/jaredmdobson/concentus/PLCStruct;
.super Ljava/lang/Object;
.source "PLCStruct.java"


# instance fields
.field final LTPCoef_Q14:[S

.field conc_energy:I

.field conc_energy_shift:I

.field fs_kHz:I

.field last_frame_lost:I

.field nb_subfr:I

.field pitchL_Q8:I

.field final prevGain_Q16:[I

.field final prevLPC_Q12:[S

.field prevLTP_scale_Q14:S

.field randScale_Q14:S

.field rand_seed:I

.field subfr_length:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    const/4 v1, 0x5

    .line 41
    new-array v1, v1, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    const/16 v1, 0x10

    .line 43
    new-array v1, v1, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    .line 44
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->last_frame_lost:I

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->rand_seed:I

    .line 48
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->randScale_Q14:S

    .line 50
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy:I

    .line 51
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy_shift:I

    .line 52
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLTP_scale_Q14:S

    const/4 v1, 0x2

    .line 53
    new-array v1, v1, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevGain_Q16:[I

    .line 54
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->fs_kHz:I

    .line 55
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->nb_subfr:I

    .line 56
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->subfr_length:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 3

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->pitchL_Q8:I

    .line 60
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->LTPCoef_Q14:[S

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 61
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLPC_Q12:[S

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 62
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->last_frame_lost:I

    .line 63
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->rand_seed:I

    .line 64
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->randScale_Q14:S

    .line 65
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy:I

    .line 66
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->conc_energy_shift:I

    .line 67
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevLTP_scale_Q14:S

    .line 68
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->prevGain_Q16:[I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 69
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->fs_kHz:I

    .line 70
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->nb_subfr:I

    .line 71
    iput v0, p0, Lio/github/jaredmdobson/concentus/PLCStruct;->subfr_length:I

    return-void
.end method
