.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;


# instance fields
.field final l1_F1:[[[S

.field final l1_F2:[[[S

.field final l2_F1:[[[S

.field final l2_F2:[[[S

.field final l2_F3:[[[S

.field final l2_F5:[[[S

.field final l2_F6:[[[S

.field private pk_encoded:[B

.field private final pk_seed:[B

.field final s1:[[S

.field final sk_seed:[B

.field final t1:[[S

.field final t3:[[S

.field final t4:[[S


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result v3

    invoke-static {v2, v6, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_seed:[B

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result v4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result v5

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_skseed()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    new-instance v4, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;

    invoke-direct {v4, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[B)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->generatePrivateKey()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    move-result-object v1

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v5

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v7

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v7, v9, v3

    aput v5, v9, v6

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    iput-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    new-array v10, v8, [I

    aput v5, v10, v3

    aput v4, v10, v6

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[S

    iput-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    new-array v11, v8, [I

    aput v7, v11, v3

    aput v4, v11, v6

    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[S

    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    new-array v12, v8, [I

    aput v7, v12, v3

    aput v5, v12, v6

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[S

    iput-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    const/4 v13, 0x3

    new-array v14, v13, [I

    aput v4, v14, v8

    aput v4, v14, v3

    aput v5, v14, v6

    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[[S

    iput-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    new-array v15, v13, [I

    aput v5, v15, v8

    aput v4, v15, v3

    aput v5, v15, v6

    const/16 v16, 0x2

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[S

    iput-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    new-array v15, v13, [I

    aput v4, v15, v16

    aput v4, v15, v3

    aput v7, v15, v6

    const/16 v17, 0x1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    new-array v15, v13, [I

    aput v5, v15, v16

    aput v4, v15, v17

    aput v7, v15, v6

    const/16 v18, 0x0

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[S

    iput-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    new-array v15, v13, [I

    aput v7, v15, v16

    aput v4, v15, v17

    aput v7, v15, v18

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[S

    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    new-array v15, v13, [I

    aput v5, v15, v16

    aput v5, v15, v17

    aput v7, v15, v18

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[S

    iput-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    const/4 v15, 0x3

    new-array v15, v15, [I

    aput v7, v15, v16

    aput v5, v15, v17

    aput v7, v15, v18

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[S

    iput-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    const/4 v7, 0x0

    iput-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_seed:[B

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_skseed()I

    move-result v1

    const/4 v7, 0x0

    invoke-static {v2, v7, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    array-length v1, v1

    invoke-static {v9, v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[S[BI)I

    move-result v7

    add-int/2addr v1, v7

    invoke-static {v10, v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[S[BI)I

    move-result v7

    add-int/2addr v1, v7

    invoke-static {v11, v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[S[BI)I

    move-result v7

    add-int/2addr v1, v7

    invoke-static {v12, v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[S[BI)I

    move-result v7

    add-int/2addr v1, v7

    const/4 v7, 0x1

    invoke-static {v14, v2, v1, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v9

    add-int/2addr v1, v9

    const/4 v9, 0x0

    invoke-static {v8, v2, v1, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v8

    add-int/2addr v1, v8

    invoke-static {v3, v2, v1, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v6, v2, v1, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v4, v2, v1, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v13, v2, v1, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v5, v2, v1, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v3

    add-int/2addr v1, v3

    array-length v3, v2

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->generatePrivateKey()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    move-result-object p1

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_seed:[B

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_seed:[B

    iput-object p14, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    invoke-static {p7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    invoke-static {p8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    invoke-static {p9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    invoke-static {p10}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    invoke-static {p11}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    invoke-static {p12}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    invoke-static {p13}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method getL1_F1()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method getL1_F2()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method getL2_F1()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method getL2_F2()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method getL2_F3()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method getL2_F5()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method getL2_F6()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->pk_encoded:[B

    return-object v0
.end method

.method getS1()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object v0

    return-object v0
.end method

.method getSk_seed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method getT1()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object v0

    return-object v0
.end method

.method getT3()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object v0

    return-object v0
.end method

.method getT4()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[S)[[S

    move-result-object v0

    return-object v0
.end method
