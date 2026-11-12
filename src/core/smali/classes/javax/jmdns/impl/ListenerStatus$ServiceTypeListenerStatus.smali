.class public Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
.super Ljavax/jmdns/impl/ListenerStatus;
.source "ListenerStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/ListenerStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceTypeListenerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/jmdns/impl/ListenerStatus<",
        "Ljavax/jmdns/ServiceTypeListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final _addedTypes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljavax/jmdns/ServiceTypeListener;Z)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Ljavax/jmdns/impl/ListenerStatus;-><init>(Ljava/util/EventListener;Z)V

    .line 168
    const-class p1, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->logger:Lorg/slf4j/Logger;

    .line 180
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->_addedTypes:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 3

    .line 190
    iget-object v0, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->_addedTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceTypeListener;

    invoke-interface {v0, p1}, Ljavax/jmdns/ServiceTypeListener;->serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->logger:Lorg/slf4j/Logger;

    const-string v1, "Service Type Added called for a service type already added: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method subTypeForServiceTypeAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 3

    .line 208
    iget-object v0, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->_addedTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceTypeListener;

    invoke-interface {v0, p1}, Ljavax/jmdns/ServiceTypeListener;->subTypeForServiceTypeAdded(Ljavax/jmdns/ServiceEvent;)V

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->logger:Lorg/slf4j/Logger;

    const-string v1, "Service Sub Type Added called for a service sub type already added: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    const-string v1, "[Status for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceTypeListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v1, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->_addedTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, " no type event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 227
    :cond_0
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->_addedTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_1
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
