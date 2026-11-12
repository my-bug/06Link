.class public Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
.super Ljava/util/AbstractMap;
.source "JmDNSImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceTypeEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry$SubTypeEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final _entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 221
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->_type:Ljava/lang/String;

    .line 222
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->_entrySet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->_entrySet:Ljava/util/Set;

    new-instance v1, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry$SubTypeEntry;

    invoke-direct {v1, p1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry$SubTypeEntry;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->clone()Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    .locals 3

    .line 286
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->add(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->_entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 309
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
