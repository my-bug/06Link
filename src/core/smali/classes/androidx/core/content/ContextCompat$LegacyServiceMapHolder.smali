.class final Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyServiceMapHolder"
.end annotation


# static fields
.field static final SERVICES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 982
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    .line 985
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    .line 986
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$6()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "telephony_subscription_service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$17()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 990
    const-class v1, Landroid/appwidget/AppWidgetManager;

    const-string v2, "appwidget"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-class v1, Landroid/os/BatteryManager;

    const-string v2, "batterymanager"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$18()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$19()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "jobscheduler"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$20()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "launcherapps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$21()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "media_projection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$22()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "media_session"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$23()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "restrictions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$24()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "telecom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$7()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "tv_input"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 1002
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$8()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "captioning"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$9()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "consumer_ir"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$10()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "print"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    .line 1008
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$11()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    .line 1011
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$12()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$13()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_5

    .line 1015
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$14()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "input"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$15()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "media_router"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$16()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "servicediscovery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    :cond_5
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    const-string v2, "accessibility"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-class v1, Landroid/accounts/AccountManager;

    const-string v2, "account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "activity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    const-class v1, Landroid/app/AlarmManager;

    const-string v2, "alarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-class v1, Landroid/media/AudioManager;

    const-string v2, "audio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-class v1, Landroid/content/ClipboardManager;

    const-string v2, "clipboard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "connectivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    const-string v2, "device_policy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-class v1, Landroid/app/DownloadManager;

    const-string v2, "download"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-class v1, Landroid/os/DropBoxManager;

    const-string v2, "dropbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "input_method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-class v1, Landroid/app/KeyguardManager;

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-class v1, Landroid/view/LayoutInflater;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-class v1, Landroid/location/LocationManager;

    const-string v2, "location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-class v1, Landroid/nfc/NfcManager;

    const-string v2, "nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-class v1, Landroid/app/NotificationManager;

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const-class v1, Landroid/os/PowerManager;

    const-string v2, "power"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-class v1, Landroid/app/SearchManager;

    const-string v2, "search"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    const-class v1, Landroid/hardware/SensorManager;

    const-string v2, "sensor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    const-class v1, Landroid/os/storage/StorageManager;

    const-string/jumbo v2, "storage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-class v1, Landroid/view/textservice/TextServicesManager;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const-class v1, Landroid/app/UiModeManager;

    const-string/jumbo v2, "uimode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-class v1, Landroid/hardware/usb/UsbManager;

    const-string/jumbo v2, "usb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-class v1, Landroid/os/Vibrator;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-class v1, Landroid/app/WallpaperManager;

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    const-string/jumbo v2, "wifip2p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    const-class v1, Landroid/view/WindowManager;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
