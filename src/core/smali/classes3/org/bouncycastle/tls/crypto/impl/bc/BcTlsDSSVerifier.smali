.class public abstract Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSSVerifier;
.super Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsVerifier;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-void
.end method


# virtual methods
.method protected abstract createDSAImpl()Lorg/bouncycastle/crypto/DSA;
.end method

.method protected abstract getSignatureAlgorithm()S
.end method

.method public verifyRawSignature(Lorg/bouncycastle/tls/DigitallySigned;[B)Z
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSSVerifier;->getSignatureAlgorithm()S

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid algorithm: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v1, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSSVerifier;->createDSAImpl()Lorg/bouncycastle/crypto/DSA;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/NullDigest;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSSVerifier;->publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    if-nez v0, :cond_2

    const/16 v0, 0x10

    const/16 v2, 0x14

    invoke-interface {v1, p2, v0, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    goto :goto_1

    :cond_2
    array-length v0, p2

    invoke-interface {v1, p2, v3, v0}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    return p1
.end method
