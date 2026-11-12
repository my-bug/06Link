.class public final Lcom/shilapi/xcertplay/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/BootReceiver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBootReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BootReceiver.kt\ncom/shilapi/xcertplay/BootReceiver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/BootReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "restoreNetworkAdb",
        "liveAdbPort",
        "",
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
.field public static final Companion:Lcom/shilapi/xcertplay/BootReceiver$Companion;

.field private static final STARTUP_ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "xcertplay-boot"


# direct methods
.method public static synthetic $r8$lambda$z1v-8eCjfabrA9ZAH7bQZxcZFdc(Lcom/shilapi/xcertplay/BootReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/BootReceiver;->restoreNetworkAdb$lambda$2(Lcom/shilapi/xcertplay/BootReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shilapi/xcertplay/BootReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/BootReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/BootReceiver;->Companion:Lcom/shilapi/xcertplay/BootReceiver$Companion;

    const/4 v0, 0x5

    .line 115
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.htc.intent.action.QUICKBOOT_POWERON"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 109
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/BootReceiver;->STARTUP_ACTIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSTARTUP_ACTIONS$cp()Ljava/util/Set;
    .locals 1

    .line 11
    sget-object v0, Lcom/shilapi/xcertplay/BootReceiver;->STARTUP_ACTIONS:Ljava/util/Set;

    return-object v0
.end method

.method private final liveAdbPort()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 96
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/BootReceiver;

    .line 97
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "service.adb.tcp.port"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 96
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final restoreNetworkAdb(Landroid/content/Context;)V
    .locals 3

    .line 64
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadKeepNetworkAdbForIpv6(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->INSTANCE:Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;->adbSecure$default(Lcom/shilapi/xcertplay/network/NetworkAdbPersistence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/RootShell;->available()Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/BootReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 68
    new-instance v0, Ljava/lang/Thread;

    .line 92
    new-instance v2, Lcom/shilapi/xcertplay/BootReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/shilapi/xcertplay/BootReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/BootReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    const-string p1, "boot-network-adb"

    .line 68
    invoke-direct {v0, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final restoreNetworkAdb$lambda$2(Lcom/shilapi/xcertplay/BootReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 7

    const-string p0, "network ADB re-armed on 5555 after boot: "

    const-string v0, "network ADB not re-armed: su is present but unusable from the app ("

    .line 73
    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    const-string v2, "id"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Lcom/shilapi/xcertplay/network/RootShell;->run(Ljava/util/List;J)Lcom/shilapi/xcertplay/network/RootShell$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/network/RootShell$Result;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 74
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "uid=0"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string/jumbo v3, "xcertplay-boot"

    if-nez v2, :cond_0

    .line 75
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :try_start_2
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 79
    :cond_0
    :try_start_3
    sget-object v0, Lcom/shilapi/xcertplay/network/RootShell;->INSTANCE:Lcom/shilapi/xcertplay/network/RootShell;

    const/4 v1, 0x4

    .line 84
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "setprop persist.adb.tcp.port 5555"

    aput-object v2, v1, v6

    const-string/jumbo v2, "setprop service.adb.tcp.port 5555"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "stop adbd"

    aput-object v2, v1, v5

    const-string/jumbo v2, "start adbd"

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 80
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-wide/16 v4, 0x1f40

    .line 79
    invoke-virtual {v0, v1, v4, v5}, Lcom/shilapi/xcertplay/network/RootShell;->run(Ljava/util/List;J)Lcom/shilapi/xcertplay/network/RootShell$Result;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    :try_start_4
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/shilapi/xcertplay/BootReceiver;->STARTUP_ACTIONS:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/BootReceiver;->Companion:Lcom/shilapi/xcertplay/BootReceiver$Companion;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/shilapi/xcertplay/BootReceiver;->liveAdbPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/BootReceiver$Companion;->mayRestoreNetworkAdb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/BootReceiver;->restoreNetworkAdb(Landroid/content/Context;)V

    .line 21
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadAutoStartOnBoot(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 24
    :cond_2
    sget-object v0, Lcom/shilapi/xcertplay/FirstRunNotice;->INSTANCE:Lcom/shilapi/xcertplay/FirstRunNotice;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/FirstRunNotice;->pending(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Head unit started ("

    const-string/jumbo v2, "xcertplay-boot"

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "); first-run notice not acknowledged yet, nothing opened"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 30
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->hasSession()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->getActive()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 35
    :cond_4
    sget-object v0, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;->INSTANCE:Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/BluetoothPairingRestoreApply;->run(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "); opening 06Link"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x34000000

    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    const-string v0, "com.sixlink.car.extra.AUTO_START"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 50
    const-string p2, "Boot auto-start could not launch CarPlayHostActivity"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 31
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "); CarPlay session already running"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
