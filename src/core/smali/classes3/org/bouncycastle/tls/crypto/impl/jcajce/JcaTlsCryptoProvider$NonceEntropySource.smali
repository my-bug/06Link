.class Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource;
.super Ljava/security/SecureRandom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonceEntropySource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;

    const-string v1, "SHA-512"

    invoke-interface {p1, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;-><init>(Ljava/security/SecureRandom;Ljava/security/MessageDigest;)V

    invoke-virtual {p2}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    return-void
.end method
