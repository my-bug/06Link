.class public Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi$HashSha2_128f;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashSha2_128f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;->slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/jcajce/spec/SLHDSAParameterSpec;)V

    return-void
.end method
