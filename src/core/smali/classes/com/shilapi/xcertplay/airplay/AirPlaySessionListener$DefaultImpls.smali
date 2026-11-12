.class public final Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$DefaultImpls;
.super Ljava/lang/Object;
.source "AirPlaySession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onCommand$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onDebugLog(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onDebugLog(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onDebugLog$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V

    return-void
.end method

.method public static onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onDeviceInfo$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V

    return-void
.end method

.method public static onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onHostUiRequested$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onPeerStalled$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V

    return-void
.end method

.method public static onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onRemoteControlMessage$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V

    return-void
.end method

.method public static onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onSessionActive$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onSessionEnded$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static onTransportError(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onTransportError(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onTransportError$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V

    return-void
.end method

.method public static onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onVideoFrameRendered$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->access$onVideoPlaybackUiRequested$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method
