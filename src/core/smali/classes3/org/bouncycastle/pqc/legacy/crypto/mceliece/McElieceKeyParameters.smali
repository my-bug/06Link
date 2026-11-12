.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;

    return-object v0
.end method
