.class public abstract Lorg/bouncycastle/tls/TlsProtocol;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsCloseable;


# static fields
.field protected static final ADS_MODE_0_N:S = 0x1s

.field protected static final ADS_MODE_0_N_FIRSTONLY:S = 0x2s

.field protected static final ADS_MODE_1_Nsub1:S = 0x0s

.field protected static final CS_CLIENT_CERTIFICATE:S = 0xfs

.field protected static final CS_CLIENT_CERTIFICATE_VERIFY:S = 0x11s

.field protected static final CS_CLIENT_END_OF_EARLY_DATA:S = 0xds

.field protected static final CS_CLIENT_FINISHED:S = 0x12s

.field protected static final CS_CLIENT_HELLO:S = 0x1s

.field protected static final CS_CLIENT_HELLO_RETRY:S = 0x3s

.field protected static final CS_CLIENT_KEY_EXCHANGE:S = 0x10s

.field protected static final CS_CLIENT_SUPPLEMENTAL_DATA:S = 0xes

.field protected static final CS_END:S = 0x15s

.field protected static final CS_SERVER_CERTIFICATE:S = 0x7s

.field protected static final CS_SERVER_CERTIFICATE_REQUEST:S = 0xbs

.field protected static final CS_SERVER_CERTIFICATE_STATUS:S = 0x8s

.field protected static final CS_SERVER_CERTIFICATE_VERIFY:S = 0x9s

.field protected static final CS_SERVER_ENCRYPTED_EXTENSIONS:S = 0x5s

.field protected static final CS_SERVER_FINISHED:S = 0x14s

.field protected static final CS_SERVER_HELLO:S = 0x4s

.field protected static final CS_SERVER_HELLO_DONE:S = 0xcs

.field protected static final CS_SERVER_HELLO_RETRY_REQUEST:S = 0x2s

.field protected static final CS_SERVER_KEY_EXCHANGE:S = 0xas

.field protected static final CS_SERVER_SESSION_TICKET:S = 0x13s

.field protected static final CS_SERVER_SUPPLEMENTAL_DATA:S = 0x6s

.field protected static final CS_START:S

.field protected static final EXT_RenegotiationInfo:Ljava/lang/Integer;

.field protected static final EXT_SessionTicket:Ljava/lang/Integer;


# instance fields
.field private alertQueue:Lorg/bouncycastle/tls/ByteQueue;

.field private volatile appDataReady:Z

.field private volatile appDataSplitEnabled:Z

.field private volatile appDataSplitMode:I

.field private applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

.field protected blocking:Z

.field protected clientExtensions:Ljava/util/Hashtable;

.field private volatile closed:Z

.field protected connection_state:S

.field protected expectSessionTicket:Z

.field private volatile failedWithError:Z

.field handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

.field private handshakeQueue:Lorg/bouncycastle/tls/ByteQueue;

.field protected inputBuffers:Lorg/bouncycastle/tls/ByteQueueInputStream;

.field private volatile keyUpdateEnabled:Z

.field private volatile keyUpdatePendingSend:Z

.field private maxHandshakeMessageSize:I

.field protected outputBuffer:Lorg/bouncycastle/tls/ByteQueueOutputStream;

.field protected receivedChangeCipherSpec:Z

.field final recordStream:Lorg/bouncycastle/tls/RecordStream;

.field final recordWriteLock:Ljava/lang/Object;

.field private volatile resumableHandshake:Z

