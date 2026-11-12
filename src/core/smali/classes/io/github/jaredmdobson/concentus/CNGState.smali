.class Lio/github/jaredmdobson/concentus/CNGState;
.super Ljava/lang/Object;
.source "CNGState.java"


# instance fields
.field final CNG_exc_buf_Q14:[I

.field CNG_smth_Gain_Q16:I

.field final CNG_smth_NLSF_Q15:[S

.field final CNG_synth_state:[I

.field fs_kHz:I

.field rand_seed:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x140

    .line 39
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CNGState;->CNG_exc_buf_Q14:[I

    const/16 v0, 0x10

    .line 40
    new-array v1, v0, [S

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/CNGState;->CNG_smth_NLSF_Q15:[S

    .line 41
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/CNGState;->CNG_synth_state:[I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lio/github/jaredmdobson/concentus/CNGState;->CNG_smth_Gain_Q16:I

    .line 43
    iput v0, p0, Lio/github/jaredmdobson/concentus/CNGState;->rand_seed:I

    .line 44
    iput v0, p0, Lio/github/jaredmdobson/concentus/CNGState;->fs_kHz:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 3

    .line 47
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CNGState;->CNG_exc_buf_Q14:[I

    const/16 v1, 0x140

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 48
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CNGState;->CNG_smth_NLSF_Q15:[S

    const/16 v1, 0x10

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 49
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/CNGState;->CNG_synth_state:[I

    invoke-static {v0, v2, v1}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 50
    iput v2, p0, Lio/github/jaredmdobson/concentus/CNGState;->CNG_smth_Gain_Q16:I

    .line 51
    iput v2, p0, Lio/github/jaredmdobson/concentus/CNGState;->rand_seed:I

    .line 52
    iput v2, p0, Lio/github/jaredmdobson/concentus/CNGState;->fs_kHz:I

    return-void
.end method
