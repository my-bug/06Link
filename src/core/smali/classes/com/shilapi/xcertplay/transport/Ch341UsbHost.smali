.class public final Lcom/shilapi/xcertplay/transport/Ch341UsbHost;
.super Ljava/lang/Object;
.source "Ch341UsbHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;,
        Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult;,
        Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest;,
        Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCh341UsbHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ch341UsbHost.kt\ncom/shilapi/xcertplay/transport/Ch341UsbHost\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,338:1\n774#2:339\n865#2,2:340\n*S KotlinDebug\n*F\n+ 1 Ch341UsbHost.kt\ncom/shilapi/xcertplay/transport/Ch341UsbHost\n*L\n49#1:339\n49#1:340,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0004*+,-B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0010J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u001c0\u001bJ*\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u001c0\u001bJ\u0010\u0010\"\u001a\u00020#2\u0006\u0010\u0013\u001a\u00020\u0010H\u0002J\u0010\u0010$\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u0010H\u0002J\u0008\u0010%\u001a\u00020&H\u0002J\u000e\u0010\'\u001a\u0004\u0018\u00010\u0010*\u00020\u0017H\u0002J\u0012\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010\u0013\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \r*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost;",
        "",
        "context",
        "Landroid/content/Context;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "matcher",
        "Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;",
        "permissionAction",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;Ljava/lang/String;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "discover",
        "",
        "Landroid/hardware/usb/UsbDevice;",
        "requestPermission",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest;",
        "device",
        "parsePermissionResult",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;",
        "intent",
        "Landroid/content/Intent;",
        "registerPermissionReceiver",
        "Ljava/io/Closeable;",
        "onResult",
        "Lkotlin/Function1;",
        "",
        "openAsync",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "callback",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult;",
        "open",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbSession;",
        "requireConfiguredDevice",
        "permissionPendingIntent",
        "Landroid/app/PendingIntent;",
        "usbDevice",
        "findBulkEndpoints",
        "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;",
        "PermissionRequest",
        "PermissionResult",
        "OpenResult",
        "BulkEndpoints",
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
.field private final appContext:Landroid/content/Context;

.field private final matcher:Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;

.field private final permissionAction:Ljava/lang/String;

.field private final usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public static synthetic $r8$lambda$g0Zw9RTmUtBAHe3x2a2qOJDQ9Dg(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/Ch341UsbHost;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->openAsync$lambda$2(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/Ch341UsbHost;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rTAkJBI2veA58bMU0Q6575vWIRk(Lcom/shilapi/xcertplay/transport/Ch341UsbHost;Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->registerPermissionReceiver$lambda$1(Lcom/shilapi/xcertplay/transport/Ch341UsbHost;Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usbManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 29
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->matcher:Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;

    .line 30
    iput-object p4, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->permissionAction:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->appContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".CH341_USB_PERMISSION"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;Ljava/lang/String;)V

    return-void
.end method

.method private final findBulkEndpoints(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;
    .locals 11

    .line 141
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_5

    .line 142
    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    const-string v5, "getInterface(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v5

    move-object v6, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    .line 146
    invoke-virtual {v4, v7}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v8

    .line 147
    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 148
    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v9

    if-eqz v9, :cond_1

    const/16 v10, 0x80

    if-eq v9, v10, :cond_0

    goto :goto_2

    :cond_0
    if-nez v3, :cond_2

    move-object v3, v8

    goto :goto_2

    :cond_1
    if-nez v6, :cond_2

    move-object v6, v8

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 153
    new-instance p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;

    invoke-direct {p1, v4, v3, v6}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;-><init>(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    return-object p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method private final open(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/Ch341UsbSession;
    .locals 5

    .line 100
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->requireConfiguredDevice(Landroid/hardware/usb/UsbDevice;)V

    .line 101
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->findBulkEndpoints(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 106
    iget-object v3, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->getUsbInterface()Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    new-instance v1, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->getUsbInterface()Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->getInput()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$BulkEndpoints;->getOutput()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbSession;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    return-object v1

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 111
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    const-string v0, "Could not claim CH341 USB interface"

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 107
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    const-string v0, "UsbManager could not open the CH341 device"

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 105
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    const-string v0, "No USB interface has both bulk IN and OUT endpoints"

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 102
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$PermissionDenied;

    const-string v0, "USB permission has not been granted"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/I2cTransportException$PermissionDenied;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final openAsync$lambda$2(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/Ch341UsbHost;Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 92
    :try_start_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Connected;

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->open(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/Ch341UsbSession;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Connected;-><init>(Lcom/shilapi/xcertplay/transport/Ch341UsbSession;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/I2cTransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 94
    new-instance p2, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Failed;

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult$Failed;-><init>(Lcom/shilapi/xcertplay/transport/I2cTransportException;)V

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final permissionPendingIntent()Landroid/app/PendingIntent;
    .locals 6

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->permissionAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "setPackage(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->appContext:Landroid/content/Context;

    .line 129
    sget-object v2, Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;->INSTANCE:Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;->flags$default(Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;IILjava/lang/Object;)I

    move-result v2

    .line 124
    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "getBroadcast(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final registerPermissionReceiver$lambda$1(Lcom/shilapi/xcertplay/transport/Ch341UsbHost;Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->appContext:Landroid/content/Context;

    check-cast p1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final requireConfiguredDevice(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->matcher:Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;->matches(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;

    const-string v0, "USB device is not a configured CH341 identity"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/I2cTransportException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method private final usbDevice(Landroid/content/Intent;)Landroid/hardware/usb/UsbDevice;
    .locals 3

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "device"

    if-lt v0, v1, :cond_0

    .line 134
    const-class v0, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1, v2, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    return-object p1

    .line 137
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    return-object p1
.end method


# virtual methods
.method public final discover()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 340
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 49
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->matcher:Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final openAsync(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$OpenResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/Ch341UsbHost;Landroid/hardware/usb/UsbDevice;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final parsePermissionResult(Landroid/content/Intent;)Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;
    .locals 5

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->permissionAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->usbDevice(Landroid/content/Intent;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->matcher:Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/shilapi/xcertplay/transport/Ch341DeviceMatcher;->matches(II)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 65
    :cond_2
    const-string v1, "permission"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 66
    new-instance p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Granted;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;

    return-object p1

    .line 68
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Denied;

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult$Denied;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;

    return-object p1
.end method

.method public final registerPermissionReceiver(Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionResult;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "onResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;

    invoke-direct {v0, p0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;-><init>(Lcom/shilapi/xcertplay/transport/Ch341UsbHost;Lkotlin/jvm/functions/Function1;)V

    .line 79
    new-instance p1, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->permissionAction:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->appContext:Landroid/content/Context;

    move-object v2, v0

    check-cast v2, Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-static {v1, v2, p1, v3}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->appContext:Landroid/content/Context;

    move-object v2, v0

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    :goto_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/transport/Ch341UsbHost;Lcom/shilapi/xcertplay/transport/Ch341UsbHost$registerPermissionReceiver$receiver$1;)V

    return-object p1
.end method

.method public final requestPermission(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/I2cTransportException;
        }
    .end annotation

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->requireConfiguredDevice(Landroid/hardware/usb/UsbDevice;)V

    .line 54
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest$AlreadyGranted;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest$AlreadyGranted;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest;

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost;->permissionPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 57
    new-instance v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest$Requested;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest$Requested;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/Ch341UsbHost$PermissionRequest;

    return-object v0
.end method
