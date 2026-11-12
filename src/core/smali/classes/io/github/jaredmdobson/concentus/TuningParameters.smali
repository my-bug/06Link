.class Lio/github/jaredmdobson/concentus/TuningParameters;
.super Ljava/lang/Object;
.source "TuningParameters.java"


# static fields
.field static final BANDWIDTH_EXPANSION:F = 0.95f

.field static final BG_SNR_DECR_dB:F = 2.0f

.field static final BITRESERVOIR_DECAY_TIME_MS:I = 0x1f4

.field static final FIND_LPC_COND_FAC:F = 1.0E-5f

.field static final FIND_LTP_COND_FAC:F = 1.0E-5f

.field static final FIND_PITCH_BANDWIDTH_EXPANSION:F = 0.99f

.field static final FIND_PITCH_WHITE_NOISE_FRACTION:F = 0.001f

.field static final HARMONIC_SHAPING:F = 0.3f

.field static final HARM_HP_NOISE_COEF:F = 0.35f

.field static final HARM_SNR_INCR_dB:F = 2.0f

.field static final HIGH_RATE_INPUT_TILT:F = 0.1f

.field static final HIGH_RATE_OR_LOW_QUALITY_HARMONIC_SHAPING:F = 0.2f

.field static final HP_NOISE_COEF:F = 0.25f

.field static final INPUT_TILT:F = 0.05f

.field static final LAMBDA_CODING_QUALITY:F = -0.2f

.field static final LAMBDA_DELAYED_DECISIONS:F = -0.05f

.field static final LAMBDA_INPUT_QUALITY:F = -0.1f

.field static final LAMBDA_OFFSET:F = 1.2f

.field static final LAMBDA_QUANT_OFFSET:F = 0.8f

.field static final LAMBDA_SPEECH_ACT:F = -0.2f

.field static final LBRR_SPEECH_ACTIVITY_THRES:F = 0.3f

.field static final LOW_FREQ_SHAPING:F = 4.0f

.field static final LOW_INPUT_QUALITY_HARMONIC_BOOST:F = 0.1f

.field static final LOW_QUALITY_LOW_FREQ_SHAPING_DECR:F = 0.5f

.field static final LOW_RATE_BANDWIDTH_EXPANSION_DELTA:F = 0.01f

.field static final LOW_RATE_HARMONIC_BOOST:F = 0.1f

.field static final LTP_DAMPING:F = 0.05f

.field static final LTP_SMOOTHING:F = 0.1f

.field static final MAX_BANDWIDTH_SWITCH_DELAY_MS:I = 0x1388

.field static final MAX_SUM_LOG_GAIN_DB:F = 250.0f

.field static final MU_LTP_QUANT_MB:F = 0.025f

.field static final MU_LTP_QUANT_NB:F = 0.03f

.field static final MU_LTP_QUANT_WB:F = 0.02f

.field static final REDUCE_BITRATE_10_MS_BPS:I = 0x898

.field static final SHAPE_WHITE_NOISE_FRACTION:F = 5.0E-5f

.field static final SPARSENESS_THRESHOLD_QNT_OFFSET:F = 0.75f

.field static final SPARSE_SNR_INCR_dB:F = 2.0f

.field static final SPEECH_ACTIVITY_DTX_THRES:F = 0.05f

.field static final SUBFR_SMTH_COEF:F = 0.4f

.field static final VARIABLE_HP_MAX_CUTOFF_HZ:I = 0x64

.field static final VARIABLE_HP_MAX_DELTA_FREQ:F = 0.4f

.field static final VARIABLE_HP_MIN_CUTOFF_HZ:I = 0x3c

.field static final VARIABLE_HP_SMTH_COEF1:F = 0.1f

.field static final VARIABLE_HP_SMTH_COEF2:F = 0.015f

.field static final WARPING_MULTIPLIER:F = 0.015f


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
