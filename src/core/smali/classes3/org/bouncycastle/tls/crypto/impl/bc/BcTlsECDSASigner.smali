.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSASigner;
.super Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSSSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSSSigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-void
.end method


# virtual methods
.method protected createDSAImpl(I)Lorg/bouncycastle/crypto/DSA;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    new-instance v1, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSASigner;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>(Lorg/bouncycastle/crypto/signers/DSAKCalculator;)V

    return-object v0
.end method

.method protected getSignatureAlgorithm()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
