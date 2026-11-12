.class public final Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;
.super Ljava/lang/Object;
.source "CarPlayController.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack(Lcom/shilapi/xcertplay/transport/Iap2UsbSession;Lcom/shilapi/xcertplay/transport/NcmUsbBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1",
        "Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;",
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
.field final synthetic $carkit:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

.field final synthetic this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    iput-object p2, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;->$carkit:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    .line 2337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 2350
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;->$carkit:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->close()V

    return-void
.end method

.method public recv(IJ)[B
    .locals 3

    .line 2347
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;->$carkit:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->recv(IJ)[B

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    .line 2348
    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$wireSummary([B)Ljava/lang/String;
    invoke-static {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$runStack$wireSummary([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wired link RX "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p3, v0, v1, v2, p2}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object p1

    :cond_0
    return-object p2
.end method

.method public send([B)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2339
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    # invokes: Lcom/shilapi/xcertplay/orchestration/CarPlayController;->runStack$wireSummary([B)Ljava/lang/String;
    invoke-static {p1}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->access$runStack$wireSummary([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wired link TX begin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;->$carkit:Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;

    invoke-interface {v5, p1}, Lcom/shilapi/xcertplay/transport/BlockingDuplexByteStream;->send([B)V

    .line 2344
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/orchestration/CarPlayController$runStack$tracedCarkit$1;->this$0:Lcom/shilapi/xcertplay/orchestration/CarPlayController;

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wired link TX completed bytes="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2, v3, v4}, Lcom/shilapi/xcertplay/orchestration/CarPlayController;->debugLog$default(Lcom/shilapi/xcertplay/orchestration/CarPlayController;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
