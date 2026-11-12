.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    return-object v0
.end method
