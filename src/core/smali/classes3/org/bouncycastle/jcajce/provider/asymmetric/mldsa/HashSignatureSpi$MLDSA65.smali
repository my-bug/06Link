.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi$MLDSA65;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MLDSA65"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;-><init>()V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_65_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    return-void
.end method
