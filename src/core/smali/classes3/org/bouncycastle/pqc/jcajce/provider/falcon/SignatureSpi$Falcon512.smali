.class public Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi$Falcon512;
.super Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Falcon512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;-><init>()V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->falcon_512:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V

    return-void
.end method
