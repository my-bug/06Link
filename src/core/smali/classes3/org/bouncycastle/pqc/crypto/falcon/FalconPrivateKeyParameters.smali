.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;


# instance fields
.field private final F:[B

.field private final f:[B

.field private final g:[B

.field private final pk:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->f:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->g:[B

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->F:[B

    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->pk:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->f:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->g:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->F:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getG()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->pk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSpolyF()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->F:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSpolyf()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
