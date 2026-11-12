.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NeedsPermission;
.super Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;
.source "UsbBtSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NeedsPermission"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NeedsPermission;",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;",
        "device",
        "Landroid/hardware/usb/UsbDevice;",
        "<init>",
        "(Landroid/hardware/usb/UsbDevice;)V",
        "getDevice",
        "()Landroid/hardware/usb/UsbDevice;",
        "shared_release"
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
.field private final device:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NeedsPermission;->device:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method public final getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NeedsPermission;->device:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method
