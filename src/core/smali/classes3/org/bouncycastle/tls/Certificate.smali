.class public Lorg/bouncycastle/tls/Certificate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tls/Certificate$ParseOptions;
    }
.end annotation


# static fields
.field private static final EMPTY_CERTS:[Lorg/bouncycastle/tls/crypto/TlsCertificate;

.field private static final EMPTY_CERT_ENTRIES:[Lorg/bouncycastle/tls/CertificateEntry;

.field public static final EMPTY_CHAIN:Lorg/bouncycastle/tls/Certificate;

.field public static final EMPTY_CHAIN_TLS13:Lorg/bouncycastle/tls/Certificate;


# instance fields
.field protected final certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

.field protected final certificateRequestContext:[B

.field protected final certificateType:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/bouncycastle/tls/crypto/TlsCertificate;

    sput-object v1, Lorg/bouncycastle/tls/Certificate;->EMPTY_CERTS:[Lorg/bouncycastle/tls/crypto/TlsCertificate;

    new-array v0, v0, [Lorg/bouncycastle/tls/CertificateEntry;

    sput-object v0, Lorg/bouncycastle/tls/Certificate;->EMPTY_CERT_ENTRIES:[Lorg/bouncycastle/tls/CertificateEntry;

    new-instance v2, Lorg/bouncycastle/tls/Certificate;

    invoke-direct {v2, v1}, Lorg/bouncycastle/tls/Certificate;-><init>([Lorg/bouncycastle/tls/crypto/TlsCertificate;)V

    sput-object v2, Lorg/bouncycastle/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/tls/Certificate;

    new-instance v1, Lorg/bouncycastle/tls/Certificate;

    sget-object v2, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/Certificate;-><init>([B[Lorg/bouncycastle/tls/CertificateEntry;)V

    sput-object v1, Lorg/bouncycastle/tls/Certificate;->EMPTY_CHAIN_TLS13:Lorg/bouncycastle/tls/Certificate;

    return-void
.end method

.method public constructor <init>(S[B[Lorg/bouncycastle/tls/CertificateEntry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    array-length v0, p2

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
    invoke-static {p3}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrContainsNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/tls/Certificate;->certificateRequestContext:[B

    iput-object p3, p0, Lorg/bouncycastle/tls/Certificate;->certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

    iput-short p1, p0, Lorg/bouncycastle/tls/Certificate;->certificateType:S

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'certificateEntryList\' cannot be null or contain any nulls"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B[Lorg/bouncycastle/tls/CertificateEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/tls/Certificate;-><init>(S[B[Lorg/bouncycastle/tls/CertificateEntry;)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/tls/crypto/TlsCertificate;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/bouncycastle/tls/Certificate;->convert([Lorg/bouncycastle/tls/crypto/TlsCertificate;)[Lorg/bouncycastle/tls/CertificateEntry;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/tls/Certificate;-><init>([B[Lorg/bouncycastle/tls/CertificateEntry;)V

    return-void
.end method

.method protected static calculateEndPointHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsCertificate;[BLjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->calculateEndPointHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsCertificate;[B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    if-lez p1, :cond_0

    invoke-virtual {p3, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method private static convert([Lorg/bouncycastle/tls/crypto/TlsCertificate;)[Lorg/bouncycastle/tls/CertificateEntry;
    .locals 6

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrContainsNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p0

    new-array v1, v0, [Lorg/bouncycastle/tls/CertificateEntry;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lorg/bouncycastle/tls/CertificateEntry;

    aget-object v4, p0, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/tls/CertificateEntry;-><init>(Lorg/bouncycastle/tls/crypto/TlsCertificate;Ljava/util/Hashtable;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'certificateList\' cannot be null or contain any nulls"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static parse(Lorg/bouncycastle/tls/Certificate$ParseOptions;Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/Certificate;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getNegotiatedVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->getCertificateType()S

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {p2}, Lorg/bouncycastle/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    if-nez v0, :cond_1

    sget-object p0, Lorg/bouncycastle/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/tls/Certificate;

    return-object p0

    :cond_1
    array-length p0, v3

    if-ge p0, v5, :cond_2

    sget-object p0, Lorg/bouncycastle/tls/Certificate;->EMPTY_CHAIN_TLS13:Lorg/bouncycastle/tls/Certificate;

    return-object p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/Certificate;

    sget-object p1, Lorg/bouncycastle/tls/Certificate;->EMPTY_CERT_ENTRIES:[Lorg/bouncycastle/tls/CertificateEntry;

    invoke-direct {p0, v1, v3, p1}, Lorg/bouncycastle/tls/Certificate;-><init>(S[B[Lorg/bouncycastle/tls/CertificateEntry;)V

    return-object p0

    :cond_3
    invoke-static {v4, p2}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p2

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v7

    invoke-virtual {p0}, Lorg/bouncycastle/tls/Certificate$ParseOptions;->getMaxChainLength()I

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    :goto_1
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    if-lez v9, :cond_9

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v9, p0, :cond_8

    if-nez v0, :cond_5

    const/4 v9, 0x2

    if-eq v1, v9, :cond_4

    goto :goto_2

    :cond_4
    int-to-long v9, v4

    invoke-virtual {v6, v9, v10}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-object v9, p2

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v6, v5}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;I)[B

    move-result-object v9

    :goto_3
    invoke-interface {v7, v1, v9}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createCertificate(S[B)Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/Vector;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz p3, :cond_6

    invoke-static {p1, v10, v9, p3}, Lorg/bouncycastle/tls/Certificate;->calculateEndPointHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsCertificate;[BLjava/io/OutputStream;)V

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {v6}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v9

    const/16 v11, 0xb

    invoke-static {v11, v9}, Lorg/bouncycastle/tls/TlsProtocol;->readExtensionsData13(I[B)Ljava/util/Hashtable;

    move-result-object v9

    goto :goto_4

    :cond_7
    move-object v9, v2

    :goto_4
    new-instance v11, Lorg/bouncycastle/tls/CertificateEntry;

    invoke-direct {v11, v10, v9}, Lorg/bouncycastle/tls/CertificateEntry;-><init>(Lorg/bouncycastle/tls/crypto/TlsCertificate;Ljava/util/Hashtable;)V

    invoke-virtual {v8, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Certificate chain longer than maximum ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x50

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_9
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Lorg/bouncycastle/tls/CertificateEntry;

    const/4 p1, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result p2

    if-ge p1, p2, :cond_a

    invoke-virtual {v8, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/tls/CertificateEntry;

    aput-object p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_a
    new-instance p1, Lorg/bouncycastle/tls/Certificate;

    invoke-direct {p1, v1, v3, p0}, Lorg/bouncycastle/tls/Certificate;-><init>(S[B[Lorg/bouncycastle/tls/CertificateEntry;)V

    return-object p1
.end method

.method public static parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/Certificate$ParseOptions;

    invoke-direct {v0}, Lorg/bouncycastle/tls/Certificate$ParseOptions;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/tls/Certificate;->parse(Lorg/bouncycastle/tls/Certificate$ParseOptions;Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/Certificate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected cloneCertificateEntryList()[Lorg/bouncycastle/tls/CertificateEntry;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tls/Certificate;->certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/Certificate;->EMPTY_CERT_ENTRIES:[Lorg/bouncycastle/tls/CertificateEntry;

    return-object v0

    :cond_0
    new-array v2, v1, [Lorg/bouncycastle/tls/CertificateEntry;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method protected cloneCertificateList()[Lorg/bouncycastle/tls/crypto/TlsCertificate;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tls/Certificate;->certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/Certificate;->EMPTY_CERTS:[Lorg/bouncycastle/tls/crypto/TlsCertificate;

    return-object v0

    :cond_0
    new-array v1, v0, [Lorg/bouncycastle/tls/crypto/TlsCertificate;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/tls/Certificate;->certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/bouncycastle/tls/CertificateEntry;->getCertificate()Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv13(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/tls/Certificate;->certificateRequestContext:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ne v3, v0, :cond_b

    if-eqz v0, :cond_1

    invoke-static {v1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/tls/Certificate;->certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

    array-length v1, v1

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v1}, Ljava/util/Vector;-><init>(I)V

    if-eqz v0, :cond_2

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v1}, Ljava/util/Vector;-><init>(I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_6

    iget-object v8, p0, Lorg/bouncycastle/tls/Certificate;->certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lorg/bouncycastle/tls/CertificateEntry;->getCertificate()Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object v9

    invoke-interface {v9}, Lorg/bouncycastle/tls/crypto/TlsCertificate;->getEncoded()[B

    move-result-object v10

    if-nez v7, :cond_3

    if-eqz p3, :cond_3

    invoke-static {p1, v9, v10, p3}, Lorg/bouncycastle/tls/Certificate;->calculateEndPointHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsCertificate;[BLjava/io/OutputStream;)V

    :cond_3
    invoke-virtual {v3, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    array-length v9, v10

    int-to-long v9, v9

    add-long/2addr v5, v9

    const-wide/16 v9, 0x3

    add-long/2addr v5, v9

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lorg/bouncycastle/tls/CertificateEntry;->getExtensions()Ljava/util/Hashtable;

    move-result-object v8

    if-nez v8, :cond_4

    sget-object v8, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    goto :goto_3

    :cond_4
    invoke-static {v8}, Lorg/bouncycastle/tls/TlsProtocol;->writeExtensionsData(Ljava/util/Hashtable;)[B

    move-result-object v8

    :goto_3
    invoke-virtual {v4, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    array-length v8, v8

    int-to-long v8, v8

    add-long/2addr v5, v8

    const-wide/16 v8, 0x2

    add-long/2addr v5, v8

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    iget-short p1, p0, Lorg/bouncycastle/tls/Certificate;->certificateType:S

    const/4 p3, 0x2

    if-eq p1, p3, :cond_8

    :cond_7
    invoke-static {v5, v6}, Lorg/bouncycastle/tls/TlsUtils;->checkUint24(J)V

    long-to-int p1, v5

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    :cond_8
    :goto_4
    if-ge v2, v1, :cond_a

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    if-eqz v0, :cond_9

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public getCertificateAt(I)Lorg/bouncycastle/tls/crypto/TlsCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/Certificate;->certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/CertificateEntry;->getCertificate()Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object p1

    return-object p1
.end method

.method public getCertificateEntryAt(I)Lorg/bouncycastle/tls/CertificateEntry;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/Certificate;->certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCertificateEntryList()[Lorg/bouncycastle/tls/CertificateEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/Certificate;->cloneCertificateEntryList()[Lorg/bouncycastle/tls/CertificateEntry;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateList()[Lorg/bouncycastle/tls/crypto/TlsCertificate;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/Certificate;->cloneCertificateList()[Lorg/bouncycastle/tls/crypto/TlsCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateRequestContext()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/Certificate;->certificateRequestContext:[B

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getCertificateType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/Certificate;->certificateType:S

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/Certificate;->certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

    array-length v0, v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/Certificate;->certificateEntryList:[Lorg/bouncycastle/tls/CertificateEntry;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
