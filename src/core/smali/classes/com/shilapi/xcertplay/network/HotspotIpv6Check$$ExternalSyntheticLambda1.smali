.class public final synthetic Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/network/HotspotIpv6Check$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/network/HotspotIpv6Check;->$r8$lambda$qDAz6n0JxTJEP7aRexZTvbIoyGI(Landroid/content/Context;Z)Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$AdbLink;

    move-result-object v0

    return-object v0
.end method
