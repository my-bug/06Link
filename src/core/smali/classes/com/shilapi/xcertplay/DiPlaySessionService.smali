.class public final Lcom/shilapi/xcertplay/DiPlaySessionService;
.super Landroid/app/Service;
.source "DiPlaySessionService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/DiPlaySessionService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiPlaySessionService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiPlaySessionService.kt\ncom/shilapi/xcertplay/DiPlaySessionService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0014J\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\"\u0010\u000c\u001a\u00020\r2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiPlaySessionService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "attachBaseContext",
        "",
        "newBase",
        "Landroid/content/Context;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "resumeAfterRestart",
        "",
        "onTaskRemoved",
        "rootIntent",
        "Companion",
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
.field private static final CHANNEL:Ljava/lang/String; = "diplay_connection"

.field public static final Companion:Lcom/shilapi/xcertplay/DiPlaySessionService$Companion;


# direct methods
.method public static synthetic $r8$lambda$cLY9xUDa9NeXLLTdxh-7eJ_388E(Lcom/shilapi/xcertplay/DiPlaySessionService;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiPlaySessionService;->onStartCommand$lambda$1(Lcom/shilapi/xcertplay/DiPlaySessionService;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qFDeTcktmXFl9YYhET5RXI6Yr84()V
    .locals 0

    invoke-static {}, Lcom/shilapi/xcertplay/DiPlaySessionService;->onStartCommand$lambda$1$lambda$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/DiPlaySessionService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/DiPlaySessionService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/DiPlaySessionService;->Companion:Lcom/shilapi/xcertplay/DiPlaySessionService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static final onStartCommand$lambda$1(Lcom/shilapi/xcertplay/DiPlaySessionService;)Lkotlin/Unit;
    .locals 1

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlaySessionService;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p0, Lcom/shilapi/xcertplay/DiPlaySessionService$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlaySessionService$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onStartCommand$lambda$1$lambda$0()V
    .locals 2

    .line 29
    sget-object v0, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    const-string v1, "notification Disconnect"

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/HostLaunch;->personStopped(Ljava/lang/String;)V

    return-void
.end method

.method private final resumeAfterRestart()Z
    .locals 3

    .line 77
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->getActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadAutoStartOnBoot(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 79
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/FirstRunNotice;->INSTANCE:Lcom/shilapi/xcertplay/FirstRunNotice;

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/FirstRunNotice;->pending(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 80
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x34000000

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    const-string v1, "com.sixlink.car.extra.AUTO_START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/DiPlaySessionService;

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlaySessionService;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/shilapi/xcertplay/AppLocale;->INSTANCE:Lcom/shilapi/xcertplay/AppLocale;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/AppLocale;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .line 25
    sget-object p2, Lcom/shilapi/xcertplay/LogcatRecorder;->INSTANCE:Lcom/shilapi/xcertplay/LogcatRecorder;

    move-object p3, p0

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/shilapi/xcertplay/LogcatRecorder;->start(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v0, Lcom/shilapi/xcertplay/DiPlaySessionService;->Companion:Lcom/shilapi/xcertplay/DiPlaySessionService$Companion;

    invoke-virtual {v0, p3}, Lcom/shilapi/xcertplay/DiPlaySessionService$Companion;->stopAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 27
    const-string/jumbo p1, "xcertplay-boot"

    const-string/jumbo p2, "stopping the running CarPlay session: notification Disconnect"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object p1, Lcom/shilapi/xcertplay/HostLaunch;->INSTANCE:Lcom/shilapi/xcertplay/HostLaunch;

    invoke-virtual {p1, v2}, Lcom/shilapi/xcertplay/HostLaunch;->setUserStopped(Z)V

    .line 29
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    new-instance p2, Lcom/shilapi/xcertplay/DiPlaySessionService$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/shilapi/xcertplay/DiPlaySessionService$$ExternalSyntheticLambda2;-><init>(Lcom/shilapi/xcertplay/DiPlaySessionService;)V

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->stop(Lkotlin/jvm/functions/Function0;)V

    .line 30
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlaySessionService;->stopSelf()V

    return v1

    :cond_1
    if-nez p1, :cond_2

    .line 36
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->getActive()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/shilapi/xcertplay/DiPlaySessionService;->resumeAfterRestart()Z

    move-result p1

    if-nez p1, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlaySessionService;->stopSelf()V

    return v1

    .line 42
    :cond_2
    invoke-static {p3}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 43
    new-instance p2, Landroidx/core/app/NotificationChannelCompat$Builder;

    const-string v3, "diplay_connection"

    invoke-direct {p2, v3, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;-><init>(Ljava/lang/String;I)V

    .line 44
    sget v1, Lcom/shilapi/xcertplay/host/R$string;->notification_channel_carplay:I

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/DiPlaySessionService;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/app/NotificationChannelCompat$Builder;->build()Landroidx/core/app/NotificationChannelCompat;

    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroidx/core/app/NotificationChannelCompat;)V

    .line 45
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/shilapi/xcertplay/CarPlayHostActivity;

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p2, 0x0

    const/high16 v1, 0xc000000

    invoke-static {p3, p2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 46
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/shilapi/xcertplay/DiPlaySessionService;

    invoke-direct {v4, p3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p3}, Lcom/shilapi/xcertplay/DiPlaySessionService$Companion;->stopAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p3, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 47
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p3, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    sget v3, Lcom/shilapi/xcertplay/host/R$drawable;->ic_diplay_notification:I

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 49
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->app_name:I

    invoke-virtual {p0, v3}, Lcom/shilapi/xcertplay/DiPlaySessionService;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 50
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->notification_carplay_running:I

    invoke-virtual {p0, v3}, Lcom/shilapi/xcertplay/DiPlaySessionService;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 52
    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    sget v3, Lcom/shilapi/xcertplay/host/R$string;->disconnect:I

    invoke-virtual {p0, v3}, Lcom/shilapi/xcertplay/DiPlaySessionService;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v1, p2, v3, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_5

    .line 55
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_3

    const-string p2, "android.permission.RECORD_AUDIO"

    invoke-static {p0, p2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Lcom/shilapi/xcertplay/DiPlaySessionService;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0x90

    goto :goto_1

    :cond_3
    const/16 p2, 0x10

    .line 60
    :goto_1
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v0, p3}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadLocationReportingEnabled(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 61
    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, p3}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Lcom/shilapi/xcertplay/DiPlaySessionService;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_4

    or-int/lit8 p2, p2, 0x8

    .line 64
    :cond_4
    invoke-static {p0, v2, p1, p2}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Lcom/shilapi/xcertplay/DiPlaySessionService;ILandroid/app/Notification;I)V

    goto :goto_2

    .line 65
    :cond_5
    invoke-virtual {p0, v2, p1}, Lcom/shilapi/xcertplay/DiPlaySessionService;->startForeground(ILandroid/app/Notification;)V

    :goto_2
    return v2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .line 88
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->endNow()V

    .line 89
    const-string/jumbo p1, "xcertplay-boot"

    const-string/jumbo v0, "stopping the running CarPlay session: task removed from recents"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->stop$default(Lcom/shilapi/xcertplay/CarPlayBackgroundSession;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiPlaySessionService;->stopSelf()V

    return-void
.end method
