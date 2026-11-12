.class public Ljavax/jmdns/impl/DNSCache;
.super Lj$/util/concurrent/ConcurrentHashMap;
.source "DNSCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljavax/jmdns/impl/DNSEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29fa0881c54e5a5bL


# instance fields
.field private final transient _lm:Ljavax/jmdns/impl/util/SimpleLockManager;

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    .line 70
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 62
    const-class p1, Ljavax/jmdns/impl/DNSCache;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/DNSCache;->logger:Lorg/slf4j/Logger;

    .line 64
    new-instance p1, Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-direct {p1}, Ljavax/jmdns/impl/util/SimpleLockManager;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSCache;->_lm:Ljavax/jmdns/impl/util/SimpleLockManager;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/DNSCache;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSCache;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private getEntryListOrEmpty(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .line 285
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 287
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p1
.end method

.method static synthetic lambda$getDNSEntryList$0(Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 0

    .line 206
    invoke-virtual {p2, p0}, Ljavax/jmdns/impl/DNSEntry;->matchRecordType(Ljavax/jmdns/impl/constants/DNSRecordType;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, p1}, Ljavax/jmdns/impl/DNSEntry;->matchRecordClass(Ljavax/jmdns/impl/constants/DNSRecordClass;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 219
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Ljavax/jmdns/impl/DNSCache;->_lm:Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-virtual {v1, v0}, Ljavax/jmdns/impl/util/SimpleLockManager;->lock(Ljava/lang/String;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    move-result-object v1

    .line 221
    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p0, v0, v2}, Ljavax/jmdns/impl/DNSCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {v1}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 220
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    .line 228
    :try_start_2
    invoke-virtual {v1}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-static {p1, v1}, Landroidx/core/app/PendingIntentCompat$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
.end method

.method public allValues()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    iget-object v4, p0, Ljavax/jmdns/impl/DNSCache;->_lm:Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-virtual {v4, v3}, Ljavax/jmdns/impl/util/SimpleLockManager;->lock(Ljava/lang/String;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    move-result-object v3

    .line 118
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 120
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v3}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 117
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v3, :cond_3

    .line 121
    :try_start_2
    invoke-virtual {v3}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-static {v0, v2}, Landroidx/core/app/PendingIntentCompat$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    :cond_4
    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    invoke-direct {v0, p0}, Ljavax/jmdns/impl/DNSCache;-><init>(Ljavax/jmdns/impl/DNSCache;)V

    return-object v0
.end method

.method public getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 176
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v1, p0, Ljavax/jmdns/impl/DNSCache;->_lm:Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/util/SimpleLockManager;->lock(Ljava/lang/String;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    move-result-object v1

    .line 178
    :try_start_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->getEntryListOrEmpty(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 180
    invoke-virtual {v2, p2}, Ljavax/jmdns/impl/DNSEntry;->matchRecordType(Ljavax/jmdns/impl/constants/DNSRecordType;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p3}, Ljavax/jmdns/impl/DNSEntry;->matchRecordClass(Ljavax/jmdns/impl/constants/DNSRecordClass;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v1}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    :cond_2
    return-object v2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    .line 177
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_5

    .line 183
    :try_start_2
    invoke-virtual {v1}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-static {p1, p3}, Landroidx/core/app/PendingIntentCompat$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 154
    iget-object v2, p0, Ljavax/jmdns/impl/DNSCache;->_lm:Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-virtual {v2, v1}, Ljavax/jmdns/impl/util/SimpleLockManager;->lock(Ljava/lang/String;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    move-result-object v2

    .line 155
    :try_start_0
    invoke-direct {p0, v1}, Ljavax/jmdns/impl/DNSCache;->getEntryListOrEmpty(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 157
    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/DNSEntry;->isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {v2}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    :cond_2
    return-object v3

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_5

    .line 160
    :try_start_2
    invoke-virtual {v2}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-static {p1, v1}, Landroidx/core/app/PendingIntentCompat$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 134
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_lm:Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/util/SimpleLockManager;->lock(Ljava/lang/String;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    move-result-object v0

    .line 137
    :try_start_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->getEntryListOrEmpty(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 138
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    :cond_1
    return-object p1

    .line 140
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {v0}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception p1

    .line 136
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 141
    :try_start_3
    invoke-virtual {v0}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-static {p1, v0}, Landroidx/core/app/PendingIntentCompat$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
.end method

.method public getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/constants/DNSRecordType;",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 197
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 199
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_lm:Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/util/SimpleLockManager;->lock(Ljava/lang/String;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    move-result-object v0

    .line 202
    :try_start_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->getEntryListOrEmpty(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    .line 206
    :cond_1
    new-instance p1, Ljavax/jmdns/impl/DNSCache$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p3}, Ljavax/jmdns/impl/DNSCache$$ExternalSyntheticLambda0;-><init>(Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)V

    invoke-static {v1, p1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    return-object v1

    :catchall_0
    move-exception p1

    .line 201
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 204
    :try_start_2
    invoke-virtual {v0}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-static {p1, p3}, Landroidx/core/app/PendingIntentCompat$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
.end method

.method public logCachedContent()V
    .locals 2

    .line 321
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->logger:Lorg/slf4j/Logger;

    const-string v1, "Cached DNSEntries: {}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 241
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-object v2, p0, Ljavax/jmdns/impl/DNSCache;->_lm:Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-virtual {v2, v1}, Ljavax/jmdns/impl/util/SimpleLockManager;->lock(Ljava/lang/String;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    move-result-object v2

    .line 243
    :try_start_0
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {v2}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    :cond_1
    return v0

    .line 246
    :cond_2
    :try_start_1
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 248
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 252
    :cond_3
    invoke-virtual {p0, v1, v3}, Ljavax/jmdns/impl/DNSCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_4

    .line 255
    invoke-virtual {v2}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    :cond_4
    return p1

    :catchall_0
    move-exception p1

    .line 242
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_5

    .line 255
    :try_start_3
    invoke-virtual {v2}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-static {p1, v1}, Landroidx/core/app/PendingIntentCompat$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v0
.end method

.method public replaceDNSEntry(Ljavax/jmdns/impl/DNSEntry;Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 3

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 267
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p0, Ljavax/jmdns/impl/DNSCache;->_lm:Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-virtual {v1, v0}, Ljavax/jmdns/impl/util/SimpleLockManager;->lock(Ljava/lang/String;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    move-result-object v1

    .line 271
    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 275
    :cond_1
    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    :goto_0
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p0, v0, v2}, Ljavax/jmdns/impl/DNSCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-eqz v1, :cond_2

    .line 281
    invoke-virtual {v1}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    .line 270
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_3

    .line 281
    :try_start_2
    invoke-virtual {v1}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-static {p1, v0}, Landroidx/core/app/PendingIntentCompat$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p2

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 297
    const-string v1, "\n\t---- cache ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 299
    const-string v3, "\n\n\t\tname \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    goto :goto_0

    .line 303
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    iget-object v4, p0, Ljavax/jmdns/impl/DNSCache;->_lm:Ljavax/jmdns/impl/util/SimpleLockManager;

    invoke-virtual {v4, v2}, Ljavax/jmdns/impl/util/SimpleLockManager;->lock(Ljava/lang/String;)Ljavax/jmdns/impl/util/SimpleLockManager$Locked;

    move-result-object v2

    .line 305
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    const-string v3, " : no entries"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 308
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSEntry;

    .line 309
    const-string v5, "\n\t\t\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSEntry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v2}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 304
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_4

    .line 312
    :try_start_2
    invoke-virtual {v2}, Ljavax/jmdns/impl/util/SimpleLockManager$Locked;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    invoke-static {v0, v2}, Landroidx/core/app/PendingIntentCompat$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v1

    .line 314
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
