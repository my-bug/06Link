.class public Ljavax/jmdns/impl/ServiceEventImpl;
.super Ljavax/jmdns/ServiceEvent;
.source "ServiceEventImpl.java"


# static fields
.field private static final serialVersionUID:J = 0x62a498597d29f1d0L


# instance fields
.field private final _info:Ljavax/jmdns/ServiceInfo;

.field private final _name:Ljava/lang/String;

.field private final _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Ljavax/jmdns/ServiceEvent;-><init>(Ljava/lang/Object;)V

    .line 57
    iput-object p2, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_type:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_name:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_info:Ljavax/jmdns/ServiceInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->clone()Ljavax/jmdns/impl/ServiceEventImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljavax/jmdns/ServiceEvent;
    .locals 1

    .line 25
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->clone()Ljavax/jmdns/impl/ServiceEventImpl;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/ServiceEventImpl;
    .locals 5

    .line 118
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljavax/jmdns/ServiceInfo;)V

    .line 119
    new-instance v1, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-object v1
.end method

.method public getDNS()Ljavax/jmdns/JmDNS;
    .locals 1

    .line 68
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/JmDNS;

    return-object v0
.end method

.method public getInfo()Ljavax/jmdns/ServiceInfo;
    .locals 1

    .line 109
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_info:Ljavax/jmdns/ServiceInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tname: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' info: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
