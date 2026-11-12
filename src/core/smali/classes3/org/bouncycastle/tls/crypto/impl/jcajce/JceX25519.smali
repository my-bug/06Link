.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsAgreement;


# instance fields
.field protected final domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;

.field protected localKeyPair:Ljava/security/KeyPair;

.field protected peerPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519;->domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519;->domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519;->localKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519;->peerPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;->calculateECDHAgreement(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519;->domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519;->localKeyPair:Ljava/security/KeyPair;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519;->domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;->encodePublicKey(Ljava/security/PublicKey;)[B

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519;->domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519Domain;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceX25519;->peerPublicKey:Ljava/security/PublicKey;

    return-void
.end method
