.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda187;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda187;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda187;->f$1:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda187;->f$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda187;->f$1:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$uQ-t9uBRfOq4f7Kxyd970PXZ8xE(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    return-void
.end method
