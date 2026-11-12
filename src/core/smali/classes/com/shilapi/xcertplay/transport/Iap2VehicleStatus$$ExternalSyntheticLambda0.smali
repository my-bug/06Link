.class public final synthetic Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/shilapi/xcertplay/transport/EvChargingConnectors;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus$$ExternalSyntheticLambda0;->f$1:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus$$ExternalSyntheticLambda0;->f$1:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    check-cast p1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2VehicleStatus;->$r8$lambda$FUcpIvCuRUKeFBefmJWMmHcha6Y(Ljava/lang/String;Lcom/shilapi/xcertplay/transport/EvChargingConnectors;Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
