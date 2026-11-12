.class public final Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;
.super Ljava/lang/Object;
.source "CarPlayBonjour.kt"

# interfaces
.implements Ljavax/jmdns/ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/CarPlayBonjour;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/airplay/AirPlayConfig;Lcom/shilapi/xcertplay/airplay/AirPlayIdentity;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayBonjour.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayBonjour.kt\ncom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,682:1\n1310#2,2:683\n12797#2,3:686\n1#3:685\n*S KotlinDebug\n*F\n+ 1 CarPlayBonjour.kt\ncom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1\n*L\n182#1:683,2\n189#1:686,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1",
        "Ljavax/jmdns/ServiceListener;",
        "serviceAdded",
        "",
        "event",
        "Ljavax/jmdns/ServiceEvent;",
        "serviceRemoved",
        "serviceResolved",
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

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getClosed$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryEvents:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getDiscoveryEvents$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;

    sget-object v2, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;->ADDED:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Ljavax/jmdns/JmDNS;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->seenServices:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getSeenServices$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 11

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->closed:Z
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getClosed$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    const-string v2, "getInetAddresses(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    .line 683
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v4, :cond_2

    aget-object v8, v1, v6

    move-object v9, v8

    check-cast v9, Ljava/net/InetAddress;

    .line 183
    instance-of v9, v9, Ljava/net/Inet4Address;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->localAdvertisedAddress:Ljava/net/InetAddress;
    invoke-static {v3}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getLocalAdvertisedAddress$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet4Address;

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v8, v7

    .line 182
    :goto_1
    check-cast v8, Ljava/net/InetAddress;

    if-eqz v8, :cond_3

    .line 184
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # invokes: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->applyLocalScope(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    invoke-static {v1, v8}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$applyLocalScope(Lcom/shilapi/xcertplay/network/CarPlayBonjour;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v7

    :cond_3
    if-eqz v7, :cond_6

    .line 185
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v1

    const/4 v3, 0x1

    if-gt v3, v1, :cond_6

    const/high16 v3, 0x10000

    if-ge v1, v3, :cond_6

    .line 193
    iget-object v1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->seenServices:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    invoke-static {v1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getSeenServices$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 194
    :cond_4
    new-instance v1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;

    .line 195
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "getName(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_2
    return-void

    :cond_5
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v3

    .line 196
    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-direct {v1, p1, v2, v3, v0}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEndpoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->interfaceServices:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {p1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getInterfaceServices$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p1

    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 186
    :cond_6
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/CarPlayBonjour$interfaceListener$1;->this$0:Lcom/shilapi/xcertplay/network/CarPlayBonjour;

    # getter for: Lcom/shilapi/xcertplay/network/CarPlayBonjour;->discoveryEvents:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {p1}, Lcom/shilapi/xcertplay/network/CarPlayBonjour;->access$getDiscoveryEvents$p(Lcom/shilapi/xcertplay/network/CarPlayBonjour;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p1

    if-nez v7, :cond_7

    .line 187
    sget-object v1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;->NO_MATCHING_ADDRESS:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    goto :goto_3

    .line 188
    :cond_7
    sget-object v1, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;->INVALID_PORT:Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;

    .line 189
    :goto_3
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/Object;

    .line 687
    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v4, :cond_9

    aget-object v8, v3, v6

    check-cast v8, Ljava/net/InetAddress;

    .line 189
    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_8

    add-int/lit8 v7, v7, 0x1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 687
    array-length v2, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v5, v2, :cond_b

    aget-object v4, v0, v5

    check-cast v4, Ljava/net/InetAddress;

    .line 189
    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_a

    add-int/lit8 v3, v3, 0x1

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 186
    :cond_b
    new-instance v0, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;

    invoke-direct {v0, v1, v7, v3}, Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery;-><init>(Lcom/shilapi/xcertplay/network/CarPlayBonjourEvent$Discovery$Stage;II)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
