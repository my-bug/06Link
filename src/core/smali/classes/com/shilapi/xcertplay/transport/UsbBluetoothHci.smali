.class public final Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;
.super Ljava/lang/Object;
.source "UsbBluetoothHci.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBluetoothHci.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBluetoothHci.kt\ncom/shilapi/xcertplay/transport/UsbBluetoothHci\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001*B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u0017J \u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0005J\"\u0010 \u001a\u0004\u0018\u00010\r2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0005J\u0016\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u0005J\u0016\u0010&\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u0005J\u0010\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010$\u001a\u00020\rJ\u000e\u0010)\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006+"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;",
        "",
        "<init>",
        "()V",
        "CLASS_WIRELESS",
        "",
        "SUBCLASS_RF",
        "PROTOCOL_BLUETOOTH",
        "HCI_COMMAND_REQUEST_TYPE",
        "HCI_COMMAND_REQUEST",
        "HCI_COMMAND_VALUE",
        "HCI_COMMAND_INDEX",
        "HCI_RESET",
        "",
        "getHCI_RESET",
        "()[B",
        "HCI_READ_BD_ADDR",
        "getHCI_READ_BD_ADDR",
        "isBluetoothDongle",
        "",
        "device",
        "Landroid/hardware/usb/UsbDevice;",
        "hciInterface",
        "Landroid/hardware/usb/UsbInterface;",
        "endpointsOf",
        "Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;",
        "iface",
        "sendCommand",
        "connection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "packet",
        "timeoutMs",
        "readEvent",
        "events",
        "Landroid/hardware/usb/UsbEndpoint;",
        "isCommandCompleteFor",
        "event",
        "opcode",
        "isCommandCompleteOk",
        "bdAddrColonFromCommandComplete",
        "",
        "opcodeOf",
        "Endpoints",
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
.field public static final CLASS_WIRELESS:I = 0xe0

.field private static final HCI_COMMAND_INDEX:I = 0x0

.field private static final HCI_COMMAND_REQUEST:I = 0x0

.field private static final HCI_COMMAND_REQUEST_TYPE:I = 0x20

.field private static final HCI_COMMAND_VALUE:I = 0x0

.field private static final HCI_READ_BD_ADDR:[B

.field private static final HCI_RESET:[B

.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

.field public static final PROTOCOL_BLUETOOTH:I = 0x1

.field public static final SUBCLASS_RF:I = 0x1


# direct methods
.method public static synthetic $r8$lambda$sT-tbdncaM92G6oOkjnSvCpPC-U([BI)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->bdAddrColonFromCommandComplete$lambda$1([BI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    const/4 v0, 0x3

    .line 39
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->HCI_RESET:[B

    .line 42
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->HCI_READ_BD_ADDR:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0xct
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x9t
        0x10t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final bdAddrColonFromCommandComplete$lambda$1([BI)Ljava/lang/CharSequence;
    .locals 2

    .line 134
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic readEvent$default(Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;IILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x3e8

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->readEvent(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sendCommand$default(Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;Landroid/hardware/usb/UsbDeviceConnection;[BIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x3e8

    .line 94
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->sendCommand(Landroid/hardware/usb/UsbDeviceConnection;[BI)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final bdAddrColonFromCommandComplete([B)Ljava/lang/String;
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->HCI_READ_BD_ADDR:[B

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->opcodeOf([B)I

    move-result v0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->isCommandCompleteOk([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    const/4 v1, 0x6

    .line 134
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, ":"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$$ExternalSyntheticLambda0;-><init>([B)V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final endpointsOf(Landroid/hardware/usb/UsbInterface;)Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;
    .locals 10

    const-string v0, "iface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_0
    if-ge v2, v0, :cond_4

    .line 79
    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    .line 80
    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x80

    if-eq v7, v8, :cond_1

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v7

    if-ne v7, v9, :cond_3

    if-nez v3, :cond_3

    move-object v3, v6

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v7

    if-ne v7, v9, :cond_2

    move-object v4, v6

    goto :goto_1

    :cond_2
    move-object v5, v6

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 87
    new-instance v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;

    invoke-direct {v0, p1, v3, v4, v5}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;-><init>(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    return-object v0

    :cond_5
    return-object v1
.end method

.method public final getHCI_READ_BD_ADDR()[B
    .locals 1

    .line 42
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->HCI_READ_BD_ADDR:[B

    return-object v0
.end method

.method public final getHCI_RESET()[B
    .locals 1

    .line 39
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->HCI_RESET:[B

    return-object v0
.end method

.method public final hciInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;
    .locals 8

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 61
    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    const-string v4, "getInterface(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const/16 v5, 0xe0

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 63
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 64
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 65
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v5

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v4, :cond_2

    if-eqz v6, :cond_3

    .line 68
    :cond_2
    invoke-virtual {p0, v3}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->endpointsOf(Landroid/hardware/usb/UsbInterface;)Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isBluetoothDongle(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->hciInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isCommandCompleteFor([BI)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    array-length v0, p1

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 116
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v2
.end method

.method public final isCommandCompleteOk([BI)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->isCommandCompleteFor([BI)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x5

    .line 123
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final opcodeOf([B)I
    .locals 2

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final readEvent(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;I)[B
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    const/16 v1, 0x104

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [B

    .line 106
    invoke-virtual {p1, p2, v1, v0, p3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 107
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final sendCommand(Landroid/hardware/usb/UsbDeviceConnection;[BI)I
    .locals 9

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 97
    array-length v7, p2

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v6, p2

    move v8, p3

    .line 95
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method
