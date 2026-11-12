.class public final synthetic Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;
.super Ljava/lang/Object;
.source "IapTunnel.kt"


# direct methods
.method public static $default$onClosed(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    .line 0
    return-void
.end method

.method public static $default$onDebug(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    .line 0
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onIap(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;[B)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    .line 0
    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onOpen(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;

    .line 0
    return-void
.end method

.method public static synthetic access$onClosed$jd(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onClosed(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$onDebug$jd(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onDebug(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$onIap$jd(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;[B)V
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onIap(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;[B)V

    return-void
.end method

.method public static synthetic access$onOpen$jd(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onOpen(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V

    return-void
.end method
