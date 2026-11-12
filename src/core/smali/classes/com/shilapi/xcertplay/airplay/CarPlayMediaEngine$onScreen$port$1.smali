.class public final Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;
.super Ljava/lang/Object;
.source "CarPlayMediaEngine.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->onScreen(Lcom/shilapi/xcertplay/airplay/AirPlaySession;ILjava/util/Map;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0008H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1",
        "Lcom/shilapi/xcertplay/airplay/ScreenStream$Listener;",
        "onCodec",
        "",
        "codec",
        "Lcom/shilapi/xcertplay/airplay/VideoCodec;",
        "onConfig",
        "codecData",
        "",
        "onFrame",
        "naluBytes",
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
.field final synthetic $screen:Lcom/shilapi/xcertplay/airplay/ScreenStream;

.field final synthetic $session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

.field final synthetic $streamKey:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

.field final synthetic $type:I

.field final synthetic this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;ILcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;Lcom/shilapi/xcertplay/airplay/ScreenStream;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    iput p2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$type:I

    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$streamKey:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    iput-object p4, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$screen:Lcom/shilapi/xcertplay/airplay/ScreenStream;

    iput-object p5, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ljava/lang/Throwable;)V
    .locals 3

    .line 114
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$type:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "peer EOF"

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "screen stream ended type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " reason="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    const-string/jumbo v0, "xcertplay-usb"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->streams:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$getStreams$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$streamKey:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$StreamKey;

    iget-object v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$screen:Lcom/shilapi/xcertplay/airplay/ScreenStream;

    invoke-virtual {p1, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->screenOwners:Lj$/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$getScreenOwners$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    # invokes: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->releaseOwner(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Z
    invoke-static {p1, v0, v1, v2}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$releaseOwner(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;
    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$getSink$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lcom/shilapi/xcertplay/airplay/MediaSink;

    move-result-object p1

    iget v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$type:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onScreenStreamActive(IZ)V

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    return-void
.end method

.method public onCodec(Lcom/shilapi/xcertplay/airplay/VideoCodec;)V
    .locals 2

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$getSink$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lcom/shilapi/xcertplay/airplay/MediaSink;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$type:I

    invoke-interface {v0, v1, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onVideoCodec(ILcom/shilapi/xcertplay/airplay/VideoCodec;)V

    return-void
.end method

.method public onConfig([B)V
    .locals 2

    const-string v0, "codecData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$getSink$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lcom/shilapi/xcertplay/airplay/MediaSink;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$type:I

    invoke-interface {v0, v1, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onVideoConfig(I[B)V

    return-void
.end method

.method public onFrame([B)V
    .locals 2

    const-string v0, "naluBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->this$0:Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;

    # getter for: Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->sink:Lcom/shilapi/xcertplay/airplay/MediaSink;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;->access$getSink$p(Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine;)Lcom/shilapi/xcertplay/airplay/MediaSink;

    move-result-object v0

    iget v1, p0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaEngine$onScreen$port$1;->$type:I

    invoke-interface {v0, v1, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink;->onVideoFrame(I[B)V

    return-void
.end method
