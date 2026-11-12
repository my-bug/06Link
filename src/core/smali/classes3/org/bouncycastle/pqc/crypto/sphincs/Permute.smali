.class Lorg/bouncycastle/pqc/crypto/sphincs/Permute;
.super Ljava/lang/Object;


# static fields
.field private static final CHACHA_ROUNDS:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static permute(I[I)V
    .locals 40

    move-object/from16 v0, p1

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    rem-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v4, 0x1

    aget v5, v0, v4

    const/4 v6, 0x2

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v9, v0, v8

    const/4 v10, 0x4

    aget v11, v0, v10

    const/4 v12, 0x5

    aget v13, v0, v12

    const/4 v14, 0x6

    aget v15, v0, v14

    const/16 v16, 0x0

    const/4 v1, 0x7

    aget v17, v0, v1

    const/16 v18, 0x1

    const/16 v4, 0x8

    aget v19, v0, v4

    const/16 v20, 0x9

    aget v21, v0, v20

    const/16 v22, 0xa

    aget v23, v0, v22

    const/16 v24, 0xb

    aget v25, v0, v24

    const/16 v26, 0x2

    const/16 v6, 0xc

    aget v27, v0, v6

    const/16 v28, 0xd

    aget v29, v0, v28

    const/16 v30, 0xe

    aget v31, v0, v30

    const/16 v32, 0xf

    aget v33, v0, v32

    move/from16 v34, v33

    move/from16 v33, v31

    move/from16 v31, v29

    move/from16 v29, v27

    move/from16 v27, v25

    move/from16 v25, v23

    move/from16 v23, v21

    move/from16 v21, v19

    move/from16 v19, v17

    move/from16 v17, v15

    move v15, v13

    move v13, v11

    move v11, v9

    move v9, v7

    move v7, v5

    move v5, v3

    move/from16 v3, p0

    :goto_0
    if-lez v3, :cond_0

    add-int/2addr v5, v13

    const/16 v35, 0x3

    xor-int v8, v29, v5

    invoke-static {v8, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v8

    add-int v21, v21, v8

    xor-int v13, v13, v21

    invoke-static {v13, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v13

    add-int/2addr v5, v13

    xor-int/2addr v8, v5

    invoke-static {v8, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v8

    add-int v21, v21, v8

    xor-int v13, v13, v21

    invoke-static {v13, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v13

    add-int/2addr v7, v15

    const/16 v36, 0x4

    xor-int v10, v31, v7

    invoke-static {v10, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    add-int v23, v23, v10

    xor-int v15, v15, v23

    invoke-static {v15, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    add-int/2addr v7, v15

    xor-int/2addr v10, v7

    invoke-static {v10, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    add-int v23, v23, v10

    xor-int v15, v15, v23

    invoke-static {v15, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    add-int v9, v9, v17

    const/16 v37, 0x5

    xor-int v12, v33, v9

    invoke-static {v12, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    add-int v25, v25, v12

    const/16 v38, 0x6

    xor-int v14, v17, v25

    invoke-static {v14, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v14

    add-int/2addr v9, v14

    xor-int/2addr v12, v9

    invoke-static {v12, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    add-int v25, v25, v12

    xor-int v14, v14, v25

    invoke-static {v14, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v14

    add-int v11, v11, v19

    xor-int v1, v34, v11

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    add-int v27, v27, v1

    xor-int v2, v19, v27

    invoke-static {v2, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v11, v2

    xor-int/2addr v1, v11

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    add-int v27, v27, v1

    xor-int v2, v2, v27

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v5, v15

    xor-int/2addr v1, v5

    const/16 v4, 0x10

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    add-int v25, v25, v1

    xor-int v4, v15, v25

    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v4

    add-int/2addr v5, v4

    xor-int/2addr v1, v5

    const/16 v15, 0x8

    invoke-static {v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v34

    add-int v25, v25, v34

    xor-int v1, v4, v25

    const/4 v4, 0x7

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    add-int/2addr v7, v14

    xor-int v1, v8, v7

    const/16 v4, 0x10

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    add-int v27, v27, v1

    xor-int v4, v14, v27

    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v4

    add-int/2addr v7, v4

    xor-int/2addr v1, v7

    const/16 v8, 0x8

    invoke-static {v1, v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v29

    add-int v27, v27, v29

    xor-int v1, v4, v27

    const/4 v4, 0x7

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v17

    add-int/2addr v9, v2

    xor-int v1, v10, v9

    const/16 v4, 0x10

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    add-int v21, v21, v1

    xor-int v2, v2, v21

    invoke-static {v2, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v9, v2

    xor-int/2addr v1, v9

    const/16 v8, 0x8

    invoke-static {v1, v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v31

    add-int v21, v21, v31

    xor-int v1, v2, v21

    const/4 v4, 0x7

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v19

    add-int/2addr v11, v13

    xor-int v1, v12, v11

    const/16 v4, 0x10

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    add-int v23, v23, v1

    xor-int v2, v13, v23

    invoke-static {v2, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v11, v2

    xor-int/2addr v1, v11

    const/16 v8, 0x8

    invoke-static {v1, v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v33

    add-int v23, v23, v33

    xor-int v1, v2, v23

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v13

    add-int/lit8 v3, v3, -0x2

    const/4 v1, 0x7

    const/16 v2, 0x10

    const/16 v4, 0x8

    const/4 v8, 0x3

    const/4 v10, 0x4

    const/4 v12, 0x5

    const/4 v14, 0x6

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x7

    const/16 v35, 0x3

    const/16 v36, 0x4

    const/16 v37, 0x5

    const/16 v38, 0x6

    aput v5, v0, v16

    aput v7, v0, v18

    aput v9, v0, v26

    aput v11, v0, v35

    aput v13, v0, v36

    aput v15, v0, v37

    aput v17, v0, v38

    aput v19, v0, v2

    const/16 v39, 0x8

    aput v21, v0, v39

    aput v23, v0, v20

    aput v25, v0, v22

    aput v27, v0, v24

    aput v29, v0, v6

    aput v31, v0, v28

    aput v33, v0, v30

    aput v34, v0, v32

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rounds must be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected static rotl(II)I
    .locals 1

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method chacha_permute([B[B)V
    .locals 5

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x4

    invoke-static {p2, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0xc

    invoke-static {p2, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->permute(I[I)V

    :goto_1
    if-ge v2, v0, :cond_1

    aget p2, v1, v2

    mul-int/lit8 v3, v2, 0x4

    invoke-static {p2, p1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
