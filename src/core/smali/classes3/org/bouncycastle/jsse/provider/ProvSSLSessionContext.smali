.class Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final provSessionCacheSize:I


# instance fields
.field protected final contextData:Lorg/bouncycastle/jsse/provider/ContextData;

.field protected sessionCacheSize:I

.field protected sessionTimeoutSeconds:I

.field protected final sessionsByID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/tls/SessionID;",
            "Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final sessionsByPeer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final sessionsQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lorg/bouncycastle/jsse/provider/ProvSSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->LOG:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const-string v2, "javax.net.ssl.sessionCacheSize"

    const/16 v3, 0x5000

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/jsse/provider/PropertyUtils;->getIntegerSystemProperty(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->provSessionCacheSize:I

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jsse/provider/ContextData;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$1;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;IFZ)V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByPeer:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsQueue:Ljava/lang/ref/ReferenceQueue;

    sget v0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->provSessionCacheSize:I

    iput v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionCacheSize:I

    const v0, 0x15180

    iput v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionTimeoutSeconds:I

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeSessionByPeer(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/jsse/provider/ProvSSLSession;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->makePeerKey(Lorg/bouncycastle/jsse/provider/ProvSSLSession;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private accessSession(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->getCreationTimeLimit(J)J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->invalidateIfCreatedBefore(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;J)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->accessedAt(J)V

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeSession(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCreationTimeLimit(J)J
    .locals 5

    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionTimeoutSeconds:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1

    :cond_0
    const-wide/16 v1, 0x3e8

    int-to-long v3, v0

    mul-long v3, v3, v1

    sub-long/2addr p1, v3

    return-wide p1
.end method

.method private invalidateIfCreatedBefore(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;J)Z
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getCreationTime()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-gez v3, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->invalidatedBySessionContext()V

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->isValid()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private static makePeerKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static makePeerKey(Lorg/bouncycastle/jsse/provider/ProvSSLSession;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getPeerPort()I

    move-result p0

    invoke-static {v0, p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->makePeerKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeSessionID([B)Lorg/bouncycastle/tls/SessionID;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/SessionID;

    invoke-direct {v0, p0}, Lorg/bouncycastle/tls/SessionID;-><init>([B)V

    return-object v0
.end method

.method private static mapAdd(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method private static mapGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static mapRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static mapRemove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)Z"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method private processQueue()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeSession(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    sget-object v1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " session entries (soft references) from the reference queue"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private removeAllExpiredSessions()V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->processQueue()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->getCreationTimeLimit(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->invalidateIfCreatedBefore(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, v3}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeSessionByPeer(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeSession(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->getSessionID()Lorg/bouncycastle/tls/SessionID;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->mapRemove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeSessionByPeer(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Z

    return-void
.end method

.method private removeSessionByPeer(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByPeer:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->getPeerKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->mapRemove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIds()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeAllExpiredSessions()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/SessionID;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionID;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method getSSLContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->contextData:Lorg/bouncycastle/jsse/provider/ContextData;

    invoke-virtual {v0}, Lorg/bouncycastle/jsse/provider/ContextData;->getContext()Lorg/bouncycastle/jsse/provider/ProvSSLContextSpi;

    move-result-object v0

    return-object v0
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->getSessionImpl([B)Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'sessionID\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized getSessionCacheSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized getSessionImpl(Ljava/lang/String;I)Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->processQueue()V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByPeer:Ljava/util/Map;

    invoke-static {p1, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->makePeerKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->mapGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->accessSession(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->getSessionID()Lorg/bouncycastle/tls/SessionID;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized getSessionImpl([B)Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->processQueue()V

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->makeSessionID([B)Lorg/bouncycastle/tls/SessionID;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->mapGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->accessSession(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Lorg/bouncycastle/jsse/provider/ProvSSLSession;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getSessionTimeout()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionTimeoutSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized removeSession([B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->makeSessionID([B)Lorg/bouncycastle/tls/SessionID;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->mapRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeSessionByPeer(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized reportSession(Ljava/lang/String;ILorg/bouncycastle/tls/TlsSession;Lorg/bouncycastle/jsse/provider/JsseSessionParameters;Z)Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->processQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez p5, :cond_0

    :try_start_1
    new-instance v0, Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_2
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Ljava/lang/String;ILorg/bouncycastle/tls/TlsSession;Lorg/bouncycastle/jsse/provider/JsseSessionParameters;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p1, v0

    move-object v2, v1

    goto/16 :goto_5

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_3
    invoke-interface {v4}, Lorg/bouncycastle/tls/TlsSession;->getSessionID()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->makeSessionID([B)Lorg/bouncycastle/tls/SessionID;

    move-result-object p1

    iget-object p2, v1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-static {p2, p1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->mapGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;

    if-nez p2, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    if-eqz p3, :cond_3

    :try_start_4
    invoke-virtual {p3}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;->getTlsSession()Lorg/bouncycastle/tls/TlsSession;

    move-result-object p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq p4, v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_3

    :cond_3
    :goto_2
    :try_start_5
    new-instance v1, Lorg/bouncycastle/jsse/provider/ProvSSLSession;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v2

    move-object v2, p0

    :try_start_6
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jsse/provider/ProvSSLSession;-><init>(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Ljava/lang/String;ILorg/bouncycastle/tls/TlsSession;Lorg/bouncycastle/jsse/provider/JsseSessionParameters;)V

    if-eqz p1, :cond_4

    new-instance p2, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;

    iget-object p3, v2, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p2, p1, v1, p3}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;-><init>(Lorg/bouncycastle/tls/SessionID;Lorg/bouncycastle/jsse/provider/ProvSSLSession;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p3, v2, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object p3, v1

    :goto_3
    if-eqz p2, :cond_5

    iget-object p1, v2, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByPeer:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;->getPeerKey()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, p2}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->mapAdd(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_5
    monitor-exit p0

    return-object p3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, p0

    :goto_4
    move-object p1, v0

    :goto_5
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    :catchall_4
    move-exception v0

    goto :goto_4
.end method

.method public declared-synchronized setSessionCacheSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    :try_start_1
    iput p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionCacheSize:I

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeAllExpiredSessions()V

    iget p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionCacheSize:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionCacheSize:I

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionsByID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionCacheSize:I

    if-le p1, v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, v1}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeSessionByPeer(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext$SessionEntry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'size\' cannot be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized setSessionTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionTimeoutSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    :try_start_1
    iput p1, p0, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->sessionTimeoutSeconds:I

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;->removeAllExpiredSessions()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'seconds\' cannot be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
