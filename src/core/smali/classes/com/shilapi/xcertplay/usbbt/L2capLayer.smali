.class public final Lcom/shilapi/xcertplay/usbbt/L2capLayer;
.super Ljava/lang/Object;
.source "L2cap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;,
        Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;,
        Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;,
        Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nL2cap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 L2cap.kt\ncom/shilapi/xcertplay/usbbt/L2capLayer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,331:1\n1#2:332\n504#3,7:333\n504#3,7:342\n216#4,2:340\n1869#5,2:349\n1869#5,2:351\n1761#5,3:353\n*S KotlinDebug\n*F\n+ 1 L2cap.kt\ncom/shilapi/xcertplay/usbbt/L2capLayer\n*L\n97#1:333,7\n98#1:342,7\n97#1:340,2\n99#1:349,2\n100#1:351,2\n141#1:353,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008 \u0018\u0000 D2\u00020\u0001:\u0004ABCDB_\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00126\u0010\u0008\u001a2\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\t\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J4\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00052\u0014\u0008\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u001dJ(\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002J\u0010\u0010$\u001a\u000c\u0012\u0008\u0012\u00060\u0015R\u00020\u00000%J\u0016\u0010&\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\'\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u0004J\u0018\u0010(\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\rH\u0002J(\u0010*\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\rH\u0002J(\u0010.\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0002J0\u0010/\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u00020\rH\u0002J \u00102\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002J\u0014\u00103\u001a\u00020\u000f2\n\u00104\u001a\u00060\u0015R\u00020\u0000H\u0002J(\u00105\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0018\u00106\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u0004H\u0002J \u00108\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u0004H\u0002J\u0017\u0010:\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0002\u0010;J*\u0010<\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u00042\u0008\u0008\u0002\u0010>\u001a\u00020\rH\u0002J(\u0010?\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\rH\u0002J \u0010@\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\rH\u0002R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R>\u0010\u0008\u001a2\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u0012\u001a&\u0012\u0004\u0012\u00020\u0014\u0012\u0008\u0012\u00060\u0015R\u00020\u00000\u0013j\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0008\u0012\u00060\u0015R\u00020\u0000`\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00180\u0013j\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0018`\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer;",
        "",
        "services",
        "",
        "",
        "Lcom/shilapi/xcertplay/usbbt/L2capService;",
        "observer",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;",
        "send",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "handle",
        "",
        "frame",
        "",
        "<init>",
        "(Ljava/util/Map;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;Lkotlin/jvm/functions/Function2;)V",
        "channels",
        "Ljava/util/HashMap;",
        "",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;",
        "Lkotlin/collections/HashMap;",
        "outgoing",
        "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;",
        "connect",
        "psm",
        "service",
        "onFailed",
        "Lkotlin/Function1;",
        "onConnectionResponse",
        "destinationCid",
        "sourceCid",
        "result",
        "nextCid",
        "nextIdentifier",
        "openChannels",
        "",
        "onFrame",
        "onDisconnected",
        "onSignaling",
        "payload",
        "onCommand",
        "code",
        "id",
        "d",
        "onConnectionRequest",
        "onConfigurationRequest",
        "flags",
        "options",
        "onConfigurationResponse",
        "maybeOpened",
        "channel",
        "onDisconnectionRequest",
        "closeChannel",
        "localCid",
        "onInformationRequest",
        "infoType",
        "allocateCid",
        "(I)Ljava/lang/Integer;",
        "reject",
        "reason",
        "data",
        "reply",
        "sendSignal",
        "Observer",
        "Channel",
        "Outgoing",
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
.field public static final COMMAND_REJECT:I = 0x1

.field public static final CONFIGURATION_REQUEST:I = 0x4

.field public static final CONFIGURATION_RESPONSE:I = 0x5

.field public static final CONF_SUCCESS:I = 0x0

.field public static final CONF_UNACCEPTABLE:I = 0x1

.field public static final CONF_UNKNOWN_OPTIONS:I = 0x3

.field public static final CONNECTION_REQUEST:I = 0x2

.field public static final CONNECTION_RESPONSE:I = 0x3

.field public static final Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

.field public static final DEFAULT_MTU:I = 0x2a0

.field public static final DISCONNECTION_REQUEST:I = 0x6

.field public static final DISCONNECTION_RESPONSE:I = 0x7

.field public static final ECHO_REQUEST:I = 0x8

.field public static final ECHO_RESPONSE:I = 0x9

.field public static final EXTENDED_FEATURES:I = 0x80

.field public static final FIRST_DYNAMIC_CID:I = 0x40

.field public static final FIXED_CHANNELS_SIGNALING:I = 0x2

