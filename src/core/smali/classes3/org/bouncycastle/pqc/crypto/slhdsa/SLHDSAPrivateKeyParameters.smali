.class public Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyParameters;


# instance fields
.field final pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

.field final sk:Lorg/bouncycastle/pqc/crypto/slhdsa/SK;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;Lorg/bouncycastle/pqc/crypto/slhdsa/SK;Lorg/bouncycastle/pqc/crypto/slhdsa/PK;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;[B)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->getN()I

    move-result p1

    array-length v0, p2

    mul-int/lit8 v1, p1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    const/4 v2, 0x0

    invoke-static {p2, v2, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    invoke-static {p2, p1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;-><init>([B[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p2, v3, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {p2, p1, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;-><init>([B[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "private key encoding does not match parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;-><init>([B[B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    invoke-direct {p1, p4, p5}, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;-><init>([B[B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;->seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;->prf:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->root:[B

    const/4 v4, 0x4

    new-array v4, v4, [[B

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPublicKey()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->root:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrf()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;->prf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->root:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
