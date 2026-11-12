.class Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;
.super Ljava/lang/Object;


# instance fields
.field public final KyberGenerateMatrixNBlocks:I

.field private engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

.field private eta1:I

.field private indCpaBytes:I

.field private indCpaPublicKeyBytes:I

.field private kyberK:I

.field private polyCompressedBytes:I

.field private polyVecBytes:I

.field private polyVecCompressedBytes:I

.field private symmetric:Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberEta1()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->eta1:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPublicKeyBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->indCpaPublicKeyBytes:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->polyVecBytes:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberIndCpaBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->indCpaBytes:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecCompressedBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->polyVecCompressedBytes:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyCompressedBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->polyCompressedBytes:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getSymmetric()Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofBlockBytes:I

    add-int/lit16 p1, p1, 0x1d8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofBlockBytes:I

    div-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->KyberGenerateMatrixNBlocks:I

    return-void
.end method

.method private packCipherText(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/Poly;)[B
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->indCpaBytes:I

    new-array v0, v0, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->compressPolyVec()[B

    move-result-object p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->polyVecCompressedBytes:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->compressPoly()[B

    move-result-object p1

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->polyVecCompressedBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->polyCompressedBytes:I

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static rejectionSampling(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;II[BI)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    add-int/lit8 v2, v1, 0x3

    if-gt v2, p4, :cond_2

    aget-byte v3, p3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p3, v4

    and-int/lit16 v5, v4, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xfff

    int-to-short v3, v3

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shr-int/lit8 v4, v4, 0x4

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xfff

    int-to-short v1, v1

    const/16 v4, 0xd01

    if-ge v3, v4, :cond_0

    add-int v5, p1, v0

    invoke-virtual {p0, v5, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-ge v0, p2, :cond_1

    if-ge v1, v4, :cond_1

    add-int v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method private unpackCipherText(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/Poly;[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecCompressedBytes()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->decompressPolyVec([B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecCompressedBytes()I

    move-result p1

    array-length v0, p3

    invoke-static {p3, p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->decompressPoly([B)V

    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 5

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberIndCpaMsgBytes()I

    move-result v0

    new-array v0, v0, [B

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    invoke-direct {p0, v0, v2, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->unpackCipherText(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/Poly;[B)V

    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->unpackSecretKey(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->polyVecNtt()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-static {v3, v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->polyInverseNttToMont()V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->polySubtract(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->reduce()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->toMsg()[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B[B[B)[B
    .locals 11

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberK()I

    move-result v4

    new-array v4, v4, [Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v7, v8}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;[B)[B

    move-result-object p1

    invoke-virtual {v7, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->fromMsg([B)V

    const/4 p2, 0x0

    const/4 v8, 0x0

    :goto_0
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    if-ge v8, v9, :cond_0

    new-instance v9, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v9, v10}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    aput-object v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, v4, p1, v8}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->generateMatrix([Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;[BZ)V

    const/4 p1, 0x0

    const/4 v8, 0x0

    :goto_1
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    if-ge p1, v9, :cond_1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v9

    invoke-virtual {v9, p3, v8}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->getEta1Noise([BB)V

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    if-ge p1, v9, :cond_2

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v9

    invoke-virtual {v9, p3, v8}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->getEta2Noise([BB)V

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v5, p3, v8}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->getEta2Noise([BB)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->polyVecNtt()V

    :goto_3
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    if-ge p2, p1, :cond_3

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object p1

    aget-object p3, v4, p2

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-static {p1, p3, v0, v8}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-static {v6, v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->polyVecInverseNttToMont()V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->polyInverseNttToMont()V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->addPoly(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;)V

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->reducePoly()V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->reduce()V

    invoke-direct {p0, v3, v6}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->packCipherText(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/Poly;)[B

    move-result-object p1

    return-object p1
.end method

.method generateKeyPair([B)[[B
    .locals 10

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    const/16 v3, 0x40

    new-array v3, v3, [B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    new-array v6, v5, [B

    const/4 v7, 0x0

    aput-byte v4, v6, v7

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;

    invoke-static {p1, v6}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->hash_g([B[B)V

    const/16 p1, 0x20

    new-array v4, p1, [B

    new-array v6, p1, [B

    invoke-static {v3, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, p1, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    new-array p1, p1, [Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    const/4 v3, 0x0

    :goto_0
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    if-ge v3, v8, :cond_0

    new-instance v8, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    aput-object v8, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v4, v7}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->generateMatrix([Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;[BZ)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_1
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    if-ge v3, v9, :cond_1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->getEta1Noise([BB)V

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    if-ge v3, v9, :cond_2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->getEta1Noise([BB)V

    add-int/2addr v8, v5

    int-to-byte v8, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->polyVecNtt()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->polyVecNtt()V

    const/4 v3, 0x0

    :goto_3
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    if-ge v3, v6, :cond_3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v6

    aget-object v8, p1, v3

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    invoke-static {v6, v8, v0, v9}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mlkem/Poly;->convertToMont()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->addPoly(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->reducePoly()V

    invoke-virtual {p0, v1, v4}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->packPublicKey(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;[B)[B

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->packSecretKey(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;)[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    aput-object p1, v1, v7

    aput-object v0, v1, v5

    return-object v1
.end method

.method public generateMatrix([Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;[BZ)V
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->KyberGenerateMatrixNBlocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofBlockBytes:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    if-ge v2, v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->kyberK:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;

    if-eqz p3, :cond_0

    int-to-byte v5, v2

    int-to-byte v6, v3

    goto :goto_2

    :cond_0
    int-to-byte v5, v3

    int-to-byte v6, v2

    :goto_2
    invoke-virtual {v4, p2, v5, v6}, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofAbsorb([BBB)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;

    iget v5, v4, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofBlockBytes:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->KyberGenerateMatrixNBlocks:I

    mul-int v5, v5, v6

    invoke-virtual {v4, v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofSqueezeBlocks([BII)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->KyberGenerateMatrixNBlocks:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofBlockBytes:I

    mul-int v4, v4, v5

    aget-object v5, p1, v2

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v5

    const/16 v6, 0x100

    invoke-static {v5, v1, v6, v0, v4}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->rejectionSampling(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;II[BI)I

    move-result v5

    :goto_3
    if-ge v5, v6, :cond_2

    rem-int/lit8 v7, v4, 0x3

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_1

    sub-int v9, v4, v7

    add-int/2addr v9, v8

    aget-byte v9, v0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;

    iget v8, v4, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofBlockBytes:I

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v4, v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofSqueezeBlocks([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;->xofBlockBytes:I

    add-int/2addr v4, v7

    aget-object v7, p1, v2

    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/mlkem/Poly;

    move-result-object v7

    rsub-int v8, v5, 0x100

    invoke-static {v7, v5, v8, v0, v4}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->rejectionSampling(Lorg/bouncycastle/pqc/crypto/mlkem/Poly;II[BI)I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public packPublicKey(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;[B)[B
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->indCpaPublicKeyBytes:I

    new-array v0, v0, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->toBytes()[B

    move-result-object p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->polyVecBytes:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->polyVecBytes:I

    const/16 v1, 0x20

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public packSecretKey(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;)[B
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->toBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public unpackPublicKey(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;[B)[B
    .locals 3

    const/16 v0, 0x20

    new-array v1, v0, [B

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->fromBytes([B)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMIndCpa;->polyVecBytes:I

    const/4 v2, 0x0

    invoke-static {p2, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public unpackSecretKey(Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;[B)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/PolyVec;->fromBytes([B)V

    return-void
.end method
