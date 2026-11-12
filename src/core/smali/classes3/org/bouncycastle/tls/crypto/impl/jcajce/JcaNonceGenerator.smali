.class Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaNonceGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;


# instance fields
.field private final random:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    invoke-virtual {v1, p2}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->setPersonalizationString([B)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-virtual {p1, p2, v0, v2}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->buildHash(Lorg/bouncycastle/crypto/Digest;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaNonceGenerator;->random:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    return-void
.end method


# virtual methods
.method public generateNonce(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaNonceGenerator;->random:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->nextBytes([B)V

    return-object p1
.end method
