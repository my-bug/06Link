.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi$MLKEM512;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MLKEM512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;->ml_kem_512:Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/jcajce/spec/MLKEMParameterSpec;)V

    return-void
.end method
