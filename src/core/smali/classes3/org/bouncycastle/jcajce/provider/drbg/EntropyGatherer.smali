.class Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final baseRandom:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;

.field private final entropy:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private final pause:J

.field private final seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->baseRandom:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->entropy:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->getPause()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->pause:J

    return-void
.end method

.method private static getPause()J
    .locals 4

    const-string v0, "org.bouncycastle.drbg.gather_pause_secs"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1388

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    :cond_0
    return-wide v1
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->entropy:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->baseRandom:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;

    iget-wide v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->pause:J

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;->getEntropy(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    sget-object v0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "entropy request interrupted - exiting"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
