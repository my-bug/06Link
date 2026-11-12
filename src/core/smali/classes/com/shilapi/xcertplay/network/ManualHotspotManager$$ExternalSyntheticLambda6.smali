.class public final synthetic Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/network/ManualHotspotManager;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/ManualHotspotManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda6;->f$0:Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda6;->f$0:Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    check-cast p1, Ljava/net/NetworkInterface;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->$r8$lambda$W51VE8LrU-n5Ri7v18aUFKIV0S8(Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/net/NetworkInterface;)Lcom/shilapi/xcertplay/network/ManualHotspotManager$LocalHotspotInterface;

    move-result-object p1

    return-object p1
.end method
