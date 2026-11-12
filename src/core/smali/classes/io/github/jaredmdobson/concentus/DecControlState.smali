.class Lio/github/jaredmdobson/concentus/DecControlState;
.super Ljava/lang/Object;
.source "DecControlState.java"


# instance fields
.field API_sampleRate:I

.field internalSampleRate:I

.field nChannelsAPI:I

.field nChannelsInternal:I

.field payloadSize_ms:I

.field prevPitchLag:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    .line 43
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    .line 46
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->API_sampleRate:I

    .line 49
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->internalSampleRate:I

    .line 52
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->payloadSize_ms:I

    .line 55
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->prevPitchLag:I

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsAPI:I

    .line 59
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->nChannelsInternal:I

    .line 60
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->API_sampleRate:I

    .line 61
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->internalSampleRate:I

    .line 62
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->payloadSize_ms:I

    .line 63
    iput v0, p0, Lio/github/jaredmdobson/concentus/DecControlState;->prevPitchLag:I

    return-void
.end method
