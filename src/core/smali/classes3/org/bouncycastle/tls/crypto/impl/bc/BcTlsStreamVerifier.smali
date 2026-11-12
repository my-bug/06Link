.class Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;


# instance fields
.field private final output:Lorg/bouncycastle/crypto/io/SignerOutputStream;

.field private final signature:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/Signer;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/io/SignerOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/io/SignerOutputStream;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamVerifier;->output:Lorg/bouncycastle/crypto/io/SignerOutputStream;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamVerifier;->signature:[B

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamVerifier;->output:Lorg/bouncycastle/crypto/io/SignerOutputStream;

    return-object v0
.end method

.method public isVerified()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamVerifier;->output:Lorg/bouncycastle/crypto/io/SignerOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/io/SignerOutputStream;->getSigner()Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamVerifier;->signature:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result v0

    return v0
.end method
