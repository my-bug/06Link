.class public final Lcom/shilapi/xcertplay/hud/BydManeuverCodes;
.super Ljava/lang/Object;
.source "BydManeuverCodes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005J\u000e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydManeuverCodes;",
        "",
        "<init>",
        "()V",
        "NONE",
        "",
        "LEFT",
        "RIGHT",
        "SLIGHT_LEFT",
        "SLIGHT_RIGHT",
        "SHARP_LEFT",
        "SHARP_RIGHT",
        "U_TURN_LEFT",
        "U_TURN_RIGHT",
        "STRAIGHT",
        "ROUNDABOUT_ENTER",
        "ROUNDABOUT_EXIT",
        "DESTINATION",
        "ROUNDABOUT_EXIT_BASE",
        "ROUNDABOUT_EXIT_BASE_LEFT_HAND",
        "gaode",
        "appleType",
        "drivingSide",
        "hudArrow",
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
.field public static final DESTINATION:I = 0x30

.field public static final INSTANCE:Lcom/shilapi/xcertplay/hud/BydManeuverCodes;

.field public static final LEFT:I = 0x1

.field public static final NONE:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final ROUNDABOUT_ENTER:I = 0xd

.field public static final ROUNDABOUT_EXIT:I = 0x18

.field private static final ROUNDABOUT_EXIT_BASE:I = 0x18

.field private static final ROUNDABOUT_EXIT_BASE_LEFT_HAND:I = 0x22

.field public static final SHARP_LEFT:I = 0x7

.field public static final SHARP_RIGHT:I = 0x8

.field public static final SLIGHT_LEFT:I = 0x3

.field public static final SLIGHT_RIGHT:I = 0x4

.field public static final STRAIGHT:I = 0xb

.field public static final U_TURN_LEFT:I = 0x9

.field public static final U_TURN_RIGHT:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydManeuverCodes;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydManeuverCodes;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydManeuverCodes;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydManeuverCodes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final gaode(II)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v2, 0x1c

    const/4 v3, 0x3

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-gt v2, p1, :cond_3

    const/16 v2, 0x2f

    if-ge p1, v2, :cond_3

    add-int/lit8 v0, p1, -0x1b

    if-le v0, v5, :cond_1

    return v4

    :cond_1
    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, 0x7

    return p1

    :cond_2
    sub-int/2addr p1, v3

    return p1

    :cond_3
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    return v0

    :pswitch_0
    const/16 p1, 0x8

    return p1

    :pswitch_1
    const/4 p1, 0x7

    return p1

    :pswitch_2
    const/4 p1, 0x4

    return p1

    :pswitch_3
    return v3

    :pswitch_4
    const/16 p1, 0x30

    return p1

    :pswitch_5
    const/16 p1, 0x18

    return p1

    :pswitch_6
    return v4

    :pswitch_7
    if-eqz p2, :cond_4

    return v5

    :cond_4
    const/16 p1, 0x9

    return p1

    :pswitch_8
    const/16 p1, 0xb

    return p1

    :pswitch_9
    const/4 p1, 0x2

    return p1

    :pswitch_a
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final hudArrow(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 p1, 0x63

    return p1

    :pswitch_1
    const/16 p1, 0xb

    return p1

    :pswitch_2
    const/16 p1, 0x8

    return p1

    :pswitch_3
    const/4 p1, 0x7

    return p1

    :pswitch_4
    const/4 p1, 0x5

    return p1

    :pswitch_5
    const/4 p1, 0x3

    return p1

    :pswitch_6
    const/4 p1, 0x2

    return p1

    :pswitch_7
    const/4 p1, 0x1

    return p1

    :pswitch_8
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
