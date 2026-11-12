.class public final Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$DefaultImpls;
.super Ljava/lang/Object;
.source "IapTunnel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;
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
.method public static onClosed(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    # invokes: Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onClosed(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/Throwable;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->access$onClosed$jd(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onDebug(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    # invokes: Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onDebug(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->access$onDebug$jd(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V

    return-void
.end method

.method public static onIap(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    # invokes: Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onIap(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;[B)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->access$onIap$jd(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;[B)V

    return-void
.end method

.method public static onOpen(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    # invokes: Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onOpen(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->access$onOpen$jd(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V

    return-void
.end method
