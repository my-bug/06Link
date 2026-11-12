.class public Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyParameters;


# instance fields
.field final hpk:[B

.field final nonce:[B

.field final rho:[B

.field final s:[B

.field final seed:[B

.field final t:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    move-result-object p1

    array-length v1, p2

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/16 v4, 0x20

    if-ne v1, v2, :cond_0

    invoke-static {p2, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    array-length v2, p2

    invoke-static {p2, v4, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->generateKemKeyPairInternal([B[B)[[B

    move-result-object p1

    const/4 p2, 0x2

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->s:[B

    const/4 p2, 0x3

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->hpk:[B

    const/4 p2, 0x4

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->nonce:[B

    aget-object p2, p1, v3

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->t:[B

    aget-object p2, p1, v0

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->rho:[B

    const/4 p2, 0x5

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->seed:[B

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberIndCpaSecretKeyBytes()I

    move-result v0

    invoke-static {p2, v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->s:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberIndCpaSecretKeyBytes()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberIndCpaPublicKeyBytes()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr v1, v4

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->t:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberIndCpaPublicKeyBytes()I

    move-result p1

    sub-int/2addr p1, v4

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x20

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->rho:[B

    add-int/lit8 v1, v0, 0x40

    invoke-static {p2, p1, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->hpk:[B

    add-int/lit8 v0, v0, 0x60

    invoke-static {p2, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->nonce:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->seed:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B[B[B[B[B)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B[B[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B[B[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->s:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->hpk:[B

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->nonce:[B

    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->t:[B

    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->rho:[B

    invoke-static {p7}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->seed:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->s:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->t:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->rho:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->hpk:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->nonce:[B

    const/4 v5, 0x5

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getHPK()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->hpk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->nonce:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->t:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->rho:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getEncoded([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyParameters()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->t:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->rho:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B[B)V

    return-object v0
.end method

.method public getRho()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->rho:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getS()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->s:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;->t:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
