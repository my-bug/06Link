.class public Lorg/bouncycastle/tls/OCSPStatusRequest;
.super Ljava/lang/Object;


# instance fields
.field protected requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field protected responderIDList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    iput-object p2, p0, Lorg/bouncycastle/tls/OCSPStatusRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/OCSPStatusRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/bouncycastle/tls/TlsUtils;->requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/bouncycastle/tls/TlsUtils;->requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance p0, Lorg/bouncycastle/tls/OCSPStatusRequest;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/tls/OCSPStatusRequest;-><init>(Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    const-string v1, "DER"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v0}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v3, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/bouncycastle/util/io/Streams;->writeBufTo(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v2, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/tls/OCSPStatusRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-nez v0, :cond_3

    invoke-static {v2, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    return-void

    :cond_3
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    array-length v1, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/OCSPStatusRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getResponderIDList()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    return-object v0
.end method
