.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDH;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsAgreement;


# instance fields
.field protected final domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;

.field protected localKeyPair:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

.field protected peerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDH;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDH;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDH;->localKeyPair:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDH;->peerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;->calculateDHAgreement(Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDH;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDH;->localKeyPair:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDH;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;->encodePublicKey(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)[B

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDH;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;->decodePublicKey([B)Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDH;->peerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    return-void
.end method
