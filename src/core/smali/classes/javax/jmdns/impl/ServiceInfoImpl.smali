.class public Ljavax/jmdns/impl/ServiceInfoImpl;
.super Ljavax/jmdns/ServiceInfo;
.source "ServiceInfoImpl.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSListener;
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;,
        Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;
    }
.end annotation


# instance fields
.field private _application:Ljava/lang/String;

.field private _delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

.field private _domain:Ljava/lang/String;

.field private final _ipv4Addresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field private final _ipv6Addresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private transient _key:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _needTextAnnouncing:Z

.field private _persistent:Z

.field private _port:I

.field private _priority:I

.field private _props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private _protocol:Ljava/lang/String;

.field private _server:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

.field private _subtype:Ljava/lang/String;

.field private _text:[B

.field private _weight:I

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 1

    .line 140
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceTypeDecoder;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, p7

    const/4 p7, 0x0

    move-object p1, p7

    check-cast p1, [B

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 143
    :try_start_0
    invoke-static {p8}, Ljavax/jmdns/impl/util/ByteWrangler;->encodeText(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p1, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iput-object p8, p1, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 145
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Unexpected exception: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 163
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceTypeDecoder;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p8}, Ljavax/jmdns/impl/util/ByteWrangler;->textFromProperties(Ljava/util/Map;)[B

    move-result-object p1

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, p7

    move-object p7, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V
    .locals 0

    .line 178
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceTypeDecoder;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    move-object p1, p0

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, p7

    move-object p7, p8

    invoke-direct/range {p1 .. p7}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    .line 186
    move-object v0, v7

    check-cast v0, [B

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 189
    :try_start_0
    invoke-static {p6}, Ljavax/jmdns/impl/util/ByteWrangler;->encodeText(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    iput-object p6, v1, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 191
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unexpected exception: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/util/Map;IIIZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 182
    invoke-static {p6}, Ljavax/jmdns/impl/util/ByteWrangler;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZ[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ[B)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 55
    const-class v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    .line 198
    invoke-static {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 200
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    .line 201
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    .line 202
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    .line 203
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 204
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 206
    iput p2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 207
    iput p3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 208
    iput p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 209
    iput-object p6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    const/4 p1, 0x0

    .line 210
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    .line 211
    new-instance p1, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-direct {p1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;-><init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    .line 212
    iput-boolean p5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    .line 213
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    .line 214
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljavax/jmdns/ServiceInfo;)V
    .locals 3

    .line 222
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 55
    const-class v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    .line 223
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    .line 224
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getDomain()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getApplication()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v2

    iput v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 232
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getWeight()I

    move-result v2

    iput v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 233
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPriority()I

    move-result v2

    iput v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 234
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 235
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->isPersistent()Z

    move-result v2

    iput-boolean v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    .line 236
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v2

    .line 237
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 238
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object p1

    .line 239
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 241
    :cond_0
    new-instance p1, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-direct {p1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;-><init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    return-void
.end method

.method protected static checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ljavax/jmdns/ServiceInfo$Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 258
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    const-string v2, "local"

    invoke-static {p0, v1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 262
    :cond_1
    :goto_0
    invoke-static {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    const-string/jumbo v2, "tcp"

    invoke-static {p0, v1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 269
    :cond_3
    :goto_1
    invoke-static {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 273
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v1, v2

    .line 276
    :cond_5
    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {p0, v1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 280
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move-object v1, v2

    .line 284
    :cond_7
    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {p0, v1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_9

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    move-object v2, p0

    .line 291
    :cond_9
    :goto_2
    invoke-static {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 292
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static createQualifiedMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ljavax/jmdns/ServiceInfo$Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 246
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object p0, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object p0, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object p0, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object p0, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private handleExpiredRecord(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 3

    .line 824
    sget-object v0, Ljavax/jmdns/impl/ServiceInfoImpl$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 856
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Unhandled expired record: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 827
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 828
    move-object v0, p1

    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Address;

    .line 831
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 832
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    .line 835
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    const-string v2, "Removed expired IPv4: {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 839
    :cond_1
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Expired IPv4 not in this service: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 842
    :cond_2
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet6Address;

    .line 845
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 846
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    const-string v2, "Removed expired IPv6: {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 849
    :cond_3
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Expired IPv6 not in this service: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private handleUpdateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSRecord;)Z
    .locals 4

    .line 875
    sget-object v0, Ljavax/jmdns/impl/ServiceInfoImpl$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_4

    .line 930
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord;->getSubtype()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 931
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord;->getSubtype()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    return v2

    .line 922
    :cond_1
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 923
    check-cast p4, Ljavax/jmdns/impl/DNSRecord$Text;

    .line 924
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Text;->getText()[B

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    const/4 p1, 0x0

    .line 925
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    return v2

    .line 899
    :cond_2
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 900
    check-cast p4, Ljavax/jmdns/impl/DNSRecord$Service;

    .line 901
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 902
    :goto_1
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 903
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Service;->getPort()I

    move-result v3

    iput v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 904
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Service;->getWeight()I

    move-result v3

    iput v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 905
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Service;->getPriority()I

    move-result p4

    iput p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    if-eqz v0, :cond_6

    .line 907
    iget-object p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->clear()V

    .line 908
    iget-object p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->clear()V

    .line 909
    iget-object p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p1, p4, v0, v2}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSEntry;

    .line 910
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_2

    .line 912
    :cond_5
    iget-object p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p1, p4, v0, v2}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSEntry;

    .line 913
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_3

    :cond_6
    return v2

    .line 888
    :cond_7
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 889
    check-cast p4, Ljavax/jmdns/impl/DNSRecord$Address;

    .line 890
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p1, :cond_9

    .line 891
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet6Address;

    .line 892
    iget-object p2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v2

    .line 877
    :cond_8
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 878
    check-cast p4, Ljavax/jmdns/impl/DNSRecord$Address;

    .line 879
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    instance-of p1, p1, Ljava/net/Inet4Address;

    if-eqz p1, :cond_9

    .line 880
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    .line 881
    iget-object p2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v2

    :cond_9
    :goto_4
    return v1
.end method

.method private hasInetAddress()Z
    .locals 1

    .line 954
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static removeSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 299
    const-string p0, ""

    return-object p0

    .line 301
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 302
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 305
    :cond_1
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 308
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method


# virtual methods
.method _setText([B)V
    .locals 0

    .line 1264
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    const/4 p1, 0x0

    .line 1265
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    return-void
.end method

.method addAddress(Ljava/net/Inet4Address;)V
    .locals 1

    .line 467
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAddress(Ljava/net/Inet6Address;)V
    .locals 1

    .line 475
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 1

    .line 964
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result p1

    return p1
.end method

.method public answers(Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            "ZI",
            "Ljavax/jmdns/impl/HostInfo;",
            ")",
            "Ljava/util/Collection<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1207
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->answers(Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjavax/jmdns/impl/HostInfo;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public answers(Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjavax/jmdns/impl/HostInfo;Ljava/lang/String;)Ljava/util/Collection;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            "ZI",
            "Ljavax/jmdns/impl/HostInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 1224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq v1, v4, :cond_1

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 1228
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1229
    :cond_3
    new-instance v4, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    move/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    :cond_4
    new-instance v10, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v13, 0x0

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v15

    move/from16 v14, p3

    invoke-direct/range {v10 .. v15}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    new-instance v10, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    iget v15, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    iget v1, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    iget v2, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v18

    move/from16 v13, p2

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-direct/range {v10 .. v18}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    new-instance v10, Ljavax/jmdns/impl/DNSRecord$Text;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1

    .line 1012
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    return-void
.end method

.method public cancelState()Z
    .locals 1

    .line 980
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->cancelState()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->clone()Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljavax/jmdns/ServiceInfo;
    .locals 1

    .line 54
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->clone()Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/ServiceInfoImpl;
    .locals 7

    .line 1139
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    iget v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    iget v4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    iget-boolean v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    iget-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 1140
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setServer(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v1

    .line 1142
    iget-object v2, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1143
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v1

    .line 1144
    iget-object v2, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public closeState()Z
    .locals 1

    .line 988
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->closeState()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1108
    instance-of v0, p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 484
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .line 692
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method getDelegate()Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;
    .locals 1

    .line 1310
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

    return-object v0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .line 1277
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 700
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "local"

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 417
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getHostAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 418
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getHostAddresses()[Ljava/lang/String;
    .locals 8

    .line 426
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 427
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 431
    new-array v0, v2, [Ljava/net/Inet4Address;

    :cond_0
    if-nez v1, :cond_1

    .line 434
    new-array v1, v2, [Ljava/net/Inet6Address;

    .line 438
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 441
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    if-eqz v6, :cond_2

    .line 443
    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 445
    :cond_2
    iget-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    const-string v7, "IPv4 address is null"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 450
    :cond_3
    array-length v0, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_5

    aget-object v5, v1, v4

    if-eqz v5, :cond_4

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 454
    :cond_4
    iget-object v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    const-string v6, "IPv6 address is null"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 459
    :cond_5
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getInet4Address()Ljava/net/Inet4Address;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 503
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 504
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInet4Addresses()[Ljava/net/Inet4Address;
    .locals 2

    .line 535
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/net/Inet4Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getInet6Address()Ljava/net/Inet6Address;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v0

    .line 514
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInet6Addresses()[Ljava/net/Inet6Address;
    .locals 2

    .line 544
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/net/Inet6Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet6Address;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    .line 494
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddresses()[Ljava/net/InetAddress;
    .locals 3

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 524
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 525
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 526
    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    .line 363
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNiceTextString()Ljava/lang/String;
    .locals 5

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1117
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    .line 1119
    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1122
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v3

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7f

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-char v3, v3

    .line 1127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1124
    :cond_2
    :goto_1
    const-string v4, "\\0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    .line 1125
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1130
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 552
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 560
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    return v0
.end method

.method declared-synchronized getProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/jmdns/impl/util/ByteWrangler;->readProperties(Ljava/util/Map;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 741
    :try_start_2
    iget-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    const-string v3, "Malformed TXT Field "

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 743
    :goto_0
    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 745
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized getPropertyBytes(Ljava/lang/String;)[B
    .locals 1

    monitor-enter p0

    .line 659
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getPropertyNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 683
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 684
    :goto_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 667
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 669
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 671
    :cond_0
    :try_start_1
    sget-object v0, Ljavax/jmdns/impl/util/ByteWrangler;->NO_VALUE:[B

    if-ne p1, v0, :cond_1

    .line 672
    const-string/jumbo p1, "true"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 674
    :cond_1
    :try_start_2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljavax/jmdns/impl/util/ByteWrangler;->readUTF([BII)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 708
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "tcp"

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    .line 382
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedNameMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ljavax/jmdns/ServiceInfo$Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 726
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .line 716
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTextBytes()[B
    .locals 2

    .line 576
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/util/ByteWrangler;->EMPTY_TXT:[B

    return-object v0
.end method

.method public getTextString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    .line 586
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 587
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    .line 588
    array-length v2, v1

    if-lez v2, :cond_0

    .line 589
    invoke-static {v1}, Ljavax/jmdns/impl/util/ByteWrangler;->readUTF([B)Ljava/lang/String;

    move-result-object v1

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 592
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 594
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 5

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/16 v3, 0x5f

    const/16 v4, 0x2e

    if-nez v2, :cond_0

    .line 323
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeWithSubtype()Ljava/lang/String;
    .locals 3

    .line 342
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "._sub."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURLs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 624
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 p1, 0x0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://null:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getURLs()[Ljava/lang/String;
    .locals 1

    .line 613
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURLs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 633
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    .line 634
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 635
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    .line 636
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 637
    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_0

    .line 638
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 640
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "://"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 641
    const-string v6, "path"

    invoke-virtual {p0, v6}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 643
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    goto :goto_2

    .line 646
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 649
    :cond_3
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 651
    :cond_4
    new-array p1, v3, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getWeight()I
    .locals 1

    .line 568
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    return v0
.end method

.method public declared-synchronized hasData()Z
    .locals 1

    monitor-enter p0

    .line 949
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasServer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasInetAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasSameAddresses(Ljavax/jmdns/ServiceInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1324
    :cond_0
    instance-of v1, p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1325
    check-cast p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1326
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v3, p1, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v3, p1, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    iget-object v3, p1, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    .line 1327
    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    iget-object p1, p1, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v0

    .line 1330
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    .line 1331
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object p1

    .line 1332
    array-length v3, v1

    array-length v4, p1

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/util/HashSet;

    .line 1333
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hasServer()Z
    .locals 1

    .line 400
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1100
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnounced()Z
    .locals 1

    .line 1044
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .line 1036
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1

    .line 1020
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result p1

    return p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 1060
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .line 1052
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1076
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 1068
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 1285
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .line 1028
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isProbing()Z

    move-result v0

    return v0
.end method

.method public needTextAnnouncing()Z
    .locals 1

    .line 1303
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    return v0
.end method

.method public recoverState()Z
    .locals 1

    .line 996
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->recoverState()Z

    move-result v0

    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1

    .line 1004
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    return-void
.end method

.method public revertState()Z
    .locals 1

    .line 972
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->revertState()Z

    move-result v0

    return v0
.end method

.method setDelegate(Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

    return-void
.end method

.method public setDns(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1

    .line 1269
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    .line 373
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 374
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    return-void
.end method

.method public setNeedTextAnnouncing(Z)V
    .locals 1

    .line 1293
    iput-boolean p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    if-eqz p1, :cond_0

    .line 1295
    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    :cond_0
    return-void
.end method

.method setServer(Ljava/lang/String;)V
    .locals 0

    .line 408
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1255
    invoke-static {p1}, Ljavax/jmdns/impl/util/ByteWrangler;->textFromProperties(Ljava/util/Map;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setText([B)V

    return-void
.end method

.method public setText([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1243
    monitor-enter p0

    .line 1244
    :try_start_0
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    const/4 p1, 0x0

    .line 1245
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    const/4 p1, 0x1

    .line 1246
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    .line 1247
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1154
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

    .line 1155
    const-string v1, " name: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1159
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    const-string v1, "\' address: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    .line 1162
    array-length v2, v1

    if-lez v2, :cond_1

    .line 1163
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1164
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1167
    :cond_1
    const-string v1, "(null):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1169
    :cond_2
    const-string v1, "\' status: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\' is persistent,"

    goto :goto_1

    :cond_3
    const-string v1, "\',"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1173
    const-string v1, " has data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1176
    :cond_4
    const-string v1, " has NO data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    :goto_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_6

    .line 1181
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v1

    .line 1182
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1183
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1184
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Ljavax/jmdns/impl/util/ByteWrangler;->readUTF([B)Ljava/lang/String;

    move-result-object v3

    .line 1185
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1188
    :cond_5
    const-string v1, ", empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x5d

    .line 1191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V
    .locals 1

    .line 759
    instance-of v0, p4, Ljavax/jmdns/impl/DNSRecord;

    if-nez v0, :cond_1

    .line 760
    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    const-string p2, "DNSEntry is not of type \'DNSRecord\' but of type {}"

    if-nez p4, :cond_0

    const-string p3, "null"

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    .line 760
    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 766
    :cond_1
    check-cast p4, Ljavax/jmdns/impl/DNSRecord;

    .line 772
    invoke-virtual {p4, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    invoke-direct {p0, p4}, Ljavax/jmdns/impl/ServiceInfoImpl;->handleExpiredRecord(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result p1

    goto :goto_1

    .line 777
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/ServiceInfoImpl;->handleUpdateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSRecord;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_5

    .line 783
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 786
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 801
    new-instance p2, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->clone()Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    invoke-direct {p2, p1, p3, p4, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 802
    invoke-virtual {p1, p2}, Ljavax/jmdns/impl/JmDNSImpl;->handleServiceResolved(Ljavax/jmdns/ServiceEvent;)V

    .line 805
    :cond_3
    monitor-enter p0

    .line 806
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 807
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 809
    :cond_4
    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Lorg/slf4j/Logger;

    const-string p2, "JmDNS not available."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public waitForAnnounced(J)Z
    .locals 1

    .line 1084
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->waitForAnnounced(J)Z

    move-result p1

    return p1
.end method

.method public waitForCanceled(J)Z
    .locals 1

    .line 1092
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->waitForCanceled(J)Z

    move-result p1

    return p1
.end method
