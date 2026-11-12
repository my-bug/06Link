.class public Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSIncoming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageInputStream"
.end annotation


# instance fields
.field final _names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>([BIILorg/slf4j/Logger;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 53
    iput-object p4, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger:Lorg/slf4j/Logger;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>([BILorg/slf4j/Logger;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, p2, p3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BIILorg/slf4j/Logger;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$readName$0$javax-jmdns-impl-DNSIncoming$MessageInputStream(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 162
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-void
.end method

.method protected declared-synchronized peek()I
    .locals 2

    monitor-enter p0

    .line 118
    :try_start_0
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->buf:[B

    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

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

.method public readByte()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    return v0
.end method

.method public readBytes(I)[B
    .locals 2

    .line 74
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, v1, p1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read([BII)I

    return-object v0
.end method

.method public readInt()I
    .locals 2

    .line 70
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public readName()Ljava/lang/String;
    .locals 7

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 126
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedByte()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 131
    :cond_0
    sget-object v4, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSLabel:[I

    invoke-static {v3}, Ljavax/jmdns/impl/constants/DNSLabel;->labelForByte(I)Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 158
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger:Lorg/slf4j/Logger;

    and-int/lit16 v3, v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Unsupported DNS label type: \'{}\'"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger:Lorg/slf4j/Logger;

    const-string v4, "Extended label are not currently supported."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {v3}, Ljavax/jmdns/impl/constants/DNSLabel;->labelValue(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedByte()I

    move-result v3

    or-int/2addr v2, v3

    .line 141
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    .line 143
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger:Lorg/slf4j/Logger;

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    sub-int/2addr v4, v6

    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 143
    const-string v6, "Bad domain name: possible circular name detected. Bad offset: 0x{} at 0x{}"

    invoke-interface {v3, v6, v2, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    const-string v3, ""

    .line 149
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 134
    iget v6, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    sub-int/2addr v6, v5

    .line 135
    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 161
    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v2, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream$$ExternalSyntheticLambda0;-><init>(Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-object v1
.end method

.method public readNonNameString()Ljava/lang/String;
    .locals 1

    .line 167
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedByte()I

    move-result v0

    .line 168
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUTF(I)Ljava/lang/String;
    .locals 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 82
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedByte()I

    move-result v2

    shr-int/lit8 v3, v2, 0x4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x4

    .line 108
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    :goto_1
    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_1
    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    .line 102
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :pswitch_2
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    .line 97
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    goto :goto_1

    :goto_2
    :pswitch_3
    int-to-char v2, v2

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readUnsignedByte()I
    .locals 1

    .line 62
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    .line 66
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedByte()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
