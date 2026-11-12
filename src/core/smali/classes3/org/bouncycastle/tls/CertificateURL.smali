.class public Lorg/bouncycastle/tls/CertificateURL;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tls/CertificateURL$ListBuffer16;
    }
.end annotation


# instance fields
.field protected type:S

.field protected urlAndHashList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(SLjava/util/Vector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/tls/CertChainType;->isValid(S)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'urlAndHashList\' must contain exactly one entry when type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/tls/CertChainType;->getText(S)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iput-short p1, p0, Lorg/bouncycastle/tls/CertificateURL;->type:S

    iput-object p2, p0, Lorg/bouncycastle/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'urlAndHashList\' must have length > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'type\' is not a valid CertChainType value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/CertificateURL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/tls/CertChainType;->isValid(S)Z

    move-result v1

    const/16 v2, 0x32

    if-eqz v1, :cond_4

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    invoke-static {v1, p1}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {p0, v1}, Lorg/bouncycastle/tls/URLAndHash;->parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/URLAndHash;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p0

    if-ne p0, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    :goto_1
    new-instance p0, Lorg/bouncycastle/tls/CertificateURL;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/tls/CertificateURL;-><init>(SLjava/util/Vector;)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_4
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/tls/CertificateURL;->type:S

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    new-instance v0, Lorg/bouncycastle/tls/CertificateURL$ListBuffer16;

    invoke-direct {v0}, Lorg/bouncycastle/tls/CertificateURL$ListBuffer16;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tls/URLAndHash;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/tls/URLAndHash;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/CertificateURL$ListBuffer16;->encodeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public getType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/CertificateURL;->type:S

    return v0
.end method

.method public getURLAndHashList()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    return-object v0
.end method
