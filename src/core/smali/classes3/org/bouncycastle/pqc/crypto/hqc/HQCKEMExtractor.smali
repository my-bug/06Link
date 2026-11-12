.class public Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V

    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->getSessionKeySize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    invoke-virtual {v2, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->decaps([B[B[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getK()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public getEncapsulationLength()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getN_BYTES()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getN1N2_BYTES()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x50

    return v0
.end method
