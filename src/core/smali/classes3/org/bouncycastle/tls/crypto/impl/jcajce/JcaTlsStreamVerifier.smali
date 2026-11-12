.class Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;


# instance fields
.field private final output:Ljava/io/OutputStream;

.field private final signature:[B

.field private final verifier:Ljava/security/Signature;


# direct methods
.method constructor <init>(Ljava/security/Signature;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamVerifier;->verifier:Ljava/security/Signature;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamVerifier;->output:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamVerifier;->signature:[B

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamVerifier;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isVerified()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamVerifier;->verifier:Ljava/security/Signature;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsStreamVerifier;->signature:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method
