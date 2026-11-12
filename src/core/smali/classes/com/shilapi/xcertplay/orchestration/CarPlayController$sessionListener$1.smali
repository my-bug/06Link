.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;
.super Ljava/lang/Object;
.source "CarPlayController.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Lcom/shilapi/xcertplay/airplay/PairingStore;Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlayMediaHandler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/shilapi/xcertplay/transport/Iap2LocationProvider;Lcom/shilapi/xcertplay/transport/VehicleStatusProvider;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayController.kt\ncom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3412:1\n1#2:3413\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J.\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J.\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\t2\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "com/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
        "onSessionActive",
        "",
        "session",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
        "onSessionEnded",
        "onTransportError",
        "message",
        "",
        "onDeviceInfo",
        "info",
        "Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;",
        "onHostUiRequested",
        "onRemoteControlMessage",
        "streamId",
        "",
        "",
        "",
        "onVideoPlaybackUiRequested",
        "onCommand",
        "type",
        "params",
        "onDebugLog",
        "onPeerStalled",
        "stalled",
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


# instance fields
.field final synthetic this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 477
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, ","

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AirPlay command type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 476
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->config:Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getConfig$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayRuntimeConfig;->getTransport()Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;->WIRELESS:Lcom/shilapi/xcertplay/orchestration/CarPlayTransport;

    if-ne v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->closed:Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getClosed$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->isBluetoothHandoffCommand(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$isBluetoothHandoffCommand(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessHandoffRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getWirelessHandoffRequested$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 487
    const-string/jumbo v1, "wireless CarPlay Bluetooth handoff requested; waiting for tunnel iAP2 readiness"

    .line 486
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->wirelessGeneration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getWirelessGeneration$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->armWirelessHandoffWatchdog(I)V
    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$armWirelessHandoffWatchdog(Lcom/shilapi/xcertplay/orchestration/CarPlayController;I)V

    .line 491
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->maybeCompleteWirelessHandoff()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$maybeCompleteWirelessHandoff(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getUiListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public onDebugLog(Ljava/lang/String;)V
    .locals 5

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "TRACE "

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog(Ljava/lang/String;Z)V
    invoke-static {v0, p1, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$debugLog(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;Z)V

    return-void
.end method

.method public onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V
    .locals 7

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 441
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;->getWifiMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AirPlay device info nameLength="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " deviceId="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wifiMac="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " model="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 440
    invoke-static {v0, v1, v4, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    .line 446
    sget-object v1, Lcom/shilapi/xcertplay/airplay/LastConnectedIphone;->INSTANCE:Lcom/shilapi/xcertplay/airplay/LastConnectedIphone;

    .line 447
    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getAppContext$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "access$getAppContext$p(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;->getSourceVersion()Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/shilapi/xcertplay/airplay/LastConnectedIphone;->remember(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 445
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getUiListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V

    :cond_0
    return-void
.end method

.method public onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 7

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    const-string v1, "CarPlay requested the car UI; opening the head-unit home screen"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;

    .line 458
    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getAppContext$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/content/Context;

    move-result-object v0

    .line 459
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v5, 0x10000000

    .line 460
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 458
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 462
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 457
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

    .line 462
    :goto_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Car home screen could not open: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getUiListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    :cond_1
    return-void
.end method

.method public onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getUiListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V

    :cond_0
    return-void
.end method

.method public onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->getVideoListener()Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3, p4}, Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;->onVideoMessage(JLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 5

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 410
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    iget-object v1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->appContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getAppContext$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "access$getAppContext$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->start(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/shilapi/xcertplay/E01ClusterMode;->sessionStarted(Landroid/content/Context;)V

    .line 412
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->getVideoListener()Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/airplay/VideoInCar;->INSTANCE:Lcom/shilapi/xcertplay/airplay/VideoInCar;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/VideoInCar;->getAllowed()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->setVideoPlaybackAllowed(Z)Z

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$setActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 415
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 416
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getControllerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "unknown"

    .line 417
    :cond_1
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getHost()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AirPlay session active controller="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " peer="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 415
    invoke-static {v0, v1, v4, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getUiListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    :cond_2
    return-void
.end method

.method public onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 5

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$setActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 425
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/hud/BydNavigationOutputs;->endNow()V

    .line 426
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->getVideoListener()Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;->onVideoSessionEnded()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->playbackStatus:Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getPlaybackStatus$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;

    move-result-object v0

    iget-object v2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    monitor-enter v0

    :try_start_0
    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->playbackStatus:Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;
    invoke-static {v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getPlaybackStatus$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;->clear()Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->getPlaybackListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 429
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->getHost()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AirPlay session ended peer="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getUiListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    :cond_2
    return-void
.end method

.method public onTransportError(Ljava/lang/String;)V
    .locals 5

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AirPlay transport error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->uiListener:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getUiListener$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onTransportError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 407
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 5

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "CarPlay requested the car\'s video player"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # getter for: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->activeSession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {v0}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$getActiveSession$p(Lcom/shilapi/xcertplay/orchestration/CarPlayController;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$sessionListener$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->getVideoListener()Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayVideoListener;->onVideoUiRequested()V

    :cond_0
    return-void
.end method
