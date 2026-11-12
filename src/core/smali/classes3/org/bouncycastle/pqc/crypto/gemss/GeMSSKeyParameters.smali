.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field final parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    return-object v0
.end method
