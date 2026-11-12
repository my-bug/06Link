.class final synthetic Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$run$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "UsbBluetoothSelfTest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;->run$default(Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;Landroid/hardware/usb/UsbManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/hardware/usb/UsbDevice;",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Landroid/hardware/usb/UsbManager;

    const-string v5, "openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "openDevice"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$run$2;->receiver:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$run$2;->invoke(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    return-object p1
.end method
