.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;
.super Ljava/lang/Object;


# instance fields
.field private cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

.field private final num_gf_elements:I

.field private params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->num_gf_elements:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    return-void
.end method

.method private add_and_reduce([[S)[S
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v0

    new-array v1, v0, [S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    new-array v5, v0, [S

    move v6, v4

    :goto_1
    const/16 v7, 0x100

    if-ge v6, v7, :cond_1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_0

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    add-int v9, v6, v7

    aget-object v9, p1, v9

    invoke-virtual {v8, v5, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    int-to-short v4, v4

    invoke-virtual {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multVect(S[S)[S

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private compute_accumulator([S[S[[[SI)[[S
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p4, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x100

    aput v2, v0, v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    array-length v2, p2

    aget-object v3, p3, v1

    array-length v4, v3

    if-ne v2, v4, :cond_4

    array-length v2, p1

    aget-object v3, v3, v1

    array-length v3, v3

    if-ne v2, v3, :cond_4

    array-length v2, p3

    if-ne v2, p4, :cond_4

    const/4 p4, 0x0

    :goto_0
    array-length v2, p2

    if-ge p4, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-short v3, p2, p4

    invoke-virtual {v2, v3, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multVect(S[S)[S

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    array-length v5, p3

    if-ge v4, v5, :cond_1

    aget-short v5, v2, v3

    if-eqz v5, :cond_0

    aget-object v5, v0, v5

    aget-short v6, v5, v4

    aget-object v7, p3, v4

    aget-object v7, v7, p4

    aget-short v7, v7, v3

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v5, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Accumulator calculation not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public publicMap(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S
    .locals 1

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v0

    invoke-direct {p0, p2, p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->add_and_reduce([[S)[S

    move-result-object p1

    return-object p1
.end method

.method public publicMap_cyclic(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v4

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v6, 0x0

    const/16 v9, 0x100

    aput v9, v7, v6

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    invoke-static {v2, v6, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v10

    add-int v11, v3, v4

    invoke-static {v2, v3, v11}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v12

    array-length v13, v2

    invoke-static {v2, v11, v13}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v2

    new-instance v11, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v13, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v14

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v14

    invoke-direct {v11, v13, v14}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    invoke-static {v11, v4, v3, v3, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v13

    invoke-direct {v0, v10, v10, v13, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v13

    invoke-static {v11, v4, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v14

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0, v12, v10, v14, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v14

    invoke-virtual {v15, v13, v14}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v13

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-direct {v0, v2, v10, v15, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v13

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-direct {v0, v12, v12, v15, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v13

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-direct {v0, v2, v12, v15, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v13

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-direct {v0, v2, v2, v15, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v13

    invoke-static {v11, v5, v3, v3, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v14

    invoke-direct {v0, v10, v10, v14, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v14

    invoke-static {v11, v5, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v15

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0, v12, v10, v15, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v9

    invoke-static {v11, v5, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v3

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0, v2, v10, v3, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v3

    invoke-virtual {v14, v9, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    invoke-static {v11, v5, v4, v4, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v8

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0, v12, v12, v8, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v8

    invoke-virtual {v9, v3, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    invoke-static {v11, v5, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v4

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0, v2, v12, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-direct {v0, v2, v2, v1, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    const/16 v2, 0x100

    :goto_0
    if-ge v6, v2, :cond_0

    aget-object v3, v13, v6

    aget-object v4, v1, v6

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v3

    aput-object v3, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {v0, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->add_and_reduce([[S)[S

    move-result-object v1

    return-object v1
.end method
