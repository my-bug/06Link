.class public final Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "AirPlaySession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;
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
.method public static onAudio(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onAudio(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/util/Map;
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->access$onAudio$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static onDataStream(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onDataStream(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)Ljava/util/Map;
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->access$onDataStream$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static onFeedback(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onFeedback(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Ljava/util/Map;
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->access$onFeedback$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static onScreen(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onScreen(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->access$onScreen$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static onSessionClosed(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onSessionClosed(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->access$onSessionClosed$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static onSetupResponseSent(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onSetupResponseSent(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->access$onSetupResponseSent$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static onTeardown(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$onTeardown(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->access$onTeardown$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    return-void
.end method

.method public static setIapTunnelHandler(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->$default$setIapTunnelHandler(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler$-CC;->access$setIapTunnelHandler$jd(Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
