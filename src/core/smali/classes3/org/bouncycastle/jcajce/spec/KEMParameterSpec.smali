.class public Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;
.super Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;-><init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-void
.end method


# virtual methods
.method public getKeySizeInBits()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;->getKeySize()I

    move-result v0

    return v0
.end method
