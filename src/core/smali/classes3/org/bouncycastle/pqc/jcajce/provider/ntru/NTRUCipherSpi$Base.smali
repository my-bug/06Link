.class public Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUCipherSpi$Base;
.super Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUCipherSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUCipherSpi;
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

    const-string v0, "NTRU"

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUCipherSpi;-><init>(Ljava/lang/String;)V

    return-void
.end method
