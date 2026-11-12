.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->createBaseRandom(Z)Ljava/security/SecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;

    # getter for: Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->entropyDaemon:Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->access$200()Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;I)V

    return-object v0
.end method
