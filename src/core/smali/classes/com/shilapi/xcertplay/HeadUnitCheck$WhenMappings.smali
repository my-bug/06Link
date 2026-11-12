.class public final synthetic Lcom/shilapi/xcertplay/HeadUnitCheck$WhenMappings;
.super Ljava/lang/Object;
.source "HeadUnitCheck.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCheck;
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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/shilapi/xcertplay/compat/BluetoothStack;->values()[Lcom/shilapi/xcertplay/compat/BluetoothStack;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ENABLED:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/shilapi/xcertplay/compat/BluetoothStack;->OFF:Lcom/shilapi/xcertplay/compat/BluetoothStack;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/compat/BluetoothStack;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->values()[Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2
    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NOT_ALLOWED:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Dongle;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->values()[Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_4
    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->values()[Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_6
    sget-object v3, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->NONE:Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->SOFTWARE:Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->HARDWARE:Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/HeadUnitCheck$Decoder;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WhenMappings;->$EnumSwitchMapping$3:[I

    return-void
.end method
