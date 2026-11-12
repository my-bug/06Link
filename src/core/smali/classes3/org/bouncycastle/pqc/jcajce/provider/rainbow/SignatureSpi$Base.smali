.class public Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi$Base;
.super Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;)V

    return-void
.end method
