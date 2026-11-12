.class public final synthetic Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;
.super Ljava/lang/Object;
.source "ScreenStream.kt"


# direct methods
.method public static $default$onClosed(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    .line 0
    return-void
.end method

.method public static $default$onCodec(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Lcom/shilapi/xcertplay/airplay/VideoCodec;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    .line 0
    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onConfig(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    .line 0
    const-string v0, "codecData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onFrame(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;

    .line 0
    const-string v0, "naluBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$onClosed$jd(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Ljava/lang/Throwable;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onClosed(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$onCodec$jd(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Lcom/shilapi/xcertplay/airplay/VideoCodec;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onCodec(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;Lcom/shilapi/xcertplay/airplay/VideoCodec;)V

    return-void
.end method

.method public static synthetic access$onConfig$jd(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onConfig(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V

    return-void
.end method

.method public static synthetic access$onFrame$jd(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener$-CC;->$default$onFrame(Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;[B)V

    return-void
.end method
