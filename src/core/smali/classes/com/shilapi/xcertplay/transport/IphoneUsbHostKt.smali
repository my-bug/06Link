.class public final Lcom/shilapi/xcertplay/transport/IphoneUsbHostKt;
.super Ljava/lang/Object;
.source "IphoneUsbHost.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "describeUsbEndpoint",
        "",
        "endpoint",
        "Landroid/hardware/usb/UsbEndpoint;",
        "shared_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$describeUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHostKt;->describeUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final describeUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)Ljava/lang/String;
    .locals 5

    .line 521
    invoke-virtual {p0}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v1

    .line 522
    invoke-virtual {p0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(direction="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",type="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",maxPacket="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
