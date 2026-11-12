.class public final synthetic Lcom/shilapi/xcertplay/CarPlayHostActivity$WhenMappings;
.super Ljava/lang/Object;
.source "CarPlayHostActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
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


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I

.field public static final synthetic $EnumSwitchMapping$7:[I

.field public static final synthetic $EnumSwitchMapping$8:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->values()[Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ALL_STEPS:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->QS_WIFI_DIRECT:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->QS_WIFI_QR:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->CANCEL:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->STOP_RECONNECT:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->values()[Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->REQUEST_KEYFRAME:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->FORCE_HOST_FRONT:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->DOWNGRADE_CODEC:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->STOP_WITH_TIMEOUT:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$Action;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->values()[Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_9
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->WAITING_DATA:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->WAITING_DECODE:Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/FirstFrameWatch$SubStep;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->values()[Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_b
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->VPN_CONSENT_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_PERMISSION_DENIED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->SYSTEM_HOTSPOT_LOCKED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_NEVER_JOINED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_JOINED_NO_CARPLAY:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->values()[Lcom/shilapi/xcertplay/orchestration/MfiTarget;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_10
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->LOCAL:Lcom/shilapi/xcertplay/orchestration/MfiTarget;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->USB_CH341:Lcom/shilapi/xcertplay/orchestration/MfiTarget;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->I2C:Lcom/shilapi/xcertplay/orchestration/MfiTarget;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->REMOTE:Lcom/shilapi/xcertplay/orchestration/MfiTarget;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/MfiTarget;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->values()[Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_14
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->EXTERNAL_WIFI:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->LOCAL_ONLY_HOTSPOT:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->MANUAL:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-static {}, Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;->values()[Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_18
    sget-object v6, Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;->WIDTH:Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v6, Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;->HEIGHT:Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/AirPlayPhysicalSizeBasis;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->values()[Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_1a
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->RESTART:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->SHOW_UNSTABLE:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->WAIT_FOR_PERSON:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v6, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->IGNORE:Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/orchestration/WiredAutoResume$Action;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$WhenMappings;->$EnumSwitchMapping$7:[I

    invoke-static {}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->values()[Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_1e
    sget-object v6, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->RELEASE_CARPLAY:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->OPEN_MENU:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$WhenMappings;->$EnumSwitchMapping$8:[I

    return-void
.end method
