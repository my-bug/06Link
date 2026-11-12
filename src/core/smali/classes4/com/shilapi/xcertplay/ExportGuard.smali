.class public final Lcom/shilapi/xcertplay/ExportGuard;
.super Ljava/lang/Object;
.source "ExportGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ExportGuard$Ticket;
    }
.end annotation


# static fields
.field private static final CURRENT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/shilapi/xcertplay/ExportGuard$Ticket;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAIN:Landroid/os/Handler;

.field private static final SLOTS:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/shilapi/xcertplay/ExportGuard;->SLOTS:Ljava/util/concurrent/Semaphore;

    .line 11
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/ExportGuard;->CURRENT:Ljava/lang/ThreadLocal;

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/shilapi/xcertplay/ExportGuard;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 9
    sget-object v0, Lcom/shilapi/xcertplay/ExportGuard;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method public static postResult(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/Runnable;)V
    .locals 2

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/ExportGuard;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shilapi/xcertplay/ExportGuard$Ticket;

    .line 36
    sget-object v1, Lcom/shilapi/xcertplay/ExportGuard;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 37
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/shilapi/xcertplay/ExportGuard$Ticket;->activity:Lcom/shilapi/xcertplay/DiPlayActivity;

    if-ne v1, p0, :cond_0

    .line 42
    sget-object p0, Lcom/shilapi/xcertplay/ExportGuard;->SLOTS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 43
    sget-object p0, Lcom/shilapi/xcertplay/ExportGuard;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/ExportGuard$2;

    invoke-direct {v1, v0, p1}, Lcom/shilapi/xcertplay/ExportGuard$2;-><init>(Lcom/shilapi/xcertplay/ExportGuard$Ticket;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing diagnostic export ticket"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static watch(Lcom/shilapi/xcertplay/DiPlayActivity;)Z
    .locals 2

    .line 16
    const-wide/16 v0, 0x2ee0

    invoke-static {p0, v0, v1}, Lcom/shilapi/xcertplay/ExportGuard;->watch(Lcom/shilapi/xcertplay/DiPlayActivity;J)Z

    move-result p0

    return p0
.end method

.method static watch(Lcom/shilapi/xcertplay/DiPlayActivity;J)Z
    .locals 2

    .line 20
    sget-object v0, Lcom/shilapi/xcertplay/ExportGuard;->SLOTS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    sget-object p1, Lcom/shilapi/xcertplay/ExportGuard;->MAIN:Landroid/os/Handler;

    new-instance p2, Lcom/shilapi/xcertplay/ExportGuard$1;

    invoke-direct {p2, p0}, Lcom/shilapi/xcertplay/ExportGuard$1;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    const/4 p0, 0x0

    return p0

    .line 28
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/ExportGuard$Ticket;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shilapi/xcertplay/ExportGuard$Ticket;-><init>(Lcom/shilapi/xcertplay/DiPlayActivity;Ljava/lang/Thread;)V

    .line 29
    sget-object p0, Lcom/shilapi/xcertplay/ExportGuard;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    sget-object p0, Lcom/shilapi/xcertplay/ExportGuard;->MAIN:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    const/4 p0, 0x1

    return p0
.end method
