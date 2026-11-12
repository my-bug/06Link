.class public final Lcom/shilapi/xcertplay/E01StartupHotspot;
.super Ljava/lang/Object;
.source "E01StartupHotspot.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static application:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static attempted:Z

.field private static worker:Ljava/lang/Thread;


# instance fields
.field private final context:Landroid/content/Context;

.field private final token:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/E01StartupHotspot;->LOCK:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/shilapi/xcertplay/E01StartupHotspot;->application:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/E01StartupHotspot;->context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/shilapi/xcertplay/E01StartupHotspot;->token:J

    return-void
.end method

.method public static arm(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01OemBluetooth;->arm(Landroid/content/Context;)V

    return-void
.end method

.method public static cancel()V
    .locals 3

    invoke-static {}, Lcom/shilapi/xcertplay/E01OemBluetooth;->cancelHotspot()V

    .line 34
    sget-object v0, Lcom/shilapi/xcertplay/E01StartupHotspot;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/E01StartupHotspot;->worker:Ljava/lang/Thread;

    const/4 v2, 0x0

    sput-object v2, Lcom/shilapi/xcertplay/E01StartupHotspot;->worker:Ljava/lang/Thread;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/shilapi/xcertplay/E01StartupHotspot;->attempted:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 36
    :cond_0
    return-void

    .line 34
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static connect(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01OemBluetooth;->explicitConnect(Landroid/content/Context;)V

    return-void
.end method

.method private static note(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 67
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance p0, Ljava/io/File;

    const-string v1, "06link.log"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01LogPolicy;->session(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static onStatus(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    .locals 0

    return-void
.end method

.method private static ready(Landroid/content/Context;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)Z
    .locals 3

    .line 38
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->DISCOVERABLE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getController()Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getError()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {p1, p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->dongle(Landroid/content/Context;)Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v1, p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->hasPermission(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    return v0

    .line 38
    :cond_2
    :goto_0
    return v0
.end method

.method private static supported()Z
    .locals 2

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const-string v0, "E01"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BX11QJ"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
