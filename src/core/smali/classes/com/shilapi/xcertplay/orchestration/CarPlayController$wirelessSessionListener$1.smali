.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;
.super Ljava/lang/Object;
.source "CarPlayController.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessSessionListener(I)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J.\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000cH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\rH\u0016J/\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\r2\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000cH\u0096\u0001J\u0011\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\rH\u0096\u0001J\u0019\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0096\u0001J\u0011\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0001\u00a8\u0006\u001c"
    }
    d2 = {
        "com/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
        "onSessionActive",
        "",
        "session",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
        "onSessionEnded",
        "onVideoFrameRendered",
        "onRemoteControlMessage",
        "streamId",
        "",
        "message",
        "",
        "",
        "",
        "onVideoPlaybackUiRequested",
        "onPeerStalled",
        "stalled",
        "",
        "onTransportError",
        "onCommand",
        "type",
        "params",
        "onDebugLog",
        "onDeviceInfo",
        "info",
        "Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;",
        "onHostUiRequested",
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
.field private final synthetic $$delegate_0:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

.field final synthetic $generation:I

.field final synthetic this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iput p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$generation:I

    .line 1635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;
    invoke-static {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getSessionListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$$delegate_0:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    return-void
.end method


# virtual methods
.method public onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$$delegate_0:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onDebugLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$$delegate_0:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->onDebugLog(Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$$delegate_0:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V

    return-void
.end method

.method public onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$$delegate_0:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1662
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$generation:I

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$isStaleWirelessRun(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getSessionListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V

    :cond_0
    return-void
.end method

.method public onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1655
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getSessionListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V

    return-void
.end method

.method public onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$generation:I

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$isStaleWirelessRun(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessConnectionProof:Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getWirelessConnectionProof$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$generation:I

    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->activate(ILjava/lang/Object;)V

    .line 1639
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getSessionListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1643
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$generation:I

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$isStaleWirelessRun(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessConnectionProof:Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getWirelessConnectionProof$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$generation:I

    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->end(ILjava/lang/Object;)V

    .line 1645
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getSessionListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public onTransportError(Ljava/lang/String;)V
    .locals 10

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$generation:I

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$isStaleWirelessRun(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1669
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHotspotInterface:Ljava/lang/String;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getWirelessHotspotInterface$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/lang/String;

    move-result-object v0

    .line 1670
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->interfaceFamilies(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$interfaceFamilies(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1671
    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wifiApStateCode()Ljava/lang/Integer;
    invoke-static {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$wifiApStateCode(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/lang/Integer;

    move-result-object v3

    .line 1672
    sget-object v4, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->INSTANCE:Lcom/shilapi/xcertplay/network/CarHotspotStatus;

    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getAppContext$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "access$getAppContext$p(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/network/CarHotspotStatus;->isEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    .line 1673
    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotClientCount(Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v5, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$hotspotClientCount(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "unknown"

    if-nez v5, :cond_0

    move-object v5, v6

    :cond_0
    if-nez v0, :cond_1

    move-object v0, v6

    .line 1674
    :cond_1
    sget-object v6, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->Companion:Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$Companion;->getAcceptedConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "wireless state at transport error: apState="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " hotspotOn="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " hotspotClients="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " iface="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ifaceAddresses="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " airplayConnections="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 1671
    invoke-static {v2, v0, v3, v4, v5}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1677
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->Companion:Lcom/shilapi/xcertplay/orchestration/CarPlayController$Companion;

    const-string v0, "missing"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    check-cast v1, Ljava/lang/CharSequence;

    const-string/jumbo v0, "v4"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotRestartStreak:I
    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getHotspotRestartStreak$cp()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$setHotspotRestartStreak$cp(I)V

    .line 1678
    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotRestartStreak:I
    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getHotspotRestartStreak$cp()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 1679
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 1680
    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->hotspotRestartStreak:I
    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getHotspotRestartStreak$cp()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "wireless: the head unit\'s hotspot keeps restarting by itself and gets no IPv4 address (streak="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "); the iPhone cannot join it. Restart the head unit; if it continues, set the hotspot band to 2.4 GHz in the system hotspot settings"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1679
    invoke-static {v0, v1, v3, v4, v5}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hotspot keeps restarting without an IP address ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1685
    :cond_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getSessionListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->onTransportError(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$generation:I

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isStaleWirelessRun(I)Z
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$isStaleWirelessRun(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessConnectionProof:Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getWirelessConnectionProof$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->$generation:I

    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->rendered(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1658
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$wirelessSessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sessionListener:Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getSessionListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method
