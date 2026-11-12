.class public final Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$DefaultImpls;
.super Ljava/lang/Object;
.source "Iap2LocationClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;
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
.method public static close(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$-CC;->$default$close(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;)V
    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$-CC;->access$close$jd(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;)V

    return-void
.end method

.method public static onRequested(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    # invokes: Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$-CC;->$default$onRequested(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Ljava/util/Set;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/transport/Iap2LocationProvider$-CC;->access$onRequested$jd(Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Ljava/util/Set;)V

    return-void
.end method
