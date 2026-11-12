.class public Lorg/bouncycastle/tls/CertificateStatus;
.super Ljava/lang/Object;


# instance fields
.field protected response:Ljava/lang/Object;

.field protected statusType:S


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/CertificateStatus;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-short p1, p0, Lorg/bouncycastle/tls/CertificateStatus;->statusType:S

    iput-object p2, p0, Lorg/bouncycastle/tls/CertificateStatus;->response:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'response\' is not an instance of the correct type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static isCorrectType(SLjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/CertificateStatus;->isOCSPResponseList(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'statusType\' is an unsupported CertificateStatusType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of p0, p1, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    return p0
.end method

.method protected static isOCSPResponseList(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p0, Ljava/util/Vector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    instance-of v4, v4, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getPeerCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/bouncycastle/tls/Certificate;->getCertificateType()S

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/bouncycastle/tls/Certificate;->getLength()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getStatusRequestVersion()I

    move-result p0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-static {v3, p0}, Lorg/bouncycastle/tls/CertificateStatus;->requireStatusRequestVersion(II)V

    invoke-static {p1, v2}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;I)[B

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v3, v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v3

    if-ge v3, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v3, p1}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/tls/CertificateStatus;->parseOCSPResponse([B)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->trimToSize()V

    goto :goto_2

    :cond_3
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_4
    invoke-static {v2, p0}, Lorg/bouncycastle/tls/CertificateStatus;->requireStatusRequestVersion(II)V

    invoke-static {p1, v2}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/CertificateStatus;->parseOCSPResponse([B)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object p0

    :goto_2
    new-instance p1, Lorg/bouncycastle/tls/CertificateStatus;

    invoke-direct {p1, v1, p0}, Lorg/bouncycastle/tls/CertificateStatus;-><init>(SLjava/lang/Object;)V

    return-object p1

    :cond_5
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method protected static parseOCSPResponse([B)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V

    return-object v0
.end method

.method protected static requireStatusRequestVersion(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lt p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/tls/CertificateStatus;->statusType:S

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/tls/CertificateStatus;->statusType:S

    const/4 v1, 0x1

    const-string v2, "DER"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateStatus;->response:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    if-nez v8, :cond_0

    sget-object v8, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-virtual {v3, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v2}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getEncoded(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    array-length v8, v8

    int-to-long v8, v8

    add-long/2addr v5, v8

    :goto_1
    const-wide/16 v8, 0x3

    add-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v5, v6}, Lorg/bouncycastle/tls/TlsUtils;->checkUint24(J)V

    long-to-int v0, v5

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    :goto_2
    if-ge v4, v1, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateStatus;->response:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    return-void
.end method

.method public getOCSPResponse()Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/tls/CertificateStatus;->response:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/CertificateStatus;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateStatus;->response:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'response\' is not an OCSPResponse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOCSPResponseList()Ljava/util/Vector;
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/bouncycastle/tls/CertificateStatus;->response:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/CertificateStatus;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateStatus;->response:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'response\' is not an OCSPResponseList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateStatus;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/CertificateStatus;->statusType:S

    return v0
.end method
