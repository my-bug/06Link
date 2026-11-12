.class public final Lcom/shilapi/xcertplay/CarPlayHostActivity$startUsbPresenceWatch$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CarPlayHostActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;->startUsbPresenceWatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/shilapi/xcertplay/CarPlayHostActivity$startUsbPresenceWatch$receiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$startUsbPresenceWatch$receiver$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    .line 5086
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5089
    const-string p1, "device"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_5

    .line 5090
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1

    const/16 v0, 0x5ac

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5091
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7e02a835

    if-eq p2, v0, :cond_3

    const v0, -0x5fdc9a67

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 5093
    :cond_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$startUsbPresenceWatch$receiver$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->onIphoneUsbDetached()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$onIphoneUsbDetached(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    return-void

    .line 5091
    :cond_3
    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 5092
    :cond_4
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$startUsbPresenceWatch$receiver$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->onIphoneUsbAttached()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$onIphoneUsbAttached(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    :cond_5
    :goto_0
    return-void
.end method