.field public static final INFORMATION_REQUEST:I = 0xa

.field public static final INFORMATION_RESPONSE:I = 0xb

.field public static final INFO_CONNECTIONLESS_MTU:I = 0x1

.field public static final INFO_EXTENDED_FEATURES:I = 0x2

.field public static final INFO_FIXED_CHANNELS:I = 0x3

.field public static final INFO_NOT_SUPPORTED:I = 0x1

.field public static final INFO_SUCCESS:I = 0x0

.field public static final MIN_MTU:I = 0x30

.field public static final OPTION_FLUSH_TIMEOUT:I = 0x2

.field public static final OPTION_MTU:I = 0x1

.field public static final OPTION_QOS:I = 0x3

.field public static final OPTION_RETRANSMISSION_AND_FLOW:I = 0x4

.field public static final REJECT_INVALID_CID:I = 0x2

.field public static final REJECT_NOT_UNDERSTOOD:I = 0x0

.field public static final RESULT_INVALID_SOURCE_CID:I = 0x6

.field public static final RESULT_NO_RESOURCES:I = 0x4

.field public static final RESULT_PENDING:I = 0x1

.field public static final RESULT_PSM_NOT_SUPPORTED:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final SIGNALING_CID:I = 0x1


# instance fields
.field private final channels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;",
            ">;"
        }
    .end annotation
.end field

.field private nextCid:I

.field private nextIdentifier:I

.field private final observer:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;

.field private final outgoing:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;",
            ">;"
        }
    .end annotation
.end field

