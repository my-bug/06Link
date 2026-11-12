.class public Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi$Base;
.super Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "BIKE"

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;-><init>(Ljava/lang/String;)V

    return-void
.end method
