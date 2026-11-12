.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .locals 0

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;

    # getter for: Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource$OneShotSignallingEntropySource;
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;->access$800(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;)Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource$OneShotSignallingEntropySource;

    move-result-object p1

    return-object p1
.end method
