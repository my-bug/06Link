.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$Pure;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pure"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->pureKeyOids:Ljava/util/Set;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;-><init>(Ljava/util/Set;)V

    return-void
.end method
