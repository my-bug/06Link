.class public final Lcom/shilapi/xcertplay/transport/UsbInterfaceView;
.super Ljava/lang/Object;
.source "UsbConfigCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/UsbInterfaceView;",
        "",
        "id",
        "",
        "alternateSetting",
        "interfaceClass",
        "interfaceSubclass",
        "interfaceProtocol",
        "framework",
        "Landroid/hardware/usb/UsbInterface;",
        "<init>",
        "(IIIIILandroid/hardware/usb/UsbInterface;)V",
        "getId",
        "()I",
        "getAlternateSetting",
        "getInterfaceClass",
        "getInterfaceSubclass",
        "getInterfaceProtocol",
        "getFramework",
        "()Landroid/hardware/usb/UsbInterface;",
        "endpointCount",
        "getEndpointCount",
        "getEndpoint",
        "Landroid/hardware/usb/UsbEndpoint;",
        "index",
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
.field private final alternateSetting:I

.field private final framework:Landroid/hardware/usb/UsbInterface;

.field private final id:I

.field private final interfaceClass:I

.field private final interfaceProtocol:I

.field private final interfaceSubclass:I


# direct methods
.method public constructor <init>(IIIIILandroid/hardware/usb/UsbInterface;)V
    .locals 1

    const-string v0, "framework"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->id:I

    .line 27
    iput p2, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->alternateSetting:I

    .line 28
    iput p3, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->interfaceClass:I

    .line 29
    iput p4, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->interfaceSubclass:I

    .line 30
    iput p5, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->interfaceProtocol:I

    .line 31
    iput-object p6, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->framework:Landroid/hardware/usb/UsbInterface;

    return-void
.end method


# virtual methods
.method public final getAlternateSetting()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->alternateSetting:I

    return v0
.end method

.method public final getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->framework:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object p1

    const-string v0, "getEndpoint(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getEndpointCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->framework:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    return v0
.end method

.method public final getFramework()Landroid/hardware/usb/UsbInterface;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->framework:Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->id:I

    return v0
.end method

.method public final getInterfaceClass()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->interfaceClass:I

    return v0
.end method

.method public final getInterfaceProtocol()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->interfaceProtocol:I

    return v0
.end method

.method public final getInterfaceSubclass()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->interfaceSubclass:I

    return v0
.end method
