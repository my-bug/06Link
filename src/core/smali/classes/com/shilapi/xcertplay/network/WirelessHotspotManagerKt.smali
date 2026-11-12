.class public final Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;
.super Ljava/lang/Object;
.source "WirelessHotspotManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWirelessHotspotManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WirelessHotspotManager.kt\ncom/shilapi/xcertplay/network/WirelessHotspotManagerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\n\u001a\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0000\u00a2\u0006\u0002\u0010\u0003\u001a#\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u00012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0019\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0000\u00a2\u0006\u0002\u0010\n\u001a\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0000\u00a2\u0006\u0002\u0010\u000c\u001a3\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0000\u00a2\u0006\u0002\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "wifiFrequencyMhzToChannel",
        "",
        "frequencyMHz",
        "(I)Ljava/lang/Integer;",
        "wifiChannelToFrequencyMhz",
        "channel",
        "band",
        "(ILjava/lang/Integer;)Ljava/lang/Integer;",
        "wifiBandLabel",
        "",
        "(Ljava/lang/Integer;)Ljava/lang/String;",
        "legacyHotspotBandToSoftApBand",
        "(Ljava/lang/Integer;)Ljava/lang/Integer;",
        "observedManualHotspotChannel",
        "apChannel",
        "connectionFrequencyMHz",
        "scanFrequencyMHz",
        "apFrequencyMHz",
        "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I",
        "shared_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final legacyHotspotBandToSoftApBand(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    if-nez p0, :cond_4

    goto :goto_2

    .line 92
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final observedManualHotspotChannel(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    if-lez p0, :cond_0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 107
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 108
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_2
    if-eqz p3, :cond_3

    .line 109
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static final wifiBandLabel(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p0, "2.4 GHz"

    return-object p0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string p0, "5 GHz"

    return-object p0

    :cond_3
    :goto_1
    if-nez p0, :cond_4

    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const-string p0, "2.4 / 5 GHz (auto)"

    return-object p0

    :cond_5
    :goto_2
    if-nez p0, :cond_6

    goto :goto_3

    .line 84
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const-string p0, "6 GHz"

    return-object p0

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final wifiChannelToFrequencyMhz(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xe

    const/4 v2, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2

    if-gt v2, p0, :cond_2

    if-ge p0, v1, :cond_2

    mul-int/lit8 p0, p0, 0x5

    add-int/lit16 p0, p0, 0x967

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    if-ne p0, v1, :cond_4

    const/16 p0, 0x9b4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    goto :goto_2

    .line 74
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    const/16 v1, 0x20

    if-gt v1, p0, :cond_6

    const/16 v1, 0xb2

    if-ge p0, v1, :cond_6

    mul-int/lit8 p0, p0, 0x5

    add-int/lit16 p0, p0, 0x1388

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    if-nez p1, :cond_7

    goto :goto_3

    .line 75
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    if-gt v2, p0, :cond_8

    const/16 p1, 0xea

    if-ge p0, p1, :cond_8

    mul-int/lit8 p0, p0, 0x5

    add-int/lit16 p0, p0, 0x173e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    return-object v0
.end method

.method public static synthetic wifiChannelToFrequencyMhz$default(ILjava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 70
    :cond_0
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/network/WirelessHotspotManagerKt;->wifiChannelToFrequencyMhz(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final wifiFrequencyMhzToChannel(I)Ljava/lang/Integer;
    .locals 2

    const/16 v0, 0x96c

    if-gt v0, p0, :cond_0

    const/16 v0, 0x9a9

    if-ge p0, v0, :cond_0

    add-int/lit16 v0, p0, -0x967

    .line 59
    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_0

    .line 60
    div-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x9b4

    if-ne p0, v0, :cond_1

    const/16 p0, 0xe

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x1428

    if-gt v0, p0, :cond_2

    const/16 v0, 0x1708

    if-ge p0, v0, :cond_2

    add-int/lit16 v0, p0, -0x1388

    .line 62
    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_2

    .line 63
    div-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x1743

    if-gt v0, p0, :cond_3

    const/16 v0, 0x1bcc

    if-ge p0, v0, :cond_3

    add-int/lit16 p0, p0, -0x173e

    .line 64
    rem-int/lit8 v0, p0, 0x5

    if-nez v0, :cond_3

    .line 65
    div-int/lit8 p0, p0, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
