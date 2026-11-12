.class final Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;
.super Ljava/lang/Object;
.source "LockdownCarKitClient.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/LockdownCarKitClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CarkitServiceStream"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u001a\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
        "service",
        "lockdown",
        "Ljava/io/Closeable;",
        "<init>",
        "(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/io/Closeable;)V",
        "closed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "send",
        "",
        "data",
        "",
        "recv",
        "maxBytes",
        "",
        "timeoutMillis",
        "",
        "close",
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
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lockdown:Ljava/io/Closeable;

.field private final service:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;Ljava/io/Closeable;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockdown"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;->service:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    .line 114
    iput-object p2, p0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;->lockdown:Ljava/io/Closeable;

    .line 116
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;->service:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;->lockdown:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;->lockdown:Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    throw v0
.end method

.method public recv(IJ)[B
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;->service:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->recv(IJ)[B

    move-result-object p1

    return-object p1
.end method

.method public send([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/LockdownCarKitClient$CarkitServiceStream;->service:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->send([B)V

    return-void
.end method
