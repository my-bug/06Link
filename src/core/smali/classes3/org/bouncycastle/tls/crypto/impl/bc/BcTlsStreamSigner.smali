.class Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsStreamSigner;


# instance fields
.field private final output:Lorg/bouncycastle/crypto/io/SignerOutputStream;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/Signer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/io/SignerOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/io/SignerOutputStream;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamSigner;->output:Lorg/bouncycastle/crypto/io/SignerOutputStream;

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamSigner;->output:Lorg/bouncycastle/crypto/io/SignerOutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamSigner;->output:Lorg/bouncycastle/crypto/io/SignerOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/io/SignerOutputStream;->getSigner()Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Signer;->generateSignature()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method
