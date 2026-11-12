.class public Ljavax/jmdns/impl/tasks/Responder;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "Responder.java"


# instance fields
.field private final dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

.field private final inetAddress:Ljava/net/InetAddress;

.field private final logger:Lorg/slf4j/Logger;

.field private final port:I

.field private final unicast:Z


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 36
    const-class p1, Ljavax/jmdns/impl/tasks/Responder;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/tasks/Responder;->logger:Lorg/slf4j/Logger;

    .line 44
    iput-object p2, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    .line 45
    iput-object p3, p0, Ljavax/jmdns/impl/tasks/Responder;->inetAddress:Ljava/net/InetAddress;

    .line 46
    iput p4, p0, Ljavax/jmdns/impl/tasks/Responder;->port:I

    .line 47
    sget p1, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    if-eq p4, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ljavax/jmdns/impl/tasks/Responder;->unicast:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Responder("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 8

    .line 102
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->respondToQuery(Ljavax/jmdns/impl/DNSIncoming;)V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 106
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 108
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 111
    :try_start_0
    iget-object v2, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    .line 112
    iget-object v4, p0, Ljavax/jmdns/impl/tasks/Responder;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v5, "{}.run() JmDNS responding to: {}"

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget-boolean v4, p0, Ljavax/jmdns/impl/tasks/Responder;->unicast:Z

    if-eqz v4, :cond_0

    .line 116
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljavax/jmdns/impl/DNSQuestion;->addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    iget-object v4, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/DNSRecord;

    .line 125
    invoke-virtual {v5, v2, v3}, Ljavax/jmdns/impl/DNSRecord;->isStale(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v5, p0, Ljavax/jmdns/impl/tasks/Responder;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v6, "{} - JmDNS Responder Known Answer Removed"

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 133
    iget-object v2, p0, Ljavax/jmdns/impl/tasks/Responder;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v3, "{}.run() JmDNS responding"

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    new-instance v2, Ljavax/jmdns/impl/DNSOutgoing;

    iget-boolean v3, p0, Ljavax/jmdns/impl/tasks/Responder;->unicast:Z

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v4

    const v5, 0x8400

    invoke-direct {v2, v5, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 136
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/Responder;->inetAddress:Ljava/net/InetAddress;

    iget v5, p0, Ljavax/jmdns/impl/tasks/Responder;->port:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing;->setDestination(Ljava/net/InetSocketAddress;)V

    .line 137
    iget-object v3, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 138
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    if-eqz v3, :cond_4

    .line 140
    invoke-virtual {p0, v2, v3}, Ljavax/jmdns/impl/tasks/Responder;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v2

    goto :goto_2

    .line 143
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v1, :cond_6

    .line 145
    iget-object v3, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {p0, v2, v3, v1}, Ljavax/jmdns/impl/tasks/Responder;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v1

    move-object v2, v1

    goto :goto_3

    .line 149
    :cond_7
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 152
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v2, "{}.run() exception "

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->close()V

    :cond_8
    return-void
.end method

.method public start(Ljava/util/Timer;)V
    .locals 5

    .line 82
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSQuestion;

    .line 83
    iget-object v2, p0, Ljavax/jmdns/impl/tasks/Responder;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v3, "{}.start() question={}"

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/DNSQuestion;->iAmTheOnlyOne(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->getRandom()Ljava/util/Random;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming;->elapseSinceArrival()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 93
    :goto_1
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "{}.start() Responder chosen delay={}"

    invoke-interface {v1, v4, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_4

    int-to-long v0, v0

    .line 96
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " incoming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->dnsIncoming:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
