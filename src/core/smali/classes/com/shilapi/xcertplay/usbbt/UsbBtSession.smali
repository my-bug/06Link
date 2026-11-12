.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtSession;
.super Ljava/lang/Object;
.source "UsbBtSession.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBtSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBtSession.kt\ncom/shilapi/xcertplay/usbbt/UsbBtSession\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,309:1\n295#2,2:310\n1869#2,2:313\n1#3:312\n*S KotlinDebug\n*F\n+ 1 UsbBtSession.kt\ncom/shilapi/xcertplay/usbbt/UsbBtSession\n*L\n53#1:310,2\n139#1:313,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001EB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u001a\u001a\u00020\u000e2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\rJ\u001a\u0010\u001c\u001a\u00020\u000e2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\rJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0016\u0010!\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u001eJ\u0016\u0010#\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u001eJ\u000e\u0010\'\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u0014J\u0006\u0010)\u001a\u00020\u000eJ\u0006\u0010,\u001a\u00020\u000eJ\u000e\u0010/\u001a\u0002002\u0006\u0010\u001f\u001a\u00020 J\u0006\u00101\u001a\u00020\u000eJ\u0010\u00102\u001a\u00020\u000e2\u0006\u00103\u001a\u00020\u0007H\u0002J \u00105\u001a\u00020\u000e2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00172\u0006\u00109\u001a\u00020:H\u0002J\u0018\u0010;\u001a\u00020\u000e2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u0017H\u0002J\u000e\u0010<\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 J\u0008\u0010=\u001a\u0004\u0018\u00010>J\u0008\u0010?\u001a\u0004\u0018\u00010@J\u0008\u0010A\u001a\u0004\u0018\u00010@J\u000e\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020.R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010$\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010*\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0019R\u000e\u0010-\u001a\u00020.X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtSession;",
        "",
        "<init>",
        "()V",
        "driver",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;",
        "value",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
        "lastStatus",
        "getLastStatus",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
        "listeners",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "Lkotlin/Function1;",
        "",
        "iap2",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;",
        "getIap2",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;",
        "isRunning",
        "",
        "()Z",
        "connectedPeers",
        "",
        "getConnectedPeers",
        "()I",
        "addListener",
        "listener",
        "removeListener",
        "dongle",
        "Landroid/hardware/usb/UsbDevice;",
        "context",
        "Landroid/content/Context;",
        "hasPermission",
        "device",
        "requestPermission",
        "holders",
        "startedForCarPlay",
        "releaseGeneration",
        "hold",
        "startedHere",
        "markStartedForCarPlay",
        "holderCount",
        "getHolderCount",
        "release",
        "CARPLAY_RELEASE_GRACE_MILLIS",
        "",
        "start",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;",
        "stop",
        "publish",
        "status",
        "nextPeer",
        "openIap2To",
        "host",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost;",
        "handle",
        "identity",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;",
        "dropUnlessIap2Open",
        "hasPairedIphone",
        "reconnectPort",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;",
        "reconnectPairedIphone",
        "",
        "localAddress",
        "awaitReady",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;",
        "timeoutMillis",
        "StartResult",
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
.field public static final CARPLAY_RELEASE_GRACE_MILLIS:J = 0xafc8L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

.field private static volatile driver:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

.field private static holders:I

.field private static final iap2:Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

.field private static volatile lastStatus:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static nextPeer:I

.field private static releaseGeneration:I

.field private static startedForCarPlay:Z


