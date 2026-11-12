.class public Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyParameters;


# instance fields
.field final k:[B

.field final rho:[B

.field final s1:[B

.field final s2:[B

.field private final seed:[B

.field final t0:[B

.field private final t1:[B

.field final tr:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateKeyPairInternal([B)[[B

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    aget-object p2, p1, v0

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    const/4 p2, 0x2

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    const/4 p2, 0x3

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    const/4 p2, 0x4

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    const/4 p2, 0x5

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    const/4 p2, 0x6

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    const/4 p2, 0x7

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p2, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    const/16 v1, 0x40

    invoke-static {p2, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    const/16 v2, 0x80

    invoke-static {p2, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumL()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v3

    mul-int v1, v1, v3

    add-int/2addr v1, v2

    invoke-static {p2, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumK()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v2, v1

    invoke-static {p2, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumK()I

    move-result p1

    mul-int/lit16 p1, p1, 0x1a0

    add-int/2addr p1, v2

    invoke-static {p2, v2, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->getT1()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B[B[B[B[B[B)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B[B[B[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B[B[B[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    invoke-static {p7}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    invoke-static {p8}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    invoke-static {p9}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    const/4 v6, 0x6

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getK()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->getEncoded([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B)V

    return-object v0
.end method

.method public getRho()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getS1()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getS2()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT0()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT1()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getTr()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
