.class Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;
.super Ljava/security/SecureRandomSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonceEntropySourceSpi"
.end annotation


# instance fields
.field private final digest:Ljava/security/MessageDigest;

.field private final seed:[B

.field private final source:Ljava/security/SecureRandom;

.field private final state:[B


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Ljava/security/MessageDigest;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->source:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->digest:Ljava/security/MessageDigest;

    invoke-virtual {p2}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->seed:[B

    array-length p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->state:[B

    return-void
.end method

.method private runDigest([B[B[B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->digest:Ljava/security/MessageDigest;

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->digest:Ljava/security/MessageDigest;

    array-length p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p2}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unable to generate nonce data: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/DigestException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->source:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p1

    return-object p1
.end method

.method protected engineNextBytes([B)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->digest:Ljava/security/MessageDigest;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->state:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->state:[B

    array-length v5, v4

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->source:Ljava/security/SecureRandom;

    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->seed:[B

    iget-object v4, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->state:[B

    invoke-direct {p0, v1, v4, v4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->runDigest([B[B[B)V

    const/4 v1, 0x0

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->state:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v4, v1

    aput-byte v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected engineSetSeed([B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->digest:Ljava/security/MessageDigest;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->seed:[B

    invoke-direct {p0, v1, p1, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCryptoProvider$NonceEntropySource$NonceEntropySourceSpi;->runDigest([B[B[B)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
