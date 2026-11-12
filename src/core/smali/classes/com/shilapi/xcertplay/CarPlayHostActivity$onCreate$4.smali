.class public final Lcom/shilapi/xcertplay/CarPlayHostActivity$onCreate$4;
.super Landroidx/activity/OnBackPressedCallback;
.source "CarPlayHostActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/shilapi/xcertplay/CarPlayHostActivity$onCreate$4",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
        "",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$onCreate$4;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    const/4 p1, 0x1

    .line 542
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$onCreate$4;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->menuOpen:Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMenuOpen$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$onCreate$4;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->safeAreaEditorActive:Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getSafeAreaEditorActive$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$onCreate$4;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->closeSafeAreaEditor()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$closeSafeAreaEditor(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$onCreate$4;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->cancelSettingsEdits()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$cancelSettingsEdits(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$onCreate$4;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->showDiPlayHome$default(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
