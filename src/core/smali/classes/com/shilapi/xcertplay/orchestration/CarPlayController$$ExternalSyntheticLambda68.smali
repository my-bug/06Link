.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

.field public final synthetic f$3:Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;

.field public final synthetic f$4:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$0:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$1:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    iput-object p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$2:Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    iput-object p4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$3:Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;

    iput-object p5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$4:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iput p6, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$0:Lcom/shilapi/xcertplay/iap2/session/Iap2Session;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$1:Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$2:Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;

    iget-object v3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$3:Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;

    iget-object v4, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$4:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda68;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$pAfGqXmylFinyrFF05zYnLAF-Xs(Lcom/shilapi/xcertplay/iap2/session/Iap2Session;Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;Lcom/shilapi/xcertplay/transport/Iap2IdentificationConfig;Lcom/shilapi/xcertplay/transport/Iap2WirelessCarPlayEndpoint;Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    return-void
.end method
