.class public Lorg/bouncycastle/tls/ServerHello;
.super Ljava/lang/Object;


# static fields
.field private static final HELLO_RETRY_REQUEST_MAGIC:[B


# instance fields
.field private final cipherSuite:I

.field private final extensions:Ljava/util/Hashtable;

.field private final random:[B

.field private final sessionID:[B

.field private final version:Lorg/bouncycastle/tls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/tls/ServerHello;->HELLO_RETRY_REQUEST_MAGIC:[B

    return-void

    :array_0
    .array-data 1
        -0x31t
        0x21t
        -0x53t
        0x74t
        -0x1bt
        -0x66t
        0x61t
        0x11t
        -0x42t
        0x1dt
        -0x74t
        0x2t
        0x1et
        0x65t
        -0x48t
        -0x6ft
        -0x3et
        -0x5et
        0x11t
        0x16t
        0x7at
        -0x45t
        -0x74t
        0x5et
        0x7t
        -0x62t
        0x9t
        -0x1et
        -0x38t
        -0x58t
        0x33t
        -0x64t
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/ProtocolVersion;[B[BILjava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/ServerHello;->version:Lorg/bouncycastle/tls/ProtocolVersion;

    iput-object p2, p0, Lorg/bouncycastle/tls/ServerHello;->random:[B

    iput-object p3, p0, Lorg/bouncycastle/tls/ServerHello;->sessionID:[B

    iput p4, p0, Lorg/bouncycastle/tls/ServerHello;->cipherSuite:I

    iput-object p5, p0, Lorg/bouncycastle/tls/ServerHello;->extensions:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>([BILjava/util/Hashtable;)V
    .locals 6

    sget-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    sget-object v0, Lorg/bouncycastle/tls/ServerHello;->HELLO_RETRY_REQUEST_MAGIC:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/tls/ServerHello;-><init>(Lorg/bouncycastle/tls/ProtocolVersion;[B[BILjava/util/Hashtable;)V

    return-void
.end method

.method public static parse(Ljava/io/ByteArrayInputStream;)Lorg/bouncycastle/tls/ServerHello;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v1

    const/16 v0, 0x20

    invoke-static {v0, p0}, Lorg/bouncycastle/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v3, v0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;II)[B

    move-result-object v3

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v5

    new-instance v0, Lorg/bouncycastle/tls/ServerHello;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/tls/ServerHello;-><init>(Lorg/bouncycastle/tls/ProtocolVersion;[B[BILjava/util/Hashtable;)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/tls/TlsContext;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lorg/bouncycastle/tls/ServerHello;->version:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/ServerHello;->random:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/bouncycastle/tls/ServerHello;->sessionID:[B

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    iget p1, p0, Lorg/bouncycastle/tls/ServerHello;->cipherSuite:I

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/4 p1, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/tls/ServerHello;->extensions:Ljava/util/Hashtable;

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    return-void
.end method

.method public getCipherSuite()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/ServerHello;->cipherSuite:I

    return v0
.end method

.method public getExtensions()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ServerHello;->extensions:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ServerHello;->random:[B

    return-object v0
.end method

.method public getSessionID()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ServerHello;->sessionID:[B

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ServerHello;->version:Lorg/bouncycastle/tls/ProtocolVersion;

    return-object v0
.end method

.method public isHelloRetryRequest()Z
    .locals 2

    sget-object v0, Lorg/bouncycastle/tls/ServerHello;->HELLO_RETRY_REQUEST_MAGIC:[B

    iget-object v1, p0, Lorg/bouncycastle/tls/ServerHello;->random:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0
.end method
