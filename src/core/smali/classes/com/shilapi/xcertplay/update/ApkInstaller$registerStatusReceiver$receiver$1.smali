.class public final Lcom/shilapi/xcertplay/update/ApkInstaller$registerStatusReceiver$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "ApkInstaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/update/ApkInstaller;->registerStatusReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApkInstaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApkInstaller.kt\ncom/shilapi/xcertplay/update/ApkInstaller$registerStatusReceiver$receiver$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,358:1\n1#2:359\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/shilapi/xcertplay/update/ApkInstaller$registerStatusReceiver$receiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field final synthetic $app:Landroid/content/Context;

.field final synthetic $onResult:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$registerStatusReceiver$receiver$1;->$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$registerStatusReceiver$receiver$1;->$onResult:Lkotlin/jvm/functions/Function2;

    .line 183
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 186
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.intent.extra.INTENT"

    if-lt v0, v1, :cond_0

    .line 190
    const-class v0, Landroid/content/Intent;

    invoke-static {p2, v2, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    :goto_0
    if-eqz p2, :cond_1

    const/high16 v0, 0x10000000

    .line 194
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    :cond_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/update/ApkInstaller$registerStatusReceiver$receiver$1;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 198
    :cond_2
    sget-object p1, Lcom/shilapi/xcertplay/update/ApkInstaller;->INSTANCE:Lcom/shilapi/xcertplay/update/ApkInstaller;

    iget-object p2, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$registerStatusReceiver$receiver$1;->$app:Landroid/content/Context;

    move-object v3, p0

    check-cast v3, Landroid/content/BroadcastReceiver;

    # invokes: Lcom/shilapi/xcertplay/update/ApkInstaller;->unregisterStatusReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    invoke-static {p1, p2, v3}, Lcom/shilapi/xcertplay/update/ApkInstaller;->access$unregisterStatusReceiver(Lcom/shilapi/xcertplay/update/ApkInstaller;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 199
    iget-object p1, p0, Lcom/shilapi/xcertplay/update/ApkInstaller$registerStatusReceiver$receiver$1;->$onResult:Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
