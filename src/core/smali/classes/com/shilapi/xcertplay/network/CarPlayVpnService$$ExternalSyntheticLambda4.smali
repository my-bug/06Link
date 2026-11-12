.class public final synthetic Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILcom/shilapi/xcertplay/airplay/AirPlaySessionListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    iput p2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda4;->f$2:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    iget v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda4;->f$2:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->$r8$lambda$8mW8IJ6j4dEpc_69Y9hnEciKS08(Lcom/shilapi/xcertplay/network/CarPlayVpnService;ILcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
