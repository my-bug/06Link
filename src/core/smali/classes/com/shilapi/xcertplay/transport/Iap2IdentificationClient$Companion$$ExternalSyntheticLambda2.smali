.class public final synthetic Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion$$ExternalSyntheticLambda2;->f$0:Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion$$ExternalSyntheticLambda2;->f$0:Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;

    check-cast p1, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/transport/Iap2IdentificationClient$Companion;->$r8$lambda$d4udaNyCI6dw9t79DHxaOj5tSWw(Lcom/shilapi/xcertplay/transport/Iap2WirelessIdentification;Lcom/shilapi/xcertplay/iap2/body/Iap2BodyBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
