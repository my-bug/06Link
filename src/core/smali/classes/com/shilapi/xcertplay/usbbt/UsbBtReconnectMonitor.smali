.class public final Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;
.super Ljava/lang/Object;
.source "UsbBtReconnect.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbBtReconnect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbBtReconnect.kt\ncom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n1869#2:317\n1870#2:319\n1#3:318\n*S KotlinDebug\n*F\n+ 1 UsbBtReconnect.kt\ncom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor\n*L\n288#1:317\n288#1:319\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\r\u001a\u00020\u000c2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000c0\u000bJ\u001a\u0010\u000f\u001a\u00020\u000c2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000c0\u000bJ\u001a\u0010\u0010\u001a\u00020\u00052\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bJ \u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u000e\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001eJ\u0018\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0006\u0010!\u001a\u00020\u0005J\r\u0010\"\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008#R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000c0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;",
        "",
        "<init>",
        "()V",
        "value",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;",
        "status",
        "getStatus",
        "()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;",
        "listeners",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "Lkotlin/Function1;",
        "",
        "addListener",
        "listener",
        "removeListener",
        "update",
        "change",
        "waiting",
        "nowMillis",
        "",
        "wifiOn",
        "",
        "ssid",
        "",
        "won",
        "path",
        "Lcom/shilapi/xcertplay/usbbt/ReconnectPath;",
        "dongle",
        "state",
        "Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;",
        "wifi",
        "on",
        "clearWait",
        "reset",
        "reset$shared_release",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;

.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile status:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;


# direct methods
.method public static synthetic $r8$lambda$8nayHgyn3-AO1MgqPB71irvxcoI(Lcom/shilapi/xcertplay/usbbt/ReconnectPath;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->won$lambda$3(Lcom/shilapi/xcertplay/usbbt/ReconnectPath;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MPYKVrT_BQUEfgJGDzH-Vvf3AM4(Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->dongle$lambda$4(Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W4Eo7L7q4YBueSPCPsaOaFM14Sw(JZLjava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->waiting$lambda$2(JZLjava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bpBfyc2AGhAe6_AX_3UcVdf9owc(ZLjava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->wifi$lambda$5(ZLjava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wPGZPd0rPH66pqyc5o48MVbFGeI(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->clearWait$lambda$6(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->INSTANCE:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;

    .line 278
    new-instance v1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;-><init>(Ljava/lang/Long;ZLjava/lang/String;IZLjava/lang/Long;Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/ReconnectPath;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    .line 279
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final clearWait$lambda$6(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 12

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xc0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    .line 310
    invoke-static/range {v1 .. v11}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;Ljava/lang/Long;ZLjava/lang/String;IZLjava/lang/Long;Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/ReconnectPath;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method private static final dongle$lambda$4(Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 12

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xbf

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    move-object v1, p1

    .line 301
    invoke-static/range {v1 .. v11}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;Ljava/lang/Long;ZLjava/lang/String;IZLjava/lang/Long;Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/ReconnectPath;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method private static final waiting$lambda$2(JZLjava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 11

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWaitingSinceMillis()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 296
    sget-object v7, Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;->OK:Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;

    invoke-virtual {p4}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWaitingSinceMillis()Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getWonBy()Lcom/shilapi/xcertplay/usbbt/ReconnectPath;

    move-result-object p0

    :goto_0
    move-object v8, p0

    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p3

    move-object v0, p4

    .line 295
    invoke-static/range {v0 .. v10}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;Ljava/lang/Long;ZLjava/lang/String;IZLjava/lang/Long;Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/ReconnectPath;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method private static final wifi$lambda$5(ZLjava/lang/String;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 11

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->getSsid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    const/16 v9, 0xf9

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p0

    move-object v0, p2

    invoke-static/range {v0 .. v10}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;Ljava/lang/Long;ZLjava/lang/String;IZLjava/lang/Long;Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/ReconnectPath;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

    return-object p0
.end method

.method private static final won$lambda$3(Lcom/shilapi/xcertplay/usbbt/ReconnectPath;Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 12

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x46

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, p0

    move-object v1, p1

    .line 299
    invoke-static/range {v1 .. v11}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;->copy$default(Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;Ljava/lang/Long;ZLjava/lang/String;IZLjava/lang/Long;Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/ReconnectPath;ILjava/lang/Object;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p0

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
            "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearWait()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 1

    .line 309
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->update(Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object v0

    return-object v0
.end method

.method public final dongle(Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;)V

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->update(Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p1

    return-object p1
.end method

.method public final getStatus()Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 1

    .line 278
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    return-object v0
.end method

.method public final removeListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final reset$shared_release()V
    .locals 11

    .line 314
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;-><init>(Ljava/lang/Long;ZLjava/lang/String;IZLjava/lang/Long;Lcom/shilapi/xcertplay/usbbt/UsbBtDongleState;Lcom/shilapi/xcertplay/usbbt/ReconnectPath;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public final declared-synchronized update(Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;",
            ">;)",
            "Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    .line 286
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    sput-object p1, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->status:Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    .line 288
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 317
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 288
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 290
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final waiting(JZLjava/lang/String;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 1

    .line 294
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda2;-><init>(JZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->update(Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p1

    return-object p1
.end method

.method public final wifi(ZLjava/lang/String;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 1

    .line 303
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda3;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->update(Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p1

    return-object p1
.end method

.method public final won(Lcom/shilapi/xcertplay/usbbt/ReconnectPath;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/usbbt/ReconnectPath;)V

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectMonitor;->update(Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/usbbt/UsbBtReconnectStatus;

    move-result-object p1

    return-object p1
.end method
