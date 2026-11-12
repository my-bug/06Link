.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAVerifier;
.super Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsVerifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/RSAKeyParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-void
.end method


# virtual methods
.method public verifyRawSignature(Lorg/bouncycastle/tls/DigitallySigned;[B)Z
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/NullDigest;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Lorg/bouncycastle/crypto/signers/RSADigestSigner;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/tls/TlsUtils;->getOIDForHashAlgorithm(S)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/signers/RSADigestSigner;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid algorithm: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v2, Lorg/bouncycastle/crypto/signers/GenericSigner;

    new-instance v1, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v3, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/crypto/signers/GenericSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsRSAVerifier;->publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v1, 0x0

    invoke-interface {v2, v1, v0}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length v0, p2

    invoke-interface {v2, p2, v1, v0}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    return p1
.end method
