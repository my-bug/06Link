.class public Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi$Direct;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Direct"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/HashSLHDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/HashSLHDSASigner;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/HashSLHDSASigner;)V

    return-void
.end method
