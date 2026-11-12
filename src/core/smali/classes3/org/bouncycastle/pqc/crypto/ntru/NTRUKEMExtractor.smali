.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

.field private final params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    return-void
.end method

.method private cmov([B[BB)V
    .locals 3

    xor-int/lit8 p3, p3, -0x1

    add-int/lit8 p3, p3, 0x1

    int-to-byte p3, p3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v2, v1

    and-int/2addr v2, p3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->privateKey:[B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v3

    add-int/2addr v2, v3

    new-array v3, v2, [B

    new-instance v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->privateKey:[B

    invoke-virtual {v4, p1, v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->decrypt([B[B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->rm:[B

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->fail:I

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    array-length v8, v5

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v6, v7, v9}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v10

    if-ge v8, v10, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaSecretKeyBytes()I

    move-result v10

    add-int/2addr v10, v8

    aget-byte v10, v1, v10

    aput-byte v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v8

    if-ge v1, v8, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v8

    add-int/2addr v8, v1

    aget-byte v10, p1, v1

    aput-byte v10, v3, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->reset()V

    invoke-virtual {v6, v3, v9, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v6, v5, v9}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    int-to-byte p1, v4

    invoke-direct {p0, v7, v5, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->cmov([B[BB)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes()I

    move-result p1

    invoke-static {v7, v9, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {v7}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-object p1
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v0

    return v0
.end method
