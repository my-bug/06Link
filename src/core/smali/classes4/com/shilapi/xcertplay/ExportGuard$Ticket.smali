.class final Lcom/shilapi/xcertplay/ExportGuard$Ticket;
.super Ljava/lang/Object;
.source "ExportGuard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ExportGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ticket"
.end annotation


# instance fields
.field final activity:Lcom/shilapi/xcertplay/DiPlayActivity;

.field final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final worker:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/Thread;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/shilapi/xcertplay/ExportGuard$Ticket;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    iput-object p1, p0, Lcom/shilapi/xcertplay/ExportGuard$Ticket;->activity:Lcom/shilapi/xcertplay/DiPlayActivity;

    .line 60
    iput-object p2, p0, Lcom/shilapi/xcertplay/ExportGuard$Ticket;->worker:Ljava/lang/Thread;

    .line 61
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/shilapi/xcertplay/ExportGuard$Ticket;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/shilapi/xcertplay/ExportGuard$Ticket;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 65
    iget-object v0, p0, Lcom/shilapi/xcertplay/ExportGuard$Ticket;->activity:Lcom/shilapi/xcertplay/DiPlayActivity;

    const-string v1, "\u65e5\u5fd7\u5bfc\u51fa\u8d85\u65f6\uff0c\u5df2\u505c\u6b62\u7b49\u5f85\u3002\u8bf7\u91cd\u8bd5\u6216\u6362\u4e00\u4e2a\u4fdd\u5b58\u4f4d\u7f6e\u3002"

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/DiPlayActivity;->diagnosticExportTimeout(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method
