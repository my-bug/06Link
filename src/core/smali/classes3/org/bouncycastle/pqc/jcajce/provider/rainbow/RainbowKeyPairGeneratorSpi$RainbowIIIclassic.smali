.class public Lorg/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi$RainbowIIIclassic;
.super Lorg/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RainbowIIIclassic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    return-void
.end method
