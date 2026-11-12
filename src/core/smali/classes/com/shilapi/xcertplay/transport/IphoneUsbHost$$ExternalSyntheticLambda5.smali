.class public final synthetic Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda5;->f$0:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda5;->f$0:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->$r8$lambda$hAzPN7Qegg8bwIP9Gz1YSB4Hu-U(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
