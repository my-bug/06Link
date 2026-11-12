.class Lorg/bouncycastle/tls/DTLSEpoch;
.super Ljava/lang/Object;


# instance fields
.field private final cipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

.field private final epoch:I

.field private final recordHeaderLengthRead:I

.field private final recordHeaderLengthWrite:I

.field private final replayWindow:Lorg/bouncycastle/tls/DTLSReplayWindow;

.field private sequenceNumber:J


# direct methods
.method constructor <init>(ILorg/bouncycastle/tls/crypto/TlsCipher;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tls/DTLSReplayWindow;

    invoke-direct {v0}, Lorg/bouncycastle/tls/DTLSReplayWindow;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/DTLSEpoch;->replayWindow:Lorg/bouncycastle/tls/DTLSReplayWindow;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/tls/DTLSEpoch;->sequenceNumber:J

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lorg/bouncycastle/tls/DTLSEpoch;->epoch:I

    iput-object p2, p0, Lorg/bouncycastle/tls/DTLSEpoch;->cipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    iput p3, p0, Lorg/bouncycastle/tls/DTLSEpoch;->recordHeaderLengthRead:I

    iput p4, p0, Lorg/bouncycastle/tls/DTLSEpoch;->recordHeaderLengthWrite:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'cipher\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'epoch\' must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method declared-synchronized allocateSequenceNumber()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/bouncycastle/tls/DTLSEpoch;->sequenceNumber:J

    const-wide/high16 v2, 0x1000000000000L

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/tls/DTLSEpoch;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getCipher()Lorg/bouncycastle/tls/crypto/TlsCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSEpoch;->cipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    return-object v0
.end method

.method getEpoch()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/DTLSEpoch;->epoch:I

    return v0
.end method

.method getRecordHeaderLengthRead()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/DTLSEpoch;->recordHeaderLengthRead:I

    return v0
.end method

.method getRecordHeaderLengthWrite()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/DTLSEpoch;->recordHeaderLengthWrite:I

    return v0
.end method

.method getReplayWindow()Lorg/bouncycastle/tls/DTLSReplayWindow;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DTLSEpoch;->replayWindow:Lorg/bouncycastle/tls/DTLSReplayWindow;

    return-object v0
.end method

.method declared-synchronized getSequenceNumber()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/bouncycastle/tls/DTLSEpoch;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setSequenceNumber(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/bouncycastle/tls/DTLSEpoch;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
