.class public Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsCredentialedSigner;


# instance fields
.field protected certificate:Lorg/bouncycastle/tls/Certificate;

.field protected cryptoParams:Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

.field protected signatureAndHashAlgorithm:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field protected signer:Lorg/bouncycastle/tls/crypto/TlsSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/TlsSigner;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->signer:Lorg/bouncycastle/tls/crypto/TlsSigner;

    iput-object p1, p0, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->cryptoParams:Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

    iput-object p3, p0, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->certificate:Lorg/bouncycastle/tls/Certificate;

    iput-object p4, p0, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->signatureAndHashAlgorithm:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'signer\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generateRawSignature([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->signer:Lorg/bouncycastle/tls/crypto/TlsSigner;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->getEffectiveAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/tls/crypto/TlsSigner;->generateRawSignature(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getCertificate()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->certificate:Lorg/bouncycastle/tls/Certificate;

    return-object v0
.end method

.method protected getEffectiveAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->cryptoParams:Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/TlsImplUtils;->isTLSv12(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->getSignatureAndHashAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'signatureAndHashAlgorithm\' cannot be null for (D)TLS 1.2+"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureAndHashAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->signatureAndHashAlgorithm:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object v0
.end method

.method public getStreamSigner()Lorg/bouncycastle/tls/crypto/TlsStreamSigner;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->signer:Lorg/bouncycastle/tls/crypto/TlsSigner;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/DefaultTlsCredentialedSigner;->getEffectiveAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsSigner;->getStreamSigner(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;

    move-result-object v0

    return-object v0
.end method
