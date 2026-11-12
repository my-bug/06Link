.class Lorg/bouncycastle/tls/DigestInputBuffer;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method copyInputTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/bouncycastle/tls/DigestInputBuffer;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/tls/DigestInputBuffer;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v0, p1}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method updateDigest(Lorg/bouncycastle/tls/crypto/TlsHash;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tls/DigestInputBuffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/tls/DigestInputBuffer;->count:I

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    return-void
.end method
