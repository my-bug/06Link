.class public final Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;
.super Ljava/lang/Object;
.source "UsbBluetoothDiscoverable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;,
        Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBluetoothDiscoverable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBluetoothDiscoverable.kt\ncom/shilapi/xcertplay/UsbBluetoothDiscoverable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n1#2:95\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000b\u001a\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000c0\u000eJ\u001a\u0010\u000f\u001a\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000c0\u000eJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u000cJ\u0018\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;",
        "",
        "<init>",
        "()V",
        "lastStatus",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
        "getLastStatus",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
        "isRunning",
        "",
        "()Z",
        "addListener",
        "",
        "listener",
        "Lkotlin/Function1;",
        "removeListener",
        "start",
        "Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;",
        "context",
        "Landroid/content/Context;",
        "kernelDrivenText",
        "",
        "message",
        "stop",
        "describe",
        "status",
        "StartResult",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;->INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->addListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final describe(Landroid/content/Context;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)Ljava/lang/String;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 67
    const-string p1, ""

    return-object p1

    .line 68
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object v1

    sget-object v2, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v6, 0x4

    if-eq v1, v6, :cond_2

    const/4 v6, 0x5

    if-ne v1, v6, :cond_1

    .line 73
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_stopped:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 72
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_failed:I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getError()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v7, "?"

    :cond_3
    new-array v8, v5, [Ljava/lang/Object;

    aput-object v7, v8, v4

    invoke-virtual {p1, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_ready:I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v7, v8, v4

    invoke-virtual {p1, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_5
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_starting:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_0
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getController()Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getAddress()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_identity:I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_6
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getController()Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->describe()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_7
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPeer()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 78
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getAddress()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    :cond_8
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPairing()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-result-object v6

    sget-object v7, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->CONFIRMING:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    if-ne v6, v7, :cond_9

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getConfirmationText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    move-object v7, v0

    check-cast v7, Ljava/util/Collection;

    sget v8, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_code:I

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v4

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_9
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    .line 81
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPairing()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-result-object v7

    sget-object v8, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->FAILED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    if-ne v7, v8, :cond_b

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_pair_failed:I

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getFailure()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_a
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v7, v8, v4

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "0x%02x"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "format(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v7, v8, v4

    invoke-virtual {p1, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 82
    :cond_b
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPairing()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-result-object v7

    sget-object v8, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->PAIRED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    if-eq v7, v8, :cond_e

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPairing()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    move-result-object v7

    sget-object v8, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;->KEY_REUSED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Pairing;

    if-ne v7, v8, :cond_c

    goto :goto_2

    .line 83
    :cond_c
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getConnected()Z

    move-result v7

    if-eqz v7, :cond_d

    sget v7, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_connected:I

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 84
    :cond_d
    sget v7, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_disconnected:I

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 82
    :cond_e
    :goto_2
    sget v7, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_paired:I

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 80
    :goto_3
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getPsmsRefused()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_stage2_note:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_f
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$PeerStatus;->getConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->getIap2()Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->getCurrent()Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->isOpen()Z

    move-result v1

    if-ne v1, v5, :cond_10

    sget v1, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_iap2_open:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_10
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPairedDevices()I

    move-result v1

    if-lez v1, :cond_11

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_saved_pairings:I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPairedDevices()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_11
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string p1, "\n"

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLastStatus()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;
    .locals 1

    .line 28
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->getLastStatus()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 30
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final kernelDrivenText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;->evidenceIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;

    invoke-virtual {v1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;->usesSystemBluetooth(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_kernel_driven_system:I

    goto :goto_0

    .line 59
    :cond_1
    sget p2, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_kernel_driven_no_system:I

    :goto_0
    const/4 v1, 0x1

    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final removeListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->removeListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final start(Landroid/content/Context;)Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/hardware/usb/UsbManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    sget-object p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NoUsbHost;->INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NoUsbHost;

    check-cast p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;

    return-object p1

    .line 37
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->start(Landroid/content/Context;)Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;

    move-result-object v0

    .line 38
    instance-of v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Started;

    if-eqz v1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Started;->INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Started;

    check-cast p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;

    return-object p1

    .line 39
    :cond_2
    instance-of v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$AlreadyRunning;

    if-eqz v1, :cond_3

    sget-object p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;->INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$AlreadyRunning;

    check-cast p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;

    return-object p1

    .line 40
    :cond_3
    instance-of v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NoUsbHost;

    if-eqz v1, :cond_4

    sget-object p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NoUsbHost;->INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NoUsbHost;

    check-cast p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;

    return-object p1

    .line 41
    :cond_4
    instance-of v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NoDongle;

    if-eqz v1, :cond_5

    sget-object p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NoDongle;->INSTANCE:Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NoDongle;

    check-cast p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;

    return-object p1

    .line 42
    :cond_5
    instance-of v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NeedsPermission;

    if-eqz v1, :cond_6

    new-instance p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NeedsPermission;

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NeedsPermission;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$NeedsPermission;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$NeedsPermission;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;

    return-object p1

    .line 43
    :cond_6
    instance-of v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;

    const/4 v3, 0x2

    if-eqz v1, :cond_7

    new-instance p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v2, v3, v2}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;

    return-object p1

    .line 45
    :cond_7
    instance-of v1, v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$DrivenByKernel;

    if-eqz v1, :cond_8

    new-instance v1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;

    .line 47
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->usb_bt_kernel_driven_settings:I

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$DrivenByKernel;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$DrivenByKernel;->getEvidence()Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->getInterfaceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$DrivenByKernel;->getEvidence()Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 45
    const-string v0, "driven-by-kernel"

    invoke-direct {v1, v0, p1}, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult$Failed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/shilapi/xcertplay/UsbBluetoothDiscoverable$StartResult;

    return-object v1

    .line 37
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final stop()V
    .locals 1

    .line 63
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->stop()V

    return-void
.end method
