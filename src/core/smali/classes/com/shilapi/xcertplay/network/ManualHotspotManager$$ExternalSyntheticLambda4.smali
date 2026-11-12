.class public final synthetic Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/network/ManualHotspotManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/network/ManualHotspotManager;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/ManualHotspotManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/net/NetworkInterface;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/network/ManualHotspotManager;->$r8$lambda$ZHnTUBJiTN9ikmgyYssaLTaAOSk(Lcom/shilapi/xcertplay/network/ManualHotspotManager;Ljava/lang/String;Ljava/net/NetworkInterface;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
