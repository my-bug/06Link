.class public Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$Shake_192f;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shake_192f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_shake_192f:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;)V

    return-void
.end method
