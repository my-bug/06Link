.class public final synthetic Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda6;->f$0:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    iput p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda6;->f$0:Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->$r8$lambda$CEKflgjWmm5L5Blbz0Eep0s2nCU(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;II)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
