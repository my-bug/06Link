.class Lio/github/jaredmdobson/concentus/NLSFCodebook;
.super Ljava/lang/Object;
.source "NLSFCodebook.java"


# instance fields
.field CB1_NLSF_Q8:[S

.field CB1_iCDF:[S

.field deltaMin_Q15:[S

.field ec_Rates_Q5:[S

.field ec_iCDF:[S

.field ec_sel:[S

.field invQuantStepSize_Q6:S

.field nVectors:S

.field order:S

.field pred_Q8:[S

.field quantStepSize_Q16:S


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->nVectors:S

    .line 41
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    .line 46
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->quantStepSize_Q16:S

    .line 51
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->invQuantStepSize_Q6:S

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_NLSF_Q8:[S

    .line 61
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_iCDF:[S

    .line 66
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->pred_Q8:[S

    .line 71
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_sel:[S

    .line 76
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_iCDF:[S

    .line 81
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_Rates_Q5:[S

    .line 86
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->deltaMin_Q15:[S

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->nVectors:S

    .line 90
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->order:S

    .line 91
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->quantStepSize_Q16:S

    .line 92
    iput-short v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->invQuantStepSize_Q6:S

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_NLSF_Q8:[S

    .line 94
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->CB1_iCDF:[S

    .line 95
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->pred_Q8:[S

    .line 96
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_sel:[S

    .line 97
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_iCDF:[S

    .line 98
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->ec_Rates_Q5:[S

    .line 99
    iput-object v0, p0, Lio/github/jaredmdobson/concentus/NLSFCodebook;->deltaMin_Q15:[S

    return-void
.end method
