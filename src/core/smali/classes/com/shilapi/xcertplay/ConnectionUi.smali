.class public final Lcom/shilapi/xcertplay/ConnectionUi;
.super Ljava/lang/Object;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ConnectionUi$Button;,
        Lcom/shilapi/xcertplay/ConnectionUi$Card;,
        Lcom/shilapi/xcertplay/ConnectionUi$CardAction;,
        Lcom/shilapi/xcertplay/ConnectionUi$Dot;,
        Lcom/shilapi/xcertplay/ConnectionUi$Input;,
        Lcom/shilapi/xcertplay/ConnectionUi$Path;,
        Lcom/shilapi/xcertplay/ConnectionUi$Row;,
        Lcom/shilapi/xcertplay/ConnectionUi$RowAction;,
        Lcom/shilapi/xcertplay/ConnectionUi$Segments;,
        Lcom/shilapi/xcertplay/ConnectionUi$Tone;,
        Lcom/shilapi/xcertplay/ConnectionUi$Ui;,
        Lcom/shilapi/xcertplay/ConnectionUi$WhenMappings;,
        Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionFlow.kt\ncom/shilapi/xcertplay/ConnectionUi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,535:1\n1#2:536\n1563#3:537\n1634#3,3:538\n*S KotlinDebug\n*F\n+ 1 ConnectionFlow.kt\ncom/shilapi/xcertplay/ConnectionUi\n*L\n507#1:537\n507#1:538,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u000c$%&\'()*+,-./B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007J(\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\tH\u0002J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J&\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00182\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\tH\u0002J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001dJ\u001e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020 \u00a8\u00060"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionUi;",
        "",
        "<init>",
        "()V",
        "phase",
        "Lcom/shilapi/xcertplay/ConnectionProgress$Phase;",
        "input",
        "Lcom/shilapi/xcertplay/ConnectionUi$Input;",
        "waiting",
        "",
        "build",
        "Lcom/shilapi/xcertplay/ConnectionUi$Ui;",
        "context",
        "Landroid/content/Context;",
        "card",
        "Lcom/shilapi/xcertplay/ConnectionUi$Card;",
        "wirelessCard",
        "row",
        "Lcom/shilapi/xcertplay/ConnectionUi$Row;",
        "wifiCardButton",
        "Lcom/shilapi/xcertplay/ConnectionUi$Button;",
        "p",
        "Lcom/shilapi/xcertplay/ConnectionProgress$State;",
        "quickSwitchButtons",
        "",
        "retryFallback",
        "wifiPath",
        "Lcom/shilapi/xcertplay/ConnectionUi$Path;",
        "r",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;",
        "bluetoothPath",
        "now",
        "",
        "mmss",
        "",
        "millis",
        "WirelessReady",
        "CardAction",
        "RowAction",
        "Tone",
        "Dot",
        "Card",
        "Path",
        "Segments",
        "Button",
        "Row",
        "Ui",
        "Input",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/ConnectionUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/ConnectionUi;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionUi;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionUi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final card(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionUi$Input;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;Z)Lcom/shilapi/xcertplay/ConnectionUi$Card;
    .locals 11

    .line 373
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getProgress()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    .line 374
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p3, v1, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v1

    if-ne v1, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 375
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getWirelessIdleHint()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v6, v4

    goto :goto_3

    .line 376
    :cond_1
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getIphoneOnUsb()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->card_hint_iphone_on_usb:I

    goto :goto_2

    :cond_2
    sget v4, Lcom/shilapi/xcertplay/host/R$string;->tile_wired_hint:I

    :goto_2
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :goto_3
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v7, 0x2

    if-eqz v1, :cond_9

    .line 377
    sget-object p4, Lcom/shilapi/xcertplay/ConnectionUi$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result p3

    aget p3, p4, p3

    if-eq p3, v2, :cond_8

    if-eq p3, v7, :cond_7

    if-eq p3, v5, :cond_5

    if-eq p3, v4, :cond_4

    const/4 p1, 0x5

    if-eq p3, p1, :cond_3

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 382
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 383
    const-string p2, "not mine"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    move-object p2, v0

    .line 382
    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi$Card;

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->card_hint_stuck:I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    invoke-static {p1, p3, p4}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->card_stuck:I

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->NONE:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/ConnectionUi$Card;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V

    return-object v0

    .line 380
    :cond_5
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionUi$Card;

    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/ConnectionUi;->waiting(Lcom/shilapi/xcertplay/ConnectionUi$Input;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->card_hint_waiting:I

    goto :goto_4

    :cond_6
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->card_hint_connecting:I

    :goto_4
    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 381
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->card_reconnecting:I

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->NONE:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    const/4 v3, 0x0

    .line 380
    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/ConnectionUi$Card;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V

    return-object v1

    .line 379
    :cond_7
    new-instance v2, Lcom/shilapi/xcertplay/ConnectionUi$Card;

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->card_hint_connecting:I

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->card_connecting:I

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p1, p3, p4}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->NONE:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    const/4 v4, 0x0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/ConnectionUi$Card;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V

    return-object v2

    :cond_8
    const/4 v0, 0x0

    .line 378
    new-instance v3, Lcom/shilapi/xcertplay/ConnectionUi$Card;

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->carplay_connected:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->open_carplay:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    sget-object v8, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->OPEN_CARPLAY:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/shilapi/xcertplay/ConnectionUi$Card;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V

    return-object v3

    :cond_9
    const/4 v0, 0x0

    .line 386
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-eq p3, v1, :cond_10

    sget-object v1, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->RECONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne p3, v1, :cond_a

    goto/16 :goto_6

    :cond_a
    if-eqz p4, :cond_f

    .line 388
    sget-object p4, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-eq p3, p4, :cond_f

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getWirelessReady()Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    move-result-object p2

    sget-object p3, Lcom/shilapi/xcertplay/ConnectionUi$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->ordinal()I

    move-result p2

    aget p2, p3, p2

    if-eq p2, v2, :cond_e

    if-eq p2, v7, :cond_d

    if-eq p2, v5, :cond_c

    if-ne p2, v4, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_c
    const/4 p2, 0x0

    .line 391
    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi$Card;

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->wl_not_paired:I

    new-array p4, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p4}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->wl_pair:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p2}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->PAIR:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/ConnectionUi$Card;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V

    return-object v0

    :cond_d
    const/4 p2, 0x0

    .line 390
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionUi$Card;

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->wl_receiver_not_allowed:I

    new-array p4, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p4}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->wl_allow:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p2}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->ALLOW:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/ConnectionUi$Card;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V

    return-object v1

    :cond_e
    const/4 p2, 0x0

    .line 389
    new-instance v2, Lcom/shilapi/xcertplay/ConnectionUi$Card;

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->wl_no_receiver:I

    new-array p4, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p4}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->wl_how:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p2}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->HOW:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    const/4 v4, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/shilapi/xcertplay/ConnectionUi$Card;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V

    return-object v2

    :cond_f
    :goto_5
    const/4 p2, 0x0

    .line 394
    new-instance v5, Lcom/shilapi/xcertplay/ConnectionUi$Card;

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->card_connect:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p2}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    sget-object v10, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->CONNECT:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/ConnectionUi$Card;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V

    return-object v5

    :cond_10
    :goto_6
    const/4 p2, 0x0

    .line 387
    new-instance v5, Lcom/shilapi/xcertplay/ConnectionUi$Card;

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->card_connect:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p2}, Lcom/shilapi/xcertplay/ConnectionUi;->card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/shilapi/xcertplay/ConnectionUi$CardAction;->NONE:Lcom/shilapi/xcertplay/ConnectionUi$CardAction;

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/ConnectionUi$Card;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shilapi/xcertplay/ConnectionUi$CardAction;)V

    return-object v5
