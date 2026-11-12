.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsAgreement;


# instance fields
.field protected final domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;

.field protected localKeyPair:Ljava/security/KeyPair;

.field protected peerPublicKey:Ljavax/crypto/interfaces/DHPublicKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;->domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;->domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;->localKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljavax/crypto/interfaces/DHPrivateKey;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;->peerPublicKey:Ljavax/crypto/interfaces/DHPublicKey;

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->calculateDHAgreement(Ljavax/crypto/interfaces/DHPrivateKey;Ljavax/crypto/interfaces/DHPublicKey;)Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsSecret;

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;->domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;->localKeyPair:Ljava/security/KeyPair;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;->domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->encodePublicKey(Ljavax/crypto/interfaces/DHPublicKey;)[B

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

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;->domain:Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDHDomain;->decodePublicKey([B)Ljavax/crypto/interfaces/DHPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsDH;->peerPublicKey:Ljavax/crypto/interfaces/DHPublicKey;

    return-void
.end method
