.class Lorg/bouncycastle/pqc/crypto/sphincs/Tree;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static gen_leaf_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 9

    const/16 v0, 0x20

    new-array v5, v0, [B

    const/16 v0, 0x860

    new-array v3, v0, [B

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    const/4 v0, 0x0

    invoke-static {p0, v5, v0, p5, p6}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    move-object p3, v3

    move-object p5, v7

    move p6, v8

    const/4 p4, 0x0

    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    return-void
.end method

.method static l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V
    .locals 13

    move/from16 v7, p4

    const/16 v0, 0x43

    const/4 v8, 0x0

    const/16 v9, 0x43

    const/4 v10, 0x0

    :goto_0
    const/4 v0, 0x7

    const/16 v11, 0x20

    if-ge v10, v0, :cond_2

    const/4 v12, 0x0

    :goto_1
    ushr-int/lit8 v0, v9, 0x1

    if-ge v12, v0, :cond_0

    mul-int/lit8 v0, v12, 0x20

    add-int v2, v7, v0

    mul-int/lit8 v0, v12, 0x40

    add-int v4, v7, v0

    mul-int/lit8 v0, v10, 0x40

    add-int v6, p6, v0

    move-object/from16 v3, p3

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v1, p3

    and-int/lit8 v2, v9, 0x1

    if-eqz v2, :cond_1

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x20

    add-int v2, v7, v9

    mul-int/lit8 v3, v0, 0x20

    add-int/2addr v3, v7

    invoke-static {v1, v2, v1, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v9, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v1, p3

    invoke-static {v1, v7, p1, p2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static treehash(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V
    .locals 17

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    move-object/from16 v0, p5

    invoke-direct {v6, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    add-int/lit8 v0, p3, 0x1

    mul-int/lit8 v1, v0, 0x20

    new-array v8, v1, [B

    new-array v14, v0, [I

    iget-wide v0, v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/4 v15, 0x1

    shl-int v2, v15, p3

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v7, v0

    const/16 v16, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-wide v0, v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    int-to-long v2, v7

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    mul-int/lit8 v2, v9, 0x20

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object v1, v8

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->gen_leaf_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    aput v16, v14, v9

    add-int/2addr v9, v15

    move v0, v9

    :goto_1
    if-le v0, v15, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget v1, v14, v1

    add-int/lit8 v2, v0, -0x2

    aget v3, v14, v2

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x40

    mul-int/lit8 v9, v2, 0x20

    add-int v13, p7, v1

    move-object v10, v8

    move v11, v9

    move-object/from16 v12, p6

    move v1, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    aget v3, v14, v2

    add-int/2addr v3, v15

    aput v3, v14, v2

    add-int/lit8 v0, v0, -0x1

    move v7, v1

    goto :goto_1

    :cond_0
    move v1, v7

    iget-wide v2, v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move v9, v0

    move v7, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    add-int v1, p2, v0

    aget-byte v2, v8, v0

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
