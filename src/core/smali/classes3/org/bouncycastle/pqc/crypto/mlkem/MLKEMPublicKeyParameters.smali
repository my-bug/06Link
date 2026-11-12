.class public Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyParameters;


# instance fields
.field final rho:[B

.field final t:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    array-length p1, p2

    add-int/lit8 p1, p1, -0x20

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->t:[B

    array-length p1, p2

    add-int/lit8 p1, p1, -0x20

    array-length v0, p2

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->rho:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->t:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->rho:[B

    return-void
.end method

.method static getEncoded([B[B)[B
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->t:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->rho:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getEncoded([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRho()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->rho:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->t:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
