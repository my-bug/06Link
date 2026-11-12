.class public Lorg/bouncycastle/tls/URLAndHash;
.super Ljava/lang/Object;


# instance fields
.field protected sha1Hash:[B

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2

    if-eqz p2, :cond_1

    array-length v0, p2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'sha1Hash\' must have length == 20, if present"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/tls/URLAndHash;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/tls/URLAndHash;->sha1Hash:[B

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'url\' must have length from 1 to (2^16 - 1)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/URLAndHash;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    const/16 v3, 0x2f

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    const/16 p0, 0x14

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    :goto_0
    new-instance p1, Lorg/bouncycastle/tls/URLAndHash;

    invoke-direct {p1, v1, p0}, Lorg/bouncycastle/tls/URLAndHash;-><init>(Ljava/lang/String;[B)V

    return-object p1

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v3}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/URLAndHash;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/tls/URLAndHash;->sha1Hash:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/tls/URLAndHash;->sha1Hash:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getSHA1Hash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/URLAndHash;->sha1Hash:[B

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/URLAndHash;->url:Ljava/lang/String;

    return-object v0
.end method
