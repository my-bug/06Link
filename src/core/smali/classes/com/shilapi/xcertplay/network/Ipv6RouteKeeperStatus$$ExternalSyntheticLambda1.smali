.class public final synthetic Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda1;->f$1:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$$ExternalSyntheticLambda1;->f$1:Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;

    check-cast p1, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus;->$r8$lambda$HqO8z_xgg-wttx1J84wTPWFQC7c(Ljava/lang/String;Lcom/shilapi/xcertplay/network/Ipv6RouteRepair$Via;Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;)Lcom/shilapi/xcertplay/network/Ipv6RouteKeeperStatus$Snapshot;

    move-result-object p1

    return-object p1
.end method
