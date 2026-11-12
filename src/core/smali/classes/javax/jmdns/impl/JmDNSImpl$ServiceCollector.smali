.class Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljavax/jmdns/ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCollector"
.end annotation


# instance fields
.field private final _events:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final _infos:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _needToWaitForInfos:Z

.field private final _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2176
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    .line 2177
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    .line 2178
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_type:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2179
    iput-boolean p1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    return-void
.end method


# virtual methods
.method public list(J)[Ljavax/jmdns/ServiceInfo;
    .locals 7

    .line 2242
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    if-eqz v0, :cond_3

    :cond_0
    const-wide/16 v2, 0xc8

    .line 2243
    div-long/2addr p1, v2

    const-wide/16 v4, 0x1

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    move-wide p1, v4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    cmp-long v6, v4, p1

    if-gez v6, :cond_3

    .line 2249
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 2253
    :goto_1
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2258
    :cond_3
    :goto_2
    iput-boolean v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    .line 2259
    iget-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-array p2, v1, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/jmdns/ServiceInfo;

    return-object p1
.end method

.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 5

    .line 2190
    monitor-enter p0

    .line 2191
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2192
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2193
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 2195
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 2196
    :goto_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Ljavax/jmdns/impl/JmDNSImpl;->resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2198
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2200
    :cond_2
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 2

    .line 2214
    monitor-enter p0

    .line 2215
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 3

    .line 2228
    monitor-enter p0

    .line 2229
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n\tType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2269
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2270
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    const-string v2, ": "

    if-eqz v1, :cond_0

    .line 2271
    const-string v1, "\n\tNo services collected."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2273
    :cond_0
    const-string v1, "\n\tServices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2275
    const-string v4, "\n\t\tService: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2278
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2281
    :cond_1
    :goto_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2282
    const-string v1, "\n\tNo event queued."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2284
    :cond_2
    const-string v1, "\n\tEvents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2286
    const-string v4, "\n\t\tEvent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2289
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2292
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
