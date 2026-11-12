.class final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "CarPlayController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;->startWirelessHotspot(I)Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotManager;",
        "Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
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
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    const-string v5, "keptGroupWorks(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "keptGroupWorks"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2471
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$3;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->keptGroupWorks(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)Z
    invoke-static {v0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$keptGroupWorks(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2471
    check-cast p1, Lcom/shilapi/xcertplay/network/WirelessHotspotManager;

    check-cast p2, Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController$startWirelessHotspot$3;->invoke(Lcom/shilapi/xcertplay/network/WirelessHotspotManager;Lcom/shilapi/xcertplay/network/WirelessHotspotInfo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
