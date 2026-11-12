.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSM2Signer;
.super Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSigner;


# instance fields
.field protected final identifier:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSM2Signer;->identifier:[B

    return-void
.end method


# virtual methods
.method public generateRawSignature(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getStreamSigner(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;
    .locals 3

    if-eqz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSM2Signer;->privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSM2Signer;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithID;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSM2Signer;->identifier:[B

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/ParametersWithID;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    new-instance p1, Lorg/bouncycastle/crypto/signers/SM2Signer;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/signers/SM2Signer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/crypto/signers/SM2Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamSigner;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamSigner;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
