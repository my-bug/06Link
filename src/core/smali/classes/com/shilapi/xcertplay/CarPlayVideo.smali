.class public final Lcom/shilapi/xcertplay/CarPlayVideo;
.super Ljava/lang/Object;
.source "CarPlayVideo.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayVideo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayVideo.kt\ncom/shilapi/xcertplay/CarPlayVideo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010$\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u000e2\u0006\u00100\u001a\u00020\u0010J\u000f\u00101\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0002\u00102J\u0010\u00103\u001a\u00020.2\u0006\u00104\u001a\u00020\u001dH\u0016J\u0008\u00105\u001a\u00020.H\u0016J\u0008\u00106\u001a\u00020.H\u0016J&\u00107\u001a\u00020.2\u0006\u0010\u0011\u001a\u00020\u00122\u0014\u00108\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u001509H\u0016J\u000e\u0010:\u001a\u00020\u001d2\u0006\u0010;\u001a\u00020\u0007J\u000e\u0010<\u001a\u00020.2\u0006\u00100\u001a\u00020\u001dJ\u000e\u0010=\u001a\u00020.2\u0006\u0010>\u001a\u00020\u0007J\u0015\u0010?\u001a\u00020.2\u0008\u0010@\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010%J&\u0010A\u001a\u00020.2\u0006\u0010\u0011\u001a\u00020\u00122\u0014\u00108\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u001509H\u0002J\n\u0010B\u001a\u0004\u0018\u00010CH\u0002J&\u0010D\u001a\u00020.2\u0006\u0010\u0011\u001a\u00020\u00122\u0014\u00108\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u001509H\u0002J\u0008\u0010E\u001a\u00020.H\u0002J\u0010\u0010F\u001a\u00020.2\u0006\u0010G\u001a\u00020\u0005H\u0002J\u0008\u0010H\u001a\u00020.H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u001d@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u001e\u0010!\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010&\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001c\u0010\'\u001a\u0004\u0018\u00010(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u0006I"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayVideo;",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;",
        "<init>",
        "()V",
        "TAG",
        "",
        "SKIP_MILLIS",
        "",
        "main",
        "Landroid/os/Handler;",
        "sender",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "appContext",
        "Landroid/content/Context;",
        "controller",
        "Lcom/shilapi/xcertplay/orchestration/CarPlayController;",
        "streamId",
        "",
        "Ljava/lang/Long;",
        "itemUuid",
        "",
        "value",
        "url",
        "getUrl",
        "()Ljava/lang/String;",
        "startMillis",
        "getStartMillis",
        "()I",
        "",
        "playing",
        "getPlaying",
        "()Z",
        "pendingSeekMillis",
        "getPendingSeekMillis",
        "()Ljava/lang/Integer;",
        "setPendingSeekMillis",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "activity",
        "Lcom/shilapi/xcertplay/CarPlayVideoActivity;",
        "getActivity",
        "()Lcom/shilapi/xcertplay/CarPlayVideoActivity;",
        "setActivity",
        "(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V",
        "attach",
        "",
        "context",
        "next",
        "readParked",
        "()Ljava/lang/Boolean;",
        "onVideoAllowedChanged",
        "allowed",
        "onVideoSessionEnded",
        "onVideoUiRequested",
        "onVideoMessage",
        "message",
        "",
        "onMediaKey",
        "index",
        "setPlaying",
        "onPlayerFailed",
        "code",
        "onPlayerClosed",
        "positionMillis",
        "handle",
        "playerState",
        "Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;",
        "reply",
        "show",
        "closePlayer",
        "reason",
        "stop",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

.field private static final SKIP_MILLIS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "DiPlay-Video"

.field private static activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

.field private static volatile appContext:Landroid/content/Context;

.field private static volatile controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

.field private static itemUuid:Ljava/lang/Object;

.field private static final main:Landroid/os/Handler;

.field private static pendingSeekMillis:Ljava/lang/Integer;

.field private static playing:Z

.field private static final sender:Ljava/util/concurrent/ExecutorService;

