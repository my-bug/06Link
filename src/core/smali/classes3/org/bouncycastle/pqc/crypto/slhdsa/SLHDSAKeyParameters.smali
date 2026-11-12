.class public Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private final parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    return-object v0
.end method
