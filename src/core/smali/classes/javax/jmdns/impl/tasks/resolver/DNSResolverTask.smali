.class public abstract Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "DNSResolverTask.java"


# instance fields
.field protected count:I

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method protected constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 33
    const-class p1, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->logger:Lorg/slf4j/Logger;

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->count:I

    return-void
.end method


# virtual methods
.method protected abstract addAnswers(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract addQuestions(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract description()Ljava/lang/String;
.end method

.method public run()V
    .locals 4

    .line 74
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget v0, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->count:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 78
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v1, "{}.run() JmDNS {}"

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->description()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(I)V

    .line 81
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->addQuestions(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->addAnswers(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    :cond_2
    return-void

    .line 90
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->cancel()Z

    return-void

    .line 75
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->cancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 94
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v2, "{}.run() exception "

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    return-void
.end method

.method public start(Ljava/util/Timer;)V
    .locals 7

    .line 62
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v3, 0xe1

    const-wide/16 v5, 0xe1

    move-object v2, p0

    move-object v1, p1

    .line 63
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
