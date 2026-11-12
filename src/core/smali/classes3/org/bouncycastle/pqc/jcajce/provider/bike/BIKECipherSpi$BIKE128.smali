.class public Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi$BIKE128;
.super Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BIKE128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->bike128:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;-><init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V

    return-void
.end method
