.class public final Lcom/shilapi/xcertplay/DiPlayActivity$onCreate$6;
.super Landroidx/activity/OnBackPressedCallback;
.source "DiPlayActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;->onCreate(Landroid/os/Bundle;)V
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
        "com/shilapi/xcertplay/DiPlayActivity$onCreate$6",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/DiPlayActivity;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$onCreate$6;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    const/4 p1, 0x1

    .line 401
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$onCreate$6;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    # getter for: Lcom/shilapi/xcertplay/DiPlayActivity;->page:Ljava/lang/String;
    invoke-static {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$getPage$p(Lcom/shilapi/xcertplay/DiPlayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "home"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$onCreate$6;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity;->goBack()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$goBack(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity$onCreate$6;->setEnabled(Z)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$onCreate$6;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/DiPlayActivity$onCreate$6;->setEnabled(Z)V

    return-void
.end method
