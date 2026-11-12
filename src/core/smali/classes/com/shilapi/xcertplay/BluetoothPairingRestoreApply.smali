.class public final Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;
.super Ljava/lang/Object;
.source "BluetoothPairingRestoreApply.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothPairingRestoreApply.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothPairingRestoreApply.kt\ncom/shilapi/xcertplay/BluetoothPairingRestoreApply\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u001a\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "run",
        "",
        "context",
        "Landroid/content/Context;",
        "enableCarBluetooth",
        "app",
        "adapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "startUsbAndPage",
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


# static fields
.field public static final INSTANCE:Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;

.field public static final TAG:Ljava/lang/String; = "xcertplay-boot"


# direct methods
.method public static synthetic $r8$lambda$-C65H3CTddBgjFudY5YCBFK0wNQ(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;->run$lambda$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cMN_Q6hZGHlHqnL9mEve9fO8ETo(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;->enableCarBluetooth$lambda$5(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;->INSTANCE:Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final enableCarBluetooth(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    return-void
.end method

.method private static final enableCarBluetooth$lambda$5(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p0

    return p0
.end method

.method private static final run$lambda$2(Landroid/content/Context;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;->INSTANCE:Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;

    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;->startUsbAndPage(Landroid/content/Context;)V

    return-void
.end method

.method private final startUsbAndPage(Landroid/content/Context;)V
    .locals 3

    .line 54
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->start(Landroid/content/Context;)Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;

    move-result-object p1

    .line 55
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Started;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Started;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "xcertplay-boot"

    if-nez v0, :cond_6

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$AlreadyRunning;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$AlreadyRunning;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NeedsPermission;

    if-eqz v0, :cond_1

    .line 62
    const-string p1, "boot: USB keys stored; dongle has no permission yet (not prompting on boot)"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_1
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$DrivenByKernel;

    if-eqz v0, :cond_2

    .line 64
    const-string p1, "boot: not loading keys onto a kernel-owned dongle"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_2
    instance-of v0, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;

    if-eqz v0, :cond_3

    .line 66
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;->getReason()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "boot: USB Bluetooth start failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "06LinkUsbBt"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NoDongle;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NoDongle;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NoUsbHost;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NoUsbHost;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 54
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 68
    :cond_5
    :goto_0
    const-string p1, "boot: USB keys stored but no dongle"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_6
    :goto_1
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->hold(Z)V

    .line 57
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->markStartedForCarPlay()V

    .line 58
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->reconnectPairedIphone()Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "boot: USB Bluetooth host up; page stored key peer="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final run(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01OemBluetooth;->arm(Landroid/content/Context;)V

    return-void
.end method
