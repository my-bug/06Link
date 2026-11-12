.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;
.super Ljava/lang/Object;
.source "UsbBtDriver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBtDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBtDriver.kt\ncom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n295#2,2:198\n1#3:200\n*S KotlinDebug\n*F\n+ 1 UsbBtDriver.kt\ncom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion\n*L\n172#1:198,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JL\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0014\u0008\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0016\u0008\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "open",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "identity",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;",
        "linkKeys",
        "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;",
        "extraServices",
        "",
        "",
        "Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "listener",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
        "",
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

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;-><init>()V

    return-void
.end method

.method public static synthetic open$default(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 169
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 165
    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;->open(Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final open(Landroid/hardware/usb/UsbManager;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbManager;",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;",
            "Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/shilapi/xcertplay/usbbt/L2capService;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;"
        }
    .end annotation

    const-string/jumbo v0, "usbManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkKeys"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraServices"

    move-object/from16 v9, p4

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 198
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 172
    sget-object v3, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->isBluetoothDongle(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    if-nez v1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$NoDongle;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$NoDongle;

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    return-object p1

    .line 173
    :cond_2
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$NeedsPermission;

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$NeedsPermission;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    return-object p1

    .line 174
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->hciInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    if-nez v3, :cond_4

    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$NoDongle;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$NoDongle;

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    return-object p1

    .line 175
    :cond_4
    sget-object v0, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-virtual {v0, v3}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->endpointsOf(Landroid/hardware/usb/UsbInterface;)Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Failed;

    const-string p2, "no-hci-endpoints"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Failed;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    return-object p1

    .line 176
    :cond_5
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->getAclIn()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v5

    if-nez v5, :cond_6

    new-instance p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Failed;

    const-string p2, "no-acl-in"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Failed;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    return-object p1

    .line 177
    :cond_6
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->getAclOut()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    if-nez v6, :cond_7

    new-instance p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Failed;

    const-string p2, "no-acl-out"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Failed;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    return-object p1

    .line 178
    :cond_7
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    if-nez v2, :cond_8

    new-instance p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Failed;

    const-string p2, "open-returned-null"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Failed;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    return-object p1

    :cond_8
    const/4 p1, 0x0

    .line 181
    invoke-virtual {v2, v3, p1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result p1

    .line 182
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v7

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "getDeviceName(...)"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p1, v7, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy;->onClaim(ZILjava/lang/String;)Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim;

    move-result-object p1

    .line 183
    instance-of v1, p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$DrivenByKernel;

    const-string v11, "06LinkUsbBt"

    if-eqz v1, :cond_9

    .line 184
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$Companion;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_1
    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$DrivenByKernel;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$DrivenByKernel;->getEvidence()Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;->describe()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not starting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (a kernel driver owns the dongle; not force-claiming)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v11, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance p2, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$DrivenByKernel;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Claim$DrivenByKernel;->getEvidence()Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$DrivenByKernel;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtClaimPolicy$Evidence;)V

    check-cast p2, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    return-object p2

    .line 189
    :cond_9
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->getEvents()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    const/4 v10, 0x0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v10}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;Lcom/shilapi/xcertplay/usbbt/LinkKeyStore;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p1, p5

    .line 190
    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->setExternalListener(Lkotlin/jvm/functions/Function1;)V

    .line 191
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci$Endpoints;->getEvents()Landroid/hardware/usb/UsbEndpoint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p1

    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p2

    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "starting: event mps="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " acl mps="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    # invokes: Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->begin()V
    invoke-static {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->access$begin(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V

    .line 193
    new-instance p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Started;

    invoke-direct {p1, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Started;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;)V

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;

    return-object p1
.end method
