.class public final Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1;
.super Ljava/lang/Object;
.source "BydHudBridge.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/hud/BydHudBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBydHudBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BydHudBridge.kt\ncom/shilapi/xcertplay/hud/BydHudBridge$connection$1\n+ 2 BydHudBridge.kt\ncom/shilapi/xcertplay/hud/BydHudBridge\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,286:1\n237#2,7:287\n244#2,9:295\n236#2,8:304\n244#2,9:313\n1#3:294\n1#3:312\n*S KotlinDebug\n*F\n+ 1 BydHudBridge.kt\ncom/shilapi/xcertplay/hud/BydHudBridge$connection$1\n*L\n217#1:287,7\n217#1:295,9\n218#1:304,8\n218#1:313,9\n217#1:294\n218#1:312\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/shilapi/xcertplay/hud/BydHudBridge$connection$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "onBindingDied",
        "onNullBinding",
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


# direct methods
.method public static synthetic $r8$lambda$BFhC1RCveUs2Jg1zMfi2TnEcqPw()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1;->onServiceDisconnected$lambda$3()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$UI_e8BeYc0GMLptls6DPbKIEtuE()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1;->onNullBinding$lambda$5()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$aW1_5r8XSCPaXa7vf3S1xo_KHZI()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1;->onBindingDied$lambda$4()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$cJu3ZItK9F2K5RJWS_AQZjRHB6M(Landroid/os/IBinder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1;->onServiceConnected$lambda$2(Landroid/os/IBinder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onBindingDied$lambda$4()Lkotlin/Unit;
    .locals 1

    .line 232
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    # invokes: Lcom/shilapi/xcertplay/hud/BydHudBridge;->resetBindingLocked()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$resetBindingLocked(Lcom/shilapi/xcertplay/hud/BydHudBridge;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onNullBinding$lambda$5()Lkotlin/Unit;
    .locals 1

    .line 233
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    # invokes: Lcom/shilapi/xcertplay/hud/BydHudBridge;->resetBindingLocked()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$resetBindingLocked(Lcom/shilapi/xcertplay/hud/BydHudBridge;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onServiceConnected$lambda$2(Landroid/os/IBinder;)Lkotlin/Unit;
    .locals 10

    .line 215
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$setBinder$p(Landroid/os/IBinder;)V

    .line 216
    sget-object p0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$setBinding$p(Z)V

    .line 217
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    .line 287
    # getter for: Lcom/shilapi/xcertplay/hud/BydHudBridge;->binder:Landroid/os/IBinder;
    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$getBinder$p()Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo v1, "ts.car.someip.sdk.ISomeIpServerInterface"

    const-string v2, "DiPlay-BYD-HUD"

    const/4 v3, 0x0

    const-string v4, "obtain(...)"

    const/4 v5, -0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    .line 288
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    :try_start_0
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 217
    # getter for: Lcom/shilapi/xcertplay/hud/BydHudBridge;->callback:Lcom/shilapi/xcertplay/hud/BydHudBridge$callback$1;
    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$getCallback$p()Lcom/shilapi/xcertplay/hud/BydHudBridge$callback$1;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 293
    invoke-interface {v0, p0, v6, v7, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 295
    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 302
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    const/4 p0, 0x0

    goto :goto_1

    .line 293
    :cond_1
    :try_start_1
    const-string p0, "Unsupported transaction 1"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 298
    :try_start_2
    const-string v0, "SOME/IP transaction 1 failed"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 301
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 302
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :goto_1
    if-nez p0, :cond_4

    .line 218
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    .line 305
    # getter for: Lcom/shilapi/xcertplay/hud/BydHudBridge;->binder:Landroid/os/IBinder;
    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$getBinder$p()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 306
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    :try_start_3
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-wide v8, 0xb010a00010000L

    .line 218
    invoke-virtual {v6, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x4

    .line 311
    invoke-interface {v0, v1, v6, v7, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    .line 314
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move v5, v0

    goto :goto_2

    .line 311
    :cond_3
    :try_start_4
    const-string v0, "Unsupported transaction 4"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 316
    :try_start_5
    const-string v1, "SOME/IP transaction 4 failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 319
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 319
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    throw p0

    .line 220
    :cond_4
    :goto_2
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudProtocol;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudProtocol;

    invoke-virtual {v0, v5}, Lcom/shilapi/xcertplay/hud/BydHudProtocol;->serviceStarted(I)Z

    move-result v0

    invoke-static {v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$setStarted$p(Z)V

    .line 221
    # getter for: Lcom/shilapi/xcertplay/hud/BydHudBridge;->started:Z
    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$getStarted$p()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SOME/IP connected, callback="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " startResult="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " started="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object p0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    invoke-static {v3}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$setShowing$p(Z)V

    .line 223
    sget-object p0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    # invokes: Lcom/shilapi/xcertplay/hud/BydHudBridge;->sendCurrentLocked()V
    invoke-static {p0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$sendCurrentLocked(Lcom/shilapi/xcertplay/hud/BydHudBridge;)V

    .line 224
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_3
    move-exception p0

    .line 301
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 302
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private static final onServiceDisconnected$lambda$3()Lkotlin/Unit;
    .locals 1

    .line 228
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$setBinder$p(Landroid/os/IBinder;)V

    .line 229
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$setStarted$p(Z)V

    .line 230
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1$$ExternalSyntheticLambda2;-><init>()V

    # invokes: Lcom/shilapi/xcertplay/hud/BydHudBridge;->onGatewayCallback(Lkotlin/jvm/functions/Function0;)V
    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$onGatewayCallback(Lcom/shilapi/xcertplay/hud/BydHudBridge;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1$$ExternalSyntheticLambda0;-><init>()V

    # invokes: Lcom/shilapi/xcertplay/hud/BydHudBridge;->onGatewayCallback(Lkotlin/jvm/functions/Function0;)V
    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$onGatewayCallback(Lcom/shilapi/xcertplay/hud/BydHudBridge;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;)V

    # invokes: Lcom/shilapi/xcertplay/hud/BydHudBridge;->onGatewayCallback(Lkotlin/jvm/functions/Function0;)V
    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$onGatewayCallback(Lcom/shilapi/xcertplay/hud/BydHudBridge;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget-object p1, Lcom/shilapi/xcertplay/hud/BydHudBridge;->INSTANCE:Lcom/shilapi/xcertplay/hud/BydHudBridge;

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge$connection$1$$ExternalSyntheticLambda3;-><init>()V

    # invokes: Lcom/shilapi/xcertplay/hud/BydHudBridge;->onGatewayCallback(Lkotlin/jvm/functions/Function0;)V
    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/hud/BydHudBridge;->access$onGatewayCallback(Lcom/shilapi/xcertplay/hud/BydHudBridge;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
