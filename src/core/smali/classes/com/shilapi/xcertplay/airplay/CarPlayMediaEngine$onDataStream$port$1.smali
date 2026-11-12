.class public final Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onDataStream$port$1;
.super Ljava/lang/Object;
.source "CarPlayMediaEngine.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->onDataStream(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/shilapi/xcertplay/airplay/CarPlayMediaEngine$onDataStream$port$1",
        "Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;",
        "onIap",
        "",
        "bytes",
        "",
        "onClosed",
        "cause",
        "",
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
.field final synthetic $session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

.field final synthetic this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onDataStream$port$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    iput-object p2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onDataStream$port$1;->$session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "peer EOF"

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iAP tunnel ended reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    const-string/jumbo v0, "xcertplay-usb"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onDataStream$port$1;->$session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    return-void
.end method

.method public onDebug(Ljava/lang/String;)V
    .locals 0

    .line 233
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onDebug(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V

    return-void
.end method

.method public onIap([B)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onDataStream$port$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$getSink$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lcom/shilapi/xcertplay/airplay/MediaSink;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onIapMessage([B)V

    return-void
.end method

.method public onOpen(Ljava/lang/String;)V
    .locals 0

    .line 233
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener$-CC;->$default$onOpen(Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;Ljava/lang/String;)V

    return-void
.end method
