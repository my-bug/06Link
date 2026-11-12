.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final numBytes:I

.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;

.field final synthetic val$bitsRequired:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->val$bitsRequired:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->numBytes:I

    return-void
.end method


# virtual methods
.method public entropySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->val$bitsRequired:I

    return v0
.end method

.method public getEntropy()[B
    .locals 2

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->getEntropy(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initial entropy fetch interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEntropy(J)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->numBytes:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;

    sub-int v4, v0, v2

    # invokes: Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;->privilegedRead([BII)I
    invoke-static {v3, v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;->access$400(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;[BII)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    add-int/2addr v2, v3

    # invokes: Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->sleep(J)V
    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->access$500(J)V

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "unable to fully read random source"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public isPredictionResistant()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
