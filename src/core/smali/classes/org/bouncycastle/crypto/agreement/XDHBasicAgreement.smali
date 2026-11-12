.class public Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private agreement:Lorg/bouncycastle/crypto/RawAgreement;

.field private fieldSize:I

.field private key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->fieldSize:I

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->fieldSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method public getFieldSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->fieldSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->fieldSize:I

    new-instance v0, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    if-eqz v0, :cond_1

    const/16 v0, 0x38

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->fieldSize:I

    new-instance v0, Lorg/bouncycastle/crypto/agreement/X448Agreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/X448Agreement;-><init>()V

    goto :goto_0

    :goto_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key is neither X25519 nor X448"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
