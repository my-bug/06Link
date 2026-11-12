.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .locals 0

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;

    # getter for: Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->access$700(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;)Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    move-result-object p1

    return-object p1
.end method
