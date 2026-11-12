.class public final Lcom/shilapi/xcertplay/ConnectionStepMap;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ConnectionStepMap$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001d\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionStepMap;",
        "",
        "<init>",
        "()V",
        "forStatus",
        "",
        "wireless",
        "",
        "status",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayStatus;",
        "(ZLcom/shilapi/xcertplay/orchestration/CarPlayStatus;)Ljava/lang/Integer;",
        "forProblem",
        "problem",
        "Lcom/shilapi/xcertplay/orchestration/SetupProblem;",
        "(ZLcom/shilapi/xcertplay/orchestration/SetupProblem;)Ljava/lang/Integer;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionStepMap;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ConnectionStepMap;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionStepMap;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionStepMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final forProblem(ZLcom/shilapi/xcertplay/orchestration/SetupProblem;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "problem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 112
    sget-object p1, Lcom/shilapi/xcertplay/ConnectionStepMap$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 p1, 0x27

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p1, 0x23

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p1, 0x20

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    return-object v1

    .line 118
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/ConnectionStepMap$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    return-object v0

    :pswitch_4
    const/16 p1, 0x14

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/16 p1, 0xe

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    const/16 p1, 0xd

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    return-object v1

    :pswitch_8
    const/16 p1, 0x9

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_9
    const/4 p1, 0x4

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    const/4 p1, 0x3

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_b
    const/4 p1, 0x2

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final forStatus(ZLcom/shilapi/xcertplay/orchestration/CarPlayStatus;)Ljava/lang/Integer;
    .locals 4

    const-string/jumbo v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_c

    .line 84
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringMfi;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringMfi;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingMfiPermission;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingMfiPermission;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 85
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 86
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$StartingHotspot;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$StartingHotspot;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v3, 0x20

    if-nez p1, :cond_a

    instance-of p1, p2, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SwitchingWifiLink;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    instance-of p1, p2, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$HotspotReady;

    if-eqz p1, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 88
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForPairedIphone;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForPairedIphone;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v2

    .line 89
    :cond_3
    instance-of p1, p2, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneReconnect;

    if-eqz p1, :cond_4

    return-object v1

    .line 90
    :cond_4
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingBluetooth;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingBluetooth;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 91
    :cond_5
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningWireless;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningWireless;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x21

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 92
    :cond_6
    instance-of p1, p2, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    if-eqz p1, :cond_8

    .line 93
    check-cast p2, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneWifi;->getJoinedHotspot()Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x24

    goto :goto_0

    :cond_7
    const/16 p1, 0x23

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 94
    :cond_8
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WirelessActive;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WirelessActive;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x28

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v0

    .line 86
    :cond_a
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_2
    const/16 p1, 0xa

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 97
    :cond_c
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringMfi;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringMfi;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForMfi;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingMfiPermission;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingMfiPermission;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 98
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$MfiReady;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto/16 :goto_5

    .line 99
    :cond_d
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringIphone;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$DiscoveringIphone;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphone;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphone;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto/16 :goto_4

    .line 100
    :cond_e
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingIphonePermission;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RequestingIphonePermission;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 101
    :cond_f
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForReenumeration;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForReenumeration;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SelectingConfiguration;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$SelectingConfiguration;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_3

    .line 102
    :cond_10
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$OpeningDataPaths;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$OpeningDataPaths;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-object v1

    .line 103
    :cond_11
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingControl;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$ConnectingControl;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/16 p1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 104
    :cond_12
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneUnlock;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneUnlock;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-object v2

    .line 105
    :cond_13
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneTrust;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$WaitingForIphoneTrust;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/16 p1, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 106
    :cond_14
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Pairing;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$Pairing;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/16 p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 107
    :cond_15
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$AttachingNetwork;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$AttachingNetwork;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/16 p1, 0x14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 108
    :cond_16
    sget-object p1, Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningControl;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/CarPlayStatus$RunningControl;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/16 p1, 0x17

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_17
    return-object v0

    :cond_18
    :goto_3
    const/4 p1, 0x7

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_19
    :goto_4
    const/4 p1, 0x3

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1a
    :goto_5
    const/4 p1, 0x2

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
