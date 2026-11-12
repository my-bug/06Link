.class public final Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;
.super Ljava/lang/Object;
.source "DiPlayActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;->tryRotation(Lcom/shilapi/xcertplay/ScreenRotation$Choice;Lcom/shilapi/xcertplay/ScreenRotation$Choice;)V
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
        "com/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1",
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
.field final synthetic $choice:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

.field final synthetic $dialog:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $left:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $previous:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

.field final synthetic this$0:Lcom/shilapi/xcertplay/DiPlayActivity;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/ScreenRotation$Choice;Lcom/shilapi/xcertplay/ScreenRotation$Choice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/app/AlertDialog;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/shilapi/xcertplay/DiPlayActivity;",
            "Lcom/shilapi/xcertplay/ScreenRotation$Choice;",
            "Lcom/shilapi/xcertplay/ScreenRotation$Choice;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$left:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$choice:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    iput-object p5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$previous:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    .line 4705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 4707
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "dialog"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/app/AlertDialog;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4708
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$left:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 4709
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$left:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$choice:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    iget-object v5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$previous:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    # invokes: Lcom/shilapi/xcertplay/DiPlayActivity;->endRotationTrial(Lcom/shilapi/xcertplay/ScreenRotation$Choice;Lcom/shilapi/xcertplay/ScreenRotation$Choice;Z)V
    invoke-static {v0, v4, v5, v3}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$endRotationTrial(Lcom/shilapi/xcertplay/DiPlayActivity;Lcom/shilapi/xcertplay/ScreenRotation$Choice;Lcom/shilapi/xcertplay/ScreenRotation$Choice;Z)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/AlertDialog;

    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    .line 4710
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$dialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/AlertDialog;

    :goto_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->screen_rotation_keep_countdown:I

    iget-object v5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->$left:Lkotlin/jvm/internal/Ref$IntRef;

    iget v5, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Lcom/shilapi/xcertplay/DiPlayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4711
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$tryRotation$tick$1;->this$0:Lcom/shilapi/xcertplay/DiPlayActivity;

    # getter for: Lcom/shilapi/xcertplay/DiPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/shilapi/xcertplay/DiPlayActivity;->access$getHandler$p(Lcom/shilapi/xcertplay/DiPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
