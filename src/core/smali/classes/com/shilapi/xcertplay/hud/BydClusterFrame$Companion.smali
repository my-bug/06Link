.class public final Lcom/shilapi/xcertplay/hud/BydClusterFrame$Companion;
.super Ljava/lang/Object;
.source "BydClusterFrame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/hud/BydClusterFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydClusterFrame$Companion;",
        "",
        "<init>",
        "()V",
        "LEFT",
        "",
        "RIGHT",
        "SLIGHT_LEFT",
        "SLIGHT_RIGHT",
        "SHARP_LEFT",
        "SHARP_RIGHT",
        "U_TURN_LEFT",
        "STRAIGHT",
        "ROUNDABOUT_ENTER",
        "ROUNDABOUT_EXIT",
        "DESTINATION",
        "ROUNDABOUT_ENTER_CLOCKWISE",
        "ROUNDABOUT_EXIT_CLOCKWISE",
        "U_TURN_RIGHT",
        "from",
        "Lcom/shilapi/xcertplay/hud/BydClusterFrame;",
        "maneuver",
        "Lcom/shilapi/xcertplay/hud/BydAppleManeuver;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/hud/BydClusterFrame$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Lcom/shilapi/xcertplay/hud/BydAppleManeuver;)Lcom/shilapi/xcertplay/hud/BydClusterFrame;
    .locals 16

    const-string v0, "maneuver"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydAppleManeuver;->getDrivingSide()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 31
    :goto_0
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydAppleManeuver;->getDistanceMeters()I

    move-result v0

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v7

    .line 32
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydAppleManeuver;->getType()I

    move-result v0

    .line 33
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydAppleManeuver;->getRoad()Ljava/lang/String;

    move-result-object v8

    .line 34
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydAppleManeuver;->getRemainingMeters()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const-wide/32 v13, 0x7fffffff

    invoke-static/range {v9 .. v14}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v9

    long-to-int v4, v9

    move v9, v4

    goto :goto_1

    :cond_1
    const/4 v9, -0x1

    .line 35
    :goto_1
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/hud/BydAppleManeuver;->getRemainingSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-wide/32 v14, 0x7fffffff

    invoke-static/range {v10 .. v15}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v4

    long-to-int v5, v4

    move v10, v5

    goto :goto_2

    :cond_2
    const/4 v10, -0x1

    :goto_2
    const/16 v1, 0x1c

    const/16 v4, 0x11

    const/16 v5, 0xb

    if-gt v1, v0, :cond_4

    const/16 v1, 0x2f

    if-ge v0, v1, :cond_4

    if-eqz v3, :cond_3

    const/16 v5, 0x11

    .line 38
    :cond_3
    new-instance v4, Lcom/shilapi/xcertplay/hud/BydClusterFrame;

    add-int/lit8 v6, v0, -0x1b

    invoke-direct/range {v4 .. v10}, Lcom/shilapi/xcertplay/hud/BydClusterFrame;-><init>(IIILjava/lang/String;II)V

    return-object v4

    :cond_4
    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/4 v5, 0x0

    goto :goto_3

    :pswitch_0
    const/4 v2, 0x7

    const/4 v5, 0x7

    goto :goto_3

    :pswitch_1
    const/4 v2, 0x6

    const/4 v5, 0x6

    goto :goto_3

    :pswitch_2
    const/4 v2, 0x5

    const/4 v5, 0x5

    goto :goto_3

    :pswitch_3
    const/4 v2, 0x4

    const/4 v5, 0x4

    goto :goto_3

    :pswitch_4
    const/16 v2, 0xf

    const/16 v5, 0xf

    goto :goto_3

    :pswitch_5
    if-eqz v3, :cond_5

    const/16 v2, 0x12

    const/16 v5, 0x12

    goto :goto_3

    :cond_5
    const/16 v2, 0xc

    const/16 v5, 0xc

    goto :goto_3

    :pswitch_6
    if-eqz v3, :cond_7

    const/16 v5, 0x11

    goto :goto_3

    :pswitch_7
    if-eqz v3, :cond_6

    const/16 v2, 0x13

    const/16 v5, 0x13

    goto :goto_3

    :cond_6
    const/16 v2, 0x8

    const/16 v5, 0x8

    goto :goto_3

    :pswitch_8
    const/16 v2, 0x9

    const/16 v5, 0x9

    goto :goto_3

    :pswitch_9
    const/4 v2, 0x3

    const/4 v5, 0x3

    goto :goto_3

    :pswitch_a
    const/4 v2, 0x2

    const/4 v5, 0x2

    .line 54
    :cond_7
    :goto_3
    new-instance v4, Lcom/shilapi/xcertplay/hud/BydClusterFrame;

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/shilapi/xcertplay/hud/BydClusterFrame;-><init>(IIILjava/lang/String;II)V

    return-object v4

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
