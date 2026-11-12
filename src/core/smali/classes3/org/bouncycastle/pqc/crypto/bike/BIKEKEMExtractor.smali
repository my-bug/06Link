.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V

    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->getSessionKeySize()I

    move-result v0

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v1

    const/4 v8, 0x0

    invoke-static {p1, v8, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v1

    array-length v3, p1

    invoke-static {p1, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getH0()[B

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getH1()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getSigma()[B

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->decaps([B[B[B[B[B[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getSessionKeySize()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    invoke-static {v2, v8, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public getEncapsulationLength()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getLByte()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
