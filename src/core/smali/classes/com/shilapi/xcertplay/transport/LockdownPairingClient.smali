.class public final Lcom/shilapi/xcertplay/transport/LockdownPairingClient;
.super Ljava/lang/Object;
.source "LockdownPairingClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Companion;,
        Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockdownPairingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockdownPairingClient.kt\ncom/shilapi/xcertplay/transport/LockdownPairingClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0002)*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JV\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0014\u0008\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0010J>\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0017H\u0002J6\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J6\u0010 \u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0010\u0010#\u001a\u0004\u0018\u00010$*\u0004\u0018\u00010!H\u0002J\u000e\u0010%\u001a\u0004\u0018\u00010\t*\u00020\u001dH\u0002J\u0016\u0010&\u001a\u00020\u00142\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0010\u0010\'\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u001e\u0010(\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownPairingClient;",
        "",
        "host",
        "Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)V",
        "pair",
        "Lcom/shilapi/xcertplay/transport/PairedRecord;",
        "label",
        "",
        "hostId",
        "systemBuid",
        "totalTimeoutMillis",
        "",
        "isCancelled",
        "Lkotlin/Function0;",
        "",
        "onWaiting",
        "Lkotlin/Function1;",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingWait;",
        "",
        "retryWhileLocked",
        "generatePairRecord",
        "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;",
        "channel",
        "Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;",
        "deadline",
        "Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;",
        "pairRequest",
        "Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;",
        "pairRecord",
        "setUntrustedHostBuid",
        "getValue",
        "Lcom/shilapi/xcertplay/transport/LockdownPlistValue;",
        "key",
        "asOptionalData",
        "",
        "errorCodeOrNull",
        "checkCancelled",
        "stepTimeoutMillis",
        "waitForRetry",
        "Deadline",
        "Companion",
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
.field private static final Companion:Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Companion;

.field public static final MAXIMUM_STEP_TIMEOUT_MILLIS:J = 0x1388L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAXIMUM_TOTAL_TIMEOUT_MILLIS:J = 0x493e0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NANOS_PER_MILLISECOND:J = 0xf4240L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RETRY_CHECK_MILLIS:J = 0x64L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RETRY_INTERVAL_MILLIS:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-usb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;


