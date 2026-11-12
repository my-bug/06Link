.class public final synthetic Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

.field public final synthetic f$1:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda16;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda16;->f$1:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda16;->f$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$$ExternalSyntheticLambda16;->f$1:Landroid/hardware/usb/UsbDevice;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->$r8$lambda$CntL__9xzBvC5elDP2moJxRqMFY(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method
