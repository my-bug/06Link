.class Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;
.super Ljava/lang/Object;
.source "OpusBandwidth.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetBandwidth(I)Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 87
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object p0

    .line 84
    :cond_0
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object p0

    .line 82
    :cond_1
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object p0

    .line 80
    :cond_2
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object p0

    .line 78
    :cond_3
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object p0

    .line 76
    :cond_4
    sget-object p0, Lio/github/jaredmdobson/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lio/github/jaredmdobson/concentus/OpusBandwidth;

    return-object p0
.end method

.method static GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I
    .locals 1

    .line 57
    sget-object v0, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers$1;->$SwitchMap$io$github$jaredmdobson$concentus$OpusBandwidth:[I

    invoke-virtual {p0}, Lio/github/jaredmdobson/concentus/OpusBandwidth;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0
.end method

.method static MAX(Lio/github/jaredmdobson/concentus/OpusBandwidth;Lio/github/jaredmdobson/concentus/OpusBandwidth;)Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 2

    .line 98
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v0

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v1

    if-le v0, v1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method static MIN(Lio/github/jaredmdobson/concentus/OpusBandwidth;Lio/github/jaredmdobson/concentus/OpusBandwidth;)Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 2

    .line 91
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v0

    invoke-static {p1}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result v1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method static SUBTRACT(Lio/github/jaredmdobson/concentus/OpusBandwidth;I)Lio/github/jaredmdobson/concentus/OpusBandwidth;
    .locals 0

    .line 105
    invoke-static {p0}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetOrdinal(Lio/github/jaredmdobson/concentus/OpusBandwidth;)I

    move-result p0

    sub-int/2addr p0, p1

    invoke-static {p0}, Lio/github/jaredmdobson/concentus/OpusBandwidthHelpers;->GetBandwidth(I)Lio/github/jaredmdobson/concentus/OpusBandwidth;

    move-result-object p0

    return-object p0
.end method
