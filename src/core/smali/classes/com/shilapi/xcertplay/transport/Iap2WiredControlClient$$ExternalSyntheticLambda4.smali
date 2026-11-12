.class public final synthetic Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda4;->f$1:Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient$$ExternalSyntheticLambda4;->f$1:Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;

    check-cast p1, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;->$r8$lambda$rUeBdQEV-Yan1Q7qsjz5ylViyZM(Lcom/shilapi/xcertplay/transport/Iap2WiredControlClient;Lcom/shilapi/xcertplay/transport/Iap2ControlDeadline;Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
