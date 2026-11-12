.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSVerifier;
.super Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsVerifier;


# instance fields
.field private final signatureScheme:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/RSAKeyParameters;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    invoke-static {p3}, Lorg/bouncycastle/tls/SignatureScheme;->isRSAPSS(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iput p3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSVerifier;->signatureScheme:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "signatureScheme"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public verifyRawSignature(Lorg/bouncycastle/tls/DigitallySigned;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/tls/SignatureScheme;->from(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSVerifier;->signatureScheme:I

    if-ne v1, v2, :cond_0

    invoke-static {v2}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSVerifier;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/engines/RSAEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RSAEngine;-><init>()V

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->createRawSigner(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/signers/PSSSigner;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAPSSVerifier;->publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length v1, p2

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->update([BII)V

    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->verifySignature([B)Z

    move-result p1

    return p1

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
.end method
