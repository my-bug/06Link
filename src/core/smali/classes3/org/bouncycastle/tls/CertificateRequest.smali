.class public Lorg/bouncycastle/tls/CertificateRequest;
.super Ljava/lang/Object;


# instance fields
.field protected final certificateAuthorities:Ljava/util/Vector;

.field protected final certificateRequestContext:[B

.field protected final certificateTypes:[S

.field protected final supportedSignatureAlgorithms:Ljava/util/Vector;

.field protected final supportedSignatureAlgorithmsCert:Ljava/util/Vector;


# direct methods
.method public constructor <init>([BLjava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x50

    invoke-static {p2, v0}, Lorg/bouncycastle/tls/CertificateRequest;->checkSupportedSignatureAlgorithms(Ljava/util/Vector;S)Ljava/util/Vector;

    move-result-object v4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/tls/CertificateRequest;-><init>([B[SLjava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V

    return-void
.end method

.method private constructor <init>([B[SLjava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    array-length v0, p1

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificateRequestContext\' cannot be longer than 255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    array-length v0, p2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint8(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificateTypes\' should have length from 1 to 255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateRequestContext:[B

    iput-object p2, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateTypes:[S

    iput-object p3, p0, Lorg/bouncycastle/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iput-object p4, p0, Lorg/bouncycastle/tls/CertificateRequest;->supportedSignatureAlgorithmsCert:Ljava/util/Vector;

    iput-object p5, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>([SLjava/util/Vector;Ljava/util/Vector;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/tls/CertificateRequest;-><init>([B[SLjava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V

    return-void
.end method

.method private static checkSupportedSignatureAlgorithms(Ljava/util/Vector;S)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const-string v0, "\'signature_algorithms\' is required"

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public static parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p1

    const/16 v0, 0xd

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsProtocol;->readExtensionsData13(I[B)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSignatureAlgorithmsExtension(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/CertificateRequest;->checkSupportedSignatureAlgorithms(Ljava/util/Vector;S)Ljava/util/Vector;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getSignatureAlgorithmsCertExtension(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->getCertificateAuthoritiesExtension(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/tls/CertificateRequest;

    invoke-direct {v2, p0, v0, v1, p1}, Lorg/bouncycastle/tls/CertificateRequest;-><init>([BLjava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V

    return-object v2

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8ArrayWithUint8Length(Ljava/io/InputStream;I)[S

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->parseSupportedSignatureAlgorithms(Ljava/io/InputStream;)Ljava/util/Vector;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p1

    array-length v3, p1

    if-lez v3, :cond_3

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_2
    invoke-static {v4, v0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/bouncycastle/tls/TlsUtils;->requireDEREncoding(Lorg/bouncycastle/asn1/ASN1Object;[B)V

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-gtz p1, :cond_2

    move-object v2, v3

    :cond_3
    new-instance p1, Lorg/bouncycastle/tls/CertificateRequest;

    invoke-direct {p1, v1, p0, v2}, Lorg/bouncycastle/tls/CertificateRequest;-><init>([SLjava/util/Vector;Ljava/util/Vector;)V

    return-object p1
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    iget-object v1, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateRequestContext:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne p1, v4, :cond_c

    iget-object v4, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateTypes:[S

    if-nez v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ne p1, v5, :cond_c

    iget-object v5, p0, Lorg/bouncycastle/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ne v0, v2, :cond_c

    if-nez p1, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/tls/CertificateRequest;->supportedSignatureAlgorithmsCert:Ljava/util/Vector;

    if-nez v2, :cond_c

    :cond_3
    if-eqz p1, :cond_6

    invoke-static {v1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateRequest;->supportedSignatureAlgorithmsCert:Ljava/util/Vector;

    if-eqz v0, :cond_4

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addSignatureAlgorithmsCertExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    if-eqz v0, :cond_5

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsExtensionsUtils;->addCertificateAuthoritiesExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V

    :cond_5
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsProtocol;->writeExtensionsData(Ljava/util/Hashtable;)[B

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void

    :cond_6
    invoke-static {v4, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    if-eqz v0, :cond_7

    iget-object p1, p0, Lorg/bouncycastle/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->encodeSupportedSignatureAlgorithms(Ljava/util/Vector;Ljava/io/OutputStream;)V

    :cond_7
    iget-object p1, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/util/Vector;

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/x500/X500Name;

    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :goto_4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    return-void

    :cond_b
    :goto_5
    invoke-static {v3, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public getCertificateAuthorities()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    return-object v0
.end method

.method public getCertificateRequestContext()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateRequestContext:[B

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getCertificateTypes()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateTypes:[S

    return-object v0
.end method

.method public getSupportedSignatureAlgorithms()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    return-object v0
.end method

.method public getSupportedSignatureAlgorithmsCert()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateRequest;->supportedSignatureAlgorithmsCert:Ljava/util/Vector;

    return-object v0
.end method

.method public hasCertificateRequestContext([B)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateRequest;->certificateRequestContext:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method
