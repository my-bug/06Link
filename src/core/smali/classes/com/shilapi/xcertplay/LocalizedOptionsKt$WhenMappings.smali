.class public final synthetic Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;
.super Ljava/lang/Object;
.source "LocalizedOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/LocalizedOptionsKt;
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


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->values()[Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->LARGE:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->MEDIUM:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->SMALL:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->values()[Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3
    sget-object v4, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->SCENARIO:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->MAP:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->SIMPLE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;->values()[Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_6
    sget-object v4, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;->DEFAULT:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;->LIGHT:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;->DARK:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Contrast;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->values()[Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_9
    sget-object v4, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->OFF:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->TURN_ON_BY_NAVI:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->SMALL:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/4 v4, 0x4

    :try_start_c
    sget-object v5, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->FULL:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    sput-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->values()[Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_d
    sget-object v5, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->CCS2_TYPE2:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->GB_T:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v5, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->CCS1_J1772:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    sput-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->values()[Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_10
    sget-object v5, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->EMPTY_NAME:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->LONG_NAME:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->INVALID_CHARACTER:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->PASSWORD_LENGTH:Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/ManualHotspotValidation$Error;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    sput-object v0, Lcom/shilapi/xcertplay/LocalizedOptionsKt$WhenMappings;->$EnumSwitchMapping$5:[I

    return-void
.end method
