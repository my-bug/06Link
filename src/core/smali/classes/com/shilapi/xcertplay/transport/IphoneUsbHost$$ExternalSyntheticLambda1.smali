.class public final synthetic Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

.field public final synthetic f$2:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda1;->f$1:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda1;->f$2:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda1;->f$1:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda1;->f$2:Landroid/hardware/usb/UsbDevice;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->$r8$lambda$oHKpu01Ul7_n_fhuVOplXJsB_hc(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method