.field private static startMillis:I

.field private static streamId:Ljava/lang/Long;

.field private static url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$983Rk8Idm0Tu4wxMZPnvItH-zek()V
    .locals 0

    invoke-static {}, Lcom/shilapi/xcertplay/CarPlayVideo;->onVideoSessionEnded$lambda$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$C5gAnc0MGZwQwZKnHiZcm-5IAw8(Ljava/util/Map;Lcom/shilapi/xcertplay/orchestration/CarPlayController;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayVideo;->reply$lambda$14(Ljava/util/Map;Lcom/shilapi/xcertplay/orchestration/CarPlayController;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$H-d0lwrYx6A2UyR7oet3yQFICL4(JLjava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayVideo;->onVideoMessage$lambda$5(JLjava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TSQkl5wHsL2Rfdhyes8QgMrf3mM()V
    .locals 0

    invoke-static {}, Lcom/shilapi/xcertplay/CarPlayVideo;->onVideoUiRequested$lambda$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$VyMeBw2AM7t_ATCfI6WFSjE393U(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayVideo;->sender$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ulbWZd02RMXo6pKZGRDV4EnYCmw()V
    .locals 0

    invoke-static {}, Lcom/shilapi/xcertplay/CarPlayVideo;->onVideoAllowedChanged$lambda$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayVideo;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->main:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->sender:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final closePlayer(Ljava/lang/String;)V
    .locals 3

    .line 182
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closing the video player: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DiPlay-Video"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->finish()V

    return-void
.end method

.method private final handle(JLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->streamId:Ljava/lang/Long;

    .line 111
    const-string v0, "kind"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "request"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 112
    const-string/jumbo v1, "type"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "DiPlay-Video"

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "messageID"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string/jumbo p1, "setRate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 126
    :cond_1
    const-string p1, "rate"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_2

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    :cond_2
    const-wide/16 p1, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_3
    move-wide v0, p1

    :goto_1
    cmpl-double p3, v0, p1

    if-lez p3, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    sput-boolean p1, Lcom/shilapi/xcertplay/CarPlayVideo;->playing:Z

    .line 127
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->applyRate()V

    return-void

    .line 112
    :sswitch_1
    const-string v3, "playbackInfo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_4

    :cond_5
    if-eqz v0, :cond_d

    .line 137
    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayVideo;->itemUuid:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideo;->playerState()Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    move-result-object v2

    invoke-virtual {v0, p3, v1, v2}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->playbackInfoResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayVideo;->reply(JLjava/util/Map;)V

    return-void

    .line 112
    :sswitch_2
    const-string/jumbo p1, "setProperty"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_4

    :sswitch_3
    const-string p1, "insertPlayQueueItem"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_4

    .line 114
    :cond_6
    sget-object p1, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-virtual {p1, p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->parseItem(Ljava/util/Map;)Lcom/shilapi/xcertplay/airplay/VideoInCar$Item;

    move-result-object p1

    if-nez p1, :cond_7

    .line 116
    const-string p1, "queue item this player cannot play"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_7
    const-string p2, "item"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/util/Map;

    if-eqz p3, :cond_8

    check-cast p2, Ljava/util/Map;

    goto :goto_3

    :cond_8
    move-object p2, v3

    :goto_3
    if-eqz p2, :cond_9

    const-string p3, "clientBundleID"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "queue item app="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar$Item;->getUrl()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/shilapi/xcertplay/CarPlayVideo;->url:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar$Item;->getUuid()Ljava/lang/Object;

    move-result-object p2

    sput-object p2, Lcom/shilapi/xcertplay/CarPlayVideo;->itemUuid:Ljava/lang/Object;

    .line 122
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar$Item;->getStartMillis()I

    move-result p1

    sput p1, Lcom/shilapi/xcertplay/CarPlayVideo;->startMillis:I

    .line 123
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->load()V

    return-void

    .line 112
    :sswitch_4
    const-string/jumbo p1, "stop"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_4

    :sswitch_5
    const-string v3, "seek"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_4

    .line 130
    :cond_a
    sget-object v1, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-virtual {v1, p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->seekMillis(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/CarPlayVideo;->pendingSeekMillis:Ljava/lang/Integer;

    .line 132
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->applySeek()V

    :cond_b
    if-eqz v0, :cond_d

    .line 134
    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->seekResponse(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayVideo;->reply(JLjava/util/Map;)V

    return-void

    .line 112
    :sswitch_6
    const-string v3, "property"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_d

    .line 140
    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideo;->playerState()Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->propertyResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayVideo;->reply(JLjava/util/Map;)V

    :cond_d
    return-void

    .line 112
    :sswitch_7
    const-string p1, "removePlayQueueItem"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_4

    .line 142
    :cond_e
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideo;->stop()V

    return-void

    .line 144
    :cond_f
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "video message "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x755acb34 -> :sswitch_7
        -0x3b32222b -> :sswitch_6
        0x35ce78 -> :sswitch_5
        0x360802 -> :sswitch_4
        0x21a268b7 -> :sswitch_3
        0x3b607c57 -> :sswitch_2
        0x50c62969 -> :sswitch_1
        0x764f7c62 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final onVideoAllowedChanged$lambda$2()V
    .locals 2

    .line 52
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    const-string/jumbo v1, "the car left P"

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/CarPlayVideo;->closePlayer(Ljava/lang/String;)V

    return-void
.end method

.method private static final onVideoMessage$lambda$5(JLjava/util/Map;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-direct {v0, p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayVideo;->handle(JLjava/util/Map;)V

    return-void
.end method

.method private static final onVideoSessionEnded$lambda$3()V
    .locals 1

    .line 57
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayVideo;->stop()V

    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->streamId:Ljava/lang/Long;

    return-void
.end method

.method private static final onVideoUiRequested$lambda$4()V
    .locals 1

    .line 63
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayVideo;->show()V

    return-void
.end method

.method private final playerState()Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;
    .locals 10

    .line 150
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->state()Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    sget v0, Lcom/shilapi/xcertplay/CarPlayVideo;->startMillis:I

    int-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v2, v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;-><init>(ZZDDD)V

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private final reply(JLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayVideo;->sender:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda2;

    invoke-direct {v2, p3, v0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;Lcom/shilapi/xcertplay/orchestration/CarPlayController;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final reply$lambda$14(Ljava/util/Map;Lcom/shilapi/xcertplay/orchestration/CarPlayController;J)V
    .locals 4

    .line 156
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1, p2, p3, p0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendVideoMessage(JLjava/util/Map;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

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

    .line 157
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    const-string p3, "reply "

    const-string/jumbo v0, "type"

    const-string v1, "DiPlay-Video"

    if-eqz p2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x0

    .line 158
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, p2

    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 159
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not sent"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static final sender$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "diplay-video-reply"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private final show()V
    .locals 6

    .line 164
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayVideo;->url:Ljava/lang/String;

    const-string v2, "DiPlay-Video"

    if-nez v1, :cond_1

    const-string/jumbo v0, "video player requested without a playable item"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_1
    sget-object v1, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->getAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v0, "video player requested while not parked"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 168
    :cond_2
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    if-nez v1, :cond_4

    .line 170
    sget-object v1, Lcom/shilapi/xcertplay/PlatformVideoPlayer;->INSTANCE:Lcom/shilapi/xcertplay/PlatformVideoPlayer;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/PlatformVideoPlayer;->getAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 171
    const-string v1, "parking video unavailable: no VideoView and no MediaCodec pipeline"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->video_no_system_player:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->streamId:Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    sget-object v3, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    sget-object v4, Lcom/shilapi/xcertplay/CarPlayVideo;->itemUuid:Ljava/lang/Object;

    const/16 v5, -0x326f

    invoke-virtual {v3, v4, v5}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->errorNotification(Ljava/lang/Object;I)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/shilapi/xcertplay/CarPlayVideo;->reply(JLjava/util/Map;)V

    return-void

    .line 176
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final stop()V
    .locals 2

    const/4 v0, 0x0

    .line 188
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->url:Ljava/lang/String;

    .line 189
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->itemUuid:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 190
    sput-boolean v1, Lcom/shilapi/xcertplay/CarPlayVideo;->playing:Z

    .line 191
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->pendingSeekMillis:Ljava/lang/Integer;

    .line 192
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final attach(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->appContext:Landroid/content/Context;

    .line 45
    sput-object p2, Lcom/shilapi/xcertplay/CarPlayVideo;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 46
    move-object p1, p0

    check-cast p1, Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->setVideoListener(Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;)V

    return-void
.end method

.method public final getActivity()Lcom/shilapi/xcertplay/CarPlayVideoActivity;
    .locals 1

    .line 41
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    return-object v0
.end method

.method public final getPendingSeekMillis()Ljava/lang/Integer;
    .locals 1

    .line 40
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->pendingSeekMillis:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPlaying()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/shilapi/xcertplay/CarPlayVideo;->playing:Z

    return v0
.end method

.method public final getStartMillis()I
    .locals 1

    .line 36
    sget v0, Lcom/shilapi/xcertplay/CarPlayVideo;->startMillis:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final onMediaKey(I)Z
    .locals 3

    .line 76
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    .line 80
    sget-boolean p1, Lcom/shilapi/xcertplay/CarPlayVideo;->playing:Z

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideo;->setPlaying(Z)V

    goto :goto_0

    :cond_1
    const/16 p1, -0x2710

    .line 79
    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->skip(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x2710

    .line 78
    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->skip(I)V

    :goto_0
    return v2
.end method

.method public final onPlayerClosed(Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 105
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sput p1, Lcom/shilapi/xcertplay/CarPlayVideo;->startMillis:I

    .line 106
    :cond_0
    sget-boolean p1, Lcom/shilapi/xcertplay/CarPlayVideo;->playing:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideo;->setPlaying(Z)V

    :cond_1
    return-void
.end method

.method public final onPlayerFailed(I)V
    .locals 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "item cannot play here code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiPlay-Video"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->streamId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    sget-object v3, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    sget-object v4, Lcom/shilapi/xcertplay/CarPlayVideo;->itemUuid:Ljava/lang/Object;

    invoke-virtual {v3, v4, p1}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->errorNotification(Ljava/lang/Object;I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Lcom/shilapi/xcertplay/CarPlayVideo;->reply(JLjava/util/Map;)V

    .line 99
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->appContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->video_cannot_play:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideo;->stop()V

    return-void
.end method

.method public onVideoAllowedChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 52
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->main:Landroid/os/Handler;

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onVideoMessage(JLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->main:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda5;-><init>(JLjava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoSessionEnded()V
    .locals 2

    .line 56
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->main:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoUiRequested()V
    .locals 2

    .line 63
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->main:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/CarPlayVideo$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public readParked()Ljava/lang/Boolean;
    .locals 2

    .line 49
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->parked(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setActivity(Lcom/shilapi/xcertplay/CarPlayVideoActivity;)V
    .locals 0

    .line 41
    sput-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    return-void
.end method

.method public final setPendingSeekMillis(Ljava/lang/Integer;)V
    .locals 0

    .line 40
    sput-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->pendingSeekMillis:Ljava/lang/Integer;

    return-void
.end method

.method public final setPlaying(Z)V
    .locals 5

    .line 87
    sput-boolean p1, Lcom/shilapi/xcertplay/CarPlayVideo;->playing:Z

    .line 88
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->activity:Lcom/shilapi/xcertplay/CarPlayVideoActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayVideoActivity;->applyRate()V

    .line 89
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->streamId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    sget-object v3, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    sget-object v4, Lcom/shilapi/xcertplay/CarPlayVideo;->itemUuid:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->playbackStateNotification(ZLjava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Lcom/shilapi/xcertplay/CarPlayVideo;->reply(JLjava/util/Map;)V

    :cond_1
    return-void
.end method
