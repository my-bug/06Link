.class public final Lcom/shilapi/xcertplay/CarPlayMediaKeys;
.super Ljava/lang/Object;
.source "CarPlayMediaKeys.kt"


# static fields
.field private static final ACTIONS:J = 0x236L

.field public static final INSTANCE:Lcom/shilapi/xcertplay/CarPlayMediaKeys;

.field private static final TAG:Ljava/lang/String; = "DiPlay-MediaKeys"

.field private static appContext:Landroid/content/Context;

.field private static final callback$delegate:Lkotlin/Lazy;

.field private static controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

.field private static focusHeld:Z

.field private static focusRequest:Landroid/media/AudioFocusRequest;

.field private static volatile heldMedia:I

.field private static final legacyFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private static legacyFocusStarted:Z

.field private static final mainHandler:Landroid/os/Handler;

.field private static mutedByKey:Z

.field private static volatile openFreeAuto:Lkotlin/jvm/functions/Function0;

.field private static session:Landroid/media/session/MediaSession;


# direct methods
.method public static synthetic $r8$lambda$-WMSGesNvJ0uAxMbUCUj44tRYBM(I)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->start$lambda$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1kyiXaiP4suf44wgR3xqL7u4uaE(I)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->legacyFocusListener$lambda$25(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$98h1mptZ3Ln5wMkGD6NtlK5ZDa4()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->callback_delegate$lambda$23$lambda$22()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$9TwY3fD4o_oW7uzie9wlVgVHm_M()V
    .locals 0

    invoke-static {}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->onIphonePlaying$lambda$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$LxkF7PMd1DCWLsq5U0qYCZ_P3ko(Z)V
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->onMediaAudioChanged$lambda$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jOCPlG12oTW4rV_67NAwgeVWKJ8()V
    .locals 0

    invoke-static {}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->callback_delegate$lambda$23$lambda$22$lambda$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$qhD0XBCulYxfJAw2sfXAKZopS14()Lcom/shilapi/xcertplay/CarPlayMediaCallback;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->callback_delegate$lambda$23()Lcom/shilapi/xcertplay/CarPlayMediaCallback;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->mainHandler:Landroid/os/Handler;

    .line 326
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->callback$delegate:Lkotlin/Lazy;

    .line 334
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda19;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->legacyFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$send(Lcom/shilapi/xcertplay/CarPlayMediaKeys;ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->send(ILjava/lang/String;)V

    return-void
.end method

.method private final adjustVolume(ILjava/lang/String;)V
    .locals 5

    .line 251
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    const-class v1, Landroid/media/AudioManager;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    goto :goto_4

    .line 252
    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-lez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 254
    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    .line 256
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    .line 257
    :cond_3
    sget-boolean v3, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->mutedByKey:Z

    xor-int/2addr v2, v3

    sput-boolean v2, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->mutedByKey:Z

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 259
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 252
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-nez p1, :cond_4

    .line 260
    const-string p1, "mute"

    goto :goto_3

    :cond_4
    if-lez p1, :cond_5

    const-string/jumbo p1, "up"

    goto :goto_3

    :cond_5
    const-string p1, "down"

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "volume key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> media volume "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DiPlay-MediaKeys"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-void
.end method

.method private static final callback_delegate$lambda$23()Lcom/shilapi/xcertplay/CarPlayMediaCallback;
    .locals 5

    .line 326
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayMediaCallback;

    new-instance v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys$callback$2$1;

    sget-object v2, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/CarPlayMediaKeys$callback$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    new-instance v3, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda17;-><init>()V

    invoke-direct {v0, v1, v3}, Lcom/shilapi/xcertplay/CarPlayMediaCallback;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method private static final callback_delegate$lambda$23$lambda$22()Lkotlin/Unit;
    .locals 2

    .line 326
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final callback_delegate$lambda$23$lambda$22$lambda$21()V
    .locals 1

    .line 326
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->openFreeAuto:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final getCallback()Lcom/shilapi/xcertplay/CarPlayMediaCallback;
    .locals 1

    .line 326
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->callback$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayMediaCallback;

    return-object v0
.end method

.method private static final legacyFocusListener$lambda$25(I)V
    .locals 3

    .line 335
    const-string v0, "DiPlay-MediaKeys"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audio focus change="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 336
    sget-object p0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusHeld:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    return-void
.end method

.method private static final onIphonePlaying$lambda$4()V
    .locals 4

    .line 71
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->regainFocusLocked$default(Lcom/shilapi/xcertplay/CarPlayMediaKeys;ZILjava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static final onMediaAudioChanged$lambda$2(Z)V
    .locals 1

    .line 66
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    monitor-enter v0

    :try_start_0
    invoke-direct {v0, p0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->updateLocked(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic onWheelKey$default(Lcom/shilapi/xcertplay/CarPlayMediaKeys;IZZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->onWheelKey(IZZ)Z

    move-result p0

    return p0
.end method

.method private final perform(Lcom/shilapi/xcertplay/airplay/WheelAction;Ljava/lang/String;Z)V
    .locals 3

    .line 212
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 213
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelAction;->getCarPlay()Lcom/shilapi/xcertplay/airplay/WheelPress;

    move-result-object p1

    .line 214
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/WheelPress$Media;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 215
    check-cast p1, Lcom/shilapi/xcertplay/airplay/WheelPress$Media;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Media;->getHold()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_10

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Media;->getIndex()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->send(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_3

    .line 217
    sget-object p3, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Media;->getIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/shilapi/xcertplay/CarPlayVideo;->onMediaKey(I)Z

    move-result p3

    if-eqz p3, :cond_1

    goto/16 :goto_0

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Media;->getIndex()I

    move-result p3

    sput p3, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->heldMedia:I

    .line 219
    const-string p3, "DiPlay-MediaKeys"

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Media;->getIndex()I

    move-result v1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Media;->getIndex()I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendMediaHold(IZ)Z

    move-result v2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "media key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " held -> CarPlay "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " sent="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 220
    :cond_3
    sget p2, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->heldMedia:I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Media;->getIndex()I

    move-result p3

    if-ne p2, p3, :cond_10

    .line 221
    sput v2, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->heldMedia:I

    if-eqz v0, :cond_10

    .line 222
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Media;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendMediaHold(IZ)Z

    return-void

    .line 225
    :cond_4
    sget-object v1, Lcom/shilapi/xcertplay/airplay/WheelPress$CallKey;->INSTANCE:Lcom/shilapi/xcertplay/airplay/WheelPress$CallKey;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p3, :cond_10

    .line 227
    sget-object p1, Lcom/shilapi/xcertplay/airplay/CarPlayPhoneButton;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayPhoneButton;

    sget-object p3, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/CarPlayCallAudio;->getRunning()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/shilapi/xcertplay/airplay/CarPlayPhoneButton;->forCallKey(Z)I

    move-result p1

    .line 228
    const-string p3, "DiPlay-MediaKeys"

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendTelephonyButton(I)Z

    move-result v2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> CarPlay telephony "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 230
    :cond_6
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/WheelPress$Telephony;

    if-eqz v1, :cond_8

    if-eqz p3, :cond_10

    .line 231
    const-string p3, "DiPlay-MediaKeys"

    check-cast p1, Lcom/shilapi/xcertplay/airplay/WheelPress$Telephony;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Telephony;->getIndex()I

    move-result v1

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Telephony;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendTelephonyButton(I)Z

    move-result v2

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "phone key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> CarPlay telephony "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " sent="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 233
    :cond_8
    sget-object v1, Lcom/shilapi/xcertplay/airplay/WheelPress$Siri;->INSTANCE:Lcom/shilapi/xcertplay/airplay/WheelPress$Siri;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_10

    invoke-virtual {v0, p3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->siriButton(Z)Z

    return-void

    .line 234
    :cond_9
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/WheelPress$Knob;

    if-eqz v1, :cond_b

    if-eqz p3, :cond_10

    .line 235
    const-string p3, "DiPlay-MediaKeys"

    check-cast p1, Lcom/shilapi/xcertplay/airplay/WheelPress$Knob;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Knob;->getState()Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    move-result-object v1

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Knob;->getState()Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendKnobPress(Lcom/shilapi/xcertplay/airplay/AirPlayKnobState;)Z

    move-result v2

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "knob key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> CarPlay "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " sent="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 237
    :cond_b
    instance-of v1, p1, Lcom/shilapi/xcertplay/airplay/WheelPress$OpenUi;

    if-eqz v1, :cond_d

    if-eqz p3, :cond_10

    .line 238
    const-string p3, "DiPlay-MediaKeys"

    check-cast p1, Lcom/shilapi/xcertplay/airplay/WheelPress$OpenUi;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$OpenUi;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$OpenUi;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->requestUi(Ljava/lang/String;)Z

    move-result v2

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "open key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> CarPlay requestUI "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " sent="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 240
    :cond_d
    instance-of v0, p1, Lcom/shilapi/xcertplay/airplay/WheelPress$Volume;

    if-eqz v0, :cond_e

    if-eqz p3, :cond_10

    check-cast p1, Lcom/shilapi/xcertplay/airplay/WheelPress$Volume;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelPress$Volume;->getDirection()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->adjustVolume(ILjava/lang/String;)V

    return-void

    .line 241
    :cond_e
    sget-object p2, Lcom/shilapi/xcertplay/airplay/WheelPress$CarScreen;->INSTANCE:Lcom/shilapi/xcertplay/airplay/WheelPress$CarScreen;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    sget-object p2, Lcom/shilapi/xcertplay/airplay/WheelPress$FreeAuto;->INSTANCE:Lcom/shilapi/xcertplay/airplay/WheelPress$FreeAuto;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_0

    .line 213
    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_10
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 212
    monitor-exit p0

    throw p1
.end method

.method private final regainFocusLocked(Z)V
    .locals 4

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01AudioRoute;->forceMusicFocus(Z)Z

    move-result p1

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "audio focus regained="

    const-string v3, "DiPlay-MediaKeys"

    if-ge v0, v1, :cond_2

    .line 85
    sget-boolean v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->legacyFocusStarted:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusHeld:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->appContext:Landroid/content/Context;

    if-eqz p1, :cond_7

    const-class v0, Landroid/media/AudioManager;

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-nez p1, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->legacyFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, p1, v1}, Lcom/shilapi/xcertplay/compat/AudioCompat;->requestMusicFocus(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result p1

    sput-boolean p1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusHeld:Z

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusRequest:Landroid/media/AudioFocusRequest;

    if-nez p1, :cond_3

    goto :goto_1

    .line 92
    :cond_3
    sget-boolean v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusHeld:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 93
    :cond_4
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    const-class v1, Landroid/media/AudioManager;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_5

    goto :goto_1

    .line 94
    :cond_5
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusHeld:Z

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method static synthetic regainFocusLocked$default(Lcom/shilapi/xcertplay/CarPlayMediaKeys;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->regainFocusLocked(Z)V

    return-void
.end method

.method private final releaseLocked()V
    .locals 5

    .line 161
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->session:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;Z)V

    .line 163
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;)V

    :cond_0
    const/4 v0, 0x0

    .line 165
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->session:Landroid/media/session/MediaSession;

    .line 166
    sget-object v2, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->appContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    const-class v4, Landroid/media/AudioManager;

    invoke-static {v3, v4}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    if-eqz v3, :cond_1

    invoke-static {v3, v2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 167
    :cond_1
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusRequest:Landroid/media/AudioFocusRequest;

    .line 168
    sget-boolean v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->legacyFocusStarted:Z

    if-eqz v0, :cond_3

    .line 169
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-class v2, Landroid/media/AudioManager;

    invoke-static {v0, v2}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    sget-object v3, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->legacyFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v0, v3}, Lcom/shilapi/xcertplay/compat/AudioCompat;->abandonFocus(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 170
    :cond_2
    sput-boolean v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->legacyFocusStarted:Z

    .line 172
    :cond_3
    sput-boolean v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusHeld:Z

    return-void
.end method

.method private final send(ILjava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01WheelKeys;->allowStandard(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/CarPlayVideo;->onMediaKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "DiPlay-MediaKeys"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "media key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> car video player "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_1
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->sendMediaButton(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 183
    :goto_0
    const-string v1, "DiPlay-MediaKeys"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "media key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> CarPlay "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sent="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 182
    monitor-exit p0

    throw p1
.end method

.method private final start(Landroid/content/Context;)V
    .locals 8

    .line 111
    const-class v0, Landroid/media/AudioManager;

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-string v3, "DiPlay-MediaKeys"

    const-string v4, "06Link CarPlay"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v1, v2, :cond_3

    if-eqz v0, :cond_0

    .line 115
    sget-object v1, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    sget-object v2, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->legacyFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/shilapi/xcertplay/compat/AudioCompat;->requestMusicFocus(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    :cond_0
    sput-boolean v5, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusHeld:Z

    .line 116
    sput-boolean v6, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->legacyFocusStarted:Z

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->sessionFlagsFor$common_release(I)I

    move-result v0

    .line 118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    new-instance v1, Landroid/media/session/MediaSession;

    invoke-direct {v1, p1, v4}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->getCallback()Lcom/shilapi/xcertplay/CarPlayMediaCallback;

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaSession$Callback;

    move-result-object p1

    sget-object v2, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->mainHandler:Landroid/os/Handler;

    invoke-static {v1, p1, v2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    if-eqz v0, :cond_1

    .line 121
    invoke-static {v1, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;I)V

    .line 122
    :cond_1
    invoke-static {v1, v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;Z)V

    .line 118
    sput-object v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->session:Landroid/media/session/MediaSession;

    .line 124
    :cond_2
    sget-boolean p1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusHeld:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "media keys active (legacy focus) focusGranted="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " sessionFlags="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_3
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v6}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 129
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 130
    invoke-static {v2, v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/4 v7, 0x2

    .line 131
    invoke-static {v2, v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 132
    invoke-static {v2}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v2

    .line 128
    invoke-static {v1, v2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 134
    new-instance v2, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda21;

    invoke-direct {v2}, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda21;-><init>()V

    .line 138
    sget-object v7, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->mainHandler:Landroid/os/Handler;

    .line 134
    invoke-static {v1, v2, v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 140
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result v0

    if-ne v0, v6, :cond_4

    const/4 v5, 0x1

    .line 141
    :cond_4
    sput-object v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusRequest:Landroid/media/AudioFocusRequest;

    .line 142
    sput-boolean v5, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusHeld:Z

    .line 143
    new-instance v0, Landroid/media/session/MediaSession;

    invoke-direct {v0, p1, v4}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->getCallback()Lcom/shilapi/xcertplay/CarPlayMediaCallback;

    move-result-object p1

    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaSession$Callback;

    move-result-object p1

    invoke-static {v0, p1, v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 145
    invoke-static {v0, v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;Z)V

    .line 143
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->session:Landroid/media/session/MediaSession;

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "media keys active focusGranted="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final start$lambda$7(I)V
    .locals 3

    .line 135
    const-string v0, "DiPlay-MediaKeys"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audio focus change="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 137
    sget-object p0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->focusHeld:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    return-void
.end method

.method private final updateLocked(Z)V
    .locals 5

    .line 99
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_2

    .line 100
    :cond_0
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 101
    sget-object v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->session:Landroid/media/session/MediaSession;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->legacyFocusStarted:Z

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->start(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->regainFocusLocked(Z)V

    .line 102
    :cond_3
    :goto_0
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->session:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_5

    .line 103
    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const-wide/16 v2, 0x236

    .line 104
    invoke-static {v1, v2, v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    :goto_1
    const-wide/16 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 105
    invoke-static {v1, p1, v2, v3, v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;

    move-result-object p1

    .line 102
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;Landroid/media/session/PlaybackState;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized attach(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    if-eq v0, p2, :cond_0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->releaseLocked()V

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->appContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01WheelKeys;->init(Landroid/content/Context;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_0
    sput-object p2, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 52
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayMediaKeys$attach$2;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys$attach$2;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->setPlaybackListener(Lkotlin/jvm/functions/Function1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final declared-synchronized detach(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 58
    :try_start_0
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->setPlaybackListener(Lkotlin/jvm/functions/Function1;)V

    .line 60
    sput-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->controller:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 61
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->releaseLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 58
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final getOpenFreeAuto()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 332
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->openFreeAuto:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final onIphonePlaying(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onKnobKey(IZ)Z
    .locals 2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 273
    :pswitch_0
    sget-object v0, Lcom/shilapi/xcertplay/airplay/WheelAction;->KNOB_RIGHT:Lcom/shilapi/xcertplay/airplay/WheelAction;

    goto :goto_0

    .line 272
    :pswitch_1
    sget-object v0, Lcom/shilapi/xcertplay/airplay/WheelAction;->KNOB_LEFT:Lcom/shilapi/xcertplay/airplay/WheelAction;

    goto :goto_0

    .line 271
    :pswitch_2
    sget-object v0, Lcom/shilapi/xcertplay/airplay/WheelAction;->KNOB_DOWN:Lcom/shilapi/xcertplay/airplay/WheelAction;

    goto :goto_0

    .line 270
    :pswitch_3
    sget-object v0, Lcom/shilapi/xcertplay/airplay/WheelAction;->KNOB_UP:Lcom/shilapi/xcertplay/airplay/WheelAction;

    goto :goto_0

    .line 274
    :cond_0
    :pswitch_4
    sget-object v0, Lcom/shilapi/xcertplay/airplay/WheelAction;->KNOB_SELECT:Lcom/shilapi/xcertplay/airplay/WheelAction;

    :goto_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 277
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "keyCodeToString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->perform(Lcom/shilapi/xcertplay/airplay/WheelAction;Ljava/lang/String;Z)V

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final onMediaAudioChanged(Z)V
    .locals 2

    .line 66
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Lcom/shilapi/xcertplay/CarPlayMediaKeys$$ExternalSyntheticLambda20;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWheelKey(IZZ)Z
    .locals 3

    const/4 v1, 0x0

    .line 197
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->actionFor(I)Lcom/shilapi/xcertplay/airplay/WheelAction;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v2, Lcom/shilapi/xcertplay/airplay/WheelAction;->SIRI:Lcom/shilapi/xcertplay/airplay/WheelAction;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    sget-object v2, Lcom/shilapi/xcertplay/airplay/WheelAction;->OPEN_FREE_AUTO:Lcom/shilapi/xcertplay/airplay/WheelAction;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/shilapi/xcertplay/airplay/WheelAction;->MODE:Lcom/shilapi/xcertplay/airplay/WheelAction;

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    .line 200
    :cond_3
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "keyCodeToString(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->perform(Lcom/shilapi/xcertplay/airplay/WheelAction;Ljava/lang/String;Z)V

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public final sessionFlagsFor$common_release(I)I
    .locals 1

    const/16 v0, 0x15

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setOpenFreeAuto(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 332
    sput-object p1, Lcom/shilapi/xcertplay/CarPlayMediaKeys;->openFreeAuto:Lkotlin/jvm/functions/Function0;

    return-void
.end method
