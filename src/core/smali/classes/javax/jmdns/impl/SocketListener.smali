.class Ljavax/jmdns/impl/SocketListener;
.super Ljava/lang/Thread;
.source "SocketListener.java"


# instance fields
.field private final _jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

.field final logger:Lorg/slf4j/Logger;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SocketListener("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

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

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 28
    const-class v0, Ljavax/jmdns/impl/SocketListener;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/SocketListener;->setDaemon(Z)V

    .line 35
    iput-object p1, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    return-void
.end method

.method private sleepThread()V
    .locals 5

    .line 39
    iget-object v0, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    iget-wide v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_threadSleepDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    iget-wide v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_threadSleepDurationMs:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 45
    iget-object v1, p0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v2, "{}.run() interrupted "

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .line 103
    iget-object v0, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    return-object v0
.end method

.method public run()V
    .locals 8

    .line 54
    const-string/jumbo v0, "{}.run() exception "

    const/16 v1, 0x230c

    :try_start_0
    new-array v2, v1, [B

    .line 55
    new-instance v3, Ljava/net/DatagramPacket;

    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 57
    :cond_0
    :goto_0
    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 58
    invoke-direct {p0}, Ljavax/jmdns/impl/SocketListener;->sleepThread()V

    .line 59
    invoke-virtual {v3, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 60
    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getSocket()Ljava/net/MulticastSocket;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 61
    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 65
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/HostInfo;->shouldIgnorePacket(Ljava/net/DatagramPacket;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 69
    :cond_2
    new-instance v2, Ljavax/jmdns/impl/DNSIncoming;

    invoke-direct {v2, v3}, Ljavax/jmdns/impl/DNSIncoming;-><init>(Ljava/net/DatagramPacket;)V

    .line 70
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming;->isValidResponseCode()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 71
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v6, "{}.run() JmDNS in:{}"

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v7, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    :cond_3
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 76
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    new-instance v5, Ljavax/jmdns/impl/SocketListener$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljavax/jmdns/impl/SocketListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Ljavax/jmdns/impl/JmDNSImpl;->handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V

    goto/16 :goto_0

    .line 79
    :cond_4
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->getGroup()Ljava/net/InetAddress;

    move-result-object v5

    sget v6, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    invoke-virtual {v4, v2, v5, v6}, Ljavax/jmdns/impl/JmDNSImpl;->handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V

    goto/16 :goto_0

    .line 82
    :cond_5
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4, v2}, Ljavax/jmdns/impl/JmDNSImpl;->handleResponse(Ljavax/jmdns/impl/DNSIncoming;)V

    goto/16 :goto_0

    .line 85
    :cond_6
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v6, "{}.run() JmDNS in message with error code: {}"

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v6, v7, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 90
    :try_start_2
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 94
    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 95
    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    .line 99
    :cond_7
    :goto_1
    iget-object v0, p0, Ljavax/jmdns/impl/SocketListener;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v1, "{}.run() exiting."

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
