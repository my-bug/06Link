.class Lio/github/jaredmdobson/concentus/SilkDecoderControl;
.super Ljava/lang/Object;
.source "SilkDecoderControl.java"


# instance fields
.field final Gains_Q16:[I

.field final LTPCoef_Q14:[S

.field LTP_scale_Q14:I

.field final PredCoef_Q12:[[S

.field final pitchL:[I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 40
    new-array v1, v0, [I

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->pitchL:[I

    .line 41
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->Gains_Q16:[I

    const/4 v0, 0x2

    const/16 v1, 0x10

    .line 44
    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Arrays;->InitTwoDimensionalArrayShort(II)[[S

    move-result-object v0

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    const/16 v0, 0x14

    .line 45
    new-array v0, v0, [S

    iput-object v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTPCoef_Q14:[S

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTP_scale_Q14:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 4

    .line 49
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->pitchL:[I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 50
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->Gains_Q16:[I

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([III)V

    .line 51
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    aget-object v0, v0, v1

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 52
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 53
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTPCoef_Q14:[S

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lio/github/jaredmdobson/concentus/Arrays;->MemSet([SSI)V

    .line 54
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkDecoderControl;->LTP_scale_Q14:I

    return-void
.end method
