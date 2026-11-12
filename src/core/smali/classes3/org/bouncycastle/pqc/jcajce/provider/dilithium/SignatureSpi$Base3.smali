.class public Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi$Base3;
.super Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base3"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;-><init>()V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->dilithium3:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V

    return-void
.end method
