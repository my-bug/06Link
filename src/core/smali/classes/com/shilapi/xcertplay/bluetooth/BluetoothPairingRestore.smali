.class public final Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore;
.super Ljava/lang/Object;
.source "BluetoothPairingRestore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$CarRadio;,
        Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$Plan;,
        Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$UsbRadio;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\r\u000e\u000fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore;",
        "",
        "<init>",
        "()V",
        "plan",
        "Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$Plan;",
        "vendorStack",
        "",
        "savedPhoneAddress",
        "",
        "usbLinkKeys",
        "",
        "donglePresent",
        "CarRadio",
        "UsbRadio",
        "Plan",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore;->INSTANCE:Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final plan(ZLjava/lang/String;IZ)Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$Plan;
    .locals 1

    .line 21
    new-instance v0, Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$Plan;

    if-nez p1, :cond_1

    .line 22
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$CarRadio;->ENABLE_AND_USE_SAVED:Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$CarRadio;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$CarRadio;->NONE:Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$CarRadio;

    :goto_1
    if-lez p3, :cond_2

    if-eqz p4, :cond_2

    .line 23
    sget-object p2, Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$UsbRadio;->START_AND_PAGE:Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$UsbRadio;

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$UsbRadio;->NONE:Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$UsbRadio;

    .line 21
    :goto_2
    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$Plan;-><init>(Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$CarRadio;Lcom/shilapi/xcertplay/bluetooth/BluetoothPairingRestore$UsbRadio;)V

    return-object v0
.end method
