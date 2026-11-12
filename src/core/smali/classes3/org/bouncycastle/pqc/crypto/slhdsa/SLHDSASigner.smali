.class public Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# static fields
.field private static final DEFAULT_PREFIX:[B


# instance fields
.field private msgPrefix:[B

.field private privKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->DEFAULT_PREFIX:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static internalGenerateSignature(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;[B[B[B)[B
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->init([B)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;->prf:[B

    invoke-virtual {v1, v2, p3, p1, p2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->PRF_msg([B[B[B[B)[B

    move-result-object v2

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v4, p3, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->root:[B

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->H_msg([B[B[B[B[B)Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;

    move-result-object p1

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;->digest:[B

    iget-wide v3, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;->idx_tree:J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;->idx_leaf:I

    new-instance p3, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;

    invoke-direct {p3}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {p3, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    invoke-virtual {p3, v3, v4}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeAddress(J)V

    invoke-virtual {p3, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setKeyPairAddress(I)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/slhdsa/SK;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/slhdsa/SK;->seed:[B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    invoke-virtual {v0, p2, v6, v7, p3}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->sign([B[B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;

    move-result-object p3

    new-instance v6, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;-><init>()V

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    invoke-virtual {v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeAddress(J)V

    invoke-virtual {v6, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setKeyPairAddress(I)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    invoke-virtual {v0, p3, p2, v5, v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->pkFromSig([Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/HT;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->getSeed()[B

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->getPublicSeed()[B

    move-result-object p0

    invoke-direct {v0, v1, v5, p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/HT;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;[B[B)V

    invoke-virtual {v0, p2, v3, v4, p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/HT;->sign([BJI)[B

    move-result-object p0

    array-length p1, p3

    add-int/lit8 p2, p1, 0x2

    new-array p2, p2, [[B

    const/4 v0, 0x0

    aput-object v2, p2, v0

    :goto_0
    array-length v1, p3

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v2, p3, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;->sk:[B

    aget-object v0, p3, v0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;->authPath:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    aput-object v0, p2, v1

    move v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    aput-object p0, p2, p1

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static internalVerifySignature(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;[B[B[B)Z
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getSeed()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->init([B)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;-><init>()V

    iget v2, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    iget v3, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    iget v3, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->H:I

    add-int/2addr v2, v3

    iget v3, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->D:I

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->WOTS_LEN:I

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    iget v3, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->N:I

    mul-int v2, v2, v3

    move-object/from16 v10, p3

    array-length v3, v10

    const/4 v11, 0x0

    if-eq v2, v3, :cond_0

    return v11

    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->N:I

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->K:I

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->A:I

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->D:I

    iget v8, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->H_PRIME:I

    iget v9, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->WOTS_LEN:I

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG;-><init>(IIIIII[B)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG;->getR()[B

    move-result-object v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG;->getSIG_FORS()[Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;

    move-result-object v7

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SIG;->getSIG_HT()[Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_XMSS;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getSeed()[B

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getRoot()[B

    move-result-object v4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->H_msg([B[B[B[B[B)Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;

    move-result-object v2

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;->digest:[B

    iget-wide v4, v2, Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;->idx_tree:J

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;->idx_leaf:I

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    invoke-virtual {v0, v11}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setLayerAddress(I)V

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeAddress(J)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setKeyPairAddress(I)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;

    invoke-direct {v6, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;)V

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getSeed()[B

    move-result-object v8

    invoke-virtual {v6, v7, v3, v8, v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/Fors;->pkFromSig([Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object v13

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTypeAndClear(I)V

    invoke-virtual {v0, v11}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setLayerAddress(I)V

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setTreeAddress(J)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->setKeyPairAddress(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/slhdsa/HT;

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getSeed()[B

    move-result-object v3

    invoke-direct {v12, v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/slhdsa/HT;-><init>(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;[B[B)V

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getSeed()[B

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getRoot()[B

    move-result-object v19

    move/from16 v18, v2

    move-wide/from16 v16, v4

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/slhdsa/HT;->verify([B[Lorg/bouncycastle/pqc/crypto/slhdsa/SIG_XMSS;[BJI[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->init([B)V

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;->N:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/slhdsa/PK;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/slhdsa/PK;->seed:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->msgPrefix:[B

    invoke-static {v0, v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->internalGenerateSignature(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithContext;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithContext;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithContext;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithContext;->getContextLength()I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->msgPrefix:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v3, 0x1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3, v1}, Lorg/bouncycastle/crypto/params/ParametersWithContext;->copyContextTo([BII)V

    move-object p2, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context too long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->DEFAULT_PREFIX:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->msgPrefix:[B

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->random:Ljava/security/SecureRandom;

    goto :goto_1

    :cond_2
    check-cast p2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->random:Ljava/security/SecureRandom;

    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    move-result-object p1

    goto :goto_2

    :cond_3
    check-cast p2, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;->isPreHash()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\"pure\" slh-dsa must use non pre-hash parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected internalGenerateSignature([B[B)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->internalGenerateSignature(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPrivateKeyParameters;[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected internalVerifySignature([B[B)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->internalVerifySignature(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;[B[B[B)Z

    move-result p1

    return p1
.end method

.method public verifySignature([B[B)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->msgPrefix:[B

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSASigner;->internalVerifySignature(Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAPublicKeyParameters;[B[B[B)Z

    move-result p1

    return p1
.end method