.end method

.method private static final varargs card$s(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 372
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final quickSwitchButtons(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionProgress$State;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/shilapi/xcertplay/ConnectionProgress$State;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/ConnectionUi$Button;",
            ">;"
        }
    .end annotation

    .line 503
    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->getCurrent()Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;

    move-result-object v0

    .line 504
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/QuickSwitch;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/QuickSwitch;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;->getMode()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->getOverrideForThisConnection()Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;

    move-result-object v2

    :cond_1
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 504
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/shilapi/xcertplay/orchestration/QuickSwitch;->forNeverJoined(Lcom/shilapi/xcertplay/orchestration/WirelessHotspotMode;Z)Ljava/util/List;

    move-result-object v0

    .line 507
    check-cast v0, Ljava/lang/Iterable;

    .line 537
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 538
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "getString(...)"

    const/4 v5, 0x2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 539
    check-cast v2, Lcom/shilapi/xcertplay/orchestration/QuickSwitch$Kind;

    .line 507
    sget-object v6, Lcom/shilapi/xcertplay/ConnectionUi$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/orchestration/QuickSwitch$Kind;->ordinal()I

    move-result v2

    aget v2, v6, v2

    if-eq v2, v3, :cond_4

    if-ne v2, v5, :cond_3

    .line 510
    sget-object v2, Lcom/shilapi/xcertplay/ConnectionUi;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionUi;

    invoke-direct {v2, p1, p2}, Lcom/shilapi/xcertplay/ConnectionUi;->wifiCardButton(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionProgress$State;)Lcom/shilapi/xcertplay/ConnectionUi$Button;

    move-result-object v2

    goto :goto_2

    .line 507
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 509
    :cond_4
    new-instance v2, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    sget v5, Lcom/shilapi/xcertplay/host/R$string;->qs_wifi_direct:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->QS_WIFI_DIRECT:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-direct {v2, v5, v4, v3}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    .line 539
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 540
    :cond_5
    check-cast v1, Ljava/util/List;

    if-eqz p3, :cond_6

    .line 512
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p2, v5, :cond_6

    move-object p2, v1

    check-cast p2, Ljava/util/Collection;

    new-instance p3, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->setup_try_again:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->RETRY:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-direct {p3, p1, v0, v1}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1
.end method

.method public static synthetic row$default(Lcom/shilapi/xcertplay/ConnectionUi;Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionUi$Input;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;ILjava/lang/Object;)Lcom/shilapi/xcertplay/ConnectionUi$Row;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 397
    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/ConnectionUi;->phase(Lcom/shilapi/xcertplay/ConnectionUi$Input;)Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/ConnectionUi;->row(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionUi$Input;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;)Lcom/shilapi/xcertplay/ConnectionUi$Row;

    move-result-object p0

    return-object p0
.end method

.method private static final varargs row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 398
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final waiting(Lcom/shilapi/xcertplay/ConnectionUi$Input;)Z
    .locals 1

    .line 362
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getProgress()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getReconnect()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWaitingSinceMillis()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getProgress()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final wifiCardButton(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionProgress$State;)Lcom/shilapi/xcertplay/ConnectionUi$Button;
    .locals 2

    .line 496
    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWifiCardShown()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->qs_wifi_qr_hide:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->qs_wifi_qr:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->QS_WIFI_QR:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    return-object v0
.end method


# virtual methods
.method public final bluetoothPath(Landroid/content/Context;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;J)Lcom/shilapi/xcertplay/ConnectionUi$Path;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getDongle()Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;->MISSING:Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;

    const-string v2, "getString(...)"

    if-ne v0, v1, :cond_0

    new-instance p2, Lcom/shilapi/xcertplay/ConnectionUi$Path;

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->path_bt_unplugged:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->OFF:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    invoke-direct {p2, p1, p3}, Lcom/shilapi/xcertplay/ConnectionUi$Path;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$Dot;)V

    return-object p2

    .line 524
    :cond_0
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getDongle()Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;->NOT_AUTHORISED:Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;

    if-ne v0, v1, :cond_1

    new-instance p2, Lcom/shilapi/xcertplay/ConnectionUi$Path;

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->path_bt_not_allowed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->OFF:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    invoke-direct {p2, p1, p3}, Lcom/shilapi/xcertplay/ConnectionUi$Path;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$Dot;)V

    return-object p2

    .line 525
    :cond_1
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getPagingNow()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    new-instance p3, Lcom/shilapi/xcertplay/ConnectionUi$Path;

    sget p4, Lcom/shilapi/xcertplay/host/R$string;->path_bt_calling:I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getPages()I

    move-result p2

    invoke-static {p2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p1, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->CALLING:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    invoke-direct {p3, p1, p2}, Lcom/shilapi/xcertplay/ConnectionUi$Path;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$Dot;)V

    return-object p3

    .line 526
    :cond_2
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getPages()I

    move-result v0

    if-nez v0, :cond_3

    new-instance p2, Lcom/shilapi/xcertplay/ConnectionUi$Path;

    sget p3, Lcom/shilapi/xcertplay/host/R$string;->path_bt_soon:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->CALLING:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    invoke-direct {p2, p1, p3}, Lcom/shilapi/xcertplay/ConnectionUi$Path;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$Dot;)V

    return-object p2

    .line 527
    :cond_3
    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi$Path;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->path_bt_next:I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getPages()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->nextPageInSeconds(J)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v5, p3, v1

    aput-object p2, p3, v3

    invoke-virtual {p1, v4, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->OFF:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/ConnectionUi$Path;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$Dot;)V

    return-object v0
