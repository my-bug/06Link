.class public final Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyVolumeFollower.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/media/KeyVolumeFollower;-><init>(Landroid/content/Context;ILkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyVolumeFollower.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyVolumeFollower.kt\ncom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "c",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/media/KeyVolumeFollower;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;->this$0:Lcom/shilapi/xcertplay/media/KeyVolumeFollower;

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    if-eqz p2, :cond_4

    .line 31
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 32
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 33
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;->this$0:Lcom/shilapi/xcertplay/media/KeyVolumeFollower;

    const/4 p2, 0x0

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;

    # getter for: Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->audio:Landroid/media/AudioManager;
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->access$getAudio$p(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move-object p2, p1

    :goto_2
    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 34
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;->this$0:Lcom/shilapi/xcertplay/media/KeyVolumeFollower;

    const/4 p2, 0x1

    const/4 v7, 0x0

    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;

    # getter for: Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->audio:Landroid/media/AudioManager;
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->access$getAudio$p(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 35
    sget-object v1, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->Companion:Lcom/shilapi/xcertplay/media/KeyVolumeFollower$Companion;

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;->this$0:Lcom/shilapi/xcertplay/media/KeyVolumeFollower;

    # getter for: Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->trackStream:I
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->access$getTrackStream$p(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$Companion;->decide(IIIIZ)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;->this$0:Lcom/shilapi/xcertplay/media/KeyVolumeFollower;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "volume stream="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " index="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> CarPlay music gain=%.3f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v4, p2, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-static {v4, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DiPlay-KeyVolume"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;

    # getter for: Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->app:Landroid/content/Context;
    invoke-static {v1}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->access$getApp$p(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "free_auto_key_volume"

    invoke-virtual {p2, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "last_stream"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p2, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :goto_5
    # getter for: Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->onGain:Lkotlin/jvm/functions/Function2;
    invoke-static {v1}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->access$getOnGain$p(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)Lkotlin/jvm/functions/Function2;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
