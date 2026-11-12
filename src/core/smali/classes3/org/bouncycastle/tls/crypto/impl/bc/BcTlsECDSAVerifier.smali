.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDSAVerifier;
.super Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSSVerifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDSSVerifier;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-void
.end method


# virtual methods
.method protected createDSAImpl()Lorg/bouncycastle/crypto/DSA;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    return-object v0
.end method

.method protected getSignatureAlgorithm()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
