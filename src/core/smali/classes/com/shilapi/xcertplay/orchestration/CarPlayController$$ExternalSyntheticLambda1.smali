.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda1;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda1;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    check-cast p1, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;

    check-cast p2, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-static {v0, p1, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$LV8L8-RNlS_QiCjxNQjlfVjOkvA(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Report;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Lcom/shilapi/xcertplay/network/HotspotIpv6Check$Repair;

    move-result-object p1

    return-object p1
.end method
