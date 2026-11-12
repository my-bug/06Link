.class public Lorg/bouncycastle/tls/ClientHello;
.super Ljava/lang/Object;


# instance fields
.field private final bindersSize:I

.field private final cipherSuites:[I

.field private final cookie:[B

.field private final extensions:Ljava/util/Hashtable;

.field private final random:[B

.field private final sessionID:[B

.field private final version:Lorg/bouncycastle/tls/ProtocolVersion;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/ProtocolVersion;[B[B[B[ILjava/util/Hashtable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/ClientHello;->version:Lorg/bouncycastle/tls/ProtocolVersion;

    iput-object p2, p0, Lorg/bouncycastle/tls/ClientHello;->random:[B

    iput-object p3, p0, Lorg/bouncycastle/tls/ClientHello;->sessionID:[B

    iput-object p4, p0, Lorg/bouncycastle/tls/ClientHello;->cookie:[B

    iput-object p5, p0, Lorg/bouncycastle/tls/ClientHello;->cipherSuites:[I

    iput-object p6, p0, Lorg/bouncycastle/tls/ClientHello;->extensions:Ljava/util/Hashtable;

    iput p7, p0, Lorg/bouncycastle/tls/ClientHello;->bindersSize:I

    return-void
.end method

.method private static implParse(Ljava/io/ByteArrayInputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/ClientHello;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/util/io/TeeInputStream;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v2

    const/16 v1, 0x20

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;II)[B

    move-result-object v4

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    sget-object p1, Lorg/bouncycastle/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v1, 0xff

    :cond_1
    invoke-static {p0, v5, v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;II)[B

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v6

    :goto_1
    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    const/4 v7, 0x2

    if-lt v1, v7, :cond_5

    and-int/lit8 v8, v1, 0x1

    if-nez v8, :cond_5

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    if-lt v8, v1, :cond_5

    div-int/2addr v1, v7

    invoke-static {v1, v0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v1

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lorg/bouncycastle/tls/TlsUtils;->readUint8ArrayWithUint8Length(Ljava/io/InputStream;I)[S

    move-result-object v7

    invoke-static {v7, v5}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsProtocol;->readExtensionsDataClientHello([B)Ljava/util/Hashtable;

    move-result-object v6

    :cond_3
    move-object v7, v6

    move-object v6, v1

    new-instance v1, Lorg/bouncycastle/tls/ClientHello;

    const/4 v8, -0x1

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/tls/ClientHello;-><init>(Lorg/bouncycastle/tls/ProtocolVersion;[B[B[B[ILjava/util/Hashtable;I)V

    return-object v1

    :cond_4
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x28

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_5
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static parse(Ljava/io/ByteArrayInputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/ClientHello;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tls/TlsFatalAlert;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lorg/bouncycastle/tls/ClientHello;->implParse(Ljava/io/ByteArrayInputStream;Ljava/io/OutputStream;)Lorg/bouncycastle/tls/ClientHello;

    move-result-object p0
    :try_end_0
    .catch Lorg/bouncycastle/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p1, p0, Lorg/bouncycastle/tls/ClientHello;->bindersSize:I

    if-ltz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/tls/ClientHello;->version:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/ClientHello;->random:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/bouncycastle/tls/ClientHello;->sessionID:[B

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/ClientHello;->cookie:[B

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/tls/ClientHello;->cipherSuites:[I

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    const/4 p1, 0x1

    new-array p1, p1, [S

    const/4 v0, 0x0

    aput-short v0, p1, v0

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/ClientHello;->extensions:Ljava/util/Hashtable;

    iget v0, p0, Lorg/bouncycastle/tls/ClientHello;->bindersSize:I

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;I)V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public getBindersSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/ClientHello;->bindersSize:I

    return v0
.end method

.method public getCipherSuites()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ClientHello;->cipherSuites:[I

    return-object v0
.end method

.method public getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ClientHello;->version:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0
.end method

.method public getCookie()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ClientHello;->cookie:[B

    return-object v0
.end method

.method public getExtensions()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ClientHello;->extensions:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ClientHello;->random:[B

    return-object v0
.end method

.method public getSessionID()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ClientHello;->sessionID:[B

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ClientHello;->version:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0
.end method
