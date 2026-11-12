.class final Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/Tls13Verifier;


# instance fields
.field private final output:Lorg/bouncycastle/crypto/io/SignerOutputStream;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/Signer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/io/SignerOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/io/SignerOutputStream;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;->output:Lorg/bouncycastle/crypto/io/SignerOutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'verifier\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;->output:Lorg/bouncycastle/crypto/io/SignerOutputStream;

    return-object v0
.end method

.method public final verifySignature([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTls13Verifier;->output:Lorg/bouncycastle/crypto/io/SignerOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/io/SignerOutputStream;->getSigner()Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    return p1
.end method
