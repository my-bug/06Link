.class Lio/github/jaredmdobson/concentus/SilkDecoder;
.super Ljava/lang/Object;
.source "SilkDecoder.java"


# instance fields
.field final channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

.field nChannelsAPI:I

.field nChannelsInternal:I

.field prev_decode_only_middle:I

.field final sStereo:Lio/github/jaredmdobson/concentus/StereoDecodeState;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 39
    new-array v1, v0, [Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    .line 40
    new-instance v1, Lio/github/jaredmdobson/concentus/StereoDecodeState;

    invoke-direct {v1}, Lio/github/jaredmdobson/concentus/StereoDecodeState;-><init>()V

    iput-object v1, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoDecodeState;

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsAPI:I

    .line 42
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsInternal:I

    .line 43
    iput v1, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->prev_decode_only_middle:I

    :goto_0
    if-ge v1, v0, :cond_0

    .line 47
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    new-instance v3, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    invoke-direct {v3}, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method Reset()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 53
    iget-object v2, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->channel_state:[Lio/github/jaredmdobson/concentus/SilkChannelDecoder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/github/jaredmdobson/concentus/SilkChannelDecoder;->Reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->sStereo:Lio/github/jaredmdobson/concentus/StereoDecodeState;

    invoke-virtual {v1}, Lio/github/jaredmdobson/concentus/StereoDecodeState;->Reset()V

    .line 56
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsAPI:I

    .line 57
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->nChannelsInternal:I

    .line 58
    iput v0, p0, Lio/github/jaredmdobson/concentus/SilkDecoder;->prev_decode_only_middle:I

    return-void
.end method
