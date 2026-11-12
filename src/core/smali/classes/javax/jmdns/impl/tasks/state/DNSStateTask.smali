.class public abstract Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "DNSStateTask.java"


# static fields
.field private static defaultTTL:I


# instance fields
.field private final logger:Lorg/slf4j/Logger;

.field private taskState:Ljavax/jmdns/impl/constants/DNSState;

.field private final ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget v0, Ljavax/jmdns/impl/constants/DNSConstants;->DNS_TTL:I

    sput v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->defaultTTL:I

    return-void
.end method

.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 39
    const-class p1, Ljavax/jmdns/impl/tasks/state/DNSStateTask;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger:Lorg/slf4j/Logger;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 74
    iput p2, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->ttl:I

    return-void
.end method

.method public static defaultTTL()I
    .locals 1

    .line 56
    sget v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->defaultTTL:I

    return v0
.end method

.method public static setDefaultTTL(I)V
    .locals 0

    .line 65
    sput p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->defaultTTL:I

    return-void
.end method


# virtual methods
.method protected advanceObjectsState(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/jmdns/impl/DNSStatefulObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSStatefulObject;

    .line 175
    monitor-enter v0

    .line 176
    :try_start_0
    invoke-interface {v0, p0}, Ljavax/jmdns/impl/DNSStatefulObject;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    .line 177
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method protected abstract advanceTask()V
.end method

.method protected associate(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 94
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected abstract buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract checkRunCondition()Z
.end method

.method protected abstract createOutgoing()Ljavax/jmdns/impl/DNSOutgoing;
.end method

.method public getTTL()I
    .locals 1

    .line 81
    iget v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->ttl:I

    return v0
.end method

.method public abstract getTaskDescription()Ljava/lang/String;
.end method

.method protected getTaskState()Ljavax/jmdns/impl/constants/DNSState;
    .locals 1

    .line 190
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0
.end method

.method protected abstract recoverTask(Ljava/lang/Throwable;)V
.end method

.method protected removeAssociation()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/JmDNSImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 109
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 105
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public run()V
    .locals 14

    .line 115
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->createOutgoing()Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->checkRunCondition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z

    return-void

    .line 121
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 124
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljavax/jmdns/impl/JmDNSImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v8, "{}.run() JmDNS {} {}"

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v9, v12, v6

    aput-object v10, v12, v5

    aput-object v11, v12, v4

    invoke-interface {v3, v8, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 129
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :try_start_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/ServiceInfo;

    .line 132
    check-cast v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 134
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 135
    :try_start_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v8

    invoke-virtual {v3, p0, v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 136
    iget-object v8, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v9, "{}.run() JmDNS {} {}"

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v10, v13, v6

    aput-object v11, v13, v5

    aput-object v12, v13, v4

    invoke-interface {v8, v9, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0, v3, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 140
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 142
    :cond_3
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 143
    iget-object v2, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v3, "{}.run() JmDNS {} #{}"

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v6

    aput-object v9, v7, v5

    aput-object v10, v7, v4

    invoke-interface {v2, v3, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 147
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceObjectsState(Ljava/util/List;)V

    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceObjectsState(Ljava/util/List;)V

    .line 153
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v0

    .line 129
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 157
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v2, "{}.run() exception "

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->recoverTask(Ljava/lang/Throwable;)V

    .line 161
    :goto_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceTask()V

    return-void
.end method

.method protected setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 0

    .line 197
    iput-object p1, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    return-void
.end method
