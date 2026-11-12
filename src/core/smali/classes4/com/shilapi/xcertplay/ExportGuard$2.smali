.class Lcom/shilapi/xcertplay/ExportGuard$2;
.super Ljava/lang/Object;
.source "ExportGuard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/ExportGuard;->postResult(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Ljava/lang/Runnable;

.field final synthetic val$ticket:Lcom/shilapi/xcertplay/ExportGuard$Ticket;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/ExportGuard$Ticket;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/shilapi/xcertplay/ExportGuard$2;->val$ticket:Lcom/shilapi/xcertplay/ExportGuard$Ticket;

    iput-object p2, p0, Lcom/shilapi/xcertplay/ExportGuard$2;->val$result:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/shilapi/xcertplay/ExportGuard$2;->val$ticket:Lcom/shilapi/xcertplay/ExportGuard$Ticket;

    iget-object v0, v0, Lcom/shilapi/xcertplay/ExportGuard$Ticket;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    # getter for: Lcom/shilapi/xcertplay/ExportGuard;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/shilapi/xcertplay/ExportGuard;->access$000()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/ExportGuard$2;->val$ticket:Lcom/shilapi/xcertplay/ExportGuard$Ticket;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    iget-object v0, p0, Lcom/shilapi/xcertplay/ExportGuard$2;->val$result:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    :cond_0
    return-void
.end method
