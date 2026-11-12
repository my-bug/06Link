.class Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final predictionResistant:Z

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->random:Ljava/security/SecureRandom;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->predictionResistant:Z

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->predictionResistant:Z

    return p0
.end method

.method static synthetic access$100(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->sleep(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method private static sleep(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;I)V

    return-object v0
.end method
