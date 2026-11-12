.class Lorg/bouncycastle/tls/DTLSRecordLayer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/DatagramTransport;


# static fields
.field private static final MAX_FRAGMENT_LENGTH:I = 0x4000

.field static final RECORD_HEADER_LENGTH:I = 0xd

.field private static final RETRANSMIT_TIMEOUT:J = 0x3a980L

.field private static final TCP_MSL:J = 0x1d4c0L


# instance fields
.field private volatile closed:Z

.field private final context:Lorg/bouncycastle/tls/TlsContext;

.field private currentEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

.field private volatile failed:Z

.field private heartBeatResponder:Z

.field private heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

.field private heartbeatInFlight:Lorg/bouncycastle/tls/HeartbeatMessage;

.field private heartbeatResendMillis:I

.field private heartbeatResendTimeout:Lorg/bouncycastle/tls/Timeout;

.field private heartbeatTimeout:Lorg/bouncycastle/tls/Timeout;

.field private volatile inConnection:Z

.field private volatile inHandshake:Z

.field private final peer:Lorg/bouncycastle/tls/TlsPeer;

.field private pendingEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

.field private volatile plaintextLimit:I

.field private readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

.field private volatile readVersion:Lorg/bouncycastle/tls/ProtocolVersion;

.field private final recordQueue:Lorg/bouncycastle/tls/ByteQueue;

.field private retransmit:Lorg/bouncycastle/tls/DTLSHandshakeRetransmit;

.field private retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

.field private retransmitTimeout:Lorg/bouncycastle/tls/Timeout;

.field private final transport:Lorg/bouncycastle/tls/DatagramTransport;

.field private writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

.field private final writeLock:Ljava/lang/Object;

.field private volatile writeVersion:Lorg/bouncycastle/tls/ProtocolVersion;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsPeer;Lorg/bouncycastle/tls/DatagramTransport;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->closed:Z

    iput-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->failed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/tls/DTLSHandshakeRetransmit;

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitTimeout:Lorg/bouncycastle/tls/Timeout;

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    iput-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartBeatResponder:Z

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatInFlight:Lorg/bouncycastle/tls/HeartbeatMessage;

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatTimeout:Lorg/bouncycastle/tls/Timeout;

    const/4 v2, -0x1

    iput v2, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendMillis:I

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendTimeout:Lorg/bouncycastle/tls/Timeout;

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->context:Lorg/bouncycastle/tls/TlsContext;

    iput-object p2, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->peer:Lorg/bouncycastle/tls/TlsPeer;

    iput-object p3, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/tls/DatagramTransport;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->inHandshake:Z

    new-instance p1, Lorg/bouncycastle/tls/DTLSEpoch;

    sget-object p2, Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;->INSTANCE:Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;

    const/16 p3, 0xd

    invoke-direct {p1, v0, p2, p3, p3}, Lorg/bouncycastle/tls/DTLSEpoch;-><init>(ILorg/bouncycastle/tls/crypto/TlsCipher;II)V

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    const/16 p1, 0x4000

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->setPlaintextLimit(I)V

    return-void
.end method

