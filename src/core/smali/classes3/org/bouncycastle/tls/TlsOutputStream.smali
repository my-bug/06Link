.class Lorg/bouncycastle/tls/TlsOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private final handler:Lorg/bouncycastle/tls/TlsProtocol;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/TlsProtocol;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsOutputStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsOutputStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/TlsProtocol;->close()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/tls/TlsOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsOutputStream;->handler:Lorg/bouncycastle/tls/TlsProtocol;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tls/TlsProtocol;->writeApplicationData([BII)V

    return-void
.end method
