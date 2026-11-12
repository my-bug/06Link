.class public Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyParameters;


# instance fields
.field private final pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;Lorg/bouncycastle/pqc/crypto/slhdsa/PK;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;[B)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->getN()I

    move-result p1

    array-length v1, p2

    mul-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {p2, p1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;-><init>([B[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "public key encoding does not match parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->root:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
