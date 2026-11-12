.class Lio/github/jaredmdobson/concentus/OpusMultistream;
.super Ljava/lang/Object;
.source "OpusMultistream.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get_left_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I
    .locals 2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 57
    :goto_0
    iget v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    if-ge p2, v0, :cond_1

    .line 58
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->mapping:[S

    aget-short v0, v0, p2

    mul-int/lit8 v1, p1, 0x2

    if-ne v0, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static get_mono_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I
    .locals 2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 79
    :goto_0
    iget v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    if-ge p2, v0, :cond_1

    .line 80
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->mapping:[S

    aget-short v0, v0, p2

    iget v1, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    add-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static get_right_channel(Lio/github/jaredmdobson/concentus/ChannelLayout;II)I
    .locals 2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 68
    :goto_0
    iget v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    if-ge p2, v0, :cond_1

    .line 69
    iget-object v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->mapping:[S

    aget-short v0, v0, p2

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static validate_layout(Lio/github/jaredmdobson/concentus/ChannelLayout;)I
    .locals 5

    .line 42
    iget v0, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_streams:I

    iget v1, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_coupled_streams:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x0

    .line 46
    :goto_0
    iget v4, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->nb_channels:I

    if-ge v3, v4, :cond_2

    .line 47
    iget-object v4, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->mapping:[S

    aget-short v4, v4, v3

    if-lt v4, v0, :cond_1

    iget-object v4, p0, Lio/github/jaredmdobson/concentus/ChannelLayout;->mapping:[S

    aget-short v4, v4, v3

    if-eq v4, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
