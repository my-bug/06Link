.class public final Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;
.super Ljava/lang/Object;
.source "CarPlayVpnService.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/CarPlayVpnService;->acceptUntilError(ILjava/net/ServerSocket;)Ljava/io/IOException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tH\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J/\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\n2\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tH\u0096\u0001J\u0011\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\nH\u0096\u0001J\u0019\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0096\u0001J\u0011\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\nH\u0096\u0001J\u0011\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0001\u00a8\u0006\u001c"
    }
    d2 = {
        "com/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;",
        "onRemoteControlMessage",
        "",
        "session",
        "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
        "streamId",
        "",
        "message",
        "",
        "",
        "",
        "onVideoPlaybackUiRequested",
        "onSessionEnded",
        "onPeerStalled",
        "stalled",
        "",
        "onCommand",
        "type",
        "params",
        "onDebugLog",
        "onDeviceInfo",
        "info",
        "Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;",
        "onHostUiRequested",
        "onSessionActive",
        "onTransportError",
        "onVideoFrameRendered",
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
.field private final synthetic $$delegate_0:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

.field final synthetic $current:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

.field final synthetic this$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;Lcom/shilapi/xcertplay/network/CarPlayVpnService;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$current:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getListener()Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$$delegate_0:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    return-void
.end method


# virtual methods
.method public onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$$delegate_0:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onCommand(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onDebugLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$$delegate_0:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onDebugLog(Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$$delegate_0:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onDeviceInfo(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Lcom/shilapi/xcertplay/airplay/AirPlayDeviceInfo;)V

    return-void
.end method

.method public onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$$delegate_0:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onHostUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$current:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getListener()Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onPeerStalled(Lcom/shilapi/xcertplay/airplay/AirPlaySession;Z)V

    return-void
.end method

.method public onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/AirPlaySession;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$current:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getListener()Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onRemoteControlMessage(Lcom/shilapi/xcertplay/airplay/AirPlaySession;JLjava/util/Map;)V

    return-void
.end method

.method public onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$$delegate_0:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onSessionActive(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayVpnService;

    # invokes: Lcom/shilapi/xcertplay/network/CarPlayVpnService;->removeSession(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/network/CarPlayVpnService;->access$removeSession(Lcom/shilapi/xcertplay/network/CarPlayVpnService;Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    .line 376
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$current:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getListener()Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onSessionEnded(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public onTransportError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$$delegate_0:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onTransportError(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$$delegate_0:Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onVideoFrameRendered(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method

.method public onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayVpnService$acceptUntilError$session$1$1;->$current:Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/network/CarPlayVpnService$AirPlayAttachment;->getListener()Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySessionListener;->onVideoPlaybackUiRequested(Lcom/shilapi/xcertplay/airplay/AirPlaySession;)V

    return-void
.end method
