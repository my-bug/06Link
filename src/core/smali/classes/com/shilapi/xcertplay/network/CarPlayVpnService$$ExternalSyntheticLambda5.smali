.class public final synthetic Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;->f$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;->f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;->f$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;->f$1:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$$ExternalSyntheticLambda5;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->$r8$lambda$d-KhMILzip0DF5uTkd5C_GnAu4Q(Lcom/shilapi/xcertplay/network/CarPlayVpnService;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Ljava/lang/String;I)V

    return-void
.end method
