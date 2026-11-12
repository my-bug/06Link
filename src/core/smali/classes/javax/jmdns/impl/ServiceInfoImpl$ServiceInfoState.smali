.class final Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;
.super Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;
.source "ServiceInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/ServiceInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceInfoState"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xf52a9538bcf62d4L


# instance fields
.field private final _info:Ljavax/jmdns/impl/ServiceInfoImpl;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;-><init>()V

    .line 97
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    return-void
.end method


# virtual methods
.method public setDns(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    return-void
.end method

.method protected setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 103
    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-nez p1, :cond_2

    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->needTextAnnouncing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->lock()V

    .line 106
    :try_start_0
    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-nez p1, :cond_1

    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->needTextAnnouncing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSState;->isAnnounced()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    sget-object p1, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 109
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->startAnnouncer()V

    .line 113
    :cond_0
    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->unlock()V

    .line 117
    throw p1

    :cond_2
    return-void
.end method
