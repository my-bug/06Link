.class public final Lcom/shilapi/xcertplay/Appearance$dialog$1;
.super Landroid/app/AlertDialog$Builder;
.source "Appearance.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/Appearance;->dialog(Landroid/content/Context;Z)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppearance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Appearance.kt\ncom/shilapi/xcertplay/Appearance$dialog$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1#2:136\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0002J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/shilapi/xcertplay/Appearance$dialog$1",
        "Landroid/app/AlertDialog$Builder;",
        "bringOwnerForward",
        "",
        "create",
        "Landroid/app/AlertDialog;",
        "show",
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
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/Appearance$dialog$1;->$context:Landroid/content/Context;

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private final bringOwnerForward()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/shilapi/xcertplay/Appearance$dialog$1;->$context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v2, v0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_2

    .line 96
    :cond_2
    instance-of v0, v2, Lcom/shilapi/xcertplay/DiPlayActivity;

    const-string v1, "AlertDialog"

    if-eqz v0, :cond_3

    check-cast v2, Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-virtual {v2, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->bringToFrontForDialog$common_release(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_3
    instance-of v0, v2, Lcom/shilapi/xcertplay/CarPlayHostActivity;

    if-eqz v0, :cond_4

    check-cast v2, Lcom/shilapi/xcertplay/CarPlayHostActivity;

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->bringForwardForDialog$common_release(Ljava/lang/String;Z)V

    return-void

    .line 98
    :cond_4
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/Appearance$dialog$1;

    .line 100
    new-instance v0, Landroid/content/Intent;

    move-object v1, v2

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20030000

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 99
    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 107
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 98
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 2

    .line 112
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/Appearance$dialog$1;->bringOwnerForward()V

    const-string v1, "also(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/shilapi/xcertplay/Appearance$dialog$1;->bringOwnerForward()V

    .line 116
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    invoke-virtual {v1, v0}, Lcom/shilapi/xcertplay/Appearance;->followAppDirection(Landroid/app/AlertDialog;)V

    const-string v1, "also(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
