.class Lio/github/jaredmdobson/concentus/SilkEncoder;
.super Ljava/lang/Object;
.source "SilkEncoder.java"


# instance fields
.field allowBandwidthSwitch:I

.field nBitsExceeded:I

.field nBitsUsedLBRR:I

.field nChannelsAPI:I

.field nChannelsInternal:I

.field nPrevChannelsInternal:I

.field prev_decode_only_middle:I

.field final sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

.field final state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

.field timeSinceSwitchAllowed_ms:I


# direct methods
.method constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 39
    new-array v1, v0, [Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    .line 40
    new-instance v1, Lio/github/jaredmdobson/concentus/StereoEncodeState;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/StereoEncodeState;-><init>()V

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsUsedLBRR:I

    .line 42
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsExceeded:I

    .line 43
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsAPI:I

    .line 44
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsInternal:I

    .line 45
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nPrevChannelsInternal:I

    .line 46
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->timeSinceSwitchAllowed_ms:I

    .line 47
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->allowBandwidthSwitch:I

    .line 48
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->prev_decode_only_middle:I

    :goto_0
    if-ge v1, v0, :cond_0

    .line 52
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    new-instance v3, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    invoke-direct {v3}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_init_encoder(Lio/github/jaredmdobson/concentus/SilkChannelEncoder;)I
    .locals 2

    .line 82
    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->Reset()V

    const/high16 v0, 0x3c0000

    .line 84
    invoke-static {v0}, Lio/github/jaredmdobson/concentus/Inlines;->silk_lin2log(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x800

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lio/github/jaredmdobson/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    .line 85
    iget v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->variable_HP_smth2_Q15:I

    const/4 v0, 0x1

    .line 88
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    .line 91
    iget-object p0, p0, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->sVAD:Lio/github/jaredmdobson/concentus/SilkVADState;

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/VoiceActivityDetection;->silk_VAD_Init(Lio/github/jaredmdobson/concentus/SilkVADState;)I

    move-result p0

    return p0
.end method


# virtual methods
.method Reset()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 58
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->state_Fxx:[Lio/github/jaredmdobson/concentus/SilkChannelEncoder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/github/jaredmdobson/concentus/SilkChannelEncoder;->Reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoEncodeState;

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/StereoEncodeState;->Reset()V

    .line 62
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsUsedLBRR:I

    .line 63
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nBitsExceeded:I

    .line 64
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsAPI:I

    .line 65
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nChannelsInternal:I

    .line 66
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->nPrevChannelsInternal:I

    .line 67
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->timeSinceSwitchAllowed_ms:I

    .line 68
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->allowBandwidthSwitch:I

    .line 69
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkEncoder;->prev_decode_only_middle:I

    return-void
.end method
