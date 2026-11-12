.class public final Ljavax/jmdns/impl/DNSIncoming;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
    }
.end annotation


# static fields
.field public static USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z = true

.field private static final _nibbleToHex:[C


# instance fields
.field private final _messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

.field private final _packet:Ljava/net/DatagramPacket;

.field private final _receivedTime:J

.field private _senderUDPPayload:I

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 603
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(IIZLjava/net/DatagramPacket;J)V
    .locals 0

    .line 279
    invoke-direct {p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 32
    const-class p1, Ljavax/jmdns/impl/DNSIncoming;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 280
    iput-object p4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 281
    new-instance p2, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p3

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getLength()I

    move-result p4

    invoke-direct {p2, p3, p4, p1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BILorg/slf4j/Logger;)V

    iput-object p2, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 282
    iput-wide p5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 188
    const-string v2, "MessageInputStream close error. {}"

    .line 0
    const-string v0, "questions:"

    .line 188
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    sget v4, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v1, v6, v6, v3}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 32
    const-class v3, Ljavax/jmdns/impl/DNSIncoming;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    iput-object v3, v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    move-object/from16 v4, p1

    .line 189
    iput-object v4, v1, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 190
    new-instance v7, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    invoke-direct {v7, v8, v9, v3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BILorg/slf4j/Logger;)V

    iput-object v7, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    const/16 v8, 0x5b4

    .line 192
    iput v8, v1, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 195
    :try_start_0
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v8

    invoke-virtual {v1, v8}, Ljavax/jmdns/impl/DNSIncoming;->setId(I)V

    .line 196
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v8

    invoke-virtual {v1, v8}, Ljavax/jmdns/impl/DNSIncoming;->setFlags(I)V

    .line 197
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming;->getOperationCode()I

    move-result v8

    if-gtz v8, :cond_a

    .line 200
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v8

    .line 201
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v9

    .line 202
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v10

    .line 203
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v7

    .line 205
    const-string v11, "DNSIncoming() questions:{} answers:{} authorities:{} additionals:{}"

    .line 206
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 207
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 208
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 209
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v12, v6, v16

    aput-object v13, v6, v5

    const/4 v12, 0x2

    aput-object v14, v6, v12

    const/4 v12, 0x3

    aput-object v15, v6, v12

    .line 205
    invoke-interface {v3, v11, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit8 v3, v8, 0x5

    add-int v6, v9, v10

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xb

    add-int/2addr v3, v6

    .line 215
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    if-gt v3, v4, :cond_9

    if-lez v8, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    .line 222
    iget-object v3, v1, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-direct {v1}, Ljavax/jmdns/impl/DNSIncoming;->readQuestion()Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-lez v9, :cond_3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_3

    .line 229
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer()Ljavax/jmdns/impl/DNSRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 232
    iget-object v4, v1, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-lez v10, :cond_5

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v10, :cond_5

    .line 239
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer()Ljavax/jmdns/impl/DNSRecord;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 242
    iget-object v4, v1, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    if-lez v7, :cond_7

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_7

    .line 249
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer()Ljavax/jmdns/impl/DNSRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 252
    iget-object v3, v1, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 257
    :cond_7
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_8

    .line 271
    :try_start_1
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 273
    iget-object v3, v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 258
    :cond_8
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Received a message with the wrong length."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_9
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " answers:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " authorities:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " additionals:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Received a message with a non standard operation code. Currently unsupported in the specification."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 261
    :try_start_3
    iget-object v3, v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v4, "Corrupted DNSIncoming message. Enable debug level logging to see the full DNSIncoming() message."

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    iget-object v3, v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 263
    iget-object v3, v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v4, "DNSIncoming() dump {}\n exception"

    invoke-virtual {v1, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    :cond_b
    new-instance v3, Ljava/io/IOException;

    const-string v4, "DNSIncoming corrupted message"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 268
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    :goto_5
    :try_start_4
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 273
    iget-object v4, v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    :goto_6
    goto :goto_8

    :goto_7
    throw v3

    :goto_8
    goto :goto_7
.end method

.method private _hexString([B)Ljava/lang/String;
    .locals 6

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 615
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 617
    sget-object v4, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    div-int/lit8 v5, v3, 0x10

    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    rem-int/lit8 v3, v3, 0x10

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getHostAddress()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method private isIPv4MappedIPv6Address([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 512
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/16 v2, 0x9

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    aget-byte v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    if-ne p1, v3, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method private readQuestion()Ljavax/jmdns/impl/DNSQuestion;
    .locals 11

    .line 301
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    .line 303
    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 304
    invoke-static {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    .line 305
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    .line 307
    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-eq v3, v5, :cond_0

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-ne v4, v5, :cond_1

    .line 308
    :cond_0
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 309
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v6, 0x2

    aput-object v7, v9, v6

    const/4 v6, 0x3

    aput-object v3, v9, v6

    const/4 v6, 0x4

    aput-object v1, v9, v6

    const/4 v1, 0x5

    aput-object v4, v9, v1

    const/4 v1, 0x6

    aput-object v8, v9, v1

    .line 308
    const-string v1, "Could not find record type or record class. domain \'{}\', address: {}:{}, type: {} ({}), class: {} ({})"

    invoke-interface {v5, v1, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v5, "DNSIncoming() message\n{}"

    invoke-virtual {p0, v10}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    :cond_1
    invoke-virtual {v4, v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v1

    .line 316
    invoke-static {v0, v3, v4, v1}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method append(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 2

    .line 580
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 583
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAuthorities()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 584
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAdditionals()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 586
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->clone()Ljavax/jmdns/impl/DNSIncoming;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/DNSIncoming;
    .locals 7

    .line 291
    new-instance v0, Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isMulticast()Z

    move-result v3

    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    iget-wide v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSIncoming;-><init>(IIZLjava/net/DatagramPacket;J)V

    .line 292
    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    iput v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 293
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public elapseSinceArrival()I
    .locals 4

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getSenderUDPPayload()I
    .locals 1

    .line 600
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    return v0
.end method

.method print(Z)Ljava/lang/String;
    .locals 4

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 527
    iget-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    new-array v1, p1, [B

    .line 528
    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->print([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method readAnswer()Ljavax/jmdns/impl/DNSRecord;
    .locals 25

    move-object/from16 v0, p0

    .line 320
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v3

    .line 321
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    .line 322
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 324
    invoke-static {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v4

    .line 325
    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v4, v5, :cond_0

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v5

    .line 327
    :goto_0
    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    const/4 v7, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v4, v6, :cond_1

    .line 328
    iget-object v6, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 329
    invoke-direct {v0}, Ljavax/jmdns/impl/DNSIncoming;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x6

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v8}, Ljava/net/DatagramPacket;->getPort()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x5

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v3, v9, v14

    aput-object v15, v9, v13

    aput-object v8, v9, v12

    aput-object v4, v9, v10

    aput-object v17, v9, v11

    aput-object v5, v9, v19

    aput-object v18, v9, v16

    .line 328
    const-string v8, "Could not find record type. domain \'{}\', address: {}:{}, type: {} ({}), class: {} ({})"

    invoke-interface {v6, v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v6, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 331
    iget-object v6, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v8, "DNSIncoming() message\n{}"

    invoke-virtual {v0, v13}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/16 v16, 0x6

    const/16 v19, 0x5

    :cond_2
    :goto_1
    move-object v6, v4

    move-object v4, v5

    .line 335
    invoke-virtual {v4, v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v5

    .line 336
    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readInt()I

    move-result v8

    .line 337
    iget-object v9, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v9

    .line 340
    sget-object v15, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {v6}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v17

    aget v15, v15, v17

    const/16 v17, 0x0

    const-string v18, ""

    packed-switch v15, :pswitch_data_0

    const/16 v24, 0x3

    .line 500
    iget-object v5, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 501
    invoke-direct {v0}, Ljavax/jmdns/impl/DNSIncoming;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getPort()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v14

    aput-object v8, v7, v13

    aput-object v10, v7, v12

    aput-object v6, v7, v24

    aput-object v1, v7, v11

    const/16 v19, 0x5

    aput-object v4, v7, v19

    const/16 v16, 0x6

    aput-object v2, v7, v16

    .line 500
    const-string v1, "DNSIncoming() unhandled type. domain \'{}\', address: {}:{}, type: {} ({}), class: {} ({})"

    invoke-interface {v5, v1, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    int-to-long v2, v9

    invoke-virtual {v1, v2, v3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->skip(J)J

    goto/16 :goto_12

    .line 403
    :pswitch_0
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    invoke-static {v1, v8}, Ljavax/jmdns/impl/constants/DNSResultCode;->resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v1

    const/high16 v3, 0xff0000

    and-int/2addr v3, v8

    const/16 v4, 0x10

    shr-int/2addr v3, v4

    if-nez v3, :cond_13

    .line 406
    iput v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 407
    :goto_2
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v1

    if-lez v1, :cond_1a

    .line 411
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v1

    const-string v2, "There was a problem reading the OPT record. Ignoring."

    if-lt v1, v12, :cond_12

    .line 412
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    .line 413
    invoke-static {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v3

    .line 419
    iget-object v5, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v5

    if-lt v5, v12, :cond_11

    .line 420
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 425
    new-array v5, v14, [B

    .line 426
    iget-object v6, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v6

    if-lt v6, v2, :cond_3

    .line 427
    iget-object v5, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v5

    .line 431
    :cond_3
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    invoke-virtual {v3}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v13, :cond_8

    if-eq v2, v12, :cond_7

    if-eq v2, v10, :cond_7

    if-eq v2, v11, :cond_7

    const/4 v6, 0x5

    if-eq v2, v6, :cond_5

    :cond_4
    :goto_3
    const/16 v22, 0x10

    const/16 v24, 0x3

    goto/16 :goto_f

    :cond_5
    const v2, 0xfde9

    if-lt v1, v2, :cond_6

    const v2, 0xfffe

    if-gt v1, v2, :cond_6

    .line 485
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v5}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v3

    const-string v5, "There was an OPT answer using an experimental/local option code: {} data: {}"

    invoke-interface {v2, v5, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 487
    :cond_6
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v5}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v3

    const-string v5, "There was an OPT answer. Not currently handled. Option code: {} data: {}"

    invoke-interface {v2, v5, v1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 478
    :cond_7
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 479
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v2, "There was an OPT answer. Option code: {} data: {}"

    invoke-direct {v0, v5}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 444
    :cond_8
    :try_start_0
    aget-byte v1, v5, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 445
    :try_start_1
    aget-byte v2, v5, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    const/4 v3, 0x6

    .line 446
    :try_start_2
    new-array v6, v3, [B

    aget-byte v3, v5, v12

    aput-byte v3, v6, v14

    aget-byte v3, v5, v10

    aput-byte v3, v6, v13

    aget-byte v3, v5, v11

    aput-byte v3, v6, v12

    const/16 v19, 0x5

    aget-byte v3, v5, v19

    aput-byte v3, v6, v10

    const/16 v16, 0x6

    aget-byte v3, v5, v16

    aput-byte v3, v6, v11

    aget-byte v3, v5, v7

    aput-byte v3, v6, v19
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 448
    :try_start_3
    array-length v3, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v8, 0x8

    if-le v3, v8, :cond_9

    const/4 v3, 0x6

    .line 450
    :try_start_4
    new-array v9, v3, [B

    aget-byte v3, v5, v8

    aput-byte v3, v9, v14

    const/16 v3, 0x9

    aget-byte v3, v5, v3

    aput-byte v3, v9, v13

    const/16 v3, 0xa

    aget-byte v3, v5, v3

    aput-byte v3, v9, v12

    const/16 v3, 0xb

    aget-byte v3, v5, v3

    aput-byte v3, v9, v10

    const/16 v3, 0xc

    aget-byte v3, v5, v3

    aput-byte v3, v9, v11

    const/16 v3, 0xd

    aget-byte v3, v5, v3

    const/16 v19, 0x5

    aput-byte v3, v9, v19
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-object v9, v6

    move-object/from16 v3, v17

    const/16 v22, 0x10

    :catch_1
    :goto_4
    const/16 v24, 0x3

    goto/16 :goto_9

    :cond_9
    move-object v9, v6

    .line 452
    :goto_5
    :try_start_5
    array-length v3, v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const/16 v15, 0x11

    const/16 v20, 0xf

    const/16 v21, 0xe

    const/16 v22, 0x10

    const/16 v4, 0x12

    if-ne v3, v4, :cond_a

    .line 454
    :try_start_6
    new-array v3, v11, [B

    aget-byte v23, v5, v21

    aput-byte v23, v3, v14

    aget-byte v23, v5, v20

    aput-byte v23, v3, v13

    aget-byte v23, v5, v22

    aput-byte v23, v3, v12

    aget-byte v23, v5, v15

    aput-byte v23, v3, v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catch_2
    move-object/from16 v3, v17

    goto :goto_4

    :cond_a
    move-object/from16 v3, v17

    :goto_6
    const/16 v23, 0x12

    .line 456
    :try_start_7
    array-length v4, v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const/16 v24, 0x3

    const/16 v10, 0x16

    if-ne v4, v10, :cond_b

    .line 458
    :try_start_8
    new-array v4, v8, [B

    aget-byte v8, v5, v21

    aput-byte v8, v4, v14

    aget-byte v8, v5, v20

    aput-byte v8, v4, v13

    aget-byte v8, v5, v22

    aput-byte v8, v4, v12

    aget-byte v8, v5, v15

    aput-byte v8, v4, v24

    aget-byte v8, v5, v23

    aput-byte v8, v4, v11

    const/16 v8, 0x13

    aget-byte v8, v5, v8

    const/16 v19, 0x5

    aput-byte v8, v4, v19

    const/16 v8, 0x14

    aget-byte v8, v5, v8

    const/16 v16, 0x6

    aput-byte v8, v4, v16

    const/16 v8, 0x15

    aget-byte v8, v5, v8

    aput-byte v8, v4, v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object v3, v4

    goto :goto_a

    :catch_3
    const/16 v22, 0x10

    const/16 v24, 0x3

    goto :goto_7

    :catch_4
    const/16 v22, 0x10

    const/16 v24, 0x3

    move-object v9, v6

    :goto_7
    move-object/from16 v3, v17

    goto :goto_9

    :catch_5
    const/16 v22, 0x10

    const/16 v24, 0x3

    move-object/from16 v3, v17

    move-object v6, v3

    move-object v9, v6

    goto :goto_9

    :catch_6
    const/16 v22, 0x10

    const/16 v24, 0x3

    move-object/from16 v3, v17

    move-object v6, v3

    move-object v9, v6

    goto :goto_8

    :catch_7
    const/16 v22, 0x10

    const/16 v24, 0x3

    move-object/from16 v3, v17

    move-object v6, v3

    move-object v9, v6

    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x0

    .line 461
    :catch_8
    :goto_9
    iget-object v4, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v8, "Malformed OPT answer. Option code: Owner data: {}"

    invoke-direct {v0, v5}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    :cond_b
    :goto_a
    iget-object v4, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 464
    iget-object v4, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    .line 465
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 466
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 467
    invoke-direct {v0, v6}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v5

    if-eq v9, v6, :cond_c

    const-string v8, " wakeup MAC address: "

    goto :goto_b

    :cond_c
    move-object/from16 v8, v18

    :goto_b
    if-eq v9, v6, :cond_d

    .line 469
    invoke-direct {v0, v9}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :cond_d
    move-object/from16 v6, v18

    :goto_c
    if-eqz v3, :cond_e

    const-string v9, " password: "

    goto :goto_d

    :cond_e
    move-object/from16 v9, v18

    :goto_d
    if-eqz v3, :cond_f

    .line 471
    invoke-direct {v0, v3}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_f
    move-object/from16 v3, v18

    :goto_e
    new-array v10, v7, [Ljava/lang/Object;

    aput-object v1, v10, v14

    aput-object v2, v10, v13

    aput-object v5, v10, v12

    aput-object v8, v10, v24

    aput-object v6, v10, v11

    const/16 v19, 0x5

    aput-object v9, v10, v19

    const/16 v16, 0x6

    aput-object v3, v10, v16

    .line 464
    const-string v1, "Unhandled Owner OPT version: {} sequence: {} MAC address: {} {}{} {}{}"

    invoke-interface {v4, v1, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_f
    const/16 v4, 0x10

    const/4 v10, 0x3

    const/16 v16, 0x6

    const/16 v19, 0x5

    goto/16 :goto_2

    .line 422
    :cond_11
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 415
    :cond_12
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 496
    :cond_13
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v4, "There was an OPT answer. Wrong version number: {} result code: {}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v4, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 395
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2, v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    .line 398
    invoke-virtual {v1, v14, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_10
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    if-lez v2, :cond_15

    add-int/2addr v2, v13

    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v18

    :cond_15
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 400
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$HostInformation;

    move v6, v8

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Ljavax/jmdns/impl/DNSRecord$HostInformation;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_2
    move v6, v8

    .line 380
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v7

    .line 381
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v8

    .line 382
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v9

    .line 386
    sget-boolean v1, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    if-eqz v1, :cond_16

    .line 387
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 390
    :cond_16
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readNonNameString()Ljava/lang/String;

    move-result-object v1

    :goto_11
    move-object v10, v1

    .line 392
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-direct/range {v2 .. v10}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    goto :goto_13

    :pswitch_3
    move v6, v8

    .line 377
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Text;

    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1, v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    goto :goto_13

    :pswitch_4
    move v6, v8

    .line 369
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v7

    .line 370
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 371
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    goto :goto_13

    .line 373
    :cond_17
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v2, "PTR record of class: {}, there was a problem reading the service name of the answer for domain: {}"

    invoke-interface {v1, v2, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :pswitch_5
    move v6, v8

    .line 359
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1, v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    .line 360
    invoke-direct {v0, v7}, Ljavax/jmdns/impl/DNSIncoming;->isIPv4MappedIPv6Address([B)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 361
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Lorg/slf4j/Logger;

    const-string v2, "AAAA record with IPv4-mapped address for {}"

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    .line 363
    :cond_18
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$IPv6Address;

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    goto :goto_13

    :pswitch_6
    move v6, v8

    if-ne v9, v11, :cond_19

    .line 354
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$IPv4Address;

    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1, v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    goto :goto_13

    .line 356
    :cond_19
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    int-to-long v2, v9

    invoke-virtual {v1, v2, v3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->skip(J)J

    :cond_1a
    :goto_12
    move-object/from16 v2, v17

    :goto_13
    if-eqz v2, :cond_1b

    .line 506
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/jmdns/impl/DNSRecord;->setRecordSource(Ljava/net/InetAddress;)V

    :cond_1b
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dns[query,"

    goto :goto_0

    :cond_0
    const-string v1, "dns[response,"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    const-string v1, ", id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    if-eqz v1, :cond_3

    .line 547
    const-string v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 550
    const-string v1, ":r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    .line 553
    const-string v1, ":aa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_3

    .line 556
    const-string v1, ":tc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