.field private final send:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "[B",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shilapi/xcertplay/usbbt/L2capService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OaWdOLEWL2Ud9odRmb8wa8uDygM(I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->connect$lambda$0(I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/shilapi/xcertplay/usbbt/L2capService;",
            ">;",
            "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-[B",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "services"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "send"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->services:Ljava/util/Map;

    .line 12
    iput-object p2, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->observer:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;

    .line 13
    iput-object p3, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->send:Lkotlin/jvm/functions/Function2;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->outgoing:Ljava/util/HashMap;

    const/16 p1, 0x40

    .line 73
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->nextCid:I

    const/4 p1, 0x1

    .line 74
    iput p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->nextIdentifier:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;-><init>(Ljava/util/Map;Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getSend$p(Lcom/shilapi/xcertplay/usbbt/L2capLayer;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->send:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$sendSignal(Lcom/shilapi/xcertplay/usbbt/L2capLayer;II[B)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->sendSignal(II[B)V

    return-void
.end method

.method private final allocateCid(I)Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const v1, 0xffbf

    if-ge v0, v1, :cond_2

    .line 235
    iget v1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->nextCid:I

    const v2, 0xffff

    if-lt v1, v2, :cond_0

    const/16 v2, 0x40

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 236
    :goto_1
    iput v2, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->nextCid:I

    .line 237
    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->key(II)J
    invoke-static {v3, p1, v1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->access$key(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->outgoing:Ljava/util/HashMap;

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->key(II)J
    invoke-static {v3, p1, v1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->access$key(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private final closeChannel(II)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->key(II)J
    invoke-static {v1, p1, p2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->access$key(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getHandler$shared_release()Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;->onClosed(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V

    :cond_0
    return-void
.end method

.method public static synthetic connect$default(Lcom/shilapi/xcertplay/usbbt/L2capLayer;IILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 53
    new-instance p4, Lcom/shilapi/xcertplay/usbbt/L2capLayer$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->connect(IILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final connect$lambda$0(I)Lkotlin/Unit;
    .locals 0

    .line 53
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final maybeOpened(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V
    .locals 2

    .line 204
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getHandler$shared_release()Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getService$shared_release()Lcom/shilapi/xcertplay/usbbt/L2capService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->services:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getPsm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/L2capService;

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/usbbt/L2capService;->open(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->setHandler$shared_release(Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;)V

    .line 206
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getHandler$shared_release()Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->close()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final onCommand(III[B)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x4

    packed-switch p2, :pswitch_data_0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    .line 130
    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reject$default(Lcom/shilapi/xcertplay/usbbt/L2capLayer;III[BILjava/lang/Object;)V

    return-void

    .line 127
    :pswitch_0
    array-length v6, p4

    if-lt v6, v5, :cond_0

    sget-object v5, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v5, p4, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v3

    invoke-direct {p0, p1, p3, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->onInformationRequest(III)V

    return-void

    :cond_0
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reject$default(Lcom/shilapi/xcertplay/usbbt/L2capLayer;III[BILjava/lang/Object;)V

    return-void

    :pswitch_1
    const/16 v4, 0x9

    .line 126
    invoke-direct {p0, p1, v4, p3, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    return-void

    .line 125
    :pswitch_2
    array-length v2, p4

    if-lt v2, v6, :cond_4

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v2, p4, v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->closeChannel(II)V

    return-void

    .line 124
    :pswitch_3
    array-length v7, p4

    if-lt v7, v6, :cond_1

    sget-object v6, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v6, p4, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v4

    invoke-virtual {v6, p4, v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v3

    invoke-direct {p0, p1, p3, v4, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->onDisconnectionRequest(IIII)V

    return-void

    :cond_1
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reject$default(Lcom/shilapi/xcertplay/usbbt/L2capLayer;III[BILjava/lang/Object;)V

    return-void

    .line 123
    :pswitch_4
    array-length v2, p4

    const/4 v5, 0x6

    if-lt v2, v5, :cond_4

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v2, p4, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v4

    invoke-virtual {v2, p4, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v2

    invoke-direct {p0, p1, v4, v2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->onConfigurationResponse(III)V

    return-void

    .line 122
    :pswitch_5
    array-length v2, p4

    if-lt v2, v6, :cond_2

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v2, p4, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v4

    invoke-virtual {v2, p4, v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v2

    array-length v5, p4

    invoke-static {p4, v6, v5}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v3, v4

    move v4, v2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->onConfigurationRequest(IIII[B)V

    return-void

    :cond_2
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reject$default(Lcom/shilapi/xcertplay/usbbt/L2capLayer;III[BILjava/lang/Object;)V

    return-void

    .line 128
    :pswitch_6
    array-length v2, p4

    const/16 v7, 0x8

    if-lt v2, v7, :cond_4

    sget-object v2, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v2, p4, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v4

    invoke-virtual {v2, p4, v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v5

    invoke-virtual {v2, p4, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v2

    invoke-direct {p0, p1, v4, v5, v2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->onConnectionResponse(IIII)V

    return-void

    .line 121
    :pswitch_7
    array-length v7, p4

    if-lt v7, v6, :cond_3

    sget-object v6, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v6, p4, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v4

    invoke-virtual {v6, p4, v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v3

    invoke-direct {p0, p1, p3, v4, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->onConnectionRequest(IIII)V

    return-void

    :cond_3
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reject$default(Lcom/shilapi/xcertplay/usbbt/L2capLayer;III[BILjava/lang/Object;)V

    :cond_4
    :pswitch_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private final onConfigurationRequest(IIII[B)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    .line 157
    iget-object v5, v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    sget-object v6, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->key(II)J
    invoke-static {v6, v1, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->access$key(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;II)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v5, :cond_0

    .line 159
    invoke-virtual {v6, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v3

    invoke-virtual {v6, v7}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reject(III[B)V

    return-void

    .line 163
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v10, v6, 0x2

    .line 164
    array-length v11, v4

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-gt v10, v11, :cond_4

    .line 165
    aget-byte v11, v4, v6

    add-int/lit8 v14, v6, 0x1

    .line 166
    aget-byte v14, v4, v14

    and-int/lit16 v14, v14, 0xff

    add-int v15, v10, v14

    .line 167
    array-length v7, v4

    if-gt v15, v7, :cond_4

    and-int/lit8 v7, v11, 0x7f

    if-eq v7, v13, :cond_2

    if-eq v7, v8, :cond_3

    if-eq v7, v12, :cond_3

    const/4 v12, 0x4

    if-eq v7, v12, :cond_1

    and-int/lit16 v7, v11, 0x80

    if-nez v7, :cond_3

    add-int/lit8 v7, v14, 0x2

    .line 173
    invoke-virtual {v3, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    if-lt v14, v13, :cond_3

    .line 172
    aget-byte v7, v4, v10

    if-eqz v7, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    if-lt v14, v8, :cond_3

    .line 169
    sget-object v7, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v7, v4, v10}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v7

    const/16 v10, 0x30

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->setRemoteMtu$shared_release(I)V

    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x2

    add-int/2addr v6, v14

    const/4 v7, 0x0

    goto :goto_0

    .line 177
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const/4 v6, 0x5

    if-lez v4, :cond_5

    .line 178
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getRemoteCid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v5

    invoke-virtual {v4, v12}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string/jumbo v5, "toByteArray(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    return-void

    :cond_5
    if-eqz v9, :cond_6

    .line 182
    new-array v3, v8, [B

    fill-array-data v3, :array_0

    const/16 v4, 0x9

    new-array v4, v4, [B

    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v3

    .line 183
    sget-object v4, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getRemoteCid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v5

    invoke-virtual {v4, v13}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    return-void

    .line 186
    :cond_6
    sget-object v3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getRemoteCid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v4

    and-int/lit8 v7, p4, 0x1

    invoke-virtual {v3, v7}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v8

    invoke-static {v4, v8}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    if-nez v7, :cond_7

    .line 188
    invoke-virtual {v5, v13}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->setRemoteConfigured$shared_release(Z)V

    .line 189
    invoke-direct {v0, v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->maybeOpened(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x9t
    .end array-data
.end method

.method private final onConfigurationResponse(III)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->key(II)J
    invoke-static {v1, p1, p2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->access$key(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const/4 p2, 0x1

    .line 196
    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->setLocalConfigured$shared_release(Z)V

    .line 197
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->maybeOpened(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V

    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->close()V

    return-void
.end method

.method private final onConnectionRequest(IIII)V
    .locals 11

    .line 135
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->services:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/L2capService;

    .line 136
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->observer:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, p1, p3, v2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;->onConnectionRequest(IIZ)V

    :cond_1
    const/4 v7, 0x3

    if-nez v0, :cond_2

    .line 138
    sget-object p3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {p3, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-virtual {p3, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    invoke-virtual {p3, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-static {v0, p3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    invoke-direct {p0, p1, v7, p2, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    return-void

    :cond_2
    const/16 v0, 0x40

    if-lt p4, v0, :cond_7

    .line 141
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 353
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 354
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    .line 141
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getHandle()I

    move-result v2

    if-ne v2, p1, :cond_4

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getRemoteCid()I

    move-result v1

    if-ne v1, p4, :cond_4

    goto/16 :goto_2

    .line 145
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->allocateCid(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x4

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 149
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;-><init>(Lcom/shilapi/xcertplay/usbbt/L2capLayer;IIII)V

    .line 150
    iget-object p3, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    check-cast p3, Ljava/util/Map;

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->key(II)J
    invoke-static {v3, p1, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->access$key(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;II)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v3, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-virtual {v3, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    invoke-virtual {v3, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    invoke-virtual {v3, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    invoke-direct {p0, p1, v7, p2, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    .line 153
    invoke-virtual {v3, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p2

    invoke-virtual {v3, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p2

    invoke-direct {p0, p1, v8, p2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->sendSignal(II[B)V

    return-void

    .line 145
    :cond_6
    move-object p3, p0

    check-cast p3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;

    .line 146
    sget-object p3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {p3, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-virtual {p3, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    invoke-virtual {p3, v8}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    invoke-virtual {p3, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-static {v0, p3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    invoke-direct {p0, p1, v7, p2, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    return-void

    .line 142
    :cond_7
    :goto_2
    sget-object p3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {p3, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-virtual {p3, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {p3, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    invoke-virtual {p3, v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-static {v0, p3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    invoke-direct {p0, p1, v7, p2, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    return-void
.end method

.method private final onConnectionResponse(IIII)V
    .locals 11

    .line 60
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->key(II)J
    invoke-static {v0, p1, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->access$key(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;II)J

    move-result-wide v1

    .line 61
    iget-object v3, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->outgoing:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    const/4 p1, 0x1

    if-eq p4, p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->outgoing:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->getOnFailed()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    iget-object p4, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->outgoing:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v5, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->getPsm()I

    move-result v8

    move-object v6, p0

    move v7, p1

    move v10, p2

    move v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;-><init>(Lcom/shilapi/xcertplay/usbbt/L2capLayer;IIII)V

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->getService()Lcom/shilapi/xcertplay/usbbt/L2capService;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->setService$shared_release(Lcom/shilapi/xcertplay/usbbt/L2capService;)V

    .line 66
    iget-object p1, v6, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    check-cast p1, Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v0, v10}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {p0, v7, p2, p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->sendSignal(II[B)V

    return-void
.end method

.method private final onDisconnectionRequest(IIII)V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->key(II)J
    invoke-static {v1, p1, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->access$key(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getRemoteCid()I

    move-result v0

    if-eq v0, p4, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v1, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-virtual {v1, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p4

    invoke-static {v0, p4}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p4

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    .line 216
    invoke-direct {p0, p1, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->closeChannel(II)V

    return-void

    .line 213
    :cond_1
    :goto_0
    invoke-virtual {v1, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-virtual {v1, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    const/4 p4, 0x2

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reject(III[B)V

    return-void
.end method

.method private final onInformationRequest(III)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v3, 0x3

    if-eq p3, v3, :cond_0

    .line 228
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v0, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    goto :goto_0

    .line 227
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v1, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v3

    invoke-static {p3, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    invoke-virtual {v1, v2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le32$shared_release(I)[B

    move-result-object v2

    invoke-static {p3, v2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le32$shared_release(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    goto :goto_0

    .line 226
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v1, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    const/16 v0, 0x80

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le32$shared_release(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    goto :goto_0

    .line 225
    :cond_2
    sget-object v1, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v1, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    const/16 v0, 0x2a0

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    :goto_0
    const/16 v0, 0xb

    .line 230
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    return-void
.end method

.method private final onSignaling(I[B)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x4

    .line 106
    array-length v2, p2

    if-gt v1, v2, :cond_1

    .line 107
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    .line 108
    aget-byte v3, p2, v3

    and-int/lit16 v6, v3, 0xff

    .line 109
    sget-object v3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, p2, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v3

    add-int v4, v1, v3

    .line 110
    array-length v5, p2

    if-le v4, v5, :cond_0

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move v5, p1

    .line 111
    invoke-static/range {v4 .. v10}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reject$default(Lcom/shilapi/xcertplay/usbbt/L2capLayer;III[BILjava/lang/Object;)V

    move-object p1, v4

    return-void

    :cond_0
    move v5, p1

    move-object p1, p0

    .line 113
    invoke-static {p2, v1, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 115
    invoke-direct {p0, v5, v2, v6, v1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->onCommand(III[B)V

    move p1, v5

    goto :goto_0

    :cond_1
    move-object p1, p0

    return-void
.end method

.method private final reject(III[B)V
    .locals 1

    .line 243
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v0, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p3

    invoke-static {p3, p4}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reply(III[B)V

    return-void
.end method

.method static synthetic reject$default(Lcom/shilapi/xcertplay/usbbt/L2capLayer;III[BILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 242
    new-array p4, p4, [B

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->reject(III[B)V

    return-void
.end method

.method private final reply(III[B)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->send:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, p3, p4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->signal(II[B)[B

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->frame(I[B)[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final sendSignal(II[B)V
    .locals 4

    .line 249
    iget v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->nextIdentifier:I

    const/16 v1, 0xff

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 250
    :goto_0
    iput v1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->nextIdentifier:I

    .line 251
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->send:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v3, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    invoke-virtual {v3, p2, v0, p3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->signal(II[B)[B

    move-result-object p2

    invoke-virtual {v3, v2, p2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->frame(I[B)[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final connect(IILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/shilapi/xcertplay/usbbt/L2capService;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 54
    const-string v0, "service"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailed"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->allocateCid(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 55
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->outgoing:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v7, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->key(II)J
    invoke-static {v7, p1, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->access$key(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v1, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;

    move v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;-><init>(IIILcom/shilapi/xcertplay/usbbt/L2capService;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v7, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p1

    invoke-virtual {v7, v4}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->le16$shared_release(I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, v2, p2, p1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->sendSignal(II[B)V

    return-void

    :cond_0
    move-object v6, p4

    .line 54
    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/usbbt/L2capLayer;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v6, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDisconnected(I)V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->outgoing:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .line 333
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 334
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;

    .line 97
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->getHandle()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 336
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 339
    :cond_1
    check-cast v1, Ljava/util/Map;

    .line 340
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;

    .line 97
    iget-object v4, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->outgoing:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Outgoing;->getOnFailed()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .line 342
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 343
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    .line 98
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getHandle()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 345
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 348
    :cond_4
    check-cast v1, Ljava/util/Map;

    .line 99
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 349
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 99
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 100
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 351
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    .line 100
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getHandler$shared_release()Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;->onClosed(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method public final onFrame(I[B)V
    .locals 5

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->Companion:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v2

    const/4 v3, 0x2

    .line 82
    invoke-virtual {v0, p2, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->u16$shared_release([BI)I

    move-result v3

    .line 83
    array-length v4, p2

    add-int/2addr v2, v1

    if-ge v4, v2, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {p2, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p2

    const/4 v1, 0x1

    if-ne v3, v1, :cond_2

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->onSignaling(I[B)V

    return-void

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    # invokes: Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->key(II)J
    invoke-static {v0, p1, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;->access$key(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Companion;II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;

    if-eqz v0, :cond_4

    .line 88
    iget-object v1, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->observer:Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getPsm()I

    move-result v2

    array-length v3, p2

    invoke-interface {v1, p1, v2, v3}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Observer;->onChannelData(III)V

    .line 89
    :cond_3
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;->getHandler$shared_release()Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v0, p2}, Lcom/shilapi/xcertplay/usbbt/L2capChannelHandler;->onData(Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;[B)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final openChannels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/usbbt/L2capLayer$Channel;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/shilapi/xcertplay/usbbt/L2capLayer;->channels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
