.class public final synthetic Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$-CC;
.super Ljava/lang/Object;
.source "AudioStream.kt"


# direct methods
.method public static $default$onPacket(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[B[BLjava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;

    .line 0
    const-string/jumbo p2, "wire"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onRtp(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[BI)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;

    .line 0
    const-string p2, "rtp"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onStarted(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;I)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;

    .line 0
    return-void
.end method

.method public static synthetic access$onPacket$jd(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[B[BLjava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$-CC;->$default$onPacket(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[B[BLjava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$onRtp$jd(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[BI)V
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$-CC;->$default$onRtp(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;[BI)V

    return-void
.end method

.method public static synthetic access$onStarted$jd(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;I)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AudioStream$Listener$-CC;->$default$onStarted(Lcom/shilapi/xcertplay/airplay/AudioStream$Listener;I)V

    return-void
.end method
