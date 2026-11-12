.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HybridEntropySource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;
    }
.end annotation


# instance fields
.field private final additionalInput:[B

.field private final bytesRequired:I

.field private final drbg:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

.field private final entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

.field private final samples:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->additionalInput:[B

    # invokes: Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->createCoreEntropySourceProvider()Lorg/bouncycastle/crypto/prng/EntropySourceProvider;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->access$600()Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    move-result-object v2

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->bytesRequired:I

    new-instance p2, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    const/16 v3, 0x100

    invoke-direct {p2, p1, v0, v2, v3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/bouncycastle/crypto/prng/EntropySourceProvider;I)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    new-instance p1, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$1;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Lorg/bouncycastle/crypto/prng/EntropySourceProvider;)V

    const-string v0, "Bouncy Castle Hybrid Entropy Source"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->setPersonalizationString([B)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->getEntropy()[B

    move-result-object p2

    invoke-virtual {p1, v0, p2, v1}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->buildHMAC(Lorg/bouncycastle/crypto/Mac;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->drbg:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    return-void
.end method

.method static synthetic access$700(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;)Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    return-object p0
.end method


# virtual methods
.method public entropySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->bytesRequired:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getEntropy()[B
    .locals 3

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->bytesRequired:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->drbg:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->additionalInput:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->reseed([B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->schedule()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->drbg:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public isPredictionResistant()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
