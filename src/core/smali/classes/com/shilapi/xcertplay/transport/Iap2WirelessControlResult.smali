.class public final Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;
.super Ljava/lang/Object;
.source "Iap2WirelessControlClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001d\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0007H\u00c6\u0003J\t\u0010 \u001a\u00020\u0007H\u00c6\u0003J\t\u0010!\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\u000bH\u00c6\u0003JY\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010%\u001a\u00020\u000b2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020\u0007H\u00d6\u0001J\t\u0010(\u001a\u00020)H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015R\u0011\u0010\r\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019\u00a8\u0006*"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;",
        "",
        "terminal",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;",
        "stage",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;",
        "forwardedFrames",
        "",
        "wifiConfigurationsSent",
        "carPlayStartSessionsSent",
        "transportNotificationSeen",
        "",
        "postTransportWiFiConfigurationsSent",
        "wirelessCarPlayAvailableSeen",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;IIIZIZ)V",
        "getTerminal",
        "()Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;",
        "getStage",
        "()Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;",
        "getForwardedFrames",
        "()I",
        "getWifiConfigurationsSent",
        "getCarPlayStartSessionsSent",
        "getTransportNotificationSeen",
        "()Z",
        "getPostTransportWiFiConfigurationsSent",
        "getWirelessCarPlayAvailableSeen",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final carPlayStartSessionsSent:I

.field private final forwardedFrames:I

.field private final postTransportWiFiConfigurationsSent:I

.field private final stage:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

.field private final terminal:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

.field private final transportNotificationSeen:Z

.field private final wifiConfigurationsSent:I

.field private final wirelessCarPlayAvailableSeen:Z


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;IIIZIZ)V
    .locals 1

    const-string/jumbo v0, "terminal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->terminal:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    .line 414
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->stage:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 415
    iput p3, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->forwardedFrames:I

    .line 416
    iput p4, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wifiConfigurationsSent:I

    .line 417
    iput p5, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->carPlayStartSessionsSent:I

    .line 418
    iput-boolean p6, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->transportNotificationSeen:Z

    .line 419
    iput p7, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->postTransportWiFiConfigurationsSent:I

    .line 420
    iput-boolean p8, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wirelessCarPlayAvailableSeen:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;IIIZIZILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->terminal:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->stage:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->forwardedFrames:I

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget p4, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wifiConfigurationsSent:I

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget p5, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->carPlayStartSessionsSent:I

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget-boolean p6, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->transportNotificationSeen:Z

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget p7, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->postTransportWiFiConfigurationsSent:I

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    iget-boolean p8, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wirelessCarPlayAvailableSeen:Z

    :cond_7
    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->copy(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;IIIZIZ)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->terminal:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    return-object v0
.end method

.method public final component2()Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;
    .locals 1

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->stage:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->forwardedFrames:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wifiConfigurationsSent:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->carPlayStartSessionsSent:I

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->transportNotificationSeen:Z

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->postTransportWiFiConfigurationsSent:I

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wirelessCarPlayAvailableSeen:Z

    return v0
.end method

.method public final copy(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;IIIZIZ)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;
    .locals 10

    const-string/jumbo v0, "terminal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;-><init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;IIIZIZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->terminal:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->terminal:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->stage:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    iget-object v3, p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->stage:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->forwardedFrames:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->forwardedFrames:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wifiConfigurationsSent:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wifiConfigurationsSent:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->carPlayStartSessionsSent:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->carPlayStartSessionsSent:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->transportNotificationSeen:Z

    iget-boolean v3, p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->transportNotificationSeen:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->postTransportWiFiConfigurationsSent:I

    iget v3, p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->postTransportWiFiConfigurationsSent:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wirelessCarPlayAvailableSeen:Z

    iget-boolean p1, p1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wirelessCarPlayAvailableSeen:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getCarPlayStartSessionsSent()I
    .locals 1

    .line 417
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->carPlayStartSessionsSent:I

    return v0
.end method

.method public final getForwardedFrames()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->forwardedFrames:I

    return v0
.end method

.method public final getPostTransportWiFiConfigurationsSent()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->postTransportWiFiConfigurationsSent:I

    return v0
.end method

.method public final getStage()Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->stage:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    return-object v0
.end method

.method public final getTerminal()Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->terminal:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    return-object v0
.end method

.method public final getTransportNotificationSeen()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->transportNotificationSeen:Z

    return v0
.end method

.method public final getWifiConfigurationsSent()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wifiConfigurationsSent:I

    return v0
.end method

.method public final getWirelessCarPlayAvailableSeen()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wirelessCarPlayAvailableSeen:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->terminal:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->stage:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->forwardedFrames:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wifiConfigurationsSent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->carPlayStartSessionsSent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->transportNotificationSeen:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->postTransportWiFiConfigurationsSent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wirelessCarPlayAvailableSeen:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->terminal:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlTerminal;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->stage:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    iget v2, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->forwardedFrames:I

    iget v3, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wifiConfigurationsSent:I

    iget v4, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->carPlayStartSessionsSent:I

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->transportNotificationSeen:Z

    iget v6, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->postTransportWiFiConfigurationsSent:I

    iget-boolean v7, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlResult;->wirelessCarPlayAvailableSeen:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Iap2WirelessControlResult(terminal="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stage="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", forwardedFrames="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wifiConfigurationsSent="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", carPlayStartSessionsSent="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", transportNotificationSeen="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", postTransportWiFiConfigurationsSent="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wirelessCarPlayAvailableSeen="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
