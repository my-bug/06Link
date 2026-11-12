.class public final Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;
.super Ljava/lang/Object;
.source "UsbBluetoothHci.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Endpoints"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;",
        "",
        "controlInterface",
        "Landroid/hardware/usb/UsbInterface;",
        "events",
        "Landroid/hardware/usb/UsbEndpoint;",
        "aclIn",
        "aclOut",
        "<init>",
        "(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V",
        "getControlInterface",
        "()Landroid/hardware/usb/UsbInterface;",
        "getEvents",
        "()Landroid/hardware/usb/UsbEndpoint;",
        "getAclIn",
        "getAclOut",
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
.field private final aclIn:Landroid/hardware/usb/UsbEndpoint;

.field private final aclOut:Landroid/hardware/usb/UsbEndpoint;

.field private final controlInterface:Landroid/hardware/usb/UsbInterface;

.field private final events:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 1

    const-string v0, "controlInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->controlInterface:Landroid/hardware/usb/UsbInterface;

    .line 47
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->events:Landroid/hardware/usb/UsbEndpoint;

    .line 48
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->aclIn:Landroid/hardware/usb/UsbEndpoint;

    .line 49
    iput-object p4, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->aclOut:Landroid/hardware/usb/UsbEndpoint;

    return-void
.end method


# virtual methods
.method public final getAclIn()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->aclIn:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final getAclOut()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->aclOut:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public final getControlInterface()Landroid/hardware/usb/UsbInterface;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->controlInterface:Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method public final getEvents()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->events:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method
