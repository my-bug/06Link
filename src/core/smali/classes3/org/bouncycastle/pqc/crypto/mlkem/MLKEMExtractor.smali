.class public Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

.field private final privateKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'privateKey\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->kemDecrypt([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getCryptoCipherTextBytes()I

    move-result v0

    return v0
.end method
