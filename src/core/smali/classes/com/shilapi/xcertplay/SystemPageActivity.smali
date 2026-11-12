.class public final Lcom/shilapi/xcertplay/SystemPageActivity;
.super Landroid/app/Activity;
.source "SystemPageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/SystemPageActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemPageActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemPageActivity.kt\ncom/shilapi/xcertplay/SystemPageActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\n\u001a\u00020\u0007H\u0014J\u0008\u0010\u000b\u001a\u00020\u0007H\u0014J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\tH\u0014J\u0008\u0010\u000e\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/SystemPageActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "left",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "finish",
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
.field public static final Companion:Lcom/shilapi/xcertplay/SystemPageActivity$Companion;

.field public static final EXTRA_TARGET:Ljava/lang/String; = "com.sixlink.car.extra.SYSTEM_PAGE"

.field private static final KEY_LEFT:Ljava/lang/String; = "left"

.field private static final TAG:Ljava/lang/String; = "xcertplay-boot"


# instance fields
.field private left:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/SystemPageActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/SystemPageActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/SystemPageActivity;->Companion:Lcom/shilapi/xcertplay/SystemPageActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0, v0}, Lcom/shilapi/xcertplay/SystemPageActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 29
    const-string v0, "left"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/SystemPageActivity;->left:Z

    if-eqz p1, :cond_1

    goto :goto_2

    .line 31
    :cond_1
    sget-object p1, Lcom/shilapi/xcertplay/SystemPageActivity;->Companion:Lcom/shilapi/xcertplay/SystemPageActivity$Companion;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SystemPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/SystemPageActivity$Companion;->targetOf$common_release(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 32
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/SystemPageActivity;

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/SystemPageActivity;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 33
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "system page did not start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xcertplay-boot"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 35
    :cond_3
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/shilapi/xcertplay/host/R$string;->open_this_setting_from_your_car_s_settings_app:I

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/SystemPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 37
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SystemPageActivity;->finish()V

    :goto_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/SystemPageActivity;->left:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/SystemPageActivity;->left:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SystemPageActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 53
    const-string v0, "left"

    iget-boolean v1, p0, Lcom/shilapi/xcertplay/SystemPageActivity;->left:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
