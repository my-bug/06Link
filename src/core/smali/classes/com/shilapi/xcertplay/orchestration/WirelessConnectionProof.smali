.class public final Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;
.super Ljava/lang/Object;
.source "WirelessConnectionProof.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001c\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u001b\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0011J\u000e\u0010\t\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0006J\u001b\u0010\u000b\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0011J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u001b\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0011J\u0006\u0010\u0014\u001a\u00020\u000eJ\u0008\u0010\u0015\u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;",
        "S",
        "",
        "<init>",
        "()V",
        "generation",
        "",
        "session",
        "Ljava/lang/Object;",
        "authenticated",
        "",
        "rendered",
        "confirmation",
        "Lkotlin/Function0;",
        "",
        "begin",
        "activate",
        "(ILjava/lang/Object;)V",
        "hasRenderedFrame",
        "end",
        "clear",
        "confirmIfReady",
        "shared_release"
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
.field private authenticated:Z

.field private confirmation:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private generation:I

.field private rendered:Z

.field private session:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->generation:I

    return-void
.end method

.method private final confirmIfReady()V
    .locals 2

    .line 55
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->authenticated:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->rendered:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->confirmation:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->confirmation:Lkotlin/jvm/functions/Function0;

    .line 58
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized activate(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITS;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "session"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->generation:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->session:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->session:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->authenticated:Z

    .line 21
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->rendered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 18
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized authenticated(I)V
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->generation:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->session:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->authenticated:Z

    .line 27
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->confirmIfReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 25
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized begin(ILkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "confirmation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->clear()V

    .line 13
    iput p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->generation:I

    .line 14
    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->confirmation:Lkotlin/jvm/functions/Function0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    .line 47
    :try_start_0
    iput v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->generation:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->session:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->authenticated:Z

    .line 50
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->rendered:Z

    .line 51
    iput-object v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->confirmation:Lkotlin/jvm/functions/Function0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized end(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITS;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "session"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->generation:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->session:Ljava/lang/Object;

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->session:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->authenticated:Z

    .line 43
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->rendered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 40
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized hasRenderedFrame(I)Z
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->generation:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->session:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->rendered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized rendered(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITS;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "session"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget v0, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->generation:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->session:Ljava/lang/Object;

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->rendered:Z

    .line 33
    invoke-direct {p0}, Lcom/shilapi/xcertplay/orchestration/WirelessConnectionProof;->confirmIfReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 31
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
