.class public final synthetic Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda4;->f$1:Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda4;->f$0:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda4;->f$1:Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->$r8$lambda$qygrC0NlT436S2a3Z_X_qLHyzZA(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
