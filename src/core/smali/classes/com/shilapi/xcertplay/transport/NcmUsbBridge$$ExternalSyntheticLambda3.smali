.class public final synthetic Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

.field public final synthetic f$1:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda3;->f$0:Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/usb/UsbEndpoint;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda3;->f$0:Lcom/shilapi/xcertplay/transport/NcmUsbBridge;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/NcmUsbBridge$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/usb/UsbEndpoint;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/transport/NcmUsbBridge;->$r8$lambda$pbLZw7f9sjI5_dYApo2XdjJ-S_4(Lcom/shilapi/xcertplay/transport/NcmUsbBridge;Landroid/hardware/usb/UsbEndpoint;)V

    return-void
.end method
