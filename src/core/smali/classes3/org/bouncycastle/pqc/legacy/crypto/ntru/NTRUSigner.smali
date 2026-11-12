.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;
.super Ljava/lang/Object;


# instance fields
.field private hashAlg:Lorg/bouncycastle/crypto/Digest;

.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

.field private signingKeyPair:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;

.field private verificationKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    return-void
.end method

.method private sign(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;->getPublicKey()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    :goto_0
    const/4 v0, 0x1

    if-lt v2, v0, :cond_1

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v5

    iget-object v5, v5, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v6

    iget-object v6, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    invoke-interface {v5, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    invoke-interface {v6, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    invoke-interface {v6, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    invoke-interface {v5, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    invoke-virtual {v7, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object p1

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    if-le v2, v0, :cond_0

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    goto :goto_1

    :cond_0
    iget-object v0, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    :goto_1
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v7, p1, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object p2

    iget-object p2, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    invoke-interface {v2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    invoke-interface {p2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-interface {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    invoke-interface {v2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    return-object v4
.end method

.method private signHash([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;)[B
    .locals 5

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;->getPublicKey()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->createMsgRep([BI)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->sign(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->verify(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Signing failed: too many retries (max="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private verify(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Z
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget-wide v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget-wide v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->betaSq:D

    invoke-virtual {p3, p2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-virtual {p3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v3

    double-to-long p1, p1

    long-to-double p1, p1

    cmpg-double p3, p1, v1

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private verifyHash([B[BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;)Z
    .locals 3

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length p2, p2

    add-int/lit8 p2, p2, -0x4

    new-array p2, p2, [B

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-static {p2, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->createMsgRep([BI)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    iget-object p3, p3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->verify(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected createMsgRep([BI)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v2, v1, 0x1f

    rsub-int/lit8 v1, v1, 0x26

    div-int/lit8 v1, v1, 0x8

    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    array-length v4, p1

    const/4 v5, 0x4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    new-instance p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget-object v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p1, p2, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->nextBytes(I)[B

    move-result-object v4

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v4, v6

    mul-int/lit8 v7, v1, 0x8

    sub-int/2addr v7, v2

    shr-int/2addr v6, v7

    shl-int/2addr v6, v7

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v4, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    aput v6, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public generateSignature()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->signingKeyPair:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->signingKeyPair:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->signHash([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call initSign first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->signingKeyPair:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->verificationKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call initSign or initVerify first!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Call initSign or initVerify first!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifySignature([B)Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->verificationKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->verificationKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigner;->verifyHash([B[BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call initVerify first!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
