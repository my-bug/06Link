.class public final Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;
.super Ljava/lang/Object;
.source "CarPlayHostActivity.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;->createSessionListener(I)Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayHostActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayHostActivity.kt\ncom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5970:1\n1#2:5971\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
        "onSessionActive",
        "",
        "session",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
        "onSessionEnded",
        "onPeerStalled",
        "stalled",
        "",
        "onTransportError",
        "message",
        "",
        "onDebugLog",
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


# instance fields
.field final synthetic $controllerGeneration:I

.field final synthetic this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;


# direct methods
.method public static synthetic $r8$lambda$1qygKd0WvTCp5wVfiZtdegw-N3c(Lcom/shilapi/xcertplay/CarPlayHostActivity;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->onTransportError$lambda$3(Lcom/shilapi/xcertplay/CarPlayHostActivity;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BpnlIqfJp13-yDXzfcZEJ9xb2do(ILcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->onSessionActive$lambda$0(ILcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DnHTW_I9dRU7a5xC7BjAwcs7-hQ(ILcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->onDebugLog$lambda$5(ILcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YIvQFQDzvNA1KEULIXbUPRCRF70(ILcom/shilapi/xcertplay/CarPlayHostActivity;ZLcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->onPeerStalled$lambda$2(ILcom/shilapi/xcertplay/CarPlayHostActivity;ZLcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iKUD0t86dLWBqpaHIkTuI0u6k5E(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->onSessionEnded$lambda$1(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    return-void
.end method

.method constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iput p2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->$controllerGeneration:I

    .line 4371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onDebugLog$lambda$5(ILcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V
    .locals 3

    .line 4444
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->restartGeneration:I
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getRestartGeneration$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)I

    move-result v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 4447
    :cond_0
    sget-object p0, Lcom/shilapi/xcertplay/DisplayDiagnosticSnapshot;->INSTANCE:Lcom/shilapi/xcertplay/DisplayDiagnosticSnapshot;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->displayDiagnosticAttempt:Ljava/lang/String;
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getDisplayDiagnosticAttempt$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/shilapi/xcertplay/DisplayDiagnosticSnapshot;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4448
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->menuOpen:Z
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMenuOpen$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x2

    const/4 v0, 0x0

    .line 4449
    const-string v1, "TRACE "

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, p0, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4450
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendFileLog(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendFileLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    return-void

    .line 4452
    :cond_2
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendLog(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static final onPeerStalled$lambda$2(ILcom/shilapi/xcertplay/CarPlayHostActivity;ZLcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1

    .line 4418
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->restartGeneration:I
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getRestartGeneration$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)I

    move-result v0

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 4419
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->activeAirPlaySession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getActiveAirPlaySession$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object p0

    if-ne p0, p3, :cond_2

    :cond_1
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->showLinkStalled(Z)V
    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$showLinkStalled(Lcom/shilapi/xcertplay/CarPlayHostActivity;Z)V

    :cond_2
    if-eqz p2, :cond_3

    .line 4420
    const-string p0, "iPhone silent: picture marked as stopped"

    goto :goto_0

    :cond_3
    const-string p0, "iPhone answering again"

    :goto_0
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendLog(Ljava/lang/String;)V
    invoke-static {p1, p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static final onSessionActive$lambda$0(ILcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 10

    .line 4374
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->restartGeneration:I
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getRestartGeneration$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)I

    move-result v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 4377
    :cond_0
    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setActiveAirPlaySession$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    const/4 p0, 0x0

    .line 4378
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->showLinkStalled(Z)V
    invoke-static {p1, p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$showLinkStalled(Lcom/shilapi/xcertplay/CarPlayHostActivity;Z)V

    .line 4379
    sget-object p2, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->setActive(Z)V

    .line 4380
    sget-object p2, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->wirelessEnabled:Z
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getWirelessEnabled$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/shilapi/xcertplay/ConnectionProgress;->connected(Z)V

    .line 4381
    sget-object v1, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->INSTANCE:Lcom/shilapi/xcertplay/orchestration/ConnectionLog;

    .line 4382
    sget-object v2, Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;->AIRPLAY:Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;

    const/16 v8, 0x18

    const/4 v9, 0x0

    .line 4381
    const-string v3, "session-active"

    const-string v4, "ok"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v9}, Lcom/shilapi/xcertplay/orchestration/ConnectionLog;->note$default(Lcom/shilapi/xcertplay/orchestration/ConnectionLog;Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Layer;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/shilapi/xcertplay/orchestration/ConnectionLog$Entry;

    .line 4385
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->armFirstFrameWatch()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$armFirstFrameWatch(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    .line 4386
    invoke-static {p1, p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setReconnectAttempts$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;I)V

    .line 4387
    invoke-static {p1, p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setWiredRetryStopped$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Z)V

    const/4 p0, 0x0

    .line 4388
    invoke-static {p1, p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setLastWiredProblem$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/orchestration/SetupProblem;)V

    .line 4389
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->usbPresence:Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getUsbPresence$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/orchestration/UsbPresenceTracker;->reset()V

    .line 4390
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->clearProblem()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$clearProblem(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    .line 4391
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->syncAirPlayDarkMode()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$syncAirPlayDarkMode(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    .line 4392
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->menuOpen:Z
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMenuOpen$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    .line 4393
    :cond_1
    const-string p0, "AirPlay session active"

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendLog(Ljava/lang/String;)V
    invoke-static {p1, p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static final onSessionEnded$lambda$1(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V
    .locals 6

    .line 4399
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->activeAirPlaySession:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getActiveAirPlaySession$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    invoke-static {p0, v1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setActiveAirPlaySession$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 4400
    :cond_0
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->restartGeneration:I
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getRestartGeneration$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->stopFirstFrameWatch()V
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$stopFirstFrameWatch(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    sget-object p1, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/ConnectionProgress;->picture(Lcom/shilapi/xcertplay/ConnectionProgress$Picture;)V

    :cond_1
    const/4 p1, 0x0

    .line 4401
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->showLinkStalled(Z)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$showLinkStalled(Lcom/shilapi/xcertplay/CarPlayHostActivity;Z)V

    .line 4402
    sget-object v0, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayBackgroundSession;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/CarPlayBackgroundSession;->setActive(Z)V

    .line 4403
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->menuOpen:Z
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMenuOpen$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->restartGeneration:I
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getRestartGeneration$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)I

    move-result v0

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 4406
    :cond_2
    sget-object p2, Lcom/shilapi/xcertplay/ConnectionProgress;->INSTANCE:Lcom/shilapi/xcertplay/ConnectionProgress;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/ConnectionProgress;->lost(Z)V

    .line 4407
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->activeScreenStreamTypes:Ljava/util/Set;
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getActiveScreenStreamTypes$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 4408
    const-string p1, "CarPlay session ended"

    const/4 p2, 0x1

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->homeInsteadOfWaitingPage(Ljava/lang/String;Z)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$homeInsteadOfWaitingPage(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;Z)V

    .line 4409
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->carplay_session_ended_reconnecting:I

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->showStage(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$showStage(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    .line 4410
    const-string p1, "AirPlay session ended; reconnecting from scratch"

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendLog(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    .line 4411
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->sessionLostProblem()Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$sessionLostProblem(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "AirPlay session ended"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->reconnectAfterLoss$default(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/SetupProblem;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final onTransportError$lambda$3(Lcom/shilapi/xcertplay/CarPlayHostActivity;ILjava/lang/String;)V
    .locals 7

    .line 4426
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->menuOpen:Z
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMenuOpen$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->restartGeneration:I
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getRestartGeneration$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 4429
    :cond_0
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->activeScreenStreamTypes:Ljava/util/Set;
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getActiveScreenStreamTypes$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 4430
    const-string p1, "CarPlay transport error"

    const/4 v0, 0x1

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->homeInsteadOfWaitingPage(Ljava/lang/String;Z)V
    invoke-static {p0, p1, v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$homeInsteadOfWaitingPage(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;Z)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 4432
    const-string v1, "Hotspot keeps restarting without an IP address"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, p1, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/shilapi/xcertplay/host/R$string;->hotspot_keeps_restarting:I

    goto :goto_0

    .line 4433
    :cond_1
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->reconnecting_to_your_iphone:I

    .line 4431
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->showStage(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$showStage(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    .line 4435
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CarPlay transport error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; reconnecting from scratch"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendLog(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    .line 4436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->sessionLostProblem()Lcom/shilapi/xcertplay/orchestration/SetupProblem;
    invoke-static {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$sessionLostProblem(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/orchestration/SetupProblem;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->reconnectAfterLoss$default(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;Lcom/shilapi/xcertplay/orchestration/SetupProblem;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 4371
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onDebugLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4442
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;

    sget-object v0, Lcom/shilapi/xcertplay/DiagnosticRedactor;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticRedactor;

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/DiagnosticRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 4443
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->$controllerGeneration:I

    new-instance v2, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda1;-><init>(ILcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V
    .locals 0

    .line 4371
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V

    return-void
.end method

.method public onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 4371
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V
    .locals 3

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4417
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->$controllerGeneration:I

    new-instance v2, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v0, p2, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda2;-><init>(ILcom/shilapi/xcertplay/CarPlayHostActivity;ZLcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V
    .locals 0
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

    .line 4371
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V

    return-void
.end method

.method public onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 3

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4373
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->$controllerGeneration:I

    new-instance v2, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda0;-><init>(ILcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 3

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4398
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->$controllerGeneration:I

    new-instance v2, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, p1, v1}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;Lcom/shilapi/xcertplay/airplay/AirPlaySession;I)V

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTransportError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4425
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    iget v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1;->$controllerGeneration:I

    new-instance v2, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity$createSessionListener$1$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 4371
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    .line 4371
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener$-CC;->$default$onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method
