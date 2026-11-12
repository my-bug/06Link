.class public final synthetic Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

.field public final synthetic f$1:Landroid/hardware/usb/UsbDevice;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda2;->f$0:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/usb/UsbDevice;

    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda2;->f$0:Lcom/shilapi/xcertplay/transport/IphoneUsbHost;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->$r8$lambda$WKcUKzb06wJz3b9fIahX2k282dk(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
