.class public final Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;
.super Ljava/lang/Object;
.source "CarPlayBonjour.kt"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/CarPlayBonjour;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1",
        "Landroid/net/nsd/NsdManager$DiscoveryListener;",
        "onStartDiscoveryFailed",
        "",
        "serviceType",
        "",
        "errorCode",
        "",
        "onStopDiscoveryFailed",
        "onDiscoveryStarted",
        "onDiscoveryStopped",
        "onServiceFound",
        "serviceInfo",
        "Landroid/net/nsd/NsdServiceInfo;",
        "onServiceLost",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoveryStarted(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDiscoveryStopped(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    const-string v0, "serviceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getClosed$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "_carplay-ctrl._tcp"

    .line 239
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->seenServices:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getSeenServices$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->services:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getServices$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    const-string v0, "serviceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-static {p1}, Lcom/shilapi/xcertplay/media/OpusEncoder$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "_carplay-ctrl._tcp"

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$discoveryListener$2$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->seenServices:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getSeenServices$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStartDiscoveryFailed(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "serviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CarPlay control discovery failed code="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "xcertplay-bonjour"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopDiscoveryFailed(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "serviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CarPlay control discovery stop failed code="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "xcertplay-bonjour"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
