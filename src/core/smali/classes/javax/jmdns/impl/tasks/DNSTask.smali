.class public abstract Ljavax/jmdns/impl/tasks/DNSTask;
.super Ljava/util/TimerTask;
.source "DNSTask.java"


# instance fields
.field private final jmDNS:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method protected constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 38
    iput-object p1, p0, Ljavax/jmdns/impl/tasks/DNSTask;->jmDNS:Ljavax/jmdns/impl/JmDNSImpl;

    return-void
.end method

.method private getDnsOutgoing(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v0

    .line 94
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v1

    .line 95
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v2

    .line 96
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v3

    or-int/lit16 v4, v0, 0x200

    .line 98
    invoke-virtual {p1, v4}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 99
    invoke-virtual {p1, v3}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 100
    iget-object v3, p0, Ljavax/jmdns/impl/tasks/DNSTask;->jmDNS:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 102
    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {p1, v0, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    return-object p1
.end method


# virtual methods
.method public addAdditionalAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 179
    :catch_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;->getDnsOutgoing(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object p1

    .line 180
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    return-object p1
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 120
    :catch_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;->getDnsOutgoing(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    return-object p1
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 140
    :catch_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;->getDnsOutgoing(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object p1

    .line 141
    invoke-virtual {p1, p2, p3, p4}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V

    return-object p1
.end method

.method public addAuthoritativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    :try_start_0
    invoke-virtual {p1, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 159
    :catch_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;->getDnsOutgoing(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object p1

    .line 160
    invoke-virtual {p1, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V

    return-object p1
.end method

.method public addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-virtual {p1, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 86
    :catch_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;->getDnsOutgoing(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    return-object p1
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .line 47
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/DNSTask;->jmDNS:Ljavax/jmdns/impl/JmDNSImpl;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract start(Ljava/util/Timer;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
