.class public final Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1;
.super Ljava/lang/Object;
.source "AirPlayIapTunnelStream.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->listen()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1",
        "Lcom/shilapi/xcertplay/airplay/IapTunnel$Listener;",
        "onOpen",
        "",
        "remoteAddress",
        "",
        "onIap",
        "bytes",
        "",
        "onDebug",
        "message",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1;->this$0:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ljava/lang/Throwable;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1;->this$0:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    # getter for: Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->access$getSession$p(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "peer EOF"

    :cond_1
    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "no detail"

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AirPlay iAP tunnel closed cause="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->logTrace$shared_release(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1;->this$0:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->markFailed(Ljava/lang/Throwable;)Z
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->access$markFailed(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 49
    iget-object p1, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1;->this$0:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    # getter for: Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {p1}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->access$getSession$p(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->close()V

    :cond_4
    return-void
.end method

.method public onDebug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1;->this$0:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    # getter for: Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->access$getSession$p(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->logTrace$shared_release(Ljava/lang/String;)V

    return-void
.end method

.method public onIap([B)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1;->this$0:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    # invokes: Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->offer([B)V
    invoke-static {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->access$offer(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;[B)V

    return-void
.end method

.method public onOpen(Ljava/lang/String;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream$listen$1;->this$0:Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;

    # getter for: Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->session:Lcom/shilapi/xcertplay/airplay/AirPlaySession;
    invoke-static {v0}, Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;->access$getSession$p(Lcom/shilapi/xcertplay/airplay/AirPlayIapTunnelStream;)Lcom/shilapi/xcertplay/airplay/AirPlaySession;

    move-result-object v0

    if-nez p1, :cond_0

    .line 32
    const-string/jumbo p1, "unknown"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AirPlay iAP tunnel connected remote="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lcom/shilapi/xcertplay/airplay/AirPlaySession;->logTrace$shared_release(Ljava/lang/String;)V

    return-void
.end method
