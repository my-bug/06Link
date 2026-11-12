.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsAgreement;


# instance fields
.field protected final domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;

.field protected localKeyPair:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

.field protected peerPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;

    return-void
.end method


# virtual methods
.method public calculateSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;->localKeyPair:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;->peerPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->calculateECDHAgreement(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;

    move-result-object v0

    return-object v0
.end method

.method public generateEphemeral()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;->localKeyPair:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->encodePublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)[B

    move-result-object v0

    return-object v0
.end method

.method public receivePeerValue([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->decodePublicKey([B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDH;->peerPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-void
.end method
