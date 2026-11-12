.class public final Lcom/shilapi/xcertplay/CarPlayHostActivity$appearanceCheck$1;
.super Ljava/lang/Object;
.source "CarPlayHostActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;-><init>()V
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
        "com/shilapi/xcertplay/CarPlayHostActivity$appearanceCheck$1",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$appearanceCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    .line 2037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2039
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$appearanceCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->refreshAppearance()V
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$refreshAppearance(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V

    .line 2040
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$appearanceCheck$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getMainHandler$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