# direct methods
.method public static synthetic $r8$lambda$2cJB8ezjGlEOkHFHj_QKPrMlolc(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->openIap2To$lambda$13$lambda$11(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2fMuNoUEKtKXK6MyygBqCr9h-Fk(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;II)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->openIap2To$lambda$14(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CEKflgjWmm5L5Blbz0Eep0s2nCU(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;II)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->openIap2To$lambda$13$lambda$12(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J6TXmtS4tId26gxyh74OIWbTzkw(I)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->release$lambda$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SvmF5-Lm5xHKl-SOUPEG_tdI2wI(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->start$lambda$6(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kVd82rkvZ2vLj4uyrKcYxy9D_TI(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;ILjava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->openIap2To$lambda$13(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;ILjava/lang/Integer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qygrC0NlT436S2a3Z_X_qLHyzZA(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->start$lambda$7(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tDmz5-hxg5Tx7eG0dajpMyrlpqw()V
    .locals 0

    invoke-static {}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->publish$lambda$9()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 40
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->iap2:Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$publish(Lcom/shilapi/xcertplay/usbbt/UsbBtSession;Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    return-void
.end method

.method private final dropUnlessIap2Open(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I)V
    .locals 2

    .line 182
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->iap2:Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->getCurrent()Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 183
    :cond_0
    const-string v0, "06LinkUsbBt"

    const-string v1, "outgoing link: no iAP2 on it; dropping the link (the car pages again)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->dropLink(I)Z

    return-void
.end method

.method private final openIap2To(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;ILcom/shilapi/xcertplay/usbbt/UsbBtIdentity;)V
    .locals 2

    .line 154
    const-string p3, "06LinkUsbBt"

    const-string v0, "outgoing link ready: SDP query for the iPhone\'s iAP2 service"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance p3, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;->Companion:Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$Companion;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity$Companion;->getIAP2_IPHONE_UUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I)V

    invoke-direct {p3, v0, v1}, Lcom/shilapi/xcertplay/usbbt/SdpRfcommChannelQuery;-><init>(Ljava/util/UUID;Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Lcom/shilapi/xcertplay/usbbt/L2capService;

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I)V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, p3, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->openL2cap(IILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final openIap2To$lambda$13(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;ILjava/lang/Integer;)Lkotlin/Unit;
    .locals 4

    .line 156
    const-string v0, "06LinkUsbBt"

    if-nez p2, :cond_0

    .line 157
    const-string p2, "outgoing link: the iPhone lists no iAP2 RFCOMM channel"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object p2, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-direct {p2, p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->dropUnlessIap2Open(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I)V

    .line 159
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 161
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->iap2:Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->getCurrent()Lcom/shilapi/xcertplay/usbbt/RfcommDlc;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/RfcommDlc;->isOpen()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 162
    const-string p0, "outgoing link: iAP2 already open (the iPhone opened it); not opening a second one"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 165
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "outgoing link: the iPhone\'s iAP2 is on RFCOMM channel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; connecting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$openIap2To$1$1;

    invoke-direct {v3, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$openIap2To$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v0, v2, v3, v1, p2}, Lcom/shilapi/xcertplay/usbbt/RfcommL2capService;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;)V

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/L2capService;

    .line 166
    new-instance p2, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda6;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I)V

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->openL2cap(IILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;)V

    .line 171
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openIap2To$lambda$13$lambda$11(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    const-string v0, "06LinkUsbBt"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openIap2To$lambda$13$lambda$12(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;II)Lkotlin/Unit;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "outgoing link: RFCOMM L2CAP connection refused result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "06LinkUsbBt"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object p2, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-direct {p2, p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->dropUnlessIap2Open(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I)V

    .line 170
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openIap2To$lambda$14(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;II)Lkotlin/Unit;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "outgoing link: SDP L2CAP connection refused result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "06LinkUsbBt"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object p2, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-direct {p2, p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->dropUnlessIap2Open(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;I)V

    .line 174
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    .locals 2

    .line 138
    sput-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->lastStatus:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01StartupHotspot;->onStatus(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V

    .line 139
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 313
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 139
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object p1

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->FAILED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda7;-><init>()V

    const-string/jumbo v1, "usb-bt-stop"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private static final publish$lambda$9()V
    .locals 1

    .line 141
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->stop()V

    return-void
.end method

.method private static final release$lambda$4(I)V
    .locals 2

    const-wide/32 v0, 0xafc8

    .line 95
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    monitor-enter v0

    .line 97
    :try_start_1
    sget v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->releaseGeneration:I

    if-ne p0, v1, :cond_1

    sget p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->holders:I

    if-gtz p0, :cond_1

    sget-boolean p0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->startedForCarPlay:Z

    if-nez p0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    const-string p0, "06LinkUsbBt"

    const-string/jumbo v1, "wireless CarPlay ended 45s ago; stopping USB Bluetooth"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->stop()V

    .line 100
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit v0

    return-void

    .line 97
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v0

    throw p0

    :catch_0
    return-void
.end method

.method private static final start$lambda$6(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const-string v0, "06LinkUsbBt"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final start$lambda$7(Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult;Lcom/shilapi/xcertplay/usbbt/UsbBtIdentity;I)Lkotlin/Unit;
    .locals 1

    .line 117
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    check-cast p0, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Started;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver$OpenResult$Started;->getDriver()Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->getHost()Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    move-result-object p0

    invoke-direct {v0, p0, p2, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->openIap2To(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;ILcom/shilapi/xcertplay/usbbt/UsbBtIdentity;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    .line 47
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final awaitReady(J)Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;
    .locals 4

    .line 233
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    .line 234
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    .line 235
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->lastStatus:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 236
    :goto_1
    sget-object p2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->DISCOVERABLE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->FAILED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->STOPPED:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 p1, 0x32

    .line 237
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    :goto_2
    return-object p1

    .line 239
    :cond_3
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->lastStatus:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getPhase()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    return-object p1

    :cond_5
    :goto_3
    sget-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;->IDLE:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Phase;

    return-object p1
.end method

.method public final dongle(Landroid/content/Context;)Landroid/hardware/usb/UsbDevice;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "usb"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/hardware/usb/UsbManager;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/hardware/usb/UsbManager;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v1, "<get-values>(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 310
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 53
    sget-object v3, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->INSTANCE:Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/transport/UsbBluetoothHci;->isBluetoothDongle(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 311
    :goto_1
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 51
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 54
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, p1

    :goto_3
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public final getConnectedPeers()I
    .locals 1

    .line 45
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->driver:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->getHost()Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->getConnectedPeers()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized getHolderCount()I
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    sget v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->holders:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getIap2()Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;
    .locals 1

    .line 40
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->iap2:Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    return-object v0
.end method

.method public final getLastStatus()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;
    .locals 1

    .line 36
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->lastStatus:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    return-object v0
.end method

.method public final hasPairedIphone(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->driver:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->getHost()Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->pairedAddresses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/PreferencesLinkKeyStore;->addresses()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final hasPermission(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 58
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized hold(Z)V
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    sget v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->holders:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->holders:I

    .line 80
    sget v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->releaseGeneration:I

    add-int/2addr v0, v1

    sput v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->releaseGeneration:I

    if-eqz p1, :cond_0

    .line 81
    sput-boolean v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->startedForCarPlay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final isRunning()Z
    .locals 3

    .line 42
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->driver:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->isRunning()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final localAddress()Ljava/lang/String;
    .locals 1

    .line 229
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->lastStatus:Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;->getController()Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtControllerInfo;->getAddress()Lcom/shilapi/xcertplay/usbbt/BdAddr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized markStartedForCarPlay()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 84
    :try_start_0
    sput-boolean v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->startedForCarPlay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final reconnectPairedIphone()Ljava/lang/String;
    .locals 5

    .line 220
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->driver:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->getHost()Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->getConnectedPeers()I

    move-result v2

    if-gtz v2, :cond_3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->isPaging()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->pairedAddresses()Ljava/util/List;

    move-result-object v2

    .line 223
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    .line 224
    :cond_2
    sget v3, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->nextPeer:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->nextPeer:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shilapi/xcertplay/usbbt/BdAddr;

    .line 225
    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->connectTo(Lcom/shilapi/xcertplay/usbbt/BdAddr;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/usbbt/BdAddr;->redacted()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final reconnectPort()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;
    .locals 2

    .line 196
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->driver:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->getHost()Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$reconnectPort$1;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtHost;)V

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnector$Port;

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 91
    :try_start_0
    sget v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->holders:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->holders:I

    .line 92
    :cond_0
    sget v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->holders:I

    if-gtz v0, :cond_2

    sget-boolean v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->startedForCarPlay:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    sget v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->releaseGeneration:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->releaseGeneration:I

    .line 94
    new-instance v2, Ljava/lang/Thread;

    .line 101
    new-instance v3, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$$ExternalSyntheticLambda2;-><init>(I)V

    const-string/jumbo v0, "usb-bt-release"

    .line 94
    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 92
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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

    .line 48
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestPermission(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized start(Landroid/content/Context;)Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult;
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;

    const-string/jumbo v1, "\u6b64\u7248\u672c\u4f7f\u7528\u539f\u8f66\u84dd\u7259"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession$StartResult$Failed;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 128
    :try_start_0
    sput-boolean v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->startedForCarPlay:Z

    .line 129
    sget v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->releaseGeneration:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->releaseGeneration:I

    .line 130
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->driver:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 131
    :try_start_1
    sput-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->driver:Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;

    .line 132
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->iap2:Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/UsbBtIap2Link;->reset()V

    .line 133
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->stop()V

    .line 134
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtDriver;->getHost()Lcom/shilapi/xcertplay/usbbt/UsbBtHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtHost;->getStatus()Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtSession;->publish(Lcom/shilapi/xcertplay/usbbt/UsbBtHost$Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
