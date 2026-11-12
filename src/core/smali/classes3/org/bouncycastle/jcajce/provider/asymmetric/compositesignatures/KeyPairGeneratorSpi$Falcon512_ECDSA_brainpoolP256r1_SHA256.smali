.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi$Falcon512_ECDSA_brainpoolP256r1_SHA256;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Falcon512_ECDSA_brainpoolP256r1_SHA256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;->Falcon512_ECDSA_brainpoolP256r1_SHA256:Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;)V

    return-void
.end method
