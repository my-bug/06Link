.class public Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;
.super Ljava/lang/Object;


# instance fields
.field protected request:Ljava/lang/Object;

.field protected statusType:S


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-short p1, p0, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->statusType:S

    iput-object p2, p0, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->request:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'request\' is not an instance of the correct type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static isCorrectType(SLjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'statusType\' is an unsupported CertificateStatusType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    instance-of p0, p1, Lorg/bouncycastle/tls/OCSPStatusRequest;

    return p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {v1}, Lorg/bouncycastle/tls/OCSPStatusRequest;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/OCSPStatusRequest;

    move-result-object p0

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v1, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;-><init>(SLjava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->statusType:S

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-short v1, p0, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->statusType:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->request:Ljava/lang/Object;

    check-cast v1, Lorg/bouncycastle/tls/OCSPStatusRequest;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/OCSPStatusRequest;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method public getOCSPStatusRequest()Lorg/bouncycastle/tls/OCSPStatusRequest;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->request:Ljava/lang/Object;

    instance-of v1, v0, Lorg/bouncycastle/tls/OCSPStatusRequest;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/tls/OCSPStatusRequest;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'request\' is not an OCSPStatusRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequest()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->request:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/CertificateStatusRequestItemV2;->statusType:S

    return v0
.end method
