.class public final synthetic Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1$$ExternalSyntheticLambda1;->f$0:I

    iput-boolean p2, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1$$ExternalSyntheticLambda1;->f$0:I

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$l2cap$1;->$r8$lambda$PpMMldIXk-MVST0ZT9tzLNB_ds0(IZLcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object p1

    return-object p1
.end method
