.class public abstract Ljavax/jmdns/impl/DNSRecord$Address;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Address"
.end annotation


# instance fields
.field _addr:Ljava/net/InetAddress;

.field private final logger1:Lorg/slf4j/Logger;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 0

    .line 313
    invoke-direct/range {p0 .. p5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    move-object p1, p0

    .line 308
    const-class p2, Ljavax/jmdns/impl/DNSRecord$Address;

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    iput-object p2, p1, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Lorg/slf4j/Logger;

    .line 314
    iput-object p6, p1, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 1

    .line 318
    invoke-direct/range {p0 .. p5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    move-object p1, p0

    .line 308
    const-class p2, Ljavax/jmdns/impl/DNSRecord$Address;

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    iput-object p2, p1, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Lorg/slf4j/Logger;

    .line 320
    :try_start_0
    invoke-static {p6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p2

    iput-object p2, p1, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 322
    iget-object p3, p1, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Lorg/slf4j/Logger;

    const-string p4, "Address() exception "

    invoke-interface {p3, p4, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0

    return-object p5
.end method

.method getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 357
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 4

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord$Address;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 457
    move-object v1, v0

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 458
    new-instance v1, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-object v1
.end method

.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 7

    .line 447
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, v6

    check-cast v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 3

    .line 381
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljavax/jmdns/impl/HostInfo;->conflictWithRecord(Ljavax/jmdns/impl/DNSRecord$Address;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 382
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object p2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->isUnique()Z

    move-result v1

    sget v2, Ljavax/jmdns/impl/constants/DNSConstants;->DNS_TTL:I

    invoke-virtual {p2, v0, v1, v2}, Ljavax/jmdns/impl/HostInfo;->getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 384
    invoke-virtual {p0, p2}, Ljavax/jmdns/impl/DNSRecord$Address;->compareTo(Ljavax/jmdns/impl/DNSEntry;)I

    move-result p2

    if-nez p2, :cond_0

    .line 391
    iget-object p1, p0, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Lorg/slf4j/Logger;

    const-string p2, "handleQuery() Ignoring an identical address query"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return p3

    .line 395
    :cond_0
    iget-object p3, p0, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Lorg/slf4j/Logger;

    const-string v0, "handleQuery() Conflicting query detected."

    invoke-interface {p3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->isProbing()Z

    move-result p3

    if-eqz p3, :cond_1

    if-lez p2, :cond_1

    .line 399
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/jmdns/impl/HostInfo;->incrementHostName()Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 401
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/jmdns/ServiceInfo;

    .line 402
    check-cast p3, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 403
    invoke-virtual {p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->revertState()Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return p3
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 2

    .line 418
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/HostInfo;->conflictWithRecord(Ljavax/jmdns/impl/DNSRecord$Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Lorg/slf4j/Logger;

    const-string v1, "handleResponse() Denial detected"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->isProbing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->incrementHostName()Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 424
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

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

    .line 425
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 426
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->revertState()Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isSingleValued()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method same(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 2

    .line 327
    instance-of v0, p1, Ljavax/jmdns/impl/DNSRecord$Address;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameName(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method sameName(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 1

    .line 334
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 3

    const/4 v0, 0x0

    .line 340
    :try_start_0
    instance-of v1, p1, Ljavax/jmdns/impl/DNSRecord$Address;

    if-nez v1, :cond_0

    return v0

    .line 343
    :cond_0
    check-cast p1, Ljavax/jmdns/impl/DNSRecord$Address;

    .line 344
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 346
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Lorg/slf4j/Logger;

    const-string v2, "Failed to compare addresses of DNSRecords"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method protected toByteArray(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toByteArray(Ljava/io/DataOutputStream;)V

    .line 366
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 371
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, v0, v2

    .line 372
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 467
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 468
    const-string v0, " address: \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    .line 470
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
