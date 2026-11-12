.class public Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi$MCE6688128;
.super Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MCE6688128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCECipherSpi;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    return-void
.end method
