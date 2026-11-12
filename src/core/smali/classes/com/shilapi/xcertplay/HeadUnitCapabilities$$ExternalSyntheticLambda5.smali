.class public final synthetic Lcom/shilapi/xcertplay/HeadUnitCapabilities$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$$ExternalSyntheticLambda5;->f$0:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCapabilities$$ExternalSyntheticLambda5;->f$0:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;

    check-cast p1, Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/HeadUnitCapabilities;->$r8$lambda$RPzx0dgp0-dIqDl8GBnmDSZy6-0(Lcom/shilapi/xcertplay/HeadUnitCapabilities$Probe;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
