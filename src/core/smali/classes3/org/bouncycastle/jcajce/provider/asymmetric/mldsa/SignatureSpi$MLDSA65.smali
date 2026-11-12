.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi$MLDSA65;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MLDSA65"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;-><init>()V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_65:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    return-void
.end method