.method private closeTransport()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->failed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->warn(SLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/tls/DatagramTransport;

    invoke-interface {v0}, Lorg/bouncycastle/tls/DatagramTransport;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->closed:Z

    :cond_1
    return-void
.end method

.method private static getMacSequenceNumber(IJ)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p0, 0x30

    shl-long/2addr v0, p0

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private processRecord(I[B[BIILorg/bouncycastle/tls/DTLSRecordCallback;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p6

    const/4 v11, -0x1

    const/16 v2, 0xd

    if-ge v0, v2, :cond_0

    return v11

    :cond_0
    const/4 v12, 0x0

    invoke-static {v7, v12}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/16 v17, -0x1

    return v17

    :pswitch_0
    const/4 v13, 0x1

    invoke-static {v7, v13}, Lorg/bouncycastle/tls/TlsUtils;->readVersion([BI)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-nez v3, :cond_1

    return v11

    :cond_1
    const/4 v14, 0x3

    invoke-static {v7, v14}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result v15

    iget-object v3, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/DTLSEpoch;->getEpoch()I

    move-result v3

    const/16 v4, 0x16

    const/4 v8, 0x0

    if-ne v15, v3, :cond_2

    iget-object v3, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/bouncycastle/tls/DTLSEpoch;->getEpoch()I

    move-result v3

    if-ne v15, v3, :cond_3

    if-ne v5, v4, :cond_3

    iget-object v3, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    goto :goto_0

    :cond_3
    move-object v3, v8

    :goto_0
    if-nez v3, :cond_4

    return v11

    :cond_4
    const/4 v9, 0x5

    move/from16 v16, v15

    invoke-static {v7, v9}, Lorg/bouncycastle/tls/TlsUtils;->readUint48([BI)J

    move-result-wide v14

    invoke-virtual {v3}, Lorg/bouncycastle/tls/DTLSEpoch;->getReplayWindow()Lorg/bouncycastle/tls/DTLSReplayWindow;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Lorg/bouncycastle/tls/DTLSReplayWindow;->shouldDiscard(J)Z

    move-result v9

    if-eqz v9, :cond_5

    return v11

    :cond_5
    move-object v9, v8

    invoke-virtual {v3}, Lorg/bouncycastle/tls/DTLSEpoch;->getRecordHeaderLengthRead()I

    move-result v8

    const/16 v17, -0x1

    const/16 v11, 0x19

    if-le v8, v2, :cond_8

    if-eq v11, v5, :cond_6

    return v17

    :cond_6
    if-ge v0, v8, :cond_7

    return v17

    :cond_7
    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getConnectionIDPeer()[B

    move-result-object v2

    array-length v9, v2

    const/16 v13, 0xb

    invoke-static {v9, v2, v12, v7, v13}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual(I[BI[BI)Z

    move-result v2

    if-nez v2, :cond_9

    return v17

    :cond_8
    if-ne v11, v5, :cond_9

    return v17

    :cond_9
    add-int/lit8 v2, v8, -0x2

    invoke-static {v7, v2}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result v9

    add-int v2, v9, v8

    if-eq v0, v2, :cond_a

    return v17

    :cond_a
    iget-object v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/tls/ProtocolVersion;->equals(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->getReadEpoch()I

    move-result v0

    if-nez v0, :cond_b

    if-lez v9, :cond_b

    if-ne v4, v5, :cond_b

    invoke-static {v7, v8}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_b

    goto :goto_1

    :cond_b
    return v17

    :cond_c
    :goto_1
    invoke-virtual {v3}, Lorg/bouncycastle/tls/DTLSEpoch;->getEpoch()I

    move-result v0

    invoke-static {v0, v14, v15}, Lorg/bouncycastle/tls/DTLSRecordLayer;->getMacSequenceNumber(IJ)J

    move-result-wide v19

    :try_start_0
    invoke-virtual {v3}, Lorg/bouncycastle/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object v2

    move-object v0, v3

    move-wide/from16 v3, v19

    const/4 v12, 0x0

    const/16 v13, 0x16

    invoke-interface/range {v2 .. v9}, Lorg/bouncycastle/tls/crypto/TlsCipher;->decodeCiphertext(JSLorg/bouncycastle/tls/ProtocolVersion;[BII)Lorg/bouncycastle/tls/crypto/TlsDecodeResult;

    move-result-object v2
    :try_end_0
    .catch Lorg/bouncycastle/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_1

    iget v3, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    iget v4, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->plaintextLimit:I

    if-le v3, v4, :cond_d

    return v17

    :cond_d
    iget v3, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_e

    iget-short v3, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->contentType:S

    const/16 v4, 0x17

    if-eq v3, v4, :cond_e

    return v17

    :cond_e
    iget-object v3, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    if-nez v3, :cond_10

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->getReadEpoch()I

    move-result v3

    if-nez v3, :cond_f

    if-lez v9, :cond_f

    if-ne v13, v5, :cond_f

    invoke-static {v7, v8}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v3

    const/4 v4, 0x3

    if-ne v4, v3, :cond_f

    sget-object v3, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v3, v6}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrLaterVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_10

    return v17

    :cond_f
    iput-object v6, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    :cond_10
    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getReplayWindow()Lorg/bouncycastle/tls/DTLSReplayWindow;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Lorg/bouncycastle/tls/DTLSReplayWindow;->reportAuthenticated(J)Z

    move-result v3

    if-eqz v10, :cond_13

    iget-object v4, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-ne v0, v4, :cond_11

    if-eqz v3, :cond_11

    const/4 v0, 0x1

    goto :goto_2

    :cond_11
    const/4 v0, 0x0

    :goto_2
    if-ne v11, v5, :cond_12

    or-int/lit8 v0, v0, 0x2

    :cond_12
    invoke-interface {v10, v0}, Lorg/bouncycastle/tls/DTLSRecordCallback;->recordAccepted(I)V

    :cond_13
    iget-short v0, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->contentType:S

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_1

    return v17

    :pswitch_1
    iget-object v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatInFlight:Lorg/bouncycastle/tls/HeartbeatMessage;

    if-nez v0, :cond_14

    iget-boolean v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartBeatResponder:Z

    if-eqz v0, :cond_17

    :cond_14
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v4, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->buf:[B

    iget v5, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->off:I

    iget v2, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    invoke-direct {v0, v4, v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v0}, Lorg/bouncycastle/tls/HeartbeatMessage;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/HeartbeatMessage;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lorg/bouncycastle/tls/HeartbeatMessage;->getType()S

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_16

    if-eq v2, v3, :cond_15

    goto :goto_3

    :cond_15
    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatInFlight:Lorg/bouncycastle/tls/HeartbeatMessage;

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lorg/bouncycastle/tls/HeartbeatMessage;->getPayload()[B

    move-result-object v0

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatInFlight:Lorg/bouncycastle/tls/HeartbeatMessage;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/HeartbeatMessage;->getPayload()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {v1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->resetHeartbeat()V

    goto :goto_3

    :cond_16
    iget-boolean v2, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartBeatResponder:Z

    if-eqz v2, :cond_17

    iget-object v2, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/HeartbeatMessage;->getPayload()[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/tls/HeartbeatMessage;->create(Lorg/bouncycastle/tls/TlsContext;S[B)Lorg/bouncycastle/tls/HeartbeatMessage;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/tls/DTLSRecordLayer;->sendHeartbeatMessage(Lorg/bouncycastle/tls/HeartbeatMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_17
    :goto_3
    return v17

    :pswitch_2
    iget-boolean v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v0, :cond_19

    return v17

    :pswitch_3
    iget-boolean v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v0, :cond_19

    iget-object v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/tls/DTLSHandshakeRetransmit;

    if-eqz v0, :cond_18

    iget-object v3, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->buf:[B

    iget v4, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->off:I

    iget v2, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    move/from16 v5, v16

    invoke-interface {v0, v5, v3, v4, v2}, Lorg/bouncycastle/tls/DTLSHandshakeRetransmit;->receivedHandshakeRecord(I[BII)V

    :cond_18
    return v17

    :cond_19
    iget-boolean v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v0, :cond_1a

    iget-object v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/tls/DTLSHandshakeRetransmit;

    if-eqz v0, :cond_1a

    iput-object v12, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/tls/DTLSHandshakeRetransmit;

    iput-object v12, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iput-object v12, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitTimeout:Lorg/bouncycastle/tls/Timeout;

    :cond_1a
    iget v0, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    move/from16 v3, p5

    if-gt v0, v3, :cond_1b

    iget-object v0, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->buf:[B

    iget v3, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->off:I

    iget v4, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-static {v0, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    return v0

    :cond_1b
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_4
    iget v0, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    if-ne v0, v3, :cond_1d

    iget-object v0, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->buf:[B

    iget v4, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->off:I

    invoke-static {v0, v4}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    iget-object v4, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->buf:[B

    iget v2, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->off:I

    const/16 v18, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v2}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v2

    iget-object v4, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->peer:Lorg/bouncycastle/tls/TlsPeer;

    invoke-interface {v4, v0, v2}, Lorg/bouncycastle/tls/TlsPeer;->notifyAlertReceived(SS)V

    if-eq v0, v3, :cond_1c

    if-nez v2, :cond_1d

    invoke-direct {v1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->closeTransport()V

    goto :goto_4

    :cond_1c
    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->failed()V

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1d
    :goto_4
    return v17

    :pswitch_5
    const/4 v12, 0x0

    :goto_5
    iget v0, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    if-ge v12, v0, :cond_20

    iget-object v0, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->buf:[B

    iget v3, v2, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->off:I

    add-int/2addr v3, v12

    invoke-static {v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1e

    goto :goto_6

    :cond_1e
    iget-object v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-eqz v0, :cond_1f

    iput-object v0, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    :cond_1f
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_20
    return v17

    :catch_1
    move-exception v0

    const/16 v2, 0x14

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v3

    if-ne v2, v3, :cond_21

    return v17

    :cond_21
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->peer:Lorg/bouncycastle/tls/TlsPeer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V

    int-to-byte p1, p1

    int-to-byte p2, p2

    const/4 p3, 0x2

    new-array p4, p3, [B

    const/4 v0, 0x0

    aput-byte p1, p4, v0

    const/4 p1, 0x1

    aput-byte p2, p4, p1

    const/16 p1, 0x15

    invoke-direct {p0, p1, p4, v0, p3}, Lorg/bouncycastle/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    return-void
.end method

.method static receiveClientHelloRecord([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/16 v1, 0xd

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v2

    const/16 v3, 0x16

    if-eq v3, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2}, Lorg/bouncycastle/tls/TlsUtils;->readVersion([BI)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, p1, 0x3

    invoke-static {p0, v2}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, p1, 0xb

    invoke-static {p0, v2}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_7

    const/16 v4, 0x4000

    if-le v2, v4, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v2, 0xd

    if-ge p2, v4, :cond_5

    return v0

    :cond_5
    add-int/2addr p1, v1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result p0

    if-eq v3, p0, :cond_6

    return v0

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v0
.end method

.method private receiveDatagram([BIII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/tls/DatagramTransport;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/DatagramTransport;->receive([BIII)I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p1, p3, :cond_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    iput p2, p1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    throw p1

    :catch_1
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private receivePendingRecord([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p3, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {p3}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result p3

    const/16 v0, 0xd

    if-lt p3, v0, :cond_3

    iget-object p3, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lorg/bouncycastle/tls/ByteQueue;->readUint16(I)I

    move-result p3

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getEpoch()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getEpoch()I

    move-result v0

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/ByteQueue;->removeData(I)V

    const/4 p1, -0x1

    return p1

    :cond_2
    invoke-virtual {p3}, Lorg/bouncycastle/tls/DTLSEpoch;->getRecordHeaderLengthRead()I

    move-result v0

    iget-object p3, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {p3}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result p3

    if-lt p3, v0, :cond_3

    iget-object p3, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p3, v1}, Lorg/bouncycastle/tls/ByteQueue;->readUint16(I)I

    move-result p3

    add-int/2addr v0, p3

    :cond_3
    iget-object p3, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {p3}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result p3

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/bouncycastle/tls/ByteQueue;->removeData([BIII)V

    return p3
.end method

.method private receiveRecord([BIII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/tls/DTLSRecordLayer;->receivePendingRecord([BII)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/DTLSRecordLayer;->receiveDatagram([BIII)I

    move-result p3

    const/16 p4, 0xd

    if-lt p3, p4, :cond_4

    const/4 p4, 0x1

    iput-boolean p4, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->inConnection:Z

    add-int/lit8 p4, p2, 0x3

    invoke-static {p1, p4}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result p4

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getEpoch()I

    move-result v0

    if-ne p4, v0, :cond_1

    iget-object p4, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getEpoch()I

    move-result v0

    if-ne p4, v0, :cond_2

    iget-object p4, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    invoke-virtual {p4}, Lorg/bouncycastle/tls/DTLSEpoch;->getRecordHeaderLengthRead()I

    move-result p4

    if-lt p3, p4, :cond_4

    add-int v0, p2, p4

    add-int/lit8 v0, v0, -0x2

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    add-int/2addr p4, v0

    if-le p3, p4, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tls/ByteQueue;->addData([BII)V

    return p4

    :cond_4
    return p3
.end method

.method private resetHeartbeat()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatInFlight:Lorg/bouncycastle/tls/HeartbeatMessage;

    const/4 v1, -0x1

    iput v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendMillis:I

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendTimeout:Lorg/bouncycastle/tls/Timeout;

    new-instance v0, Lorg/bouncycastle/tls/Timeout;

    iget-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsHeartbeat;->getIdleMillis()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tls/Timeout;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatTimeout:Lorg/bouncycastle/tls/Timeout;

    return-void
.end method

.method private static sendDatagram(Lorg/bouncycastle/tls/DatagramSender;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/tls/DatagramSender;->send([BII)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    iput p1, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    throw p0
.end method

.method private sendHeartbeatMessage(Lorg/bouncycastle/tls/HeartbeatMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/HeartbeatMessage;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    const/16 v2, 0x18

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    return-void
.end method

.method static sendHelloVerifyRequestRecord(Lorg/bouncycastle/tls/DatagramSender;J[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p3

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    array-length v0, p3

    const/16 v1, 0xd

    add-int/2addr v0, v1

    new-array v2, v0, [B

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(S[BI)V

    sget-object v3, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/tls/ProtocolVersion;

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Lorg/bouncycastle/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;[BI)V

    const/4 v3, 0x3

    invoke-static {v4, v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    const/4 v3, 0x5

    invoke-static {p1, p2, v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->writeUint48(J[BI)V

    array-length p1, p3

    const/16 p2, 0xb

    invoke-static {p1, v2, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    array-length p1, p3

    invoke-static {p3, v4, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v2, v4, v0}, Lorg/bouncycastle/tls/DTLSRecordLayer;->sendDatagram(Lorg/bouncycastle/tls/DatagramSender;[BII)V

    return-void
.end method

.method private sendRecord(S[BII)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v8, p4

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->plaintextLimit:I

    const/16 v1, 0x50

    if-gt v8, v0, :cond_4

    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    :goto_0
    iget-object v10, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getEpoch()I

    move-result v11

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->allocateSequenceNumber()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lorg/bouncycastle/tls/DTLSRecordLayer;->getMacSequenceNumber(IJ)J

    move-result-wide v1

    iget-object v4, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getRecordHeaderLengthWrite()I

    move-result v5

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object v0

    move v3, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-interface/range {v0 .. v8}, Lorg/bouncycastle/tls/crypto/TlsCipher;->encodePlaintext(JSLorg/bouncycastle/tls/ProtocolVersion;I[BII)Lorg/bouncycastle/tls/crypto/TlsEncodeResult;

    move-result-object p1

    iget v0, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->len:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    iget-short v1, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->recordType:S

    iget-object v2, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v3, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(S[BI)V

    iget-object v1, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v2, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    add-int/2addr v2, v9

    invoke-static {v4, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;[BI)V

    iget-object v1, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v2, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    add-int/lit8 v2, v2, 0x3

    invoke-static {v11, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    iget-object v1, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v2, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    add-int/lit8 v2, v2, 0x5

    invoke-static {v12, v13, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint48(J[BI)V

    const/16 v1, 0xd

    if-le v5, v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getConnectionIDLocal()[B

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v3, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    add-int/lit8 v3, v3, 0xb

    array-length v4, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v1, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v2, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    add-int/lit8 v5, v5, -0x2

    add-int/2addr v2, v5

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/tls/DatagramTransport;

    iget-object v1, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v2, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    iget p1, p1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->len:I

    invoke-static {v0, v1, v2, p1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->sendDatagram(Lorg/bouncycastle/tls/DatagramSender;[BII)V

    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->inConnection:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    const-string v1, "User canceled handshake"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->warn(SLjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/tls/DTLSRecordLayer;->closeTransport()V

    :cond_1
    return-void
.end method

.method fail(S)V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->inConnection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1, v1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->failed:Z

    invoke-direct {p0}, Lorg/bouncycastle/tls/DTLSRecordLayer;->closeTransport()V

    :cond_1
    return-void
.end method

.method failed()V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->failed:Z

    invoke-direct {p0}, Lorg/bouncycastle/tls/DTLSRecordLayer;->closeTransport()V

    :cond_0
    return-void
.end method

.method getReadEpoch()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getEpoch()I

    move-result v0

    return v0
.end method

.method getReadVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0
.end method

.method public getReceiveLimit()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/tls/DatagramTransport;

    invoke-interface {v0}, Lorg/bouncycastle/tls/DatagramTransport;->getReceiveLimit()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSEpoch;->getRecordHeaderLengthRead()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/bouncycastle/tls/crypto/TlsCipher;->getPlaintextDecodeLimit(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->plaintextLimit:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/tls/crypto/TlsCipher;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/tls/DatagramTransport;

    invoke-interface {v1}, Lorg/bouncycastle/tls/DatagramTransport;->getSendLimit()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/DTLSEpoch;->getRecordHeaderLengthWrite()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsCipher;->getPlaintextEncodeLimit(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->plaintextLimit:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method handshakeSuccessful(Lorg/bouncycastle/tls/DTLSHandshakeRetransmit;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/tls/DTLSHandshakeRetransmit;

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    new-instance p1, Lorg/bouncycastle/tls/Timeout;

    const-wide/32 v0, 0x3a980

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/tls/Timeout;-><init>(J)V

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitTimeout:Lorg/bouncycastle/tls/Timeout;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->inHandshake:Z

    iget-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method initHeartbeat(Lorg/bouncycastle/tls/TlsHeartbeat;Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    iput-boolean p2, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartBeatResponder:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/tls/DTLSRecordLayer;->resetHeartbeat()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method initPendingEpoch(Lorg/bouncycastle/tls/crypto/TlsCipher;)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getConnectionIDLocal()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getConnectionIDPeer()[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0xd

    if-eqz v1, :cond_1

    array-length v2, v1

    :cond_1
    add-int/lit8 v2, v2, 0xd

    new-instance v1, Lorg/bouncycastle/tls/DTLSEpoch;

    iget-object v3, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/DTLSEpoch;->getEpoch()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v3, p1, v0, v2}, Lorg/bouncycastle/tls/DTLSEpoch;-><init>(ILorg/bouncycastle/tls/crypto/TlsCipher;II)V

    iput-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->closed:Z

    return v0
.end method

.method public receive([BIII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/tls/DTLSRecordLayer;->receive([BIIILorg/bouncycastle/tls/DTLSRecordCallback;)I

    move-result p1

    return p1
.end method

.method receive([BIIILorg/bouncycastle/tls/DTLSRecordCallback;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move/from16 v3, p4

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/tls/Timeout;->forWaitMillis(IJ)Lorg/bouncycastle/tls/Timeout;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, v8

    :goto_0
    if-ltz v3, :cond_8

    iget-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitTimeout:Lorg/bouncycastle/tls/Timeout;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1, v2}, Lorg/bouncycastle/tls/Timeout;->remainingMillis(J)J

    move-result-wide v5

    const-wide/16 v9, 0x1

    cmp-long v11, v5, v9

    if-gez v11, :cond_0

    iput-object v8, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/tls/DTLSHandshakeRetransmit;

    iput-object v8, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iput-object v8, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitTimeout:Lorg/bouncycastle/tls/Timeout;

    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatTimeout:Lorg/bouncycastle/tls/Timeout;

    invoke-static {v5, v1, v2}, Lorg/bouncycastle/tls/Timeout;->hasExpired(Lorg/bouncycastle/tls/Timeout;J)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatInFlight:Lorg/bouncycastle/tls/HeartbeatMessage;

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->context:Lorg/bouncycastle/tls/TlsContext;

    iget-object v9, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    invoke-interface {v9}, Lorg/bouncycastle/tls/TlsHeartbeat;->generatePayload()[B

    move-result-object v9

    invoke-static {v5, v6, v9}, Lorg/bouncycastle/tls/HeartbeatMessage;->create(Lorg/bouncycastle/tls/TlsContext;S[B)Lorg/bouncycastle/tls/HeartbeatMessage;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatInFlight:Lorg/bouncycastle/tls/HeartbeatMessage;

    new-instance v5, Lorg/bouncycastle/tls/Timeout;

    iget-object v9, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeat:Lorg/bouncycastle/tls/TlsHeartbeat;

    invoke-interface {v9}, Lorg/bouncycastle/tls/TlsHeartbeat;->getTimeoutMillis()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v5, v9, v10, v1, v2}, Lorg/bouncycastle/tls/Timeout;-><init>(JJ)V

    iput-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatTimeout:Lorg/bouncycastle/tls/Timeout;

    iget-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->peer:Lorg/bouncycastle/tls/TlsPeer;

    invoke-interface {v5}, Lorg/bouncycastle/tls/TlsPeer;->getHandshakeResendTimeMillis()I

    move-result v5

    iput v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendMillis:I

    new-instance v5, Lorg/bouncycastle/tls/Timeout;

    iget v9, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendMillis:I

    int-to-long v9, v9

    invoke-direct {v5, v9, v10, v1, v2}, Lorg/bouncycastle/tls/Timeout;-><init>(JJ)V

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/bouncycastle/tls/TlsTimeoutException;

    const-string v2, "Heartbeat timed out"

    invoke-direct {v1, v2}, Lorg/bouncycastle/tls/TlsTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendTimeout:Lorg/bouncycastle/tls/Timeout;

    invoke-static {v5, v1, v2}, Lorg/bouncycastle/tls/Timeout;->hasExpired(Lorg/bouncycastle/tls/Timeout;J)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendMillis:I

    invoke-static {v5}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->backOff(I)I

    move-result v5

    iput v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendMillis:I

    new-instance v5, Lorg/bouncycastle/tls/Timeout;

    iget v9, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendMillis:I

    int-to-long v9, v9

    invoke-direct {v5, v9, v10, v1, v2}, Lorg/bouncycastle/tls/Timeout;-><init>(JJ)V

    :goto_1
    iput-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendTimeout:Lorg/bouncycastle/tls/Timeout;

    iget-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatInFlight:Lorg/bouncycastle/tls/HeartbeatMessage;

    invoke-direct {p0, v5}, Lorg/bouncycastle/tls/DTLSRecordLayer;->sendHeartbeatMessage(Lorg/bouncycastle/tls/HeartbeatMessage;)V

    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatTimeout:Lorg/bouncycastle/tls/Timeout;

    invoke-static {v3, v5, v1, v2}, Lorg/bouncycastle/tls/Timeout;->constrainWaitMillis(ILorg/bouncycastle/tls/Timeout;J)I

    move-result v3

    iget-object v5, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->heartbeatResendTimeout:Lorg/bouncycastle/tls/Timeout;

    invoke-static {v3, v5, v1, v2}, Lorg/bouncycastle/tls/Timeout;->constrainWaitMillis(ILorg/bouncycastle/tls/Timeout;J)I

    move-result v1

    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/tls/DatagramTransport;

    invoke-interface {v1}, Lorg/bouncycastle/tls/DatagramTransport;->getReceiveLimit()I

    move-result v1

    if-eqz v4, :cond_5

    array-length v2, v4

    if-ge v2, v1, :cond_6

    :cond_5
    new-array v4, v1, [B

    :cond_6
    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1, v6}, Lorg/bouncycastle/tls/DTLSRecordLayer;->receiveRecord([BIII)I

    move-result v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/tls/DTLSRecordLayer;->processRecord(I[B[BIILorg/bouncycastle/tls/DTLSRecordCallback;)I

    move-result v1

    if-ltz v1, :cond_7

    return v1

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lorg/bouncycastle/tls/Timeout;->getWaitMillis(Lorg/bouncycastle/tls/Timeout;J)I

    move-result v3

    move-object v4, v2

    move-wide v1, v0

    goto/16 :goto_0

    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method receivePending([BIILorg/bouncycastle/tls/DTLSRecordCallback;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v0

    new-array v3, v0, [B

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, v0}, Lorg/bouncycastle/tls/DTLSRecordLayer;->receivePendingRecord([BII)I

    move-result v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/tls/DTLSRecordLayer;->processRecord(I[B[BIILorg/bouncycastle/tls/DTLSRecordCallback;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    iget-object p1, v1, Lorg/bouncycastle/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v4

    move p2, v5

    move p3, v6

    move-object p4, v7

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method resetAfterHelloVerifyRequestServer(J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->inConnection:Z

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/tls/DTLSEpoch;->setSequenceNumber(J)V

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DTLSEpoch;->getReplayWindow()Lorg/bouncycastle/tls/DTLSReplayWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/tls/DTLSReplayWindow;->reset(J)V

    return-void
.end method

.method resetWriteEpoch()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    return-void
.end method

.method public send([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    goto :goto_3

    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    iget-object v2, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    invoke-direct {p0, v1, v3, v4, v2}, Lorg/bouncycastle/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/tls/DTLSEpoch;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    :goto_2
    const/16 v0, 0x16

    :goto_3
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    return-void
.end method

.method setPlaintextLimit(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->plaintextLimit:I

    return-void
.end method

.method setReadVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    return-void
.end method

.method setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tls/DTLSRecordLayer;->writeVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    return-void
.end method

.method warn(SLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