.field protected retryCookie:[B

.field protected retryGroup:I

.field protected selectedPSK13:Z

.field protected serverExtensions:Ljava/util/Hashtable;

.field protected sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

.field protected sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

.field private tlsInputStream:Lorg/bouncycastle/tls/TlsInputStream;

.field private tlsOutputStream:Lorg/bouncycastle/tls/TlsOutputStream;

.field protected tlsSession:Lorg/bouncycastle/tls/TlsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xff01

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    const/16 v0, 0x23

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tls/ByteQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/tls/ByteQueue;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/bouncycastle/tls/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/tls/ByteQueue;

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/tls/ByteQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordWriteLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->maxHandshakeMessageSize:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/tls/TlsInputStream;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/tls/TlsOutputStream;

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->failedWithError:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitEnabled:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdateEnabled:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdatePendingSend:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->resumableHandshake:Z

    iput v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitMode:I

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->retryCookie:[B

    iput v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->retryGroup:I

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    iput-short v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->connection_state:S

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->selectedPSK13:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->expectSessionTicket:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    new-instance v0, Lorg/bouncycastle/tls/ByteQueueInputStream;

    invoke-direct {v0}, Lorg/bouncycastle/tls/ByteQueueInputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/tls/ByteQueueInputStream;

    new-instance v0, Lorg/bouncycastle/tls/ByteQueueOutputStream;

    invoke-direct {v0}, Lorg/bouncycastle/tls/ByteQueueOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/tls/ByteQueueOutputStream;

    new-instance v0, Lorg/bouncycastle/tls/RecordStream;

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/tls/ByteQueueInputStream;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/tls/ByteQueueOutputStream;

    invoke-direct {v0, p0, v1, v2}, Lorg/bouncycastle/tls/RecordStream;-><init>(Lorg/bouncycastle/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tls/ByteQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/tls/ByteQueue;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/bouncycastle/tls/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/tls/ByteQueue;

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/tls/ByteQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordWriteLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->maxHandshakeMessageSize:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/tls/TlsInputStream;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/tls/TlsOutputStream;

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->failedWithError:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitEnabled:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdateEnabled:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdatePendingSend:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->resumableHandshake:Z

    iput v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitMode:I

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->retryCookie:[B

    iput v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->retryGroup:I

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    iput-short v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->connection_state:S

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->selectedPSK13:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    iput-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->expectSessionTicket:Z

    iput-boolean v3, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    new-instance v0, Lorg/bouncycastle/tls/RecordStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/tls/RecordStream;-><init>(Lorg/bouncycastle/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    return-void
.end method

.method protected static assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method protected static createRandomBlock(ZLorg/bouncycastle/tls/TlsContext;)[B
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsContext;->getNonceGenerator()Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;

    move-result-object p1

    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;->generateNonce(I)[B

    move-result-object p1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lorg/bouncycastle/tls/TlsUtils;->writeGMTUnixTime([BI)V

    :cond_0
    return-object p1
.end method

.method protected static createRenegotiationInfo([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->encodeOpaque8([B)[B

    move-result-object p0

    return-object p0
.end method

.method protected static establishMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsKeyExchange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsKeyExchange;->generatePreMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->calculateMasterSecret(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/tls/SecurityParameters;->masterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    throw p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method private processAlertQueue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/tls/ByteQueue;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/ByteQueue;->removeData(II)[B

    move-result-object v0

    aget-byte v1, v0, v2

    int-to-short v1, v1

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    int-to-short v0, v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/tls/TlsProtocol;->handleAlertMessage(SS)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processApplicationDataQueue()V
    .locals 0

    return-void
.end method

.method private processChangeCipherSpec([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    const/16 v1, 0xa

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v2, p2, v0

    invoke-static {p1, v2}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/RecordStream;->notifyChangeCipherSpecReceived()V

    iput-boolean v3, p0, Lorg/bouncycastle/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->handleChangeCipherSpecMessage()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private processHandshakeQueue(Lorg/bouncycastle/tls/ByteQueue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_8

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ByteQueue;->readInt32()I

    move-result v0

    ushr-int/lit8 v2, v0, 0x18

    int-to-short v2, v2

    invoke-static {v2}, Lorg/bouncycastle/tls/HandshakeType;->isRecognized(S)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0xffffff

    and-int/2addr v0, v3

    iget v3, p0, Lorg/bouncycastle/tls/TlsProtocol;->maxHandshakeMessageSize:I

    if-gt v0, v3, :cond_6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v3

    if-ge v3, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v3, 0x14

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v3, v2, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0, v5}, Lorg/bouncycastle/tls/TlsProtocol;->checkReceivedChangeCipherSpec(Z)V

    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/ByteQueue;->readHandshakeMessage(I)Lorg/bouncycastle/tls/HandshakeMessageInput;

    move-result-object v0

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    if-eq v2, v1, :cond_4

    const/16 v1, 0xf

    if-eq v2, v1, :cond_5

    if-eq v2, v3, :cond_5

    const/16 v1, 0x18

    if-eq v2, v1, :cond_5

    :goto_3
    iget-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageInput;->updateHash(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    const-wide/16 v3, 0x4

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/tls/HandshakeMessageInput;->skip(J)J

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/tls/TlsProtocol;->handleHandshakeMessage(SLorg/bouncycastle/tls/HandshakeMessageInput;)V

    goto :goto_0

    :cond_6
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Handshake message length exceeds the maximum: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/bouncycastle/tls/HandshakeType;->getText(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->maxHandshakeMessageSize:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handshake message of unrecognized type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    return-void
.end method

.method protected static readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->readExtensionsData([B)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method protected static readExtensionsData([B)Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    array-length v1, p0

    if-lez v1, :cond_2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result p0

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Repeated extension: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/bouncycastle/tls/ExtensionType;->getText(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected static readExtensionsData13(I[B)Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    array-length v1, p1

    if-lez v1, :cond_3

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->isPermittedExtensionType13(II)Z

    move-result v2

    const/16 v3, 0x2f

    if-eqz v2, :cond_2

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Repeated extension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/tls/ExtensionType;->getText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid extension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/tls/ExtensionType;->getText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected static readExtensionsDataClientHello([B)Ljava/util/Hashtable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    array-length v1, p0

    if-lez v1, :cond_4

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x2f

    if-nez v4, :cond_3

    const/16 v4, 0x29

    if-ne v4, v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    or-int/2addr v2, v6

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    if-gtz v6, :cond_0

    if-eqz v2, :cond_4

    if-ne v4, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string v0, "\'pre_shared_key\' MUST be last in ClientHello"

    invoke-direct {p0, v5, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Repeated extension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/bouncycastle/tls/ExtensionType;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method protected static readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/tls/SupplementalDataEntry;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/tls/SupplementalDataEntry;-><init>(I[B)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;I)V

    return-void
.end method

.method protected static writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsProtocol;->writeExtensionsData(Ljava/util/Hashtable;I)[B

    move-result-object p1

    array-length v0, p1

    add-int/2addr v0, p2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static writeExtensionsData(Ljava/util/Hashtable;ILjava/io/ByteArrayOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p2, p0, v0}, Lorg/bouncycastle/tls/TlsProtocol;->writeSelectedExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;Z)V

    const/4 v0, 0x0

    invoke-static {p2, p0, v0}, Lorg/bouncycastle/tls/TlsProtocol;->writeSelectedExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;Z)V

    invoke-static {p2, p0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->writePreSharedKeyExtension(Ljava/io/OutputStream;Ljava/util/Hashtable;I)V

    return-void
.end method

.method protected static writeExtensionsData(Ljava/util/Hashtable;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsProtocol;->writeExtensionsData(Ljava/util/Hashtable;I)[B

    move-result-object p0

    return-object p0
.end method

.method protected static writeExtensionsData(Ljava/util/Hashtable;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/tls/TlsProtocol;->writeExtensionsData(Ljava/util/Hashtable;ILjava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method protected static writePreSharedKeyExtension(Ljava/io/OutputStream;Ljava/util/Hashtable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tls/TlsExtensionsUtils;->EXT_pre_shared_key:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    const/16 v0, 0x29

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    array-length v0, p1

    add-int/2addr v0, p2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method protected static writeSelectedExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x29

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ne p2, v3, :cond_0

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v2, p0}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {v1, p0}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected static writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/SupplementalDataEntry;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SupplementalDataEntry;->getDataType()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v3, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SupplementalDataEntry;->getData()[B

    move-result-object v2

    invoke-static {v2, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, p0}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public applicationDataAvailable()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v0

    return v0
.end method

.method protected applyMaxFragmentLengthExtension(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/tls/MaxFragmentLength;->isValid(S)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/RecordStream;->setPlaintextLimit(I)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    return-void
.end method

.method protected beginHandshake(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContextAdmin()Lorg/bouncycastle/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/tls/TlsPeer;

    move-result-object v1

    const/16 v2, 0x400

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsPeer;->getMaxHandshakeMessageSize()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->maxHandshakeMessageSize:I

    new-instance v2, Lorg/bouncycastle/tls/DeferredHash;

    invoke-direct {v2, v0}, Lorg/bouncycastle/tls/DeferredHash;-><init>(Lorg/bouncycastle/tls/TlsContext;)V

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    const/4 v2, 0x0

    iput-short v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->connection_state:S

    iput-boolean v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->selectedPSK13:Z

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/AbstractTlsContext;->handshakeBeginning(Lorg/bouncycastle/tls/TlsPeer;)V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/AbstractTlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isRenegotiating()Z

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsPeer;->shouldUseExtendedPadding()Z

    move-result p1

    iput-boolean p1, v0, Lorg/bouncycastle/tls/SecurityParameters;->extendedPadding:Z

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected blockForHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-short v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->connection_state:S

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->safeReadRecord()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    return-void
.end method

.method protected cancelSession()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsSecret;->destroy()V

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SessionParameters;->clear()V

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    return-void
.end method

.method protected checkReceivedChangeCipherSpec(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected cleanupHandshake()V
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->retryCookie:[B

    const/4 v1, -0x1

    iput v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->retryGroup:I

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->selectedPSK13:Z

    iput-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    iput-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->expectSessionTicket:Z

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/TlsProtocol;->handleClose(Z)V

    return-void
.end method

.method protected closeConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream;->close()V

    return-void
.end method

.method public closeInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/tls/ByteQueueInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueueInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsPeer;->requiresCloseNotify()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/TlsProtocol;->handleClose(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->handleFailure()V

    new-instance v0, Lorg/bouncycastle/tls/TlsNoCloseNotifyException;

    invoke-direct {v0}, Lorg/bouncycastle/tls/TlsNoCloseNotifyException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use closeInput() in blocking mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected completeHandshake()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContextAdmin()Lorg/bouncycastle/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/AbstractTlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/AbstractTlsContext;->isHandshaking()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/RecordStream;->finaliseHandshake()V

    const/16 v2, 0x15

    iput-short v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->connection_state:S

    new-instance v2, Lorg/bouncycastle/tls/DeferredHash;

    invoke-direct {v2, v0}, Lorg/bouncycastle/tls/DeferredHash;-><init>(Lorg/bouncycastle/tls/TlsContext;)V

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ByteQueue;->shrink()V

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ByteQueue;->shrink()V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv11(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitEnabled:Z

    iput-boolean v4, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdateEnabled:Z

    iget-boolean v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-eqz v2, :cond_0

    new-instance v2, Lorg/bouncycastle/tls/TlsInputStream;

    invoke-direct {v2, p0}, Lorg/bouncycastle/tls/TlsInputStream;-><init>(Lorg/bouncycastle/tls/TlsProtocol;)V

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/tls/TlsInputStream;

    new-instance v2, Lorg/bouncycastle/tls/TlsOutputStream;

    invoke-direct {v2, p0}, Lorg/bouncycastle/tls/TlsOutputStream;-><init>(Lorg/bouncycastle/tls/TlsProtocol;)V

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/tls/TlsOutputStream;

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    new-instance v2, Lorg/bouncycastle/tls/SessionParameters$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/tls/SessionParameters$Builder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getCipherSuite()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setCipherSuite(I)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setExtendedMasterSecret(Z)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setLocalCertificate(Lorg/bouncycastle/tls/Certificate;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/AbstractTlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-interface {v3, v4}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->adoptSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setMasterSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setNegotiatedVersion(Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setPeerCertificate(Lorg/bouncycastle/tls/Certificate;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getPSKIdentity()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setPSKIdentity([B)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getSRPIdentity()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setSRPIdentity([B)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/tls/SessionParameters$Builder;->setServerExtensions(Ljava/util/Hashtable;)Lorg/bouncycastle/tls/SessionParameters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters$Builder;->build()Lorg/bouncycastle/tls/SessionParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getSessionID()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-static {v1, v2}, Lorg/bouncycastle/tls/TlsUtils;->importSession([BLorg/bouncycastle/tls/SessionParameters;)Lorg/bouncycastle/tls/TlsSession;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->peerCertificate:Lorg/bouncycastle/tls/Certificate;

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters;->getPSKIdentity()[B

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->pskIdentity:[B

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SessionParameters;->getSRPIdentity()[B

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->srpIdentity:[B

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/tls/TlsPeer;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/AbstractTlsContext;->handshakeComplete(Lorg/bouncycastle/tls/TlsPeer;Lorg/bouncycastle/tls/TlsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->cleanupHandshake()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->cleanupHandshake()V

    throw v0
.end method

.method protected establishSession(Lorg/bouncycastle/tls/TlsSession;)Z
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsSession;->isResumable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/tls/SessionParameters;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/tls/SessionParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isTLS()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->isExtendedMasterSecretOptional(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SessionParameters;->isExtendedMasterSecret()Z

    move-result v3

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isSSL()Z

    move-result v2

    if-ne v3, v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SessionParameters;->getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->getSessionMasterSecret(Lorg/bouncycastle/tls/crypto/TlsCrypto;Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    iput-object p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    iput-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/tls/SessionParameters;

    iput-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->sessionMasterSecret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getAppDataSplitMode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitMode:I

    return v0
.end method

.method public getApplicationDataLimit()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream;->getPlaintextLimit()I

    move-result v0

    return v0
.end method

.method public getAvailableInputBytes()I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataAvailable()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use getAvailableInputBytes() in blocking mode! Use getInputStream().available() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAvailableOutputBytes()I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/tls/ByteQueueOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueueOutputStream;->getBuffer()Lorg/bouncycastle/tls/ByteQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use getAvailableOutputBytes() in blocking mode! Use getOutputStream() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getContext()Lorg/bouncycastle/tls/TlsContext;
.end method

.method abstract getContextAdmin()Lorg/bouncycastle/tls/AbstractTlsContext;
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/tls/TlsInputStream;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use InputStream in non-blocking mode! Use offerInput() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/tls/TlsOutputStream;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use OutputStream in non-blocking mode! Use offerOutput() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getPeer()Lorg/bouncycastle/tls/TlsPeer;
.end method

.method protected getRenegotiationPolicy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleAlertMessage(SS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/tls/TlsPeer;->notifyAlertReceived(SS)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/TlsProtocol;->handleAlertWarningMessage(S)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->handleFailure()V

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlertReceived;

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlertReceived;-><init>(S)V

    throw p1
.end method

.method protected handleAlertWarningMessage(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    if-eqz p1, :cond_2

    const/16 v1, 0x29

    if-eq p1, v1, :cond_1

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleClose(Z)V

    return-void

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected handleChangeCipherSpecMessage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected handleClose(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->cleanupHandshake()V

    if-eqz p1, :cond_0

    const/16 p1, 0x5a

    const-string v0, "User canceled handshake"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tls/TlsProtocol;->raiseAlertWarning(SLjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    const-string v0, "Connection closed"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tls/TlsProtocol;->raiseAlertWarning(SLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->closeConnection()V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/tls/TlsPeer;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsPeer;->notifyConnectionClosed()V

    :cond_1
    return-void
.end method

.method protected handleException(SLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->isResumableHandshake()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p3, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/tls/TlsProtocol;->raiseAlertFatal(SLjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->handleFailure()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected handleFailure()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    iput-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->failedWithError:Z

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->invalidateSession()V

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->cleanupHandshake()V

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->closeConnection()V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsPeer;->notifyConnectionClosed()V

    return-void
.end method

.method protected abstract handleHandshakeMessage(SLorg/bouncycastle/tls/HandshakeMessageInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleRenegotiation()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isSecureRenegotiation()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getEntity()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getRenegotiationPolicy()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->refuseRenegotiation()V

    return v1

    :cond_3
    invoke-virtual {p0, v2}, Lorg/bouncycastle/tls/TlsProtocol;->beginHandshake(Z)V

    return v2

    :cond_4
    return v1
.end method

.method protected invalidateSession()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/tls/TlsSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsSession;->invalidate()V

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->cancelSession()V

    return-void
.end method

.method isApplicationDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    return v0
.end method

.method public isConnected()Z
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContextAdmin()Lorg/bouncycastle/tls/AbstractTlsContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/AbstractTlsContext;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isHandshaking()Z
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContextAdmin()Lorg/bouncycastle/tls/AbstractTlsContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/AbstractTlsContext;->isHandshaking()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected isLegacyConnectionState()Z
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->connection_state:S

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isResumableHandshake()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->resumableHandshake:Z

    return v0
.end method

.method protected isTLSv13ConnectionState()Z
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->connection_state:S

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public offerInput([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/tls/TlsProtocol;->offerInput([BII)V

    return-void
.end method

.method public offerInput([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/tls/ByteQueueInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueueInputStream;->available()I

    move-result v0

    const/16 v1, 0x50

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/tls/TlsProtocol;->safeReadFullRecord([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/tls/ByteQueueInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tls/ByteQueueInputStream;->addBytes([BII)V

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/tls/ByteQueueInputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ByteQueueInputStream;->available()I

    move-result p1

    const/4 p2, 0x5

    if-lt p1, p2, :cond_6

    new-array p1, p2, [B

    iget-object p3, p0, Lorg/bouncycastle/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/tls/ByteQueueInputStream;

    invoke-virtual {p3, p1}, Lorg/bouncycastle/tls/ByteQueueInputStream;->peek([B)I

    move-result p3

    if-ne p2, p3, :cond_5

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->safePreviewRecordHeader([B)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/tls/ByteQueueInputStream;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/ByteQueueInputStream;->available()I

    move-result p2

    invoke-virtual {p1}, Lorg/bouncycastle/tls/RecordPreview;->getRecordSize()I

    move-result p1

    if-ge p2, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->safeReadRecord()V

    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_6
    :goto_0
    return-void

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection is closed, cannot accept any more input"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use offerInput() in blocking mode! Use getInputStream() instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public previewInputRecord([B)Lorg/bouncycastle/tls/RecordPreview;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/tls/ByteQueueInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueueInputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->safePreviewRecordHeader([B)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Connection is closed, cannot accept any more input"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can only use previewInputRecord() for record-aligned input."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use previewInputRecord() in blocking mode!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public previewOutputRecord()I
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/tls/ByteQueueOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueueOutputStream;->getBuffer()Lorg/bouncycastle/tls/ByteQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/tls/ByteQueue;->readUint16(I)I

    move-result v0

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only use previewOutputRecord() for record-aligned output."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use previewOutputRecord() in blocking mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previewOutputRecord(I)Lorg/bouncycastle/tls/RecordPreview;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/tls/ByteQueueOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueueOutputStream;->getBuffer()Lorg/bouncycastle/tls/ByteQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    new-instance p1, Lorg/bouncycastle/tls/RecordPreview;

    invoke-direct {p1, v0, v0}, Lorg/bouncycastle/tls/RecordPreview;-><init>(II)V

    return-object p1

    :cond_0
    iget-boolean v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitEnabled:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitMode:I

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/RecordStream;->previewOutputRecord(I)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object v0

    if-le p1, v1, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/tls/RecordStream;->previewOutputRecord(I)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/RecordPreview;->combineAppData(Lorg/bouncycastle/tls/RecordPreview;Lorg/bouncycastle/tls/RecordPreview;)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/RecordStream;->previewOutputRecord(I)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/tls/RecordStream;->previewOutputRecord(I)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/RecordPreview;->combineAppData(Lorg/bouncycastle/tls/RecordPreview;Lorg/bouncycastle/tls/RecordPreview;)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/RecordStream;->previewOutputRecord(I)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object p1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdateEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdatePendingSend:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream;->needsKeyUpdate()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->getLength(I)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/RecordStream;->previewOutputRecordSize(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/RecordPreview;->extendRecordSize(Lorg/bouncycastle/tls/RecordPreview;I)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object p1

    :cond_5
    return-object p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Connection is closed, cannot produce any more output"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can only use previewOutputRecord() for record-aligned output."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use previewOutputRecord() in blocking mode!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use previewOutputRecord() until initial handshake completed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected process13FinishedMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->isServer()Z

    move-result v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getVerifyDataLength()I

    move-result v3

    invoke-static {v3, p1}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object p1

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, v1, Lorg/bouncycastle/tls/SecurityParameters;->peerVerifyData:[B

    const/4 p1, 0x0

    iput-object p1, v1, Lorg/bouncycastle/tls/SecurityParameters;->tlsUnique:[B

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processFinishedMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->isServer()Z

    move-result v2

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getVerifyDataLength()I

    move-result v3

    invoke-static {v3, p1}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object p1

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, v1, Lorg/bouncycastle/tls/SecurityParameters;->peerVerifyData:[B

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalVerifyData()[B

    move-result-object v0

    if-nez v0, :cond_1

    iput-object p1, v1, Lorg/bouncycastle/tls/SecurityParameters;->tlsUnique:[B

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/tls/TlsUtils;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p1

    return p1
.end method

.method protected processRecord(S[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_0
    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/tls/TlsProtocol;->processApplicationDataQueue()V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_1
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/tls/ByteQueue;->addData([BII)V

    iget-object p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->processHandshakeQueue(Lorg/bouncycastle/tls/ByteQueue;)V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/ByteQueue;

    invoke-direct {p1, p2, p3, p4}, Lorg/bouncycastle/tls/ByteQueue;-><init>([BII)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->processHandshakeQueue(Lorg/bouncycastle/tls/ByteQueue;)V

    invoke-virtual {p1}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result p1

    if-lez p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/tls/ByteQueue;

    add-int/2addr p3, p4

    sub-int/2addr p3, p1

    invoke-virtual {v0, p2, p3, p1}, Lorg/bouncycastle/tls/ByteQueue;->addData([BII)V

    :cond_2
    return-void

    :pswitch_2
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/tls/TlsProtocol;->processAlertQueue()V

    return-void

    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/tls/TlsProtocol;->processChangeCipherSpec([BII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected raiseAlertFatal(SLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/tls/TlsPeer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/bouncycastle/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V

    int-to-byte p1, p1

    new-array p2, v1, [B

    const/4 p3, 0x0

    aput-byte v1, p2, p3

    const/4 v0, 0x1

    aput-byte p1, p2, v0

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    const/16 v0, 0x15

    invoke-virtual {p1, v0, p2, p3, v1}, Lorg/bouncycastle/tls/RecordStream;->writeRecord(S[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected raiseAlertWarning(SLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/tls/TlsPeer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, p2, v1}, Lorg/bouncycastle/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V

    int-to-byte p1, p1

    const/4 p2, 0x2

    new-array v0, p2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    aput-byte p1, v0, v2

    const/16 p1, 0x15

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/bouncycastle/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method

.method public readApplicationData([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int v1, v0, p3

    or-int v2, p2, p3

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_5

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v2

    if-ge v2, v1, :cond_3

    iget-boolean v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    if-eqz v2, :cond_2

    iget-boolean p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->failedWithError:Z

    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot read application data on failed TLS connection"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->safeReadRecord()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/bouncycastle/tls/ByteQueue;->removeData([BIII)V

    return p3

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot read application data until initial handshake completed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public readInput(Ljava/nio/ByteBuffer;I)I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v0, p1, p2, v1}, Lorg/bouncycastle/tls/ByteQueue;->removeData(Ljava/nio/ByteBuffer;II)V

    return p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use readInput() in blocking mode! Use getInputStream() instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readInput([BII)I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueue;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p3, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/tls/ByteQueue;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/bouncycastle/tls/ByteQueue;->removeData([BIII)V

    return p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use readInput() in blocking mode! Use getInputStream() instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readOutput(Ljava/nio/ByteBuffer;I)I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getAvailableOutputBytes()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/tls/ByteQueueOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueueOutputStream;->getBuffer()Lorg/bouncycastle/tls/ByteQueue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/bouncycastle/tls/ByteQueue;->removeData(Ljava/nio/ByteBuffer;II)V

    return p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use readOutput() in blocking mode! Use getOutputStream() instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readOutput([BII)I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getAvailableOutputBytes()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/tls/ByteQueueOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/ByteQueueOutputStream;->getBuffer()Lorg/bouncycastle/tls/ByteQueue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/bouncycastle/tls/ByteQueue;->removeData([BIII)V

    return p3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use readOutput() in blocking mode! Use getOutputStream() instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected receive13KeyUpdate(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdateEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/tls/KeyUpdateRequest;->isValid(S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->update13TrafficSecretPeer(Lorg/bouncycastle/tls/TlsContext;)V

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream;->notifyKeyUpdateReceived()V

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdatePendingSend:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdatePendingSend:Z

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected refuseRenegotiation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isSSL(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x64

    const-string v1, "Renegotiation not supported"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/tls/TlsProtocol;->raiseAlertWarning(SLjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public resumeHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->isHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->blockForHandshake()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No handshake in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use resumeHandshake() in non-blocking mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected safePreviewRecordHeader([B)Lorg/bouncycastle/tls/RecordPreview;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to read record"

    const/16 v1, 0x50

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/tls/RecordStream;->previewRecordHeader([B)Lorg/bouncycastle/tls/RecordPreview;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected safeReadFullRecord([BII)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to process record"

    const/16 v1, 0x50

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v2, p1, p2, p3}, Lorg/bouncycastle/tls/RecordStream;->readFullRecord([BII)Z

    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, p2, v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected safeReadRecord()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to read record"

    const/16 v1, 0x50

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/RecordStream;->readRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/tls/TlsPeer;->requiresCloseNotify()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/tls/TlsProtocol;->handleClose(Z)V
    :try_end_0
    .catch Lorg/bouncycastle/tls/TlsFatalAlertReceived; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/bouncycastle/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->handleFailure()V

    new-instance v0, Lorg/bouncycastle/tls/TlsNoCloseNotifyException;

    invoke-direct {v0}, Lorg/bouncycastle/tls/TlsNoCloseNotifyException;-><init>()V

    throw v0

    :cond_2
    :try_start_1
    new-instance v2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v2
    :try_end_1
    .catch Lorg/bouncycastle/tls/TlsFatalAlertReceived; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/bouncycastle/tls/TlsFatalAlert; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    throw v0
.end method

.method protected safeWriteRecord(S[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to write record"

    const/16 v1, 0x50

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/bouncycastle/tls/RecordStream;->writeRecord(S[BII)V
    :try_end_0
    .catch Lorg/bouncycastle/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    invoke-virtual {p0, p2, v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->handleException(SLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected send13CertificateMessage(Lorg/bouncycastle/tls/Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x50

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/16 v3, 0xb

    invoke-direct {v0, v3}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3}, Lorg/bouncycastle/tls/Certificate;->encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    iput-object p1, v2, Lorg/bouncycastle/tls/SecurityParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected send13CertificateVerifyMessage(Lorg/bouncycastle/tls/DigitallySigned;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    return-void
.end method

.method protected send13FinishedMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->isServer()Z

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/tls/SecurityParameters;->localVerifyData:[B

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/bouncycastle/tls/SecurityParameters;->tlsUnique:[B

    const/16 v1, 0x14

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;S[B)V

    return-void
.end method

.method protected send13KeyUpdate(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdateEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->encodeUint8(S)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;S[B)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->update13TrafficSecretLocal(Lorg/bouncycastle/tls/TlsContext;)V

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream;->notifyKeyUpdateSent()V

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdatePendingSend:Z

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdatePendingSend:Z

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected sendCertificateMessage(Lorg/bouncycastle/tls/Certificate;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v2

    if-nez v2, :cond_2

    if-nez p1, :cond_0

    sget-object p1, Lorg/bouncycastle/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/tls/Certificate;

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->isServer()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isSSL()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "SSLv3 client didn\'t provide credentials"

    const/16 v0, 0x29

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/tls/TlsProtocol;->raiseAlertWarning(SLjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    invoke-virtual {p1, v0, v2, p2}, Lorg/bouncycastle/tls/Certificate;->encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v2, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    :goto_0
    iput-object p1, v1, Lorg/bouncycastle/tls/SecurityParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    return-void

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected sendChangeCipherSpec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->sendChangeCipherSpecMessage()V

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream;->enablePendingCipherWrite()V

    return-void
.end method

.method protected sendChangeCipherSpecMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/16 v3, 0x14

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/bouncycastle/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method

.method protected sendFinishedMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->isServer()Z

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/tls/SecurityParameters;->localVerifyData:[B

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isResumedSession()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->isExtendedMasterSecret()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerVerifyData()[B

    move-result-object v2

    if-nez v2, :cond_1

    iput-object v0, v1, Lorg/bouncycastle/tls/SecurityParameters;->tlsUnique:[B

    :cond_1
    const/16 v1, 0x14

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;S[B)V

    return-void
.end method

.method protected sendSupplementalDataMessage(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageOutput;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/HandshakeMessageOutput;-><init>(S)V

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/tls/HandshakeMessageOutput;->send(Lorg/bouncycastle/tls/TlsProtocol;)V

    return-void
.end method

.method public setAppDataSplitMode(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitMode:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal appDataSplitMode mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResumableHandshake(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/tls/TlsProtocol;->resumableHandshake:Z

    return-void
.end method

.method public writeApplicationData([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int v1, v0, p3

    or-int v2, p2, p3

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_8

    iget-boolean v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataReady:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordWriteLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    if-lez p3, :cond_6

    :try_start_0
    iget-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitEnabled:Z

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitMode:I

    if-eq v1, v4, :cond_1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    if-le p3, v4, :cond_4

    invoke-virtual {p0, v2, p1, p2, v4}, Lorg/bouncycastle/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_0
    iput-boolean v3, p0, Lorg/bouncycastle/tls/TlsProtocol;->appDataSplitEnabled:Z

    :cond_1
    sget-object v1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-virtual {p0, v2, v1, v3, v3}, Lorg/bouncycastle/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdateEnabled:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->keyUpdatePendingSend:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/tls/TlsProtocol;->send13KeyUpdate(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/RecordStream;->needsKeyUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/tls/TlsProtocol;->send13KeyUpdate(Z)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/RecordStream;->getPlaintextLimit()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v2, p1, p2, v1}, Lorg/bouncycastle/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot write application data on closed/failed TLS connection"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot write application data until initial handshake completed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method writeHandshakeMessage([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-lt p3, v0, :cond_3

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v0, :cond_0

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/tls/TlsProtocol;->handshakeHash:Lorg/bouncycastle/tls/TlsHandshakeHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/tls/TlsHandshakeHash;->update([BII)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/TlsProtocol;->getContext()Lorg/bouncycastle/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :cond_2
    sub-int v1, p3, v0

    iget-object v2, p0, Lorg/bouncycastle/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/RecordStream;->getPlaintextLimit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x16

    add-int v3, p2, v0

    invoke-virtual {p0, v2, p1, v3, v1}, Lorg/bouncycastle/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    add-int/2addr v0, v1

    if-lt v0, p3, :cond_2

    return-void

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
