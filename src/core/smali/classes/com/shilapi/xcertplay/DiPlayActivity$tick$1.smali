.class public final Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;
.super Ljava/lang/Object;
.source "DiPlayActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;-><init>()V
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
        "com/shilapi/xcertplay/DiPlayActivity$tick$1",
        "Ljava/lang/Runnable;",
        "run",
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

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity;->autoReturnTick()Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$autoReturnTick(Lcom/shilapi/xcertplay/DiPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/shilapi/xcertplay/Appearance;->INSTANCE:Lcom/shilapi/xcertplay/Appearance;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/shilapi/xcertplay/Appearance;->isDark$default(Lcom/shilapi/xcertplay/Appearance;Landroid/content/Context;Ljava/util/Calendar;ILjava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    # getter for: Lcom/shilapi/xcertplay/DiPlayActivity;->renderedDark:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$getRenderedDark$p(Lcom/shilapi/xcertplay/DiPlayActivity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity;->render()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$render(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity;->refreshStatus()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$refreshStatus(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    # getter for: Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$getHandler$p(Lcom/shilapi/xcertplay/DiPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
