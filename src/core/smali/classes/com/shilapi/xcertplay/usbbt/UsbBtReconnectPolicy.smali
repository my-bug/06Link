.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy;
.super Ljava/lang/Object;
.source "UsbBtReconnect.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;,
        Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy;",
        "",
        "<init>",
        "()V",
        "SHORT_DELAY_MILLIS",
        "",
        "OPEN_TIMEOUT_MILLIS",
        "decide",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;",
        "paired",
        "",
        "link",
        "Lcom/shilapi/xcertplay/usbbt/BtLinkState;",
        "iap2",
        "Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;",
        "reason",
        "Lcom/shilapi/xcertplay/usbbt/ReconnectReason;",
        "Decision",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy;

.field public static final OPEN_TIMEOUT_MILLIS:J = 0x4e20L

.field public static final SHORT_DELAY_MILLIS:J = 0x7d0L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decide(ZLcom/shilapi/xcertplay/usbbt/BtLinkState;Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;Lcom/shilapi/xcertplay/usbbt/ReconnectReason;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "link"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "iap2"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "reason"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v3, Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;->OPEN:Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;

    if-ne v1, v3, :cond_0

    new-instance v4, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    sget-object v5, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->USE_IAP2:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;-><init>(Lcom/shilapi/xcertplay/usbbt/ReconnectAction;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_0
    if-nez p1, :cond_2

    .line 78
    new-instance v5, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->NONE:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->ASK_TO_PAIR:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->WAIT:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    :goto_0
    move-object v6, v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;-><init>(Lcom/shilapi/xcertplay/usbbt/ReconnectAction;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 79
    :cond_2
    sget-object v3, Lcom/shilapi/xcertplay/usbbt/ReconnectReason;->IPHONE_CLOSED:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/ReconnectReason;->LINK_LOST:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x1

    .line 80
    :goto_2
    sget-object v5, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_d

    const/4 v4, 0x2

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x7d0

    if-eq v5, v4, :cond_b

    const/4 v4, 0x3

    if-eq v5, v4, :cond_6

    const/4 v4, 0x4

    if-ne v5, v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 84
    :cond_6
    :goto_3
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/ReconnectReason;->OPEN_TIMED_OUT:Lcom/shilapi/xcertplay/usbbt/ReconnectReason;

    if-ne v2, v4, :cond_7

    new-instance v10, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    sget-object v11, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->DROP_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;-><init>(Lcom/shilapi/xcertplay/usbbt/ReconnectAction;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    .line 85
    :cond_7
    sget-object v2, Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;->OPENING:Lcom/shilapi/xcertplay/usbbt/Iap2ChannelState;

    if-ne v1, v2, :cond_8

    new-instance v10, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    sget-object v11, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->WAIT:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;-><init>(Lcom/shilapi/xcertplay/usbbt/ReconnectAction;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    .line 86
    :cond_8
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/BtLinkState;->ENCRYPTED:Lcom/shilapi/xcertplay/usbbt/BtLinkState;

    if-ne v0, v1, :cond_a

    .line 87
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->OPEN_IAP2_ON_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    if-eqz v3, :cond_9

    move-wide v6, v8

    :cond_9
    invoke-direct {v0, v1, v6, v7}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;-><init>(Lcom/shilapi/xcertplay/usbbt/ReconnectAction;J)V

    return-object v0

    .line 89
    :cond_a
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->SECURE_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    invoke-direct {v0, v1, v8, v9}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;-><init>(Lcom/shilapi/xcertplay/usbbt/ReconnectAction;J)V

    return-object v0

    .line 82
    :cond_b
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->PAGE:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    if-eqz v3, :cond_c

    move-wide v6, v8

    :cond_c
    invoke-direct {v0, v1, v6, v7}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;-><init>(Lcom/shilapi/xcertplay/usbbt/ReconnectAction;J)V

    return-object v0

    .line 81
    :cond_d
    new-instance v8, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;

    sget-object v9, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->WAIT:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectPolicy$Decision;-><init>(Lcom/shilapi/xcertplay/usbbt/ReconnectAction;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method
