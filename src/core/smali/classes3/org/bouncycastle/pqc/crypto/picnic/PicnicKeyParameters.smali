.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field final parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    return-object v0
.end method
