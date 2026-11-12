.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSASigner;
.super Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PrivateKey;)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "NoneWithDSA"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PrivateKey;SLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStreamSigner(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-short v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSASigner;->algorithmType:S

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/tls/HashAlgorithm;->getOutputSize(S)I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSASigner;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSASigner;->privateKey:Ljava/security/PrivateKey;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createStreamSigner(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;Ljava/security/PrivateKey;Z)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
