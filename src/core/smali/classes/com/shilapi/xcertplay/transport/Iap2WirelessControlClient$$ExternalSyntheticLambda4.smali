.class public final synthetic Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;

    iput-wide p2, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;

    iget-wide v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient$$ExternalSyntheticLambda4;->f$1:J

    check-cast p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    invoke-static {v0, v1, v2, p1}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;->$r8$lambda$AyWBdpI5mr_zlClrh5hniixp9CY(Lcom/shilapi/xcertplay/transport/Iap2WirelessControlClient;JLcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
