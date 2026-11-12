.class Lorg/bouncycastle/pqc/crypto/sphincs/Horst;
.super Ljava/lang/Object;


# static fields
.field static final HORST_K:I = 0x20

.field static final HORST_LOGT:I = 0x10

.field static final HORST_SIGBYTES:I = 0x3400

.field static final HORST_SKBYTES:I = 0x20

.field static final HORST_T:I = 0x10000

.field static final N_MASKS:I = 0x20


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static expand_seed([B[B)V
    .locals 6

    const-wide/32 v2, 0x200000

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->prg([BIJ[BI)V

    return-void
.end method

.method static horst_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I
    .locals 18

    const/high16 v0, 0x200000

    new-array v0, v0, [B

    const v1, 0x3fffe0

    new-array v3, v1, [B

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->expand_seed([B[B)V

    const/4 v2, 0x0

    :goto_0
    const/high16 v4, 0x10000

    const v9, 0xffff

    const/16 v10, 0x20

    if-ge v2, v4, :cond_0

    add-int/2addr v9, v2

    mul-int/lit8 v9, v9, 0x20

    mul-int/lit8 v4, v2, 0x20

    move-object/from16 v5, p0

    invoke-virtual {v5, v3, v9, v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v5, p0

    const/16 v2, 0x10

    const/4 v4, 0x1

    if-ge v11, v2, :cond_2

    rsub-int/lit8 v2, v11, 0x10

    shl-int v2, v4, v2

    sub-int/2addr v2, v4

    int-to-long v12, v2

    rsub-int/lit8 v2, v11, 0xf

    shl-int v14, v4, v2

    add-int/lit8 v2, v14, -0x1

    int-to-long v6, v2

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_1

    int-to-long v1, v15

    add-long/2addr v1, v6

    const-wide/16 v16, 0x20

    mul-long v1, v1, v16

    long-to-int v4, v1

    mul-int/lit8 v1, v15, 0x2

    int-to-long v1, v1

    add-long/2addr v1, v12

    mul-long v1, v1, v16

    long-to-int v2, v1

    mul-int/lit8 v8, v11, 0x40

    move-object v5, v3

    move-wide/from16 v16, v6

    move-object/from16 v7, p5

    move v6, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p0

    move-wide/from16 v6, v16

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x7e0

    move/from16 v1, p2

    const/16 v2, 0x7e0

    :goto_3
    const/16 v5, 0xfe0

    if-ge v2, v5, :cond_3

    add-int/lit8 v5, v1, 0x1

    aget-byte v6, v3, v2

    aput-byte v6, p1, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v10, :cond_8

    mul-int/lit8 v5, v2, 0x2

    aget-byte v6, p6, v5

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v4

    aget-byte v5, p6, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v6, v5

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v10, :cond_4

    add-int/lit8 v7, v1, 0x1

    mul-int/lit8 v8, v6, 0x20

    add-int/2addr v8, v5

    aget-byte v8, v0, v8

    aput-byte v8, p1, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v7

    goto :goto_5

    :cond_4
    add-int/2addr v6, v9

    const/4 v5, 0x0

    :goto_6
    const/16 v7, 0xa

    if-ge v5, v7, :cond_7

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v6, v6, -0x1

    :goto_7
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v10, :cond_6

    add-int/lit8 v8, v1, 0x1

    mul-int/lit8 v11, v6, 0x20

    add-int/2addr v11, v7

    aget-byte v11, v3, v11

    aput-byte v11, p1, v1

    add-int/lit8 v7, v7, 0x1

    move v1, v8

    goto :goto_8

    :cond_6
    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v10, :cond_9

    aget-byte v0, v3, v1

    aput-byte v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    const/16 v0, 0x3400

    return v0
.end method

.method static horst_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I
    .locals 15

    move-object/from16 v7, p2

    move/from16 v8, p3

    const/16 v1, 0x400

    new-array v1, v1, [B

    add-int/lit16 v2, v8, 0x800

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x8

    const/16 v12, 0x20

    if-ge v10, v12, :cond_8

    mul-int/lit8 v3, v10, 0x2

    aget-byte v4, p5, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    add-int/2addr v3, v5

    aget-byte v3, p5, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v11

    add-int/2addr v4, v3

    and-int/lit8 v3, v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {p0, v1, v9, v7, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v12, :cond_1

    add-int/lit8 v6, v3, 0x20

    add-int/lit8 v11, v2, 0x20

    add-int/2addr v11, v3

    aget-byte v11, v7, v11

    aput-byte v11, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, v12, v7, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_1

    add-int/lit8 v6, v2, 0x20

    add-int/2addr v6, v3

    aget-byte v6, v7, v6

    aput-byte v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x40

    move v11, v2

    const/4 v13, 0x1

    :goto_3
    const/16 v2, 0xa

    if-ge v13, v2, :cond_4

    ushr-int/lit8 v14, v4, 0x1

    and-int/lit8 v2, v14, 0x1

    if-nez v2, :cond_2

    add-int/lit8 v2, v13, -0x1

    mul-int/lit8 v6, v2, 0x40

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v1

    move-object v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v12, :cond_3

    add-int/lit8 v2, v0, 0x20

    add-int v3, v11, v0

    aget-byte v3, v7, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v13, -0x1

    mul-int/lit8 v6, v0, 0x40

    const/16 v2, 0x20

    const/4 v4, 0x0

    move-object v3, v1

    move-object v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v12, :cond_3

    add-int v2, v11, v0

    aget-byte v2, v7, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v11, v11, 0x20

    add-int/lit8 v13, v13, 0x1

    move v4, v14

    goto :goto_3

    :cond_4
    ushr-int/lit8 v13, v4, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x240

    const/4 v2, 0x0

    move-object v3, v1

    move-object v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v12, :cond_7

    mul-int/lit8 v2, v13, 0x20

    add-int/2addr v2, v8

    add-int/2addr v2, v0

    aget-byte v2, v7, v2

    aget-byte v3, v1, v0

    if-eq v2, v3, :cond_6

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v12, :cond_5

    aput-byte v9, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_5
    const/4 v0, -0x1

    return v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v10, v10, 0x1

    move v2, v11

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v12, :cond_9

    mul-int/lit8 v2, v10, 0x20

    mul-int/lit8 v0, v10, 0x40

    add-int v4, v8, v0

    const/16 v6, 0x280

    move-object v0, p0

    move-object/from16 v5, p4

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p2

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_9
    const/16 v0, 0x10

    if-ge v7, v0, :cond_a

    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v4, v7, 0x40

    const/16 v6, 0x2c0

    move-object v3, v1

    move-object v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_a
    if-ge v7, v11, :cond_b

    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v4, v7, 0x40

    const/16 v6, 0x300

    move-object v3, v1

    move-object v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    :goto_b
    const/4 v0, 0x4

    if-ge v7, v0, :cond_c

    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v4, v7, 0x40

    const/16 v6, 0x340

    move-object v3, v1

    move-object v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_c
    const/4 v7, 0x0

    :goto_c
    const/4 v0, 0x2

    if-ge v7, v0, :cond_d

    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v4, v7, 0x40

    const/16 v6, 0x380

    move-object v3, v1

    move-object v0, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_d
    const/4 v4, 0x0

    const/16 v6, 0x3c0

    const/4 v2, 0x0

    move-object v0, p0

    move-object/from16 v5, p4

    move-object v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    return v9
.end method