.end method

.method public final build(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionUi$Input;)Lcom/shilapi/xcertplay/ConnectionUi$Ui;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0, p2}, Lcom/shilapi/xcertplay/ConnectionUi;->phase(Lcom/shilapi/xcertplay/ConnectionUi$Input;)Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    .line 367
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionUi$Ui;

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/shilapi/xcertplay/ConnectionUi;->card(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionUi$Input;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;Z)Lcom/shilapi/xcertplay/ConnectionUi$Card;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/shilapi/xcertplay/ConnectionUi;->card(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionUi$Input;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;Z)Lcom/shilapi/xcertplay/ConnectionUi$Card;

    move-result-object v3

    .line 368
    invoke-virtual {p0, p1, p2, v0}, Lcom/shilapi/xcertplay/ConnectionUi;->row(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionUi$Input;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;)Lcom/shilapi/xcertplay/ConnectionUi$Row;

    move-result-object p1

    .line 367
    invoke-direct {v1, v2, v3, p1, v0}, Lcom/shilapi/xcertplay/ConnectionUi$Ui;-><init>(Lcom/shilapi/xcertplay/ConnectionUi$Card;Lcom/shilapi/xcertplay/ConnectionUi$Card;Lcom/shilapi/xcertplay/ConnectionUi$Row;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;)V

    return-object v1
