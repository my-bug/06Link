.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$host$1;
.super Ljava/lang/Object;
.source "UsbBtDriver.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBtDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBtDriver.kt\ncom/shilapi/xcertplay/usbbt/UsbBtDriver$host$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1#2:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/shilapi/xcertplay/usbbt/UsbBtDriver$host$1",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Transport;",
        "sendCommand",
        "",
        "packet",
        "",
        "sendAcl",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$host$1;->this$0:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAcl([B)V
    .locals 5

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$host$1;->this$0:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    # getter for: Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->writeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->access$getWriteLock$p(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$host$1;->this$0:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    monitor-enter v0

    :try_start_0
    # getter for: Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->connection:Landroid/hardware/usb/UsbDeviceConnection;
    invoke-static {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->access$getConnection$p(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    # getter for: Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->aclOut:Landroid/hardware/usb/UsbEndpoint;
    invoke-static {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->access$getAclOut$p(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    array-length v3, p1

    const/16 v4, 0x3e8

    invoke-virtual {v2, v1, p1, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-gez v1, :cond_0

    .line 40
    const-string v0, "06LinkUsbBt"

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACL send failed ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v0

    throw p1
.end method

.method public sendCommand([B)V
    .locals 8

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$host$1;->this$0:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    # getter for: Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->writeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->access$getWriteLock$p(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$host$1;->this$0:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    # getter for: Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->connection:Landroid/hardware/usb/UsbDeviceConnection;
    invoke-static {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->access$getConnection$p(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->sendCommand$default(Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;Landroid/hardware/usb/UsbDeviceConnection;[BIILjava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-gez p1, :cond_0

    .line 35
    const-string p1, "06LinkUsbBt"

    const-string v0, "command 0x%04x send failed"

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/HciCommands;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/HciCommands;

    invoke-virtual {v1, v4}, Lcom/shilapi/xcertplay/usbbt/HciCommands;->opcodeOfPacket([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 34
    monitor-exit v1

    throw p1
.end method
