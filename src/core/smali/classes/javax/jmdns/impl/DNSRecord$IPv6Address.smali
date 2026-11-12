.class public Ljavax/jmdns/impl/DNSRecord$IPv6Address;
.super Ljavax/jmdns/impl/DNSRecord$Address;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6Address"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 7

    .line 257
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSRecord$Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 7

    .line 261
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSRecord$Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    return-void
.end method


# virtual methods
.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 1

    .line 297
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object p1

    check-cast p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 298
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;->_addr:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet6Address;)V

    return-object p1
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 5

    .line 266
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;->_addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;->_addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 270
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;->_addr:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    .line 272
    new-array v1, v1, [B

    const/16 v3, 0xa

    const/4 v4, -0x1

    .line 275
    aput-byte v4, v1, v3

    const/16 v3, 0xb

    .line 276
    aput-byte v4, v1, v3

    const/16 v3, 0xc

    .line 279
    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 285
    :cond_0
    array-length v1, v0

    .line 286
    invoke-virtual {p1, v0, v2, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeBytes([BII)V

    :cond_1
    return-void
.end method
