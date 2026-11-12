.class public Lorg/bouncycastle/tls/crypto/TlsHashOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field protected hash:Lorg/bouncycastle/tls/crypto/TlsHash;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsHash;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/TlsHashOutputStream;->hash:Lorg/bouncycastle/tls/crypto/TlsHash;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/TlsHashOutputStream;->hash:Lorg/bouncycastle/tls/crypto/TlsHash;

    int-to-byte p1, p1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-interface {v0, v2, v3, v1}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/TlsHashOutputStream;->hash:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    return-void
.end method
