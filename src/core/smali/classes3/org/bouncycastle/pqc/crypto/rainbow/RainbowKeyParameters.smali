.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private final docLength:I

.field private final params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->docLength:I

    return-void
.end method


# virtual methods
.method public getDocLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->docLength:I

    return v0
.end method

.method public getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    return-object v0
.end method
