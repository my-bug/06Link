.class public final Lcom/shilapi/xcertplay/transport/IphoneUsbHost;
.super Ljava/lang/Object;
.source "IphoneUsbHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Companion;,
        Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult;,
        Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest;,
        Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;,
        Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIphoneUsbHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IphoneUsbHost.kt\ncom/shilapi/xcertplay/transport/IphoneUsbHost\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,531:1\n774#2:532\n865#2,2:533\n1#3:535\n*S KotlinDebug\n*F\n+ 1 IphoneUsbHost.kt\ncom/shilapi/xcertplay/transport/IphoneUsbHost\n*L\n97#1:532\n97#1:533,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 82\u00020\u0001:\u000545678B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0010J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u0019\u001a\u00020\u001a2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u001d0\u001cJ\u001a\u0010\u001e\u001a\u00020\u001a2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d0\u001cJ*\u0010 \u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u001d0\u001cJ*\u0010%\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u001d0\u001cJ$\u0010\'\u001a\u00020$2\u0006\u0010\u0013\u001a\u00020\u00102\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020$0\u001cH\u0002J\u0010\u0010*\u001a\u00020+2\u0006\u0010\u0013\u001a\u00020\u0010H\u0002J\u0010\u0010,\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u0010H\u0002J\u0008\u0010-\u001a\u00020.H\u0002J$\u0010/\u001a\u00020\u001a2\u0006\u00100\u001a\u0002012\u0012\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u000e\u00103\u001a\u0004\u0018\u00010\u0010*\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \r*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/IphoneUsbHost;",
        "",
        "context",
        "Landroid/content/Context;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "matcher",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;",
        "permissionAction",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;Ljava/lang/String;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "discover",
        "",
        "Landroid/hardware/usb/UsbDevice;",
        "requestPermission",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest;",
        "device",
        "parsePermissionResult",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;",
        "intent",
        "Landroid/content/Intent;",
        "parseAttachedDevice",
        "registerPermissionReceiver",
        "Ljava/io/Closeable;",
        "onResult",
        "Lkotlin/Function1;",
        "",
        "registerAttachReceiver",
        "onAttached",
        "requestCarPlayReenumerationAsync",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "callback",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;",
        "openIap2UsbSessionAsync",
        "Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult;",
        "runTransition",
        "operation",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "openIap2UsbSession",
        "Lcom/shilapi/xcertplay/transport/Iap2UsbSession;",
        "requireConfiguredDevice",
        "permissionPendingIntent",
        "Landroid/app/PendingIntent;",
        "registerReceiver",
        "filter",
        "Landroid/content/IntentFilter;",
        "onReceive",
        "usbDevice",
        "PermissionRequest",
        "PermissionResult",
        "TransitionResult",
        "Iap2SessionResult",
        "Companion",
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


# static fields
.field private static final CARPLAY_CONFIGURATION_INDEX:I = 0x4

.field private static final CARPLAY_CONFIGURATION_REQUEST:I = 0x52

.field private static final CONTROL_TRANSFER_TIMEOUT_MILLIS:I = 0x3e8

.field public static final Companion:Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Companion;

.field private static final USB_VENDOR_DEVICE_IN:I = 0xc0

.field private static final VENDOR_RESPONSE_LENGTH:I = 0x1


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final matcher:Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;

.field private final permissionAction:Ljava/lang/String;

