.class public Ljavax/jmdns/impl/JmmDNSImpl;
.super Ljava/lang/Object;
.source "JmmDNSImpl.java"

# interfaces
.implements Ljavax/jmdns/JmmDNS;
.implements Ljavax/jmdns/NetworkTopologyListener;
.implements Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;
    }
.end annotation


# instance fields
.field private final _closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final _isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final _jmDNSExecutor:Ljava/util/concurrent/ExecutorService;

.field private final _knownMDNS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/net/InetAddress;",
            "Ljavax/jmdns/JmDNS;",
            ">;"
        }
    .end annotation
.end field

.field private final _listenerExecutor:Ljava/util/concurrent/ExecutorService;

.field private final _networkListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/jmdns/NetworkTopologyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final _serviceListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/jmdns/ServiceListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _serviceTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _services:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final _timer:Ljava/util/Timer;

.field private final _typeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/jmdns/ServiceTypeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-class v0, Ljavax/jmdns/impl/JmmDNSImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_networkListeners:Ljava/util/Set;

    .line 106
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    .line 107
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 108
    new-instance v0, Ljavax/jmdns/impl/util/NamedThreadFactory;

    const-string v1, "JmmDNS Listeners"

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_listenerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 109
    new-instance v0, Ljavax/jmdns/impl/util/NamedThreadFactory;

    const-string v1, "JmmDNS"

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_jmDNSExecutor:Ljava/util/concurrent/ExecutorService;

    .line 110
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Multihomed mDNS.Timer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_timer:Ljava/util/Timer;

    .line 111
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 112
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_typeListeners:Ljava/util/Set;

    .line 113
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceTypes:Ljava/util/Set;

    .line 114
    new-instance v1, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;

    invoke-static {}, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->getInstance()Ljavax/jmdns/NetworkTopologyDiscovery;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;-><init>(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyDiscovery;)V

    invoke-virtual {v1, v0}, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->start(Ljava/util/Timer;)V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic lambda$getServiceInfos$0(Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 276
    invoke-virtual/range {p0 .. p5}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$inetAddressAdded$3(Ljava/util/Collection;Ljavax/jmdns/JmDNS;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 1

    .line 642
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 643
    invoke-virtual {p1, v0}, Ljavax/jmdns/JmDNS;->registerServiceType(Ljava/lang/String;)Z

    goto :goto_0

    .line 646
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/jmdns/ServiceInfo;

    .line 648
    :try_start_0
    invoke-virtual {p2}, Ljavax/jmdns/ServiceInfo;->clone()Ljavax/jmdns/ServiceInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 654
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/jmdns/ServiceTypeListener;

    .line 656
    :try_start_1
    invoke-virtual {p1, p2}, Ljavax/jmdns/JmDNS;->addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    goto :goto_2

    .line 662
    :cond_2
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 663
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 664
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 665
    monitor-enter p2

    .line 666
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceListener;

    .line 667
    invoke-virtual {p1, p3, v0}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    goto :goto_4

    .line 669
    :cond_3
    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    return-void
.end method

.method static synthetic lambda$inetAddressAdded$4(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyEvent;)V
    .locals 0

    .line 675
    invoke-interface {p0, p1}, Ljavax/jmdns/NetworkTopologyListener;->inetAddressAdded(Ljavax/jmdns/NetworkTopologyEvent;)V

    return-void
.end method

.method static synthetic lambda$inetAddressRemoved$5(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyEvent;)V
    .locals 0

    .line 705
    invoke-interface {p0, p1}, Ljavax/jmdns/NetworkTopologyListener;->inetAddressRemoved(Ljavax/jmdns/NetworkTopologyEvent;)V

    return-void
.end method

.method static synthetic lambda$list$2(Ljavax/jmdns/JmDNS;Ljava/lang/String;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 527
    invoke-virtual {p0, p1, p2, p3}, Ljavax/jmdns/JmDNS;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$requestServiceInfo$1(Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    .line 349
    invoke-virtual/range {p0 .. p5}, Ljavax/jmdns/JmDNS;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method private submitIfNotShuttingDown(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V
    .locals 0

    .line 121
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addNetworkTopologyListener(Ljavax/jmdns/NetworkTopologyListener;)V
    .locals 1

    .line 601
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_networkListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .locals 4

    .line 384
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 387
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :cond_0
    if-eqz v1, :cond_2

    .line 391
    monitor-enter v1

    .line 392
    :try_start_0
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 397
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 398
    invoke-virtual {v3, p1, p2}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_typeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 362
    invoke-virtual {v3, p1}, Ljavax/jmdns/JmDNS;->addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v3, "Cancelling JmmDNS: {}"

    invoke-interface {v0, v3, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 135
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_listenerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 136
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_jmDNSExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 138
    new-instance v0, Ljavax/jmdns/impl/util/NamedThreadFactory;

    const-string v3, "JmmDNS.close"

    invoke-direct {v0, v3}, Ljavax/jmdns/impl/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 141
    new-instance v6, Ljavax/jmdns/impl/JmmDNSImpl$1;

    invoke-direct {v6, p0, v5}, Ljavax/jmdns/impl/JmmDNSImpl$1;-><init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljavax/jmdns/JmDNS;)V

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 159
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 161
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v3, "Exception "

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    :goto_1
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 164
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 165
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 166
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_typeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 167
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 168
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    invoke-static {}, Ljavax/jmdns/JmmDNS$Factory;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 156
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 157
    throw v1

    :cond_1
    return-void
.end method

.method protected createJmDnsInstance(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    invoke-static {p1}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;

    move-result-object p1

    return-object p1
.end method

.method public getDNS()[Ljavax/jmdns/JmDNS;
    .locals 3

    .line 218
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljavax/jmdns/JmDNS;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/jmdns/JmDNS;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHostNames()[Ljava/lang/String;
    .locals 6

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 193
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 194
    invoke-virtual {v5}, Ljavax/jmdns/JmDNS;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddresses()[Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 206
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 207
    invoke-virtual {v5}, Ljavax/jmdns/JmDNS;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    :cond_0
    new-array v1, v3, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInterfaces()[Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 231
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 232
    invoke-virtual {v5}, Ljavax/jmdns/JmDNS;->getInterface()Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    :cond_0
    new-array v1, v3, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 6

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 180
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 181
    invoke-virtual {v5}, Ljavax/jmdns/JmDNS;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfos(Ljava/lang/String;Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 243
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->getServiceInfos(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getServiceInfos(Ljava/lang/String;Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 252
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->getServiceInfos(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getServiceInfos(Ljava/lang/String;Ljava/lang/String;Z)[Ljavax/jmdns/ServiceInfo;
    .locals 6

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 261
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->getServiceInfos(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getServiceInfos(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;
    .locals 14

    .line 271
    const-string v1, "Interrupted "

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    .line 272
    new-instance v2, Ljava/util/HashSet;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 273
    array-length v3, v0

    const/4 v4, 0x0

    if-lez v3, :cond_4

    .line 274
    new-instance v3, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v8, v0, v6

    .line 276
    new-instance v7, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;

    move-object v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-wide/from16 v12, p4

    invoke-direct/range {v7 .. v13}, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda0;-><init>(Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljavax/jmdns/impl/util/NamedThreadFactory;

    const-string v5, "JmmDNS.getServiceInfos"

    invoke-direct {v0, v5}, Ljavax/jmdns/impl/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 281
    :try_start_0
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x64

    add-long v6, p4, v6

    .line 283
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v3, v6, v7, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 285
    :try_start_2
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 290
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 291
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_2

    .line 295
    :cond_2
    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    if-eqz v0, :cond_1

    .line 297
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 303
    :try_start_4
    iget-object v5, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v6, "Exception "

    invoke-interface {v5, v6, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 300
    iget-object v5, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    invoke-interface {v5, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 307
    :cond_3
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 308
    throw v0

    .line 310
    :cond_4
    :goto_3
    new-array p1, v4, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v2, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/jmdns/ServiceInfo;

    return-object p1
.end method

.method public inetAddressAdded(Ljavax/jmdns/NetworkTopologyEvent;)V
    .locals 8

    .line 628
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 630
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 631
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :try_start_1
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmmDNSImpl;->createJmDnsInstance(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;

    move-result-object v4

    .line 634
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 636
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceTypes:Ljava/util/Set;

    .line 637
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 638
    iget-object v6, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_typeListeners:Ljava/util/Set;

    .line 639
    iget-object v7, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 640
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_jmDNSExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda4;-><init>(Ljava/util/Collection;Ljavax/jmdns/JmDNS;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)V

    invoke-direct {p0, v0, v2}, Ljavax/jmdns/impl/JmmDNSImpl;->submitIfNotShuttingDown(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    .line 672
    new-instance v0, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    invoke-direct {v0, v4, p1}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/JmDNS;Ljava/net/InetAddress;)V

    .line 673
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->networkListeners()[Ljavax/jmdns/NetworkTopologyListener;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 674
    iget-object v5, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_listenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda5;

    invoke-direct {v6, v4, v0}, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda5;-><init>(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyEvent;)V

    invoke-direct {p0, v5, v6}, Ljavax/jmdns/impl/JmmDNSImpl;->submitIfNotShuttingDown(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {v4}, Ljavax/jmdns/JmDNS;->close()V

    .line 682
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 685
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Unexpected unhandled exception: "

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public inetAddressRemoved(Ljavax/jmdns/NetworkTopologyEvent;)V
    .locals 7

    .line 695
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 697
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :try_start_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 701
    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    .line 702
    new-instance v2, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    invoke-direct {v2, v1, p1}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/JmDNS;Ljava/net/InetAddress;)V

    .line 703
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->networkListeners()[Ljavax/jmdns/NetworkTopologyListener;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 704
    iget-object v5, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_listenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4, v2}, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda2;-><init>(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyEvent;)V

    invoke-direct {p0, v5, v6}, Ljavax/jmdns/impl/JmmDNSImpl;->submitIfNotShuttingDown(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 712
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Unexpected unhandled exception: "

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
    .locals 2

    const-wide/16 v0, 0x1770

    .line 512
    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
    .locals 9

    .line 521
    const-string v0, "Interrupted "

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v1

    .line 523
    new-instance v2, Ljava/util/HashSet;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 524
    array-length v3, v1

    const/4 v4, 0x0

    if-lez v3, :cond_3

    .line 525
    new-instance v3, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 526
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v1, v6

    .line 527
    new-instance v8, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda3;

    invoke-direct {v8, v7, p1, p2, p3}, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda3;-><init>(Ljavax/jmdns/JmDNS;Ljava/lang/String;J)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 530
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljavax/jmdns/impl/util/NamedThreadFactory;

    const-string v5, "JmmDNS.list"

    invoke-direct {v1, v5}, Ljavax/jmdns/impl/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 532
    :try_start_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x64

    add-long/2addr p2, v5

    .line 534
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v3, p2, p3, v5}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 536
    :try_start_2
    iget-object p3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    invoke-interface {p3, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 541
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Future;

    .line 542
    invoke-interface {p3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_2

    .line 546
    :cond_1
    :try_start_3
    invoke-interface {p3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {v2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p3

    .line 551
    :try_start_4
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v3, "Exception "

    invoke-interface {v1, v3, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception p3

    .line 548
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    invoke-interface {v1, v0, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 555
    :cond_2
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_3

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 556
    throw p2

    .line 558
    :cond_3
    :goto_3
    new-array p1, v4, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v2, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/jmdns/ServiceInfo;

    return-object p1
.end method

.method public listBySubtype(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1770

    .line 567
    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmmDNSImpl;->listBySubtype(Ljava/lang/String;J)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public listBySubtype(Ljava/lang/String;J)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 577
    invoke-virtual {p0, p1, p2, p3}, Ljavax/jmdns/impl/JmmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 578
    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v3

    .line 579
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 580
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 586
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 587
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 588
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 589
    new-array v2, p3, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public networkListeners()[Ljavax/jmdns/NetworkTopologyListener;
    .locals 2

    .line 619
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_networkListeners:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/jmdns/NetworkTopologyListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/NetworkTopologyListener;

    return-object v0
.end method

.method public registerService(Ljavax/jmdns/ServiceInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    .line 452
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 453
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 454
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->clone()Ljavax/jmdns/ServiceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 456
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDelegate(Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;)V

    .line 457
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public registerServiceType(Ljava/lang/String;)V
    .locals 4

    .line 500
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 502
    invoke-virtual {v3, p1}, Ljavax/jmdns/JmDNS;->registerServiceType(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeNetworkTopologyListener(Ljavax/jmdns/NetworkTopologyListener;)V
    .locals 1

    .line 610
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_networkListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .locals 4

    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 409
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 411
    monitor-enter v1

    .line 412
    :try_start_0
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 413
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 416
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 418
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 419
    invoke-virtual {v3, p1, p2}, Ljavax/jmdns/JmDNS;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .locals 4

    .line 372
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_typeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 374
    invoke-virtual {v3, p1}, Ljavax/jmdns/JmDNS;->removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 319
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 337
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 328
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 11

    .line 347
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 348
    iget-object v10, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_jmDNSExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda1;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-direct/range {v3 .. v9}, Ljavax/jmdns/impl/JmmDNSImpl$$ExternalSyntheticLambda1;-><init>(Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-direct {p0, v10, v3}, Ljavax/jmdns/impl/JmmDNSImpl;->submitIfNotShuttingDown(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public textValueUpdated(Ljavax/jmdns/ServiceInfo;[B)V
    .locals 6

    .line 430
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    .line 431
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 432
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 433
    check-cast v4, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/ServiceInfo;

    if-eqz v4, :cond_0

    .line 435
    invoke-virtual {v4, p2}, Ljavax/jmdns/ServiceInfo;->setText([B)V

    goto :goto_1

    .line 437
    :cond_0
    iget-object v4, p0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Lorg/slf4j/Logger;

    const-string v5, "We have a mDNS that does not know about the service info being updated."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public unregisterAllServices()V
    .locals 5

    .line 485
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    .line 486
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 488
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 489
    invoke-virtual {v4}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public unregisterService(Ljavax/jmdns/ServiceInfo;)V
    .locals 5

    .line 468
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->getDNS()[Ljavax/jmdns/JmDNS;

    move-result-object v0

    .line 469
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 470
    :try_start_0
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 472
    invoke-virtual {v4, p1}, Ljavax/jmdns/JmDNS;->unregisterService(Ljavax/jmdns/ServiceInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 474
    :cond_0
    check-cast p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDelegate(Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;)V

    .line 475
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
