.class public final Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;
.super Ljava/lang/Object;
.source "UsbBluetoothSelfTest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBluetoothSelfTest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBluetoothSelfTest.kt\ncom/shilapi/xcertplay/transport/UsbBluetoothSelfTest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n295#2,2:134\n1#3:136\n*S KotlinDebug\n*F\n+ 1 UsbBluetoothSelfTest.kt\ncom/shilapi/xcertplay/transport/UsbBluetoothSelfTest\n*L\n56#1:134,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0005J<\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0014\u0008\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0016\u0008\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000fJ\"\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0015H\u0002\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;",
        "",
        "<init>",
        "()V",
        "fromLiveHost",
        "Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;",
        "address",
        "",
        "connections",
        "",
        "unavailable",
        "run",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "hasPermission",
        "Lkotlin/Function1;",
        "Landroid/hardware/usb/UsbDevice;",
        "",
        "open",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "sendAndAwait",
        "",
        "connection",
        "events",
        "Landroid/hardware/usb/UsbEndpoint;",
        "command",
        "Report",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic run$default(Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;Landroid/hardware/usb/UsbManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 53
    new-instance p2, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$run$1;

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$run$1;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 54
    new-instance p3, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$run$2;

    invoke-direct {p3, p1}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$run$2;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 51
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;->run(Landroid/hardware/usb/UsbManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    move-result-object p0

    return-object p0
.end method

.method private final sendAndAwait(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[B)[B
    .locals 7

    .line 123
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->sendCommand$default(Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;Landroid/hardware/usb/UsbDeviceConnection;[BIILjava/lang/Object;)I

    move-result p1

    const/4 p3, 0x0

    if-gez p1, :cond_0

    return-object p3

    .line 125
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-virtual {p1, v2}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->opcodeOf([B)I

    move-result p1

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v6, v0, :cond_3

    .line 127
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->readEvent$default(Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;IILjava/lang/Object;)[B

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-virtual {v0, p2, p1}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->isCommandCompleteFor([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move-object p2, v2

    goto :goto_0

    :cond_3
    return-object p3
.end method


# virtual methods
.method public final fromLiveHost(Ljava/lang/String;I)Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;
    .locals 12

    .line 35
    new-instance v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    const/4 v1, 0x1

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v1, 0x0

    .line 41
    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v10, 0x84

    const/4 v11, 0x0

    const/4 v1, 0x1

    .line 35
    const-string v2, "ok_in_use"

    const/4 v3, 0x0

    const-string v5, "in-use"

    const/4 v8, 0x0

    const-string v9, "live-host"

    move-object v6, p1

    invoke-direct/range {v0 .. v11}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final run(Landroid/hardware/usb/UsbManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/hardware/usb/UsbDevice;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/hardware/usb/UsbDevice;",
            "+",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            ">;)",
            "Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string/jumbo v3, "usbManager"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "hasPermission"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "open"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    const-string v4, "<get-values>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 134
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/hardware/usb/UsbDevice;

    .line 56
    sget-object v7, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->isBluetoothDongle(Landroid/hardware/usb/UsbDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    check-cast v4, Landroid/hardware/usb/UsbDevice;

    if-nez v4, :cond_2

    .line 57
    new-instance v6, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const/4 v7, 0x0

    const-string v8, "no_dongle"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "no-usb-bluetooth-dongle"

    invoke-direct/range {v6 .. v17}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 58
    :cond_2
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    new-instance v6, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    .line 62
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x78

    const/16 v17, 0x0

    const/4 v7, 0x0

    .line 59
    const-string v8, "needs_permission"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "needs-usb-permission"

    invoke-direct/range {v6 .. v17}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 67
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-virtual {v0, v4}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->hciInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    if-nez v3, :cond_4

    .line 68
    new-instance v6, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const/4 v7, 0x0

    const-string v8, "no_dongle"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "no-hci-interface"

    invoke-direct/range {v6 .. v17}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 69
    :cond_4
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->endpointsOf(Landroid/hardware/usb/UsbInterface;)Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;

    move-result-object v0

    if-nez v0, :cond_5

    .line 70
    new-instance v6, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    const/16 v16, 0xf8

    const/16 v17, 0x0

    const/4 v7, 0x0

    const-string v8, "open_failed"

    const-string v9, "no-hci-endpoints"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "open-failed:no-hci-endpoints"

    invoke-direct/range {v6 .. v17}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 71
    :cond_5
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v2, :cond_6

    .line 72
    new-instance v6, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    const/16 v16, 0xf8

    const/16 v17, 0x0

    const/4 v7, 0x0

    const-string v8, "open_failed"

    const-string v9, "open-returned-null"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "open-failed:open-returned-null"

    invoke-direct/range {v6 .. v17}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_6
    const/4 v6, 0x0

    .line 74
    :try_start_0
    invoke-virtual {v2, v3, v6}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v7

    if-nez v7, :cond_7

    .line 75
    new-instance v8, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    .line 77
    const-string v10, "kernel"

    .line 78
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    .line 79
    const-string v17, "driven-by-kernel"

    const/16 v18, 0xf8

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 75
    invoke-direct/range {v8 .. v19}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 113
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_1
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object v8

    .line 83
    :cond_7
    :try_start_3
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->getEvents()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    sget-object v7, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-virtual {v7}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->getHCI_RESET()[B

    move-result-object v7

    invoke-direct {v1, v2, v4, v7}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;->sendAndAwait(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[B)[B

    move-result-object v4

    if-nez v4, :cond_8

    .line 84
    new-instance v7, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    .line 86
    const-string v9, "ok"

    .line 87
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 88
    const-string v12, "no-command-complete-for-reset"

    .line 89
    const-string v16, "no-hci-response:reset"

    const/16 v17, 0xe4

    const/16 v18, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 84
    invoke-direct/range {v7 .. v18}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 113
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_3
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-object v7

    .line 91
    :cond_8
    :try_start_6
    sget-object v7, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    sget-object v8, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    sget-object v9, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-virtual {v9}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->getHCI_RESET()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->opcodeOf([B)I

    move-result v8

    invoke-virtual {v7, v4, v8}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->isCommandCompleteOk([BI)Z

    move-result v4

    if-nez v4, :cond_9

    .line 92
    new-instance v7, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    .line 94
    const-string v9, "ok"

    .line 95
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 96
    const-string v12, "reset-status-not-ok"

    .line 97
    const-string v16, "no-hci-response:reset-status"

    const/16 v17, 0xe4

    const/16 v18, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 92
    invoke-direct/range {v7 .. v18}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 113
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_5
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-object v7

    .line 101
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->getEvents()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    sget-object v4, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->getHCI_READ_BD_ADDR()[B

    move-result-object v4

    invoke-direct {v1, v2, v0, v4}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;->sendAndAwait(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[B)[B

    move-result-object v0

    if-eqz v0, :cond_a

    .line 102
    sget-object v4, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-virtual {v4, v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->bdAddrColonFromCommandComplete([B)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_7

    :cond_a
    move-object v10, v5

    .line 103
    :goto_7
    new-instance v4, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    const/4 v0, 0x0

    .line 105
    const-string v6, "ok"

    const/4 v7, 0x1

    .line 106
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 107
    const-string v9, "hci-ok"

    if-eqz v10, :cond_b

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_b
    move-object v11, v5

    if-eqz v10, :cond_c

    .line 110
    const-string v0, "hci-alive"

    goto :goto_8

    :cond_c
    const-string v0, "hci-alive-no-addr"

    :goto_8
    move-object v13, v0

    const/16 v14, 0x84

    const/4 v15, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 103
    invoke-direct/range {v4 .. v15}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 113
    :try_start_a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_9
    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    return-object v4

    :catchall_8
    move-exception v0

    move-object v4, v0

    .line 113
    :try_start_c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_b
    :try_start_d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    goto :goto_e

    :goto_d
    throw v4

    :goto_e
    goto :goto_d
.end method

.method public final unavailable()Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;
    .locals 12

    .line 45
    new-instance v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const/4 v1, 0x0

    const-string v2, "no_usb_host"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "no-usb-host"

    invoke-direct/range {v0 .. v11}, Lcom/shilapi/xcertplay/transport/UsbBluetoothSelfTest$Report;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
