.class public abstract Lorg/bouncycastle/tls/DTLSProtocol;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static applyMaxFragmentLengthExtension(Lorg/bouncycastle/tls/DTLSRecordLayer;S)V
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

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DTLSRecordLayer;->setPlaintextLimit(I)V

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    return-void
.end method

.method protected static evaluateMaxFragmentLengthExtension(ZLjava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/tls/TlsUtils;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result p0

    return p0
.end method

.method protected static generateCertificate(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/Certificate;Ljava/io/OutputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, p0, v0, p2}, Lorg/bouncycastle/tls/Certificate;->encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method protected static generateSupplementalData(Ljava/util/Vector;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsProtocol;->writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method protected static sendCertificateMessage(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/DTLSReliableHandshake;Lorg/bouncycastle/tls/Certificate;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getLocalCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    sget-object p2, Lorg/bouncycastle/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/tls/Certificate;

    :cond_0
    invoke-static {p0, p2, p3}, Lorg/bouncycastle/tls/DTLSProtocol;->generateCertificate(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/Certificate;Ljava/io/OutputStream;)[B

    move-result-object p0

    const/16 p3, 0xb

    invoke-virtual {p1, p3, p0}, Lorg/bouncycastle/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    iput-object p2, v0, Lorg/bouncycastle/tls/SecurityParameters;->localCertificate:Lorg/bouncycastle/tls/Certificate;

    return-void

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method protected static validateSelectedCipherSuite(IS)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getEncryptionAlgorithm(I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->getEncryptionAlgorithmType(I)I

    move-result v0

    if-ltz v0, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method protected processFinished([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p2

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p1

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
