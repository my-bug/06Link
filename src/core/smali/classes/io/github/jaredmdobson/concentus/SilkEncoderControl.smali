.class Lio/github/jaredmdobson/concentus/SilkEncoderControl;
.super Ljava/lang/Object;
.source "SilkEncoderControl.java"


# instance fields
.field final AR1_Q13:[S

.field final AR2_Q13:[S

.field final GainsPre_Q14:[I

.field final GainsUnq_Q16:[I

.field final Gains_Q16:[I

.field final HarmBoost_Q14:[I

.field final HarmShapeGain_Q14:[I

.field final LF_shp_Q14:[I

.field final LTPCoef_Q14:[S

.field LTP_scale_Q14:I

.field LTPredCodGain_Q7:I

.field Lambda_Q10:I

.field final PredCoef_Q12:[[S

.field final ResNrg:[I

.field final ResNrgQ:[I

.field final Tilt_Q14:[I

.field coding_quality_Q14:I

.field input_quality_Q14:I

.field lastGainIndexPrev:B

.field final pitchL:[I

.field predGain_Q16:I

.field sparseness_Q8:I


# direct methods
.method constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 44
    new-array v1, v0, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    const/4 v1, 0x2

    const/16 v2, 0x10

    .line 45
    invoke-static {v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayShort(II)[[S

    move-result-object v1

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    const/16 v1, 0x14

    .line 47
    new-array v1, v1, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTP_scale_Q14:I

    .line 49
    new-array v2, v0, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    const/16 v2, 0x40

    .line 52
    new-array v3, v2, [S

    iput-object v3, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->AR1_Q13:[S

    .line 53
    new-array v2, v2, [S

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->AR2_Q13:[S

    .line 54
    new-array v2, v0, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    .line 56
    new-array v2, v0, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->GainsPre_Q14:[I

    .line 57
    new-array v2, v0, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->HarmBoost_Q14:[I

    .line 58
    new-array v2, v0, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Tilt_Q14:[I

    .line 59
    new-array v2, v0, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->HarmShapeGain_Q14:[I

    .line 60
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    .line 61
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->input_quality_Q14:I

    .line 62
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    .line 65
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->sparseness_Q8:I

    .line 66
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->predGain_Q16:I

    .line 67
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    .line 70
    new-array v2, v0, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrg:[I

    .line 73
    new-array v2, v0, [I

    iput-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrgQ:[I

    .line 76
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->GainsUnq_Q16:[I

    .line 77
    iput-byte v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->lastGainIndexPrev:B

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 5

    .line 80
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Gains_Q16:[I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 81
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    aget-object v0, v0, v1

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 82
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0, v1, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 83
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    const/16 v3, 0x14

    invoke-static {v0, v1, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 84
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTP_scale_Q14:I

    .line 85
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->pitchL:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 86
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->AR1_Q13:[S

    const/16 v3, 0x40

    invoke-static {v0, v1, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 87
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->AR2_Q13:[S

    invoke-static {v0, v1, v3}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 88
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 89
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->GainsPre_Q14:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 90
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->HarmBoost_Q14:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 91
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Tilt_Q14:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 92
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->HarmShapeGain_Q14:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 93
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->Lambda_Q10:I

    .line 94
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->input_quality_Q14:I

    .line 95
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->coding_quality_Q14:I

    .line 96
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->sparseness_Q8:I

    .line 97
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->predGain_Q16:I

    .line 98
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    .line 99
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrg:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 100
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->ResNrgQ:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 101
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->GainsUnq_Q16:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 102
    iput-byte v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoderControl;->lastGainIndexPrev:B

    return-void
.end method
