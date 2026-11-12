.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;
.super Ljava/lang/Object;
.source "DiPlayActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;
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

.field public static final synthetic $EnumSwitchMapping$10:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I

.field public static final synthetic $EnumSwitchMapping$7:[I

.field public static final synthetic $EnumSwitchMapping$8:[I

.field public static final synthetic $EnumSwitchMapping$9:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->values()[Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->HOTSPOT:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->PAIR_IPHONE:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->BLUETOOTH_PERMISSION:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->LOCATION:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->values()[Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_4
    sget-object v5, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->TYPING:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->READING:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->DIALOG:Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/AutoReturnToCarPlay$Pause;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->values()[Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->CONNECT:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->OPEN_CARPLAY:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->HOW:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->ALLOW:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v5, 0x5

    :try_start_b
    sget-object v6, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->PAIR:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/4 v6, 0x6

    :try_start_c
    sget-object v7, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->NONE:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->values()[Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_d
    sget-object v7, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ALL_STEPS:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v7, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->CANCEL:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v7

    aput v2, v0, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v7, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->STOP_RECONNECT:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v7

    aput v3, v0, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v7, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->DISCONNECT:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v7

    aput v4, v0, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v7, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->RETRY:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v7

    aput v5, v0, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v7, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->QS_WIFI_DIRECT:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v6, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->QS_WIFI_QR:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v0, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->values()[Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_14
    sget-object v6, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v6, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->RECONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v6, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v6, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->STUCK:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v6, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    invoke-virtual {v6}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->values()[Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_19
    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->GOOD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->INFO:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->WARN:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v5, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->BAD:Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/HeadUnitCapabilities$Status;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-static {}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->values()[Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_1d
    sget-object v5, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->REMOVABLE:Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v5, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->SHARED_INTERNAL:Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v5, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->APP_PRIVATE:Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/DiagnosticUsbExport$Kind;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-static {}, Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;->values()[Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_20
    sget-object v5, Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;->SYSTEM:Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v5, Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;->P2P:Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v5, Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;->LOCAL_ONLY:Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v5, Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;->OTHER:Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/DiPlayActivity$CarWifiRowMode;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$7:[I

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->values()[Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_24
    sget-object v5, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->MANUAL:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v5, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->WIFI_P2P:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v5, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->EXTERNAL_WIFI:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v5, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->LOCAL_ONLY_HOTSPOT:Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$8:[I

    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->values()[Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_28
    sget-object v5, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->READY:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v5, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->NOT_APPROVED:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v5, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->ADB_OFF:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v5, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->PAIRING_ONLY:Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/hud/BydAdbAccess$State;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$9:[I

    invoke-static {}, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->values()[Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2c
    sget-object v4, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->DIALOG:Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v1, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->TOAST:Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v1, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->NOTHING:Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/VendorBluetoothNotice$Show;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$WhenMappings;->$EnumSwitchMapping$10:[I

    return-void
.end method