.end method

.method public final mmss(J)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 531
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    const/16 v0, 0x3c

    int-to-long v0, v0

    .line 532
    div-long v2, p1, v0

    rem-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/16 v0, 0x30

    invoke-static {p1, p2, v0}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final phase(Lcom/shilapi/xcertplay/ConnectionUi$Input;)Lcom/shilapi/xcertplay/ConnectionProgress$Phase;
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getSessionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    return-object p1

    .line 354
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getSessionActive()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    return-object p1

    .line 356
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getProgress()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTED:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v0, v1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->RECONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    return-object p1

    .line 357
    :cond_2
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getProgress()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->IDLE:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v0, v1, :cond_3

    sget-object p1, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->CONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    return-object p1

    .line 358
    :cond_3
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getProgress()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPhase()Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    move-result-object p1

    return-object p1
.end method

.method public final row(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionUi$Input;Lcom/shilapi/xcertplay/ConnectionProgress$Phase;)Lcom/shilapi/xcertplay/ConnectionUi$Row;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "input"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "phase"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getProgress()Lcom/shilapi/xcertplay/ConnectionProgress$State;

    move-result-object v9

    .line 400
    sget-object v4, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/ConnectionSteps;->count(Z)I

    move-result v10

    .line 401
    sget-object v4, Lcom/shilapi/xcertplay/ConnectionSteps;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionSteps;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/ConnectionSteps;->of(Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v5

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    add-int/lit8 v6, v10, -0x1

    const/4 v12, 0x0

    invoke-static {v5, v12, v6}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shilapi/xcertplay/ConnectionSteps$Step;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/ConnectionSteps$Step;->getName()I

    move-result v4

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 402
    sget v5, Lcom/shilapi/xcertplay/host/R$string;->row_elapsed:I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v6

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStartedAt()J

    move-result-wide v13

    sub-long/2addr v6, v13

    const/16 v8, 0x3e8

    int-to-long v13, v8

    div-long/2addr v6, v13

    move-wide/from16 v16, v13

    const/4 v15, 0x0

    const-wide/16 v12, 0x0

    invoke-static {v6, v7, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v6, v7, v15

    invoke-static {v2, v5, v7}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 404
    new-instance v14, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStepsExpanded()Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->row_collapse:I

    goto :goto_0

    :cond_0
    sget v6, Lcom/shilapi/xcertplay/host/R$string;->row_all_steps:I

    :goto_0
    new-array v7, v15, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->ALL_STEPS:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-direct {v14, v6, v7, v15}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    .line 405
    new-instance v6, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->row_stop_reconnect:I

    new-array v8, v15, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->STOP_RECONNECT:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-direct {v6, v7, v8, v15}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    .line 406
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getReconnect()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object v7

    .line 407
    sget-object v8, Lcom/shilapi/xcertplay/ConnectionUi$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->ordinal()I

    move-result v18

    aget v8, v8, v18

    const/4 v15, 0x3

    move-wide/from16 v19, v12

    const-string v12, " \u00b7 "

    const/4 v13, 0x2

    if-eq v8, v11, :cond_22

    if-eq v8, v13, :cond_9

    if-eq v8, v15, :cond_9

    const/4 v1, 0x4

    if-eq v8, v1, :cond_3

    const/4 v1, 0x5

    if-ne v8, v1, :cond_2

    .line 410
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getIphoneAfterCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionUi$Row;

    sget-object v3, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->BUSY:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->row_iphone_after_cancel_title:I

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 411
    sget v5, Lcom/shilapi/xcertplay/host/R$string;->row_iphone_after_cancel_hint:I

    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 412
    new-instance v7, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->tile_wired_action:I

    new-array v9, v15, [Ljava/lang/Object;

    invoke-static {v2, v8, v9}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->RETRY:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-direct {v7, v2, v8, v11}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v7, 0x0

    move-object v2, v1

    .line 410
    invoke-direct/range {v2 .. v8}, Lcom/shilapi/xcertplay/ConnectionUi$Row;-><init>(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V

    return-object v2

    :cond_1
    const/4 v15, 0x0

    .line 413
    new-instance v3, Lcom/shilapi/xcertplay/ConnectionUi$Row;

    sget-object v4, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->INFO:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->row_idle_title:I

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v2, v1, v5}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->row_idle_hint:I

    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v2, v1, v6}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/shilapi/xcertplay/ConnectionUi$Row;-><init>(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V

    return-object v3

    .line 407
    :cond_2
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 436
    :cond_3
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStuckTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v3

    :goto_1
    new-array v3, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v1, v3, v15

    aput-object v4, v3, v11

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/Iterable;

    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/CharSequence;

    const/16 v23, 0x3e

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v24}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 437
    :cond_5
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionErrorText;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionErrorText;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v3

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v4

    .line 438
    sget-object v5, Lcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;->STALL:Lcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 437
    invoke-static/range {v1 .. v8}, Lcom/shilapi/xcertplay/ConnectionErrorText;->stepFailure$default(Lcom/shilapi/xcertplay/ConnectionErrorText;Landroid/content/Context;ZILcom/shilapi/xcertplay/orchestration/ConnectionError$FailureKind;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStuckTitle()Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v1, v4, v15

    aput-object v3, v4, v11

    .line 437
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/Iterable;

    .line 438
    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/CharSequence;

    const/16 v23, 0x3e

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v24}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v5, v1

    .line 442
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionError;

    sget-object v4, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_NEVER_JOINED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->codeOf(Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 443
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WL-10-CHANNEL"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 444
    :cond_6
    invoke-direct {v0, v2, v9, v11}, Lcom/shilapi/xcertplay/ConnectionUi;->quickSwitchButtons(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionProgress$State;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 445
    :cond_7
    new-array v1, v13, [Lcom/shilapi/xcertplay/ConnectionUi$Button;

    const/4 v15, 0x0

    aput-object v14, v1, v15

    new-instance v3, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->setup_try_again:I

    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v2, v4, v6}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->RETRY:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-direct {v3, v4, v6, v11}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    aput-object v3, v1, v11

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_3
    move-object v8, v1

    .line 446
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionUi$Row;

    sget-object v3, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->BAD:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    .line 447
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v4

    if-eqz v4, :cond_8

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->row_stuck_wl:I

    goto :goto_4

    :cond_8
    sget v4, Lcom/shilapi/xcertplay/host/R$string;->row_stuck_wd:I

    :goto_4
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v12, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v12, v15

    aput-object v7, v12, v11

    invoke-static {v2, v4, v12}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/shilapi/xcertplay/ConnectionUi$Segments;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v2

    invoke-direct {v7, v10, v2, v11}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;-><init>(IIZ)V

    move-object v2, v1

    .line 446
    invoke-direct/range {v2 .. v8}, Lcom/shilapi/xcertplay/ConnectionUi$Row;-><init>(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V

    return-object v2

    .line 451
    :cond_9
    sget-object v8, Lcom/shilapi/xcertplay/ConnectionProgress$Phase;->RECONNECTING:Lcom/shilapi/xcertplay/ConnectionProgress$Phase;

    if-ne v3, v8, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_b

    move-object v8, v6

    goto :goto_6

    .line 452
    :cond_b
    new-instance v8, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    sget v15, Lcom/shilapi/xcertplay/host/R$string;->cancel:I

    const/4 v13, 0x0

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v2, v15, v11}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v15, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->CANCEL:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-direct {v8, v11, v15, v13}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    .line 453
    :goto_6
    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/ConnectionUi;->waiting(Lcom/shilapi/xcertplay/ConnectionUi$Input;)Z

    move-result v11

    if-eqz v11, :cond_12

    if-eqz v3, :cond_12

    .line 455
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWaitReason()Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    move-result-object v3

    sget-object v4, Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;->STARTUP:Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    .line 456
    :goto_7
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWaitReason()Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/ConnectionProgress$WaitReason;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    .line 459
    sget v4, Lcom/shilapi/xcertplay/host/R$string;->row_wait_reason_restart:I

    goto :goto_8

    .line 456
    :cond_d
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 458
    :cond_e
    sget v4, Lcom/shilapi/xcertplay/host/R$string;->row_wait_reason_lost:I

    goto :goto_8

    .line 457
    :cond_f
    sget v4, Lcom/shilapi/xcertplay/host/R$string;->row_wait_boot_reason:I

    :goto_8
    const/4 v15, 0x0

    .line 456
    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 461
    sget v5, Lcom/shilapi/xcertplay/host/R$string;->row_waited:I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWaitingSinceMillis()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_9

    :cond_10
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v10

    :goto_9
    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lcom/shilapi/xcertplay/ConnectionUi;->mmss(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v10, v15

    invoke-static {v2, v5, v10}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 462
    new-instance v23, Lcom/shilapi/xcertplay/ConnectionUi$Row;

    sget-object v24, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->BUSY:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    if-eqz v3, :cond_11

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->row_wait_boot_title:I

    goto :goto_a

    :cond_11
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->row_wait_title:I

    :goto_a
    new-array v8, v15, [Ljava/lang/Object;

    invoke-static {v2, v3, v8}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/4 v5, 0x2

    .line 463
    new-array v3, v5, [Lcom/shilapi/xcertplay/ConnectionUi$Path;

    invoke-virtual {v0, v2, v7}, Lcom/shilapi/xcertplay/ConnectionUi;->wifiPath(Landroid/content/Context;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/ConnectionUi$Path;

    move-result-object v4

    aput-object v4, v3, v15

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v8

    invoke-virtual {v0, v2, v7, v8, v9}, Lcom/shilapi/xcertplay/ConnectionUi;->bluetoothPath(Landroid/content/Context;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;J)Lcom/shilapi/xcertplay/ConnectionUi$Path;

    move-result-object v1

    const/16 v18, 0x1

    aput-object v1, v3, v18

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    new-array v1, v5, [Lcom/shilapi/xcertplay/ConnectionUi$Button;

    aput-object v14, v1, v15

    aput-object v6, v1, v18

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    const/16 v28, 0x0

    .line 462
    invoke-direct/range {v23 .. v29}, Lcom/shilapi/xcertplay/ConnectionUi$Row;-><init>(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V

    return-object v23

    :cond_12
    if-eqz v3, :cond_17

    .line 464
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWaited()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWaitingSinceMillis()Ljava/lang/Long;

    move-result-object v11

    if-nez v11, :cond_17

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWonBy()Lcom/shilapi/xcertplay/usbbt/ReconnectPath;

    move-result-object v11

    if-eqz v11, :cond_17

    .line 465
    invoke-virtual {v7}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWonBy()Lcom/shilapi/xcertplay/usbbt/ReconnectPath;

    move-result-object v1

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/ReconnectPath;->WIFI:Lcom/shilapi/xcertplay/usbbt/ReconnectPath;

    if-ne v1, v3, :cond_13

    const/4 v1, 0x1

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    .line 466
    :goto_b
    new-instance v23, Lcom/shilapi/xcertplay/ConnectionUi$Row;

    sget-object v24, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->BUSY:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->row_resumed_title:I

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    if-eqz v1, :cond_14

    .line 467
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->row_resumed_wifi:I

    goto :goto_c

    :cond_14
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->row_resumed_bt:I

    :goto_c
    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/4 v5, 0x2

    .line 468
    new-array v3, v5, [Lcom/shilapi/xcertplay/ConnectionUi$Path;

    new-instance v4, Lcom/shilapi/xcertplay/ConnectionUi$Path;

    if-eqz v1, :cond_15

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->ON:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    goto :goto_d

    :cond_15
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->OFF:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    :goto_d
    const-string v7, "Wi\u2011Fi"

    invoke-direct {v4, v7, v5}, Lcom/shilapi/xcertplay/ConnectionUi$Path;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$Dot;)V

    const/4 v15, 0x0

    aput-object v4, v3, v15

    new-instance v4, Lcom/shilapi/xcertplay/ConnectionUi$Path;

    sget v5, Lcom/shilapi/xcertplay/host/R$string;->path_short_bt:I

    new-array v7, v15, [Ljava/lang/Object;

    invoke-static {v2, v5, v7}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_16

    sget-object v1, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->OFF:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    goto :goto_e

    :cond_16
    sget-object v1, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->ON:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    :goto_e
    invoke-direct {v4, v2, v1}, Lcom/shilapi/xcertplay/ConnectionUi$Path;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$Dot;)V

    const/16 v18, 0x1

    aput-object v4, v3, v18

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    .line 469
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionUi$Segments;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v2

    const/4 v15, 0x0

    invoke-direct {v1, v10, v2, v15}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;-><init>(IIZ)V

    const/4 v5, 0x2

    new-array v2, v5, [Lcom/shilapi/xcertplay/ConnectionUi$Button;

    aput-object v14, v2, v15

    aput-object v6, v2, v18

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v28, v1

    .line 466
    invoke-direct/range {v23 .. v29}, Lcom/shilapi/xcertplay/ConnectionUi$Row;-><init>(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V

    return-object v23

    :cond_17
    if-eqz v3, :cond_18

    .line 472
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->row_reconnecting:I

    goto :goto_f

    .line 473
    :cond_18
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v3

    if-eqz v3, :cond_19

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->row_connecting_wl:I

    goto :goto_f

    .line 474
    :cond_19
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->row_connecting_wd:I

    .line 475
    :goto_f
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v15, v13

    const/16 v18, 0x1

    aput-object v11, v15, v18

    .line 471
    invoke-static {v2, v3, v15}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 477
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getNote()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/ConnectionUi;->waiting(Lcom/shilapi/xcertplay/ConnectionUi$Input;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v3

    invoke-virtual {v0, v2, v7, v3, v4}, Lcom/shilapi/xcertplay/ConnectionUi;->bluetoothPath(Landroid/content/Context;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;J)Lcom/shilapi/xcertplay/ConnectionUi$Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Path;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_1a
    move-object v4, v3

    .line 480
    :cond_1b
    :goto_10
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getHandled()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v1, v3, v15

    const/16 v18, 0x1

    aput-object v4, v3, v18

    const/16 v22, 0x2

    aput-object v5, v3, v22

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Ljava/lang/Iterable;

    move-object/from16 v27, v12

    check-cast v27, Ljava/lang/CharSequence;

    const/16 v33, 0x3e

    const/16 v34, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v26 .. v34}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 483
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory;->getCurrent()Lcom/shilapi/xcertplay/orchestration/WirelessLinkMemory$Broadcast;

    move-result-object v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_11

    :cond_1c
    const/4 v1, 0x0

    .line 484
    :goto_11
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v3

    const/16 v4, 0x20

    if-gt v4, v3, :cond_1d

    const/16 v4, 0x24

    if-ge v3, v4, :cond_1d

    const/4 v3, 0x1

    goto :goto_12

    :cond_1d
    const/4 v3, 0x0

    .line 485
    :goto_12
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionError;

    sget-object v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->IPHONE_NOT_ON_WIFI:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-virtual {v5, v6}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->codeOf(Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 486
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionError;

    sget-object v6, Lcom/shilapi/xcertplay/orchestration/SetupProblem;->WIRELESS_NEVER_JOINED:Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    invoke-virtual {v5, v6}, Lcom/shilapi/xcertplay/orchestration/ConnectionError;->codeOf(Lcom/shilapi/xcertplay/orchestration/SetupProblem;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 v4, 0x0

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v4, 0x1

    :goto_14
    if-eqz v1, :cond_21

    if-nez v3, :cond_20

    if-eqz v4, :cond_21

    .line 487
    :cond_20
    invoke-direct {v0, v2, v9}, Lcom/shilapi/xcertplay/ConnectionUi;->wifiCardButton(Landroid/content/Context;Lcom/shilapi/xcertplay/ConnectionProgress$State;)Lcom/shilapi/xcertplay/ConnectionUi$Button;

    move-result-object v14

    .line 488
    :cond_21
    new-instance v23, Lcom/shilapi/xcertplay/ConnectionUi$Row;

    sget-object v24, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->BUSY:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v27

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionUi$Segments;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getStep()I

    move-result v2

    const/4 v15, 0x0

    invoke-direct {v1, v10, v2, v15}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;-><init>(IIZ)V

    const/4 v5, 0x2

    new-array v2, v5, [Lcom/shilapi/xcertplay/ConnectionUi$Button;

    aput-object v14, v2, v15

    const/16 v18, 0x1

    aput-object v8, v2, v18

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v28, v1

    invoke-direct/range {v23 .. v29}, Lcom/shilapi/xcertplay/ConnectionUi$Row;-><init>(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V

    return-object v23

    .line 415
    :cond_22
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getPicture()Lcom/shilapi/xcertplay/ConnectionProgress$Picture;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    .line 418
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$Picture;->getFailedCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_25

    new-instance v23, Lcom/shilapi/xcertplay/ConnectionUi$Row;

    sget-object v24, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->BAD:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    .line 419
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v1

    if-eqz v1, :cond_23

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->row_stuck_wl:I

    goto :goto_15

    :cond_23
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->row_stuck_wd:I

    :goto_15
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x2

    new-array v6, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v6, v15

    const/16 v18, 0x1

    aput-object v5, v6, v18

    invoke-static {v2, v1, v6}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 420
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$Picture;->getFailedCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$Picture;->getFailedReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24

    const-string v3, ""

    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v27

    new-instance v1, Lcom/shilapi/xcertplay/ConnectionUi$Segments;

    const/4 v5, 0x1

    invoke-direct {v1, v10, v10, v5}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;-><init>(IIZ)V

    .line 421
    new-instance v3, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->setup_try_again:I

    const/4 v15, 0x0

    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v2, v4, v6}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->RETRY:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-direct {v3, v2, v4, v5}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v28, v1

    .line 418
    invoke-direct/range {v23 .. v29}, Lcom/shilapi/xcertplay/ConnectionUi$Row;-><init>(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V

    return-object v23

    .line 422
    :cond_25
    sget-object v5, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->BUSY:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v6

    if-eqz v6, :cond_26

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->row_connecting_wl:I

    goto :goto_16

    :cond_26
    sget v6, Lcom/shilapi/xcertplay/host/R$string;->row_connecting_wd:I

    :goto_16
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v13, 0x2

    new-array v11, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v11, v15

    const/16 v18, 0x1

    aput-object v8, v11, v18

    invoke-static {v2, v6, v11}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 423
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/ConnectionProgress$Picture;->getLine()Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->row_elapsed:I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v23

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getConnectedAt()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v25

    cmp-long v9, v25, v19

    if-lez v9, :cond_27

    move-object v4, v8

    :cond_27
    if-eqz v4, :cond_28

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_17

    :cond_28
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v8

    :goto_17
    sub-long v23, v23, v8

    div-long v8, v23, v16

    move-wide/from16 v0, v19

    invoke-static {v8, v9, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v0, v1, v15

    invoke-static {v2, v7, v1}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v5

    .line 424
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v3, v6

    new-instance v6, Lcom/shilapi/xcertplay/ConnectionUi$Segments;

    invoke-direct {v6, v10, v10, v15}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;-><init>(IIZ)V

    const/4 v13, 0x2

    new-array v1, v13, [Lcom/shilapi/xcertplay/ConnectionUi$Button;

    aput-object v14, v1, v15

    new-instance v7, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->cancel:I

    new-array v9, v15, [Ljava/lang/Object;

    invoke-static {v2, v8, v9}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->DISCONNECT:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-direct {v7, v2, v8, v15}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    const/16 v18, 0x1

    aput-object v7, v1, v18

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 422
    new-instance v1, Lcom/shilapi/xcertplay/ConnectionUi$Row;

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/ConnectionUi$Row;-><init>(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V

    return-object v1

    .line 425
    :cond_29
    move-object/from16 v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/ConnectionUi;

    .line 426
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getWireless()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->row_kind_wireless:I

    goto :goto_18

    :cond_2a
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->row_kind_wired:I

    :goto_18
    const/4 v15, 0x0

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getIphoneName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_19

    :cond_2b
    move-object v3, v4

    :goto_19
    if-eqz v3, :cond_2c

    sget v5, Lcom/shilapi/xcertplay/host/R$string;->row_connected_named:I

    const/4 v13, 0x2

    new-array v6, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v0, v6, v15

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v2, v5, v6}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2d

    goto :goto_1a

    :cond_2c
    const/4 v7, 0x1

    const/4 v15, 0x0

    .line 428
    :goto_1a
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->row_connected:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v15

    invoke-static {v2, v3, v5}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_2d
    move-object/from16 v25, v3

    .line 429
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v5

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getConnectedAt()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const-wide/16 v19, 0x0

    cmp-long v3, v7, v19

    if-lez v3, :cond_2e

    goto :goto_1b

    :cond_2e
    move-object v0, v4

    :goto_1b
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1c

    :cond_2f
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/ConnectionUi$Input;->getNow()J

    move-result-wide v0

    :goto_1c
    sub-long/2addr v5, v0

    const-wide/32 v0, 0xea60

    div-long/2addr v5, v0

    const-wide/16 v0, 0x1

    invoke-static {v5, v6, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 430
    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getFps()I

    move-result v0

    if-lez v0, :cond_31

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->row_connected_detail:I

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getFps()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/ConnectionProgress$State;->getHevc()Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, "H.265"

    goto :goto_1d

    :cond_30
    const-string v4, "H.264"

    :goto_1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v5, v15

    const/16 v18, 0x1

    aput-object v4, v5, v18

    const/16 v22, 0x2

    aput-object v1, v5, v22

    invoke-static {v2, v0, v5}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    :cond_31
    const/4 v15, 0x0

    :goto_1e
    move-object/from16 v26, v4

    .line 431
    new-instance v23, Lcom/shilapi/xcertplay/ConnectionUi$Row;

    sget-object v24, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->OK:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v27

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi$Button;

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->row_disconnect:I

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/shilapi/xcertplay/ConnectionUi;->row$s$0(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/ConnectionUi$RowAction;->DISCONNECT:Lcom/shilapi/xcertplay/ConnectionUi$RowAction;

    invoke-direct {v0, v1, v2, v15}, Lcom/shilapi/xcertplay/ConnectionUi$Button;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$RowAction;Z)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    const/16 v28, 0x0

    invoke-direct/range {v23 .. v29}, Lcom/shilapi/xcertplay/ConnectionUi$Row;-><init>(Lcom/shilapi/xcertplay/ConnectionUi$Tone;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/shilapi/xcertplay/ConnectionUi$Segments;Ljava/util/List;)V

    return-object v23
.end method

.method public final wifiPath(Landroid/content/Context;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/ConnectionUi$Path;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWifiOn()Z

    move-result v0

    const-string v1, "getString(...)"

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWaitingSinceMillis()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 519
    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi$Path;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->path_wifi_on:I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getSsid()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Wi\u2011Fi"

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->CALLING:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/ConnectionUi$Path;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$Dot;)V

    return-object v0

    .line 520
    :cond_1
    new-instance p2, Lcom/shilapi/xcertplay/ConnectionUi$Path;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->path_wifi_starting:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionUi$Dot;->OFF:Lcom/shilapi/xcertplay/ConnectionUi$Dot;

    invoke-direct {p2, p1, v0}, Lcom/shilapi/xcertplay/ConnectionUi$Path;-><init>(Ljava/lang/String;Lcom/shilapi/xcertplay/ConnectionUi$Dot;)V

    return-object p2
.end method
