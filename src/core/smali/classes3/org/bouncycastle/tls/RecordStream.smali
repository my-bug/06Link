.class Lorg/bouncycastle/tls/RecordStream;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tls/RecordStream$Record;,
        Lorg/bouncycastle/tls/RecordStream$SequenceNumber;
    }
.end annotation


# static fields
.field private static DEFAULT_PLAINTEXT_LIMIT:I = 0x4000


# instance fields
.field private ciphertextLimit:I

.field private handler:Lorg/bouncycastle/tls/TlsProtocol;

.field private ignoreChangeCipherSpec:Z

.field private input:Ljava/io/InputStream;

.field private final inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

.field private output:Ljava/io/OutputStream;

.field private pendingCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

.field private plaintextLimit:I

.field private readCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

.field private readCipherDeferred:Lorg/bouncycastle/tls/crypto/TlsCipher;

.field private final readSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

.field private writeCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

.field private final writeSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

.field private writeVersion:Lorg/bouncycastle/tls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tls/RecordStream$Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/RecordStream$Record;-><init>(Lorg/bouncycastle/tls/RecordStream$1;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    new-instance v0, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;-><init>(Lorg/bouncycastle/tls/RecordStream$1;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->readSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    new-instance v0, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;-><init>(Lorg/bouncycastle/tls/RecordStream$1;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->writeSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    iput-object v1, p0, Lorg/bouncycastle/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    sget-object v0, Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;->INSTANCE:Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->readCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    iput-object v1, p0, Lorg/bouncycastle/tls/RecordStream;->readCipherDeferred:Lorg/bouncycastle/tls/crypto/TlsCipher;

    sget-object v0, Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;->INSTANCE:Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->writeCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    iput-object v1, p0, Lorg/bouncycastle/tls/RecordStream;->writeVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    sget v0, Lorg/bouncycastle/tls/RecordStream;->DEFAULT_PLAINTEXT_LIMIT:I

    iput v0, p0, Lorg/bouncycastle/tls/RecordStream;->plaintextLimit:I

    iput v0, p0, Lorg/bouncycastle/tls/RecordStream;->ciphertextLimit:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/tls/RecordStream;->ignoreChangeCipherSpec:Z

    iput-object p1, p0, Lorg/bouncycastle/tls/RecordStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    iput-object p2, p0, Lorg/bouncycastle/tls/RecordStream;->input:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/bouncycastle/tls/RecordStream;->output:Ljava/io/OutputStream;

    return-void
.end method

.method private checkChangeCipherSpec([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    aget-byte p1, p1, p2

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Malformed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p3, 0x14

    invoke-static {p3}, Lorg/bouncycastle/tls/ContentType;->getText(S)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xa

    invoke-direct {p1, p3, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method private static checkLength(IIS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method private checkRecordType([BI)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/tls/RecordStream;->readCipherDeferred:Lorg/bouncycastle/tls/crypto/TlsCipher;

    const/16 v0, 0x17

    if-eqz p2, :cond_0

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/tls/RecordStream;->readCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->readCipherDeferred:Lorg/bouncycastle/tls/crypto/TlsCipher;

    iget v0, p0, Lorg/bouncycastle/tls/RecordStream;->plaintextLimit:I

    invoke-interface {p2, v0}, Lorg/bouncycastle/tls/crypto/TlsCipher;->getCiphertextDecodeLimit(I)I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/tls/RecordStream;->ciphertextLimit:I

    iget-object p2, p0, Lorg/bouncycastle/tls/RecordStream;->readSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;->reset()V

    return p1

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/tls/RecordStream;->readCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    invoke-interface {p2}, Lorg/bouncycastle/tls/crypto/TlsCipher;->usesOpaqueRecordTypeDecode()Z

    move-result p2

    const/16 v1, 0xa

    if-eqz p2, :cond_2

    if-eq v0, p1, :cond_4

    iget-boolean p2, p0, Lorg/bouncycastle/tls/RecordStream;->ignoreChangeCipherSpec:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x14

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Opaque "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/tls/ContentType;->getText(S)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_2
    packed-switch p1, :pswitch_data_0

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/tls/ContentType;->getText(S)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p2

    :pswitch_0
    iget-object p2, p0, Lorg/bouncycastle/tls/RecordStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/TlsProtocol;->isApplicationDataReady()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Not ready for "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bouncycastle/tls/ContentType;->getText(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    :pswitch_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream$Record;->reset()V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    return-void

    :cond_1
    throw v0
.end method

.method decodeAndVerify(SLorg/bouncycastle/tls/ProtocolVersion;[BII)Lorg/bouncycastle/tls/crypto/TlsDecodeResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->readSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;->nextValue(S)J

    move-result-wide v3

    iget-object v2, p0, Lorg/bouncycastle/tls/RecordStream;->readCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v2 .. v9}, Lorg/bouncycastle/tls/crypto/TlsCipher;->decodeCiphertext(JSLorg/bouncycastle/tls/ProtocolVersion;[BII)Lorg/bouncycastle/tls/crypto/TlsDecodeResult;

    move-result-object p1

    iget p2, p1, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    iget p3, p0, Lorg/bouncycastle/tls/RecordStream;->plaintextLimit:I

    const/16 p4, 0x16

    invoke-static {p2, p3, p4}, Lorg/bouncycastle/tls/RecordStream;->checkLength(IIS)V

    iget p2, p1, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    const/4 p3, 0x1

    if-ge p2, p3, :cond_1

    iget-short p2, p1, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->contentType:S

    const/16 p3, 0x17

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method enablePendingCipherRead(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    const/16 v1, 0x50

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/tls/RecordStream;->readCipherDeferred:Lorg/bouncycastle/tls/crypto/TlsCipher;

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->readCipherDeferred:Lorg/bouncycastle/tls/crypto/TlsCipher;

    return-void

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->readCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    iget p1, p0, Lorg/bouncycastle/tls/RecordStream;->plaintextLimit:I

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/crypto/TlsCipher;->getCiphertextDecodeLimit(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/tls/RecordStream;->ciphertextLimit:I

    iget-object p1, p0, Lorg/bouncycastle/tls/RecordStream;->readSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;->reset()V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method enablePendingCipherWrite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->writeCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->writeSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;->reset()V

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method finaliseHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->readCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    iget-object v1, p0, Lorg/bouncycastle/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->writeCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method getPlaintextLimit()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/RecordStream;->plaintextLimit:I

    return v0
.end method

.method needsKeyUpdate()Z
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->writeSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;->currentValue()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method notifyChangeCipherSpecReceived()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/RecordStream;->enablePendingCipherRead(Z)V

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0xa

    const-string v2, "No pending cipher"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method notifyKeyUpdateReceived()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->readCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsCipher;->rekeyDecoder()V

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->readSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;->reset()V

    return-void
.end method

.method notifyKeyUpdateSent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->writeCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsCipher;->rekeyEncoder()V

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->writeSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;->reset()V

    return-void
.end method

.method previewOutputRecord(I)Lorg/bouncycastle/tls/RecordPreview;
    .locals 2

    iget v0, p0, Lorg/bouncycastle/tls/RecordStream;->plaintextLimit:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/RecordStream;->previewOutputRecordSize(I)I

    move-result v0

    new-instance v1, Lorg/bouncycastle/tls/RecordPreview;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/tls/RecordPreview;-><init>(II)V

    return-object v1
.end method

.method previewOutputRecordSize(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->writeCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/crypto/TlsCipher;->getCiphertextEncodeLimit(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    return p1
.end method

.method previewRecordHeader([B)Lorg/bouncycastle/tls/RecordPreview;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tls/RecordStream;->checkRecordType([BI)S

    move-result v1

    const/4 v2, 0x3

    invoke-static {p1, v2}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result p1

    iget v2, p0, Lorg/bouncycastle/tls/RecordStream;->ciphertextLimit:I

    const/16 v3, 0x16

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/tls/RecordStream;->checkLength(IIS)V

    add-int/lit8 v2, p1, 0x5

    const/16 v3, 0x17

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/tls/RecordStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/TlsProtocol;->isApplicationDataReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/tls/RecordStream;->readCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    invoke-interface {v1, p1}, Lorg/bouncycastle/tls/crypto/TlsCipher;->getPlaintextDecodeLimit(I)I

    move-result p1

    iget v1, p0, Lorg/bouncycastle/tls/RecordStream;->plaintextLimit:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/RecordPreview;

    invoke-direct {p1, v2, v0}, Lorg/bouncycastle/tls/RecordPreview;-><init>(II)V

    return-object p1
.end method

.method readFullRecord([BII)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ge p3, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, p2, 0x3

    invoke-static {p1, v2}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result v8

    add-int/lit8 v2, v8, 0x5

    if-eq p3, v2, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/RecordStream;->checkRecordType([BI)S

    move-result v4

    add-int/lit8 p3, p2, 0x1

    invoke-static {p1, p3}, Lorg/bouncycastle/tls/TlsUtils;->readVersion([BI)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    iget p3, p0, Lorg/bouncycastle/tls/RecordStream;->ciphertextLimit:I

    const/16 v0, 0x16

    invoke-static {v8, p3, v0}, Lorg/bouncycastle/tls/RecordStream;->checkLength(IIS)V

    iget-boolean p3, p0, Lorg/bouncycastle/tls/RecordStream;->ignoreChangeCipherSpec:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    const/16 p3, 0x14

    if-ne p3, v4, :cond_2

    add-int/2addr p2, v1

    invoke-direct {p0, p1, p2, v8}, Lorg/bouncycastle/tls/RecordStream;->checkChangeCipherSpec([BII)V

    return v0

    :cond_2
    add-int/lit8 v7, p2, 0x5

    move-object v3, p0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/tls/RecordStream;->decodeAndVerify(SLorg/bouncycastle/tls/ProtocolVersion;[BII)Lorg/bouncycastle/tls/crypto/TlsDecodeResult;

    move-result-object p1

    iget-object p2, v3, Lorg/bouncycastle/tls/RecordStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    iget-short p3, p1, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->contentType:S

    iget-object v1, p1, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->buf:[B

    iget v2, p1, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->off:I

    iget p1, p1, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    invoke-virtual {p2, p3, v1, v2, p1}, Lorg/bouncycastle/tls/TlsProtocol;->processRecord(S[BII)V

    return v0
.end method

.method readRecord()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    iget-object v1, p0, Lorg/bouncycastle/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/RecordStream$Record;->readHeader(Ljava/io/InputStream;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    iget-object v0, v0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/tls/RecordStream;->checkRecordType([BI)S

    move-result v3

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    iget-object v0, v0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->readVersion([BI)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    iget-object v0, v0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result v7

    iget v0, p0, Lorg/bouncycastle/tls/RecordStream;->ciphertextLimit:I

    const/16 v2, 0x16

    invoke-static {v7, v0, v2}, Lorg/bouncycastle/tls/RecordStream;->checkLength(IIS)V

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    iget-object v2, p0, Lorg/bouncycastle/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, v2, v7}, Lorg/bouncycastle/tls/RecordStream$Record;->readFragment(Ljava/io/InputStream;I)V

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/tls/RecordStream;->ignoreChangeCipherSpec:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    iget-object v0, v0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2, v7}, Lorg/bouncycastle/tls/RecordStream;->checkChangeCipherSpec([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/RecordStream$Record;->reset()V

    return v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    iget-object v5, v0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x5

    move-object v2, p0

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/tls/RecordStream;->decodeAndVerify(SLorg/bouncycastle/tls/ProtocolVersion;[BII)Lorg/bouncycastle/tls/crypto/TlsDecodeResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, v2, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    invoke-virtual {v3}, Lorg/bouncycastle/tls/RecordStream$Record;->reset()V

    iget-object v3, v2, Lorg/bouncycastle/tls/RecordStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    iget-short v4, v0, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->contentType:S

    iget-object v5, v0, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->buf:[B

    iget v6, v0, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->off:I

    iget v0, v0, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;->len:I

    invoke-virtual {v3, v4, v5, v6, v0}, Lorg/bouncycastle/tls/TlsProtocol;->processRecord(S[BII)V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_0
    iget-object v1, v2, Lorg/bouncycastle/tls/RecordStream;->inputRecord:Lorg/bouncycastle/tls/RecordStream$Record;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/RecordStream$Record;->reset()V

    throw v0
.end method

.method setIgnoreChangeCipherSpec(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/tls/RecordStream;->ignoreChangeCipherSpec:Z

    return-void
.end method

.method setPendingCipher(Lorg/bouncycastle/tls/crypto/TlsCipher;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    return-void
.end method

.method setPlaintextLimit(I)V
    .locals 1

    iput p1, p0, Lorg/bouncycastle/tls/RecordStream;->plaintextLimit:I

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->readCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/crypto/TlsCipher;->getCiphertextDecodeLimit(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/tls/RecordStream;->ciphertextLimit:I

    return-void
.end method

.method setWriteVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tls/RecordStream;->writeVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    return-void
.end method

.method writeRecord(S[BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v9, p4

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->writeVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/bouncycastle/tls/RecordStream;->plaintextLimit:I

    const/16 v10, 0x50

    invoke-static {p4, v0, v10}, Lorg/bouncycastle/tls/RecordStream;->checkLength(IIS)V

    const/4 v0, 0x1

    if-ge v9, v0, :cond_2

    const/16 v1, 0x17

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v0, v10}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/tls/RecordStream;->writeSeqNo:Lorg/bouncycastle/tls/RecordStream$SequenceNumber;

    invoke-virtual {v1, v10}, Lorg/bouncycastle/tls/RecordStream$SequenceNumber;->nextValue(S)J

    move-result-wide v2

    iget-object v5, p0, Lorg/bouncycastle/tls/RecordStream;->writeVersion:Lorg/bouncycastle/tls/ProtocolVersion;

    iget-object v1, p0, Lorg/bouncycastle/tls/RecordStream;->writeCipher:Lorg/bouncycastle/tls/crypto/TlsCipher;

    const/4 v6, 0x5

    move v4, p1

    move-object v7, p2

    move v8, p3

    invoke-interface/range {v1 .. v9}, Lorg/bouncycastle/tls/crypto/TlsCipher;->encodePlaintext(JSLorg/bouncycastle/tls/ProtocolVersion;I[BII)Lorg/bouncycastle/tls/crypto/TlsEncodeResult;

    move-result-object v1

    iget v2, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->len:I

    add-int/lit8 v2, v2, -0x5

    invoke-static {v2}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    iget-short v3, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->recordType:S

    iget-object v4, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v6, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    invoke-static {v3, v4, v6}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(S[BI)V

    iget-object v3, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v4, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    add-int/2addr v4, v0

    invoke-static {v5, v3, v4}, Lorg/bouncycastle/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;[BI)V

    iget-object v0, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v3, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    add-int/lit8 v3, v3, 0x3

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->output:Ljava/io/OutputStream;

    iget-object v2, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->buf:[B

    iget v3, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->off:I

    iget v1, v1, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;->len:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {v1, v10, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method
