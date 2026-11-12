.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSAVerifier;
.super Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PublicKey;)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "NoneWithDSA"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PublicKey;SLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStreamVerifier(Lorg/bouncycastle/tls/DigitallySigned;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-short v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSAVerifier;->algorithmType:S

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/tls/HashAlgorithm;->getOutputSize(S)I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSAVerifier;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSAVerifier;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createStreamVerifier(Lorg/bouncycastle/tls/DigitallySigned;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
