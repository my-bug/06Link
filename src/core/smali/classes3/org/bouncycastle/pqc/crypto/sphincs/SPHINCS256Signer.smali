.class public Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private final hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

.field private keyData:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "2n-digest needs to produce 64 bytes of output"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n-digest needs to produce 32 bytes of output"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static compute_authpath_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V
    .locals 19

    move-object/from16 v0, p4

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    const/16 v2, 0x800

    new-array v4, v2, [B

    const/16 v2, 0x400

    new-array v9, v2, [B

    const v2, 0x10c00

    new-array v6, v2, [B

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_0
    iget-wide v7, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v13, 0x1

    const-wide/16 v15, 0x20

    cmp-long v5, v7, v15

    if-gez v5, :cond_0

    iget-wide v7, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v7, v7, v15

    long-to-int v5, v7

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    invoke-static {v7, v9, v5, v8, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    iget-wide v10, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long/2addr v10, v13

    iput-wide v10, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_0

    :cond_0
    move-object/from16 v7, p0

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    iput-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_1
    iget-wide v10, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v17, 0x860

    cmp-long v8, v10, v15

    if-gez v8, :cond_1

    iget-wide v10, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v10, v10, v17

    long-to-int v8, v10

    iget-wide v10, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v10, v10, v15

    long-to-int v10, v10

    const/4 v12, 0x0

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    move-object v6, v7

    iget-wide v7, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long/2addr v7, v13

    iput-wide v7, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move-object/from16 v7, p0

    goto :goto_1

    :cond_1
    :goto_2
    iput-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    iget-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    cmp-long v5, v2, v15

    if-gez v5, :cond_2

    iget-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v2, v2, v15

    const-wide/16 v7, 0x400

    add-long/2addr v2, v7

    long-to-int v5, v2

    iget-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v2, v2, v17

    long-to-int v7, v2

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    iget-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long/2addr v2, v13

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/16 v2, 0x20

    const/16 v10, 0x20

    const/4 v11, 0x0

    :goto_3
    if-lez v10, :cond_4

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v10, :cond_3

    ushr-int/lit8 v3, v10, 0x1

    mul-int/lit8 v3, v3, 0x20

    ushr-int/lit8 v5, v12, 0x1

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v3

    mul-int/lit8 v3, v10, 0x20

    mul-int/lit8 v6, v12, 0x20

    add-int v7, v3, v6

    add-int/lit8 v3, v11, 0x7

    mul-int/lit8 v9, v3, 0x40

    move-object v6, v4

    move-object/from16 v3, p0

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v12, v12, 0x2

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    ushr-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    iget-wide v5, v0, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    long-to-int v0, v5

    move/from16 v3, p7

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_5

    ushr-int v6, v2, v5

    mul-int/lit8 v6, v6, 0x20

    ushr-int v7, v0, v5

    xor-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x20

    add-int/2addr v6, v7

    mul-int/lit8 v7, v5, 0x20

    add-int v7, p3, v7

    move-object/from16 v8, p2

    invoke-static {v4, v6, v8, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v5, p1

    invoke-static {v4, v2, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static validate_authpath(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V
    .locals 12

    const/16 v0, 0x40

    new-array v2, v0, [B

    and-int/lit8 v1, p3, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x20

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_0

    add-int/lit8 v3, v1, 0x20

    aget-byte v4, p2, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    if-ge p2, v9, :cond_3

    add-int v1, p5, p2

    aget-byte v1, p4, v1

    aput-byte v1, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_2

    aget-byte v3, p2, v1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_3
    if-ge p2, v9, :cond_3

    add-int/lit8 v1, p2, 0x20

    add-int v3, p5, p2

    aget-byte v3, p4, v3

    aput-byte v3, v2, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p5, 0x20

    move v1, p3

    const/4 v10, 0x0

    :goto_4
    add-int/lit8 v3, p7, -0x1

    if-ge v10, v3, :cond_6

    ushr-int/lit8 v11, v1, 0x1

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v10, 0x7

    mul-int/lit8 v7, v1, 0x40

    const/16 v3, 0x20

    const/4 v5, 0x0

    move-object v4, v2

    move-object v1, p0

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_5

    add-int v3, p2, v1

    aget-byte v3, p4, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v10, 0x7

    mul-int/lit8 v7, v1, 0x40

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v2

    move-object v1, p0

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v9, :cond_5

    add-int/lit8 v3, v1, 0x20

    add-int v4, p2, v1

    aget-byte v4, p4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 p2, p2, 0x20

    add-int/lit8 v10, v10, 0x1

    move v1, v11

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p7, 0x6

    mul-int/lit8 v7, p2, 0x40

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object/from16 v6, p6

    move-object v4, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    return-void
.end method

.method private zerobytes([BII)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p3, :cond_0

    add-int v2, p2, v1

    aput-byte v0, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method crypto_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const v1, 0xa028

    new-array v2, v1, [B

    const/16 v10, 0x20

    new-array v11, v10, [B

    const/16 v1, 0x40

    new-array v12, v1, [B

    const/16 v13, 0x8

    new-array v1, v13, [J

    new-array v14, v10, [B

    new-array v15, v10, [B

    const/16 v3, 0x400

    new-array v4, v3, [B

    const/16 v5, 0x440

    new-array v6, v5, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_0

    aget-byte v16, p3, v8

    aput-byte v16, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/16 v8, 0x420

    const v5, 0xa008

    invoke-static {v6, v8, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v8

    invoke-interface {v8}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v8, v2, v5, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v13, v9

    invoke-interface {v8, v9, v7, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v8, v3, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-direct {v0, v2, v5, v10}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    const/4 v5, 0x0

    :goto_1
    const/16 v8, 0x8

    if-eq v5, v8, :cond_1

    mul-int/lit8 v8, v5, 0x8

    invoke-static {v3, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v19

    aput-wide v19, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    aget-wide v19, v1, v7

    const-wide v21, 0xfffffffffffffffL

    and-long v21, v19, v21

    const/16 v1, 0x10

    invoke-static {v3, v1, v11, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v13, 0x9be8

    invoke-static {v11, v7, v2, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    const/16 v3, 0xb

    iput v3, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    iput-wide v7, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const v8, 0x9c08

    const/16 v5, 0x400

    invoke-static {v6, v10, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    const v3, 0xa008

    move-object/from16 v17, v4

    const/4 v4, 0x5

    const/16 v23, 0x0

    move-object v7, v2

    move-object v5, v6

    move-object/from16 v25, v17

    const/16 v10, 0x440

    move-object v6, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->treehash(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V

    move-object v8, v5

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-interface {v3, v2, v13, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v4, v9

    const/4 v7, 0x0

    invoke-interface {v3, v9, v7, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v3, v12, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    const/16 v13, 0xc

    iput v13, v9, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    const-wide/16 v16, 0x1f

    and-long v3, v19, v16

    long-to-int v4, v3

    int-to-long v3, v4

    iput-wide v3, v9, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/16 v19, 0x5

    ushr-long v3, v21, v19

    iput-wide v3, v9, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/16 v3, 0x20

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_2

    aget-byte v4, v11, v7

    aput-byte v4, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v7, v25

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-static {v8, v3, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    :goto_3
    if-ge v4, v5, :cond_3

    add-int v6, v3, v4

    mul-int/lit8 v11, v4, 0x8

    ushr-long v24, v21, v11

    const-wide/16 v26, 0xff

    move/from16 v18, v4

    and-long v3, v24, v26

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v2, v6

    add-int/lit8 v4, v18, 0x1

    const/16 v3, 0x20

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    invoke-static {v1, v15, v3, v8, v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;-><init>()V

    const/16 v23, 0x0

    const/16 v3, 0x28

    move-object v6, v7

    move-object v7, v12

    move-object v4, v14

    move-object v5, v15

    const/4 v11, 0x0

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->horst_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I

    move-result v7

    add-int/2addr v3, v7

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v13, :cond_4

    iput v12, v9, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    invoke-static {v1, v5, v11, v8, v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    move-object/from16 v28, v2

    move-object v2, v1

    move-object v1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object/from16 v3, v28

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V

    move-object v14, v1

    move-object v2, v3

    move v15, v4

    move-object v4, v5

    move-object v11, v6

    add-int/lit16 v3, v15, 0x860

    move-object v5, v8

    const/4 v8, 0x5

    move v1, v3

    move-object v3, v2

    move-object v2, v4

    move v4, v1

    move-object/from16 v1, p1

    move-object v6, v5

    move-object v5, v9

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->compute_authpath_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V

    move-object v4, v2

    move-object v2, v3

    move-object v1, v5

    move-object v5, v6

    add-int/lit16 v3, v15, 0x900

    iget-wide v8, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    and-long v8, v8, v16

    long-to-int v6, v8

    int-to-long v8, v6

    iput-wide v8, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    iget-wide v8, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    ushr-long v8, v8, v19

    iput-wide v8, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    add-int/lit8 v12, v12, 0x1

    move-object v9, v1

    move-object v8, v5

    move-object v6, v7

    move-object v5, v11

    move-object v7, v14

    const/4 v11, 0x0

    move-object/from16 v1, p1

    goto :goto_4

    :cond_4
    move-object v5, v8

    const/4 v3, 0x0

    invoke-direct {v0, v5, v3, v10}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    return-object v2
.end method

.method public generateSignature([B)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->crypto_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    return-void

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    return-void
.end method

.method verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    array-length v2, v1

    const/16 v3, 0x860

    new-array v6, v3, [B

    const/16 v3, 0x20

    new-array v11, v3, [B

    new-array v13, v3, [B

    const v4, 0xa028

    new-array v14, v4, [B

    const/16 v5, 0x420

    new-array v9, v5, [B

    if-ne v2, v4, :cond_6

    const/16 v2, 0x40

    new-array v2, v2, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_0

    aget-byte v10, p4, v8

    aput-byte v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-array v8, v3, [B

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_1

    aget-byte v12, v1, v10

    aput-byte v12, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1, v7, v14, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1, v8, v7, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v9, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v4, v0

    invoke-interface {v1, v0, v7, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v2, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    add-int v5, v3, v4

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v7, v5

    mul-int/lit8 v5, v4, 0x8

    shl-long/2addr v7, v5

    xor-long/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;-><init>()V

    const/16 v15, 0x28

    move-object/from16 v12, p1

    move-object/from16 v17, v2

    move-object/from16 v16, v9

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->horst_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    const/16 v2, 0x3428

    const/4 v2, 0x0

    const/16 v8, 0x3428

    :goto_3
    const/16 v5, 0xc

    if-ge v2, v5, :cond_3

    move-object/from16 v5, p1

    move-object v9, v13

    move-object v7, v14

    move-object/from16 v10, v16

    const/4 v15, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V

    move-object/from16 v17, v4

    move v12, v8

    move v4, v12

    add-int/lit16 v12, v4, 0x860

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v5, v11

    move-object/from16 v9, v16

    move v11, v4

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    move-object v6, v7

    const-wide/16 v7, 0x1f

    and-long/2addr v7, v0

    long-to-int v10, v7

    move-object v7, v14

    const/4 v14, 0x5

    move-object v9, v5

    move v4, v11

    move-object v8, v13

    move-object/from16 v13, v16

    move-object v11, v7

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v14}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->validate_authpath(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V

    move-object v14, v11

    move-object v13, v8

    const/4 v7, 0x5

    shr-long/2addr v0, v7

    add-int/lit16 v8, v4, 0x900

    add-int/lit8 v2, v2, 0x1

    move-object v11, v5

    move-object/from16 v4, v17

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_4
    if-ge v0, v3, :cond_5

    aget-byte v2, v13, v0

    add-int/lit16 v4, v0, 0x400

    aget-byte v4, v16, v4

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_5
    and-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature wrong size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public verifySignature([B[B)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z

    move-result p1

    return p1
.end method
