.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi$Base;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;
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

    const-string v0, "MLKEM"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;-><init>(Ljava/lang/String;)V

    return-void
.end method
