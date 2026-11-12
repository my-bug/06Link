.class Lorg/bouncycastle/tls/TlsInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final handler:Lorg/bouncycastle/tls/TlsProtocol;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/TlsProtocol;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsInputStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsInputStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->applicationDataAvailable()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsInputStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->close()V

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/tls/TlsInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsInputStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tls/TlsProtocol;->readApplicationData([BII)I

    move-result p1

    return p1
.end method
