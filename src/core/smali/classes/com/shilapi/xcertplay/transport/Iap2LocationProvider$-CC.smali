.class public final synthetic Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$-CC;
.super Ljava/lang/Object;
.source "Iap2LocationClient.kt"


# direct methods
.method public static $default$close(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    .line 43
    invoke-interface {p0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;->stop()V

    return-void
.end method

.method public static $default$onRequested(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Ljava/util/Set;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;

    .line 0
    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$close$jd(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;)V
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$-CC;->$default$close(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;)V

    return-void
.end method

.method public static synthetic access$onRequested$jd(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Ljava/util/Set;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$-CC;->$default$onRequested(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Ljava/util/Set;)V

    return-void
.end method
