.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsEd25519Signer;
.super Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsEdDSASigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PrivateKey;)V
    .locals 2

    const/4 v0, 0x7

    const-string v1, "Ed25519"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsEdDSASigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PrivateKey;SLjava/lang/String;)V

    return-void
.end method
