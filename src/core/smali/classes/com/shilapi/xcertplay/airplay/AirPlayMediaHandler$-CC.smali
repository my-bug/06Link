.class public final synthetic Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;
.super Ljava/lang/Object;
.source "AirPlaySession.kt"


# direct methods
.method public static $default$onAudio(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 0
    const-string p2, "session"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "stream"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$onDataStream(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "stream"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$onFeedback(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$onScreen(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 0
    const-string p2, "session"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "stream"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$onSessionClosed(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onSetupResponseSent(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 0
    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onTeardown(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 0
    const-string p2, "session"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$setIapTunnelHandler(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;

    .line 0
    return-void
.end method

.method public static synthetic access$onAudio$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onAudio(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$onDataStream$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 54
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onDataStream(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$onFeedback$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Ljava/util/Map;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onFeedback(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$onScreen$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;
    .locals 0

    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onScreen(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$onSessionClosed$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onSessionClosed(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic access$onSetupResponseSent$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onSetupResponseSent(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic access$onTeardown$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 0

    .line 54
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onTeardown(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    return-void
.end method

.method public static synthetic access$setIapTunnelHandler$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$setIapTunnelHandler(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
