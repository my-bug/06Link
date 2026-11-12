.class public final Lcom/shilapi/xcertplay/ConnectionSteps;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ConnectionSteps$Step;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0017R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionSteps;",
        "",
        "<init>",
        "()V",
        "WIRELESS",
        "",
        "Lcom/shilapi/xcertplay/ConnectionSteps$Step;",
        "getWIRELESS",
        "()Ljava/util/List;",
        "WIRED",
        "getWIRED",
        "WIRELESS_BLUETOOTH_LAST",
        "",
        "WIRELESS_WIFI_FIRST",
        "WIRELESS_CALL",
        "WIRELESS_ANSWERED",
        "WIRELESS_WIFI_UP",
        "WIRELESS_JOINING",
        "WIRELESS_JOINED",
        "WIRELESS_PICTURE",
        "WIRED_PICTURE",
        "of",
        "wireless",
        "",
        "count",
        "Step",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

.field private static final WIRED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionSteps$Step;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIRED_PICTURE:I = 0x19

.field private static final WIRELESS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionSteps$Step;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIRELESS_ANSWERED:I = 0xc

.field public static final WIRELESS_BLUETOOTH_LAST:I = 0x1f

.field public static final WIRELESS_CALL:I = 0xb

.field public static final WIRELESS_JOINED:I = 0x24

.field public static final WIRELESS_JOINING:I = 0x23

.field public static final WIRELESS_PICTURE:I = 0x28

.field public static final WIRELESS_WIFI_FIRST:I = 0x20

.field public static final WIRELESS_WIFI_UP:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ConnectionSteps;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    const/16 v0, 0x28

    .line 23
    new-array v0, v0, [Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_1:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_1_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_2:I

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_2_hint:I

    invoke-direct {v1, v3, v4}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 24
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_3:I

    sget v5, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_3_hint:I

    invoke-direct {v1, v4, v5}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v5, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_4:I

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_4_hint:I

    invoke-direct {v1, v5, v6}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 25
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_5:I

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_5_hint:I

    invoke-direct {v1, v6, v7}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_6:I

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_6_hint:I

    invoke-direct {v1, v7, v8}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 26
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_7:I

    sget v9, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_7_hint:I

    invoke-direct {v1, v8, v9}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/4 v8, 0x6

    aput-object v1, v0, v8

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v9, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_8:I

    sget v10, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_8_hint:I

    invoke-direct {v1, v9, v10}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/4 v9, 0x7

    aput-object v1, v0, v9

    .line 27
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v10, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_9:I

    sget v11, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_9_hint:I

    invoke-direct {v1, v10, v11}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v10, 0x8

    aput-object v1, v0, v10

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v11, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_10:I

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_10_hint:I

    invoke-direct {v1, v11, v12}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v11, 0x9

    aput-object v1, v0, v11

    .line 28
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v12, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_11:I

    sget v13, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_11_hint:I

    invoke-direct {v1, v12, v13}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v12, 0xa

    aput-object v1, v0, v12

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v13, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_12:I

    sget v14, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_12_hint:I

    invoke-direct {v1, v13, v14}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v13, 0xb

    aput-object v1, v0, v13

    .line 29
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v14, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_13:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_13_hint:I

    invoke-direct {v1, v14, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v14, 0xc

    aput-object v1, v0, v14

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_14:I

    const/16 v16, 0x0

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_14_hint:I

    invoke-direct {v1, v15, v2}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 30
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_15:I

    const/16 v17, 0xd

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_15_hint:I

    invoke-direct {v1, v15, v2}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_16:I

    const/16 v18, 0xe

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_16_hint:I

    invoke-direct {v1, v15, v2}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 31
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_17:I

    const/16 v19, 0xf

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_17_hint:I

    invoke-direct {v1, v15, v2}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_18:I

    const/16 v20, 0x10

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_18_hint:I

    invoke-direct {v1, v15, v2}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 32
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_19:I

    const/16 v21, 0x11

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_19_hint:I

    invoke-direct {v1, v15, v2}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_20:I

    const/16 v22, 0x12

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_20_hint:I

    invoke-direct {v1, v15, v2}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 33
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_21:I

    const/16 v23, 0x13

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_21_hint:I

    invoke-direct {v1, v15, v2}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_22:I

    const/16 v24, 0x14

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_22_hint:I

    invoke-direct {v1, v15, v2}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 34
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_23:I

    const/16 v25, 0x15

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_23_hint:I

    invoke-direct {v1, v15, v2}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_24:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_24_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 35
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_25:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_25_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_26:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_26_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 36
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_27:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_27_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_28:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_28_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 37
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_29:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_29_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_30:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_30_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 38
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_31:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_31_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_32:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_32_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 39
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_33:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_33_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_34:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_34_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 40
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_35:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_35_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_36:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_36_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 41
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_37:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_37_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_38:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_38_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 42
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_39:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_39_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_40:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wl_102_40_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 22
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionSteps;->WIRELESS:Ljava/util/List;

    const/16 v0, 0x19

    .line 46
    new-array v0, v0, [Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_1:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_1_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v16

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_2:I

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_2_hint:I

    invoke-direct {v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v3

    .line 47
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_3:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_3_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_4:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_4_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v5

    .line 48
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_5:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_5_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_6:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_6_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v7

    .line 49
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_7:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_7_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_8:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_8_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v9

    .line 50
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_9:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_9_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_10:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_10_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v11

    .line 51
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_11:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_11_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v12

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_12:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_12_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v13

    .line 52
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_13:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_13_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v14

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_14:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_14_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v17

    .line 53
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_15:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_15_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v18

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_16:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_16_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v19

    .line 54
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_17:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_17_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v20

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_18:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_18_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v21

    .line 55
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_19:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_19_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v22

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_20:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_20_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v23

    .line 56
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_21:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_21_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v24

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_22:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_22_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    aput-object v1, v0, v25

    .line 57
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_23:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_23_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_24:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_24_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 58
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_25:I

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->step_wd_102_25_hint:I

    invoke-direct {v1, v2, v3}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;-><init>(II)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionSteps;->WIRED:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final count(Z)I
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/ConnectionSteps;->of(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final getWIRED()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionSteps$Step;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionSteps;->WIRED:Ljava/util/List;

    return-object v0
.end method

.method public final getWIRELESS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionSteps$Step;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/shilapi/xcertplay/ConnectionSteps;->WIRELESS:Ljava/util/List;

    return-object v0
.end method

.method public final of(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionSteps$Step;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 75
    sget-object p1, Lcom/shilapi/xcertplay/ConnectionSteps;->WIRELESS:Ljava/util/List;

    return-object p1

    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/ConnectionSteps;->WIRED:Ljava/util/List;

    return-object p1
.end method