# direct methods
.method public static synthetic $r8$lambda$P5lvDvj2cD5qijeJ78xwBQ6tOv4(Lcom/shilapi/xcertplay/transport/LockdownPairingWait;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->pair$lambda$1(Lcom/shilapi/xcertplay/transport/LockdownPairingWait;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rIjTG2q90GJg3kkoCSjuT6Fotx4()Z
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->pair$lambda$0()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->Companion:Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    return-void
.end method

.method private final asOptionalData(Lcom/shilapi/xcertplay/transport/LockdownPlistValue;)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_0
    instance-of v0, p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 201
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;

    const-string v0, "EscrowBag was not data"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final checkCancelled(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 214
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/transport/LockdownPairingException$Cancelled;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairingException$Cancelled;

    throw p1
.end method

.method private final errorCodeOrNull(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;)Ljava/lang/String;
    .locals 3

    .line 205
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 206
    :cond_0
    instance-of v2, v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 207
    :cond_1
    instance-of v2, v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object p1

    const-string v2, "ErrorString"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return-object p1

    .line 208
    :cond_4
    :goto_0
    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Integer;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 209
    :cond_5
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;

    const-string v0, "Error was not text or integer"

    invoke-direct {p1, v0}, Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final generatePairRecord(Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/transport/LockdownPairRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/shilapi/xcertplay/transport/LockdownPairRecord;"
        }
    .end annotation

    .line 121
    const-string v3, "DevicePublicKey"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->getValue(Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    move-result-object p1

    instance-of p2, p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;

    const/4 p5, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;

    goto :goto_0

    :cond_0
    move-object p1, p5

    :goto_0
    if-eqz p1, :cond_3

    .line 124
    const-string v3, "WiFiAddress"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->getValue(Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    move-result-object p2

    instance-of p6, p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    if-eqz p6, :cond_1

    move-object p5, p2

    check-cast p5, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    :cond_1
    if-eqz p5, :cond_2

    .line 127
    sget-object p2, Lcom/shilapi/xcertplay/transport/LockdownPairRecordGenerator;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairRecordGenerator;

    .line 128
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Data;->getBytes()[B

    move-result-object p1

    .line 129
    invoke-virtual {p5}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;->getValue()Ljava/lang/String;

    move-result-object p5

    .line 127
    invoke-virtual {p2, p1, p5, p3, p4}, Lcom/shilapi/xcertplay/transport/LockdownPairRecordGenerator;->generate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    move-result-object p1

    return-object p1

    .line 126
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;

    const-string p2, "WiFiAddress was not text"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_3
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;

    const-string p2, "DevicePublicKey was not data"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getValue(Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/transport/LockdownPlistValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/shilapi/xcertplay/transport/LockdownPlistValue;"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p5}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->checkCancelled(Lkotlin/jvm/functions/Function0;)V

    .line 183
    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    const/4 v1, 0x3

    .line 185
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-direct {v2, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string p2, "Label"

    invoke-static {p2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 186
    new-instance p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    const-string v2, "GetValue"

    invoke-direct {p2, v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string v2, "Request"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 187
    new-instance p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-direct {p2, p3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string p3, "Key"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    .line 184
    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 183
    invoke-direct {v0, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;-><init>(Ljava/util/Map;)V

    .line 190
    invoke-direct {p0, p4}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->stepTimeoutMillis(Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;)J

    move-result-wide p2

    .line 182
    invoke-virtual {p1, v0, p2, p3}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->request(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object p1

    .line 192
    invoke-direct {p0, p5}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->checkCancelled(Lkotlin/jvm/functions/Function0;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->errorCodeOrNull(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 194
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object p1

    const-string p2, "Value"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    if-eqz p1, :cond_0

    return-object p1

    .line 195
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;

    const-string p2, "GetValue response omitted Value"

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPairingException$InvalidResponse;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_1
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPairingException$RemoteError;

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPairingException$RemoteError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic pair$default(Lcom/shilapi/xcertplay/transport/LockdownPairingClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/shilapi/xcertplay/transport/PairedRecord;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/IphoneUsbException;,
            Lcom/shilapi/xcertplay/transport/LockdownPairingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$$ExternalSyntheticLambda0;-><init>()V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$$ExternalSyntheticLambda1;-><init>()V

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    move/from16 v9, p8

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 26
    invoke-virtual/range {v1 .. v9}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->pair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)Lcom/shilapi/xcertplay/transport/PairedRecord;

    move-result-object p0

    return-object p0
.end method

.method private static final pair$lambda$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static final pair$lambda$1(Lcom/shilapi/xcertplay/transport/LockdownPairingWait;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final pairRequest(Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LockdownPairRecord;)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;
    .locals 5

    .line 138
    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    const/4 v1, 0x5

    .line 140
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-direct {v2, p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string p1, "Label"

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 141
    const-string p1, "PairRecord"

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->toPairRequestDictionary()Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 142
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    const-string v3, "Pair"

    invoke-direct {p1, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string v3, "Request"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v1, v3

    .line 143
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    const-string v3, "2"

    invoke-direct {p1, v3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string v3, "ProtocolVersion"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v1, v3

    .line 144
    new-instance p1, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    .line 145
    new-array v3, p2, [Lkotlin/Pair;

    new-instance v4, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;

    invoke-direct {v4, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Boolean;-><init>(Z)V

    const-string p2, "ExtendedPairingErrors"

    invoke-static {p2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-static {v3}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 144
    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;-><init>(Ljava/util/Map;)V

    const-string p2, "PairingOptions"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 139
    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 138
    invoke-direct {v0, p1}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private final setUntrustedHostBuid(Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p5}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->checkCancelled(Lkotlin/jvm/functions/Function0;)V

    .line 159
    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    const/4 v1, 0x4

    .line 161
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-direct {v2, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string p2, "Label"

    invoke-static {p2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 162
    new-instance p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    const-string v2, "SetValue"

    invoke-direct {p2, v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string v2, "Request"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 163
    new-instance p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    const-string v2, "UntrustedHostBUID"

    invoke-direct {p2, v2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string v2, "Key"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 164
    new-instance p2, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;

    invoke-direct {p2, p3}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Text;-><init>(Ljava/lang/String;)V

    const-string p3, "Value"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    .line 160
    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 159
    invoke-direct {v0, p2}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;-><init>(Ljava/util/Map;)V

    .line 167
    invoke-direct {p0, p4}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->stepTimeoutMillis(Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;)J

    move-result-wide p2

    .line 158
    invoke-virtual {p1, v0, p2, p3}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->request(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object p1

    .line 169
    invoke-direct {p0, p5}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->checkCancelled(Lkotlin/jvm/functions/Function0;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->errorCodeOrNull(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 171
    const-string/jumbo p1, "xcertplay-usb"

    const-string p2, "lockdown UntrustedHostBUID set"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 170
    :cond_0
    new-instance p2, Lcom/shilapi/xcertplay/transport/LockdownPairingException$RemoteError;

    invoke-direct {p2, p1}, Lcom/shilapi/xcertplay/transport/LockdownPairingException$RemoteError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final stepTimeoutMillis(Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;)J
    .locals 4

    const-wide/16 v0, 0x1388

    .line 218
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;->remainingMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final waitForRetry(Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 223
    invoke-direct {p0, p2}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->checkCancelled(Lkotlin/jvm/functions/Function0;)V

    .line 224
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;->remainingMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 226
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v0, v2

    goto :goto_0

    .line 228
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 229
    sget-object p1, Lcom/shilapi/xcertplay/transport/LockdownPairingException$Cancelled;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairingException$Cancelled;

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public final pair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)Lcom/shilapi/xcertplay/transport/PairedRecord;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/shilapi/xcertplay/transport/LockdownPairingWait;",
            "Lkotlin/Unit;",
            ">;Z)",
            "Lcom/shilapi/xcertplay/transport/PairedRecord;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shilapi/xcertplay/transport/IphoneUsbException;,
            Lcom/shilapi/xcertplay/transport/LockdownPairingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    const-string v2, "label"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "hostId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "systemBuid"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "isCancelled"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onWaiting"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 41
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 42
    move-object v2, v4

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-wide/16 v9, 0x1

    cmp-long v2, v9, v5

    if-gtz v2, :cond_7

    const-wide/32 v9, 0x493e1

    cmp-long v2, v5, v9

    if-gez v2, :cond_7

    .line 47
    new-instance v2, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;

    invoke-direct {v2, v5, v6}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;-><init>(J)V

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 54
    :goto_0
    :try_start_0
    invoke-direct {v1, v7}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->checkCancelled(Lkotlin/jvm/functions/Function0;)V

    add-int/lit8 v12, v5, 0x1

    .line 56
    iget-object v5, v1, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->host:Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;

    .line 58
    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->stepTimeoutMillis(Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;)J

    move-result-wide v13

    const v6, 0xf27e

    .line 56
    invoke-virtual {v5, v6, v13, v14}, Lcom/shilapi/xcertplay/transport/Iap2UsbMuxHost;->connect(IJ)Lcom/shilapi/xcertplay/transport/Iap2UsbMuxTcpConnection;

    move-result-object v5

    .line 61
    new-instance v13, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;

    move-object v14, v5

    check-cast v14, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v13 .. v19}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;-><init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v13, Ljava/io/Closeable;
    :try_end_0
    .catch Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v2

    :try_start_1
    move-object v2, v13

    check-cast v2, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;

    move-object v6, v7

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->setUntrustedHostBuid(Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    const-string/jumbo v14, "xcertplay-usb"

    if-nez v10, :cond_0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p6

    move-object v4, v0

    move-object v6, v5

    move-object/from16 v5, p3

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->generatePairRecord(Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;Lkotlin/jvm/functions/Function0;)Lcom/shilapi/xcertplay/transport/LockdownPairRecord;

    move-result-object v10

    move-object v5, v6

    .line 75
    invoke-virtual {v10}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getDevicePublicKeyPem()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getDeviceCertificatePem()[B

    move-result-object v4

    array-length v4, v4

    .line 76
    invoke-virtual {v10}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getHostCertificatePem()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v10}, Lcom/shilapi/xcertplay/transport/LockdownPairRecord;->getRootCertificatePem()[B

    move-result-object v15

    array-length v15, v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p5, v10

    const-string v10, "lockdown pair prepared hostId=uuid systemBuid=uuid deviceKey="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " deviceCert="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hostCert="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rootCert="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p5

    goto :goto_1

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p6

    .line 79
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lockdown pair attempt="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {v1, v3, v10}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->pairRequest(Ljava/lang/String;Lcom/shilapi/xcertplay/transport/LockdownPairRecord;)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object v0

    invoke-direct {v1, v5}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->stepTimeoutMillis(Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;)J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/shilapi/xcertplay/transport/LockdownPlistChannel;->request(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;J)Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;

    move-result-object v0

    .line 81
    invoke-direct {v1, v7}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->checkCancelled(Lkotlin/jvm/functions/Function0;)V

    .line 82
    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->errorCodeOrNull(Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, -0x59e8aa1a

    if-eq v0, v3, :cond_4

    const v3, -0x3bd030cd

    if-eq v0, v3, :cond_2

    const v3, -0x40ac37e

    if-ne v0, v3, :cond_5

    const-string v0, "UserDeniedPairing"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 89
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/transport/LockdownPairingException$UserDeniedPairing;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairingException$UserDeniedPairing;

    throw v0

    .line 82
    :cond_2
    const-string v0, "PasswordProtected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p8, :cond_3

    .line 92
    sget-object v11, Lcom/shilapi/xcertplay/transport/LockdownPairingWait;->UNLOCK:Lcom/shilapi/xcertplay/transport/LockdownPairingWait;

    .line 93
    sget-object v0, Lcom/shilapi/xcertplay/transport/LockdownPairingWait;->UNLOCK:Lcom/shilapi/xcertplay/transport/LockdownPairingWait;

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 95
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/transport/LockdownPairingException$PasswordProtected;->INSTANCE:Lcom/shilapi/xcertplay/transport/LockdownPairingException$PasswordProtected;

    throw v0

    .line 82
    :cond_4
    const-string v0, "PairingDialogResponsePending"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    sget-object v11, Lcom/shilapi/xcertplay/transport/LockdownPairingWait;->TRUST:Lcom/shilapi/xcertplay/transport/LockdownPairingWait;

    .line 87
    sget-object v0, Lcom/shilapi/xcertplay/transport/LockdownPairingWait;->TRUST:Lcom/shilapi/xcertplay/transport/LockdownPairingWait;

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 61
    :try_start_3
    invoke-static {v13, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 101
    const-string v0, "lockdown trust pending; reconnecting before retry"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {v1, v5, v7}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->waitForRetry(Lcom/shilapi/xcertplay/transport/LockdownPairingClient$Deadline;Lkotlin/jvm/functions/Function0;)V
    :try_end_3
    .catch Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    move-object v2, v5

    move v5, v12

    goto/16 :goto_0

    .line 97
    :cond_5
    :goto_3
    :try_start_4
    new-instance v0, Lcom/shilapi/xcertplay/transport/LockdownPairingException$RemoteError;

    invoke-direct {v0, v2}, Lcom/shilapi/xcertplay/transport/LockdownPairingException$RemoteError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_6
    new-instance v2, Lcom/shilapi/xcertplay/transport/PairedRecord;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/transport/LockdownPlistValue$Dictionary;->getEntries()Ljava/util/Map;

    move-result-object v0

    const-string v3, "EscrowBag"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPlistValue;

    invoke-direct {v1, v0}, Lcom/shilapi/xcertplay/transport/LockdownPairingClient;->asOptionalData(Lcom/shilapi/xcertplay/transport/LockdownPlistValue;)[B

    move-result-object v0

    invoke-direct {v2, v10, v0}, Lcom/shilapi/xcertplay/transport/PairedRecord;-><init>(Lcom/shilapi/xcertplay/transport/LockdownPairRecord;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    :try_start_5
    invoke-static {v13, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut; {:try_start_5 .. :try_end_5} :catch_0

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 61
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {v13, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catch Lcom/shilapi/xcertplay/transport/LockdownPairingException$TimedOut; {:try_start_7 .. :try_end_7} :catch_0

    .line 108
    :catch_0
    move-object v0, v11

    check-cast v0, Lcom/shilapi/xcertplay/transport/LockdownPairingWait;

    invoke-static {v11}, Lcom/shilapi/xcertplay/transport/LockdownPairingClientKt;->lockdownTimeoutFailure(Lcom/shilapi/xcertplay/transport/LockdownPairingWait;)Lcom/shilapi/xcertplay/transport/LockdownPairingException;

    move-result-object v0

    throw v0

    .line 43
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "totalTimeoutMillis must be between 1 and 300000"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "systemBuid must not be blank"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "hostId must not be blank"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "label must not be blank"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
