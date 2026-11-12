.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSA13Signer;
.super Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSigner;


# instance fields
.field private final signatureScheme:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    invoke-static {p3}, Lorg/bouncycastle/tls/SignatureScheme;->isECDSA(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iput p3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSA13Signer;->signatureScheme:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "signatureScheme"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generateRawSignature(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->from(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSA13Signer;->signatureScheme:I

    if-ne v0, v1, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/tls/SignatureScheme;->getCryptoHashAlgorithm(I)I

    move-result p1

    new-instance v0, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    new-instance v1, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSA13Signer;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>(Lorg/bouncycastle/crypto/signers/DSAKCalculator;)V

    new-instance p1, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance v1, Lorg/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/NullDigest;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSA13Signer;->privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSA13Signer;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v0, 0x0

    array-length v1, p2

    invoke-interface {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Signer;->generateSignature()[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
