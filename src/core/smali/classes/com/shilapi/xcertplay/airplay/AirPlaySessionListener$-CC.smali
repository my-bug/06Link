.class public final synthetic Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;
.super Ljava/lang/Object;
.source "AirPlaySession.kt"


# direct methods
.method public static $default$onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "params"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onDebugLog(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string p2, "session"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string p2, "session"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onTransportError(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$onCommand$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$onDebugLog$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onDebugLog(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$onDeviceInfo$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V

    return-void
.end method

.method public static synthetic access$onHostUiRequested$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic access$onPeerStalled$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V

    return-void
.end method

.method public static synthetic access$onRemoteControlMessage$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V
    .locals 0

    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V

    return-void
.end method

.method public static synthetic access$onSessionActive$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic access$onSessionEnded$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic access$onTransportError$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onTransportError(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$onVideoFrameRendered$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic access$onVideoPlaybackUiRequested$jd(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method