.field private final usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public static synthetic $r8$lambda$BEyDgBaoWuc1znkulesDXRZXZog(Landroid/hardware/usb/UsbDeviceConnection;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->requestCarPlayReenumerationAsync$lambda$5$lambda$4(Landroid/hardware/usb/UsbDeviceConnection;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N2f9EVhyTovvW7xM7JN9e6qrkxM(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->registerPermissionReceiver$lambda$2(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WKcUKzb06wJz3b9fIahX2k282dk(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->openIap2UsbSessionAsync$lambda$6(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hAzPN7Qegg8bwIP9Gz1YSB4Hu-U(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->registerAttachReceiver$lambda$3(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l-aNvb387pF9RqbKMT2QHwb3Bt8(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->registerReceiver$lambda$7(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oHKpu01Ul7_n_fhuVOplXJsB_hc(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->requestCarPlayReenumerationAsync$lambda$5(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->Companion:Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usbManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 69
    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->matcher:Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;

    .line 70
    iput-object p4, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->permissionAction:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->appContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".IPHONE_USB_PERMISSION"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 66
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;Ljava/lang/String;)V

    return-void
.end method

.method private final openIap2UsbSession(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/Iap2UsbSession;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 234
    const-string v2, "/"

    .line 0
    const-string/jumbo v3, "usbmux config="

    const-string v4, "setConfiguration "

    .line 234
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->requireConfiguredDevice(Landroid/hardware/usb/UsbDevice;)V

    .line 235
    iget-object v5, v1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 238
    iget-object v5, v1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5, v0}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 242
    :try_start_0
    sget-object v8, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->INSTANCE:Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;

    iget-object v9, v1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v8, v0, v9}, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->find(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbManager;)Lcom/shilapi/xcertplay/transport/UsbConfigView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 247
    sget-object v8, Lcom/shilapi/xcertplay/transport/UsbConfigCompat;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbConfigCompat;

    move-object/from16 v6, p1

    invoke-static {v9, v6, v5, v0}, Lcom/shilapi/xcertplay/E01WiredConfiguration;->configure(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;Lcom/shilapi/xcertplay/transport/UsbConfigView;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string/jumbo v9, "xcertplay-usb"

    if-nez v8, :cond_0

    .line 250
    :try_start_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/UsbConfigView;->getId()I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reported failure; claiming anyway"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    sget-object v4, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->INSTANCE:Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;

    invoke-virtual {v4, v0}, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->usbMuxInterface(Lcom/shilapi/xcertplay/transport/UsbConfigView;)Lcom/shilapi/xcertplay/transport/UsbInterfaceView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 255
    sget-object v8, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->INSTANCE:Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;

    invoke-virtual {v8, v4}, Lcom/shilapi/xcertplay/transport/IphoneCarPlayConfiguration;->usbMuxEndpoints(Lcom/shilapi/xcertplay/transport/UsbInterfaceView;)Lkotlin/Pair;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 259
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/UsbConfigView;->getId()I

    move-result v0

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getId()I

    move-result v10

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getAlternateSetting()I

    move-result v11

    .line 260
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getInterfaceClass()I

    move-result v12

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getInterfaceSubclass()I

    move-result v13

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getInterfaceProtocol()I

    move-result v14

    .line 261
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getEndpointCount()I

    move-result v15

    .line 262
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/usb/UsbEndpoint;

    # invokes: Lcom/shilapi/xcertplay/transport/IphoneUsbHostKt;->describeUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/shilapi/xcertplay/transport/IphoneUsbHostKt;->access$describeUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/usb/UsbEndpoint;

    # invokes: Lcom/shilapi/xcertplay/transport/IphoneUsbHostKt;->describeUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/shilapi/xcertplay/transport/IphoneUsbHostKt;->access$describeUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iface="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " alt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " class="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " endpoints="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " out="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getFramework()Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbInterfaceView;->getFramework()Landroid/hardware/usb/UsbInterface;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    :try_start_2
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {v0, v5, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 266
    :cond_1
    :try_start_3
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v1, "Android could not claim USBMUX interface 1"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 256
    :cond_2
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v1, "USBMUX interface exposes no bulk endpoint pair"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_3
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    const-string v1, "CarPlay configuration exposes no USBMUX interface"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_4
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    .line 244
    const-string v1, "Re-enumerated iPhone exposes no USBMUX CarPlay configuration"

    .line 243
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_5

    .line 271
    invoke-virtual {v5, v7}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 272
    :cond_5
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 273
    throw v0

    .line 239
    :cond_6
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v1, "UsbManager could not open the iPhone"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_7
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 236
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$PermissionDenied;

    const-string v1, "USB permission has not been granted"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$PermissionDenied;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private static final openIap2UsbSessionAsync$lambda$6(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 183
    :try_start_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Connected;

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->openIap2UsbSession(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Connected;-><init>(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult;
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 191
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Failed;

    .line 192
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v1, "iPhone USBMUX operation failed"

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    .line 191
    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Failed;-><init>(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    move-object v0, p1

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult;

    goto :goto_0

    :catch_1
    move-exception p0

    .line 187
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Failed;

    .line 188
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$PermissionDenied;

    const-string v1, "USB permission was denied"

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$PermissionDenied;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    .line 187
    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Failed;-><init>(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    move-object v0, p1

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult;

    goto :goto_0

    :catch_2
    move-exception p0

    .line 185
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Failed;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Failed;-><init>(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    move-object v0, p1

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult;

    .line 196
    :goto_0
    :try_start_1
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 198
    instance-of p1, v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Connected;

    if-eqz p1, :cond_0

    .line 200
    :try_start_2
    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Connected;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult$Connected;->getSession()Lcom/shilapi/xcertplay/transport/Iap2UsbSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/Iap2UsbSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 202
    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 205
    :cond_0
    :goto_1
    throw p0
.end method

.method private final permissionPendingIntent()Landroid/app/PendingIntent;
    .locals 6

    .line 284
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->permissionAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "setPackage(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->appContext:Landroid/content/Context;

    .line 290
    sget-object v2, Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;->INSTANCE:Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;->flags$default(Lcom/shilapi/xcertplay/compat/UsbPermissionIntents;IILjava/lang/Object;)I

    move-result v2

    .line 285
    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "getBroadcast(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final registerAttachReceiver$lambda$3(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->parseAttachedDevice(Landroid/content/Intent;)Landroid/hardware/usb/UsbDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final registerPermissionReceiver$lambda$2(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->parsePermissionResult(Landroid/content/Intent;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final registerReceiver(Landroid/content/IntentFilter;Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    .line 295
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;

    invoke-direct {v0, p2}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 298
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p2, v1, :cond_0

    .line 299
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->appContext:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p2, v1, p1, v2}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 301
    :cond_0
    iget-object p2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->appContext:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    :goto_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 304
    new-instance p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1, p0, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;)V

    return-object p2
.end method

.method private static final registerReceiver$lambda$7(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lcom/shilapi/xcertplay/transport/IphoneUsbHost$registerReceiver$receiver$1;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->appContext:Landroid/content/Context;

    check-cast p2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private static final requestCarPlayReenumerationAsync$lambda$5(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 147
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->runTransition(Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestCarPlayReenumerationAsync$lambda$5$lambda$4(Landroid/hardware/usb/UsbDeviceConnection;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;
    .locals 9

    const-string v0, "connection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 148
    new-array v6, v7, [B

    const/4 v5, 0x4

    const/16 v8, 0x3e8

    const/16 v2, 0xc0

    const/16 v3, 0x52

    const/4 v4, 0x0

    move-object v1, p0

    .line 149
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p0

    if-ne p0, v7, :cond_0

    .line 163
    sget-object p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$ReenumerationRequested;->INSTANCE:Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$ReenumerationRequested;

    check-cast p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;

    return-object p0

    .line 159
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CarPlay configuration request transferred "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of 1 bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$Protocol;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final requireConfiguredDevice(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->matcher:Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;->matches(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 279
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v0, "USB device is not a configured iPhone identity"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method private final runTransition(Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            "+",
            "Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;",
            ">;)",
            "Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;"
        }
    .end annotation

    .line 214
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->requireConfiguredDevice(Landroid/hardware/usb/UsbDevice;)V

    .line 215
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 221
    :try_start_1
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :try_start_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    throw p2

    .line 219
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string p2, "UsbManager could not open the iPhone"

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 216
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbException$PermissionDenied;

    const-string p2, "USB permission has not been granted"

    invoke-direct {p1, p2, v2, v1, v2}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$PermissionDenied;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_2
    .catch Lcom/shilapi/xcertplay/transport/IphoneUsbException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 230
    new-instance p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$Failed;

    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;

    const-string v1, "iPhone USB operation failed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$DeviceUnavailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    invoke-direct {p2, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$Failed;-><init>(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    check-cast p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 228
    new-instance p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$Failed;

    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException$PermissionDenied;

    const-string v1, "USB permission was denied"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbException$PermissionDenied;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbException;

    invoke-direct {p2, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$Failed;-><init>(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    check-cast p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;

    goto :goto_0

    :catch_2
    move-exception p1

    .line 226
    new-instance p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$Failed;

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult$Failed;-><init>(Lcom/shilapi/xcertplay/transport/IphoneUsbException;)V

    check-cast p2, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;

    :goto_0
    return-object p2
.end method

.method private final usbDevice(Landroid/content/Intent;)Landroid/hardware/usb/UsbDevice;
    .locals 3

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "device"

    if-lt v0, v1, :cond_0

    .line 310
    const-class v0, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1, v2, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    return-object p1

    .line 313
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

    .line 97
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 532
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 533
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

    .line 97
    iget-object v4, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->matcher:Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final openIap2UsbSessionAsync(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/IphoneUsbHost$Iap2SessionResult;",
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

    .line 181
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final parseAttachedDevice(Landroid/content/Intent;)Landroid/hardware/usb/UsbDevice;
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbDevice(Landroid/content/Intent;)Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->matcher:Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;->matches(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final parsePermissionResult(Landroid/content/Intent;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;
    .locals 5

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->permissionAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbDevice(Landroid/content/Intent;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->matcher:Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/shilapi/xcertplay/transport/IphoneUsbMatcher;->matches(II)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 113
    :cond_2
    const-string v1, "permission"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 114
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Granted;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;

    return-object p1

    .line 116
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Denied;

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult$Denied;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;

    return-object p1
.end method

.method public final registerAttachReceiver(Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/hardware/usb/UsbDevice;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "onAttached"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda5;-><init>(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->registerReceiver(Landroid/content/IntentFilter;Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;

    move-result-object p1

    return-object p1
.end method

.method public final registerPermissionReceiver(Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionResult;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const-string v0, "onResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->permissionAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v0, v1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->registerReceiver(Landroid/content/IntentFilter;Lkotlin/jvm/functions/Function1;)Ljava/io/Closeable;

    move-result-object p1

    return-object p1
.end method

.method public final requestCarPlayReenumerationAsync(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/IphoneUsbHost$TransitionResult;",
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

    .line 146
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/shilapi/xcertplay/transport/IphoneUsbHost;Landroid/hardware/usb/UsbDevice;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final requestPermission(Landroid/hardware/usb/UsbDevice;)Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/IphoneUsbException;
        }
    .end annotation

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->requireConfiguredDevice(Landroid/hardware/usb/UsbDevice;)V

    .line 102
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest$AlreadyGranted;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest$AlreadyGranted;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest;

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost;->permissionPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 105
    new-instance v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest$Requested;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest$Requested;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast v0, Lcom/shilapi/xcertplay/transport/IphoneUsbHost$PermissionRequest;

    return-object v0
.end method
