.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish512Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x2e

.field private static final ROTATION_0_1:I = 0x24

.field private static final ROTATION_0_2:I = 0x13

.field private static final ROTATION_0_3:I = 0x25

.field private static final ROTATION_1_0:I = 0x21

.field private static final ROTATION_1_1:I = 0x1b

.field private static final ROTATION_1_2:I = 0xe

.field private static final ROTATION_1_3:I = 0x2a

.field private static final ROTATION_2_0:I = 0x11

.field private static final ROTATION_2_1:I = 0x31

.field private static final ROTATION_2_2:I = 0x24

.field private static final ROTATION_2_3:I = 0x27

.field private static final ROTATION_3_0:I = 0x2c

.field private static final ROTATION_3_1:I = 0x9

.field private static final ROTATION_3_2:I = 0x36

.field private static final ROTATION_3_3:I = 0x38

.field private static final ROTATION_4_0:I = 0x27

.field private static final ROTATION_4_1:I = 0x1e

.field private static final ROTATION_4_2:I = 0x22

.field private static final ROTATION_4_3:I = 0x18

.field private static final ROTATION_5_0:I = 0xd

.field private static final ROTATION_5_1:I = 0x32

.field private static final ROTATION_5_2:I = 0xa

.field private static final ROTATION_5_3:I = 0x11

.field private static final ROTATION_6_0:I = 0x19

.field private static final ROTATION_6_1:I = 0x1d

.field private static final ROTATION_6_2:I = 0x27

.field private static final ROTATION_6_3:I = 0x2b

.field private static final ROTATION_7_0:I = 0x8

.field private static final ROTATION_7_1:I = 0x23

.field private static final ROTATION_7_2:I = 0x38

.field private static final ROTATION_7_3:I = 0x16


# direct methods
.method protected constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method public decryptBlock([J[J)V
    .locals 51

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v3

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    array-length v5, v1

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    array-length v5, v2

    const/4 v7, 0x5

    if-ne v5, v7, :cond_1

    const/4 v5, 0x0

    aget-wide v8, p1, v5

    const/4 v10, 0x1

    aget-wide v11, p1, v10

    const/4 v13, 0x2

    aget-wide v14, p1, v13

    const/16 v16, 0x3

    aget-wide v17, p1, v16

    const/16 v19, 0x4

    aget-wide v20, p1, v19

    aget-wide v22, p1, v7

    const/16 v24, 0x6

    aget-wide v25, p1, v24

    const/16 v27, 0x7

    aget-wide v28, p1, v27

    const/16 v5, 0x11

    const/16 v30, 0x0

    :goto_0
    if-lt v5, v10, :cond_0

    aget v31, v3, v5

    aget v32, v4, v5

    add-int/lit8 v33, v31, 0x1

    aget-wide v34, v1, v33

    sub-long v8, v8, v34

    add-int/lit8 v34, v31, 0x2

    aget-wide v35, v1, v34

    sub-long v11, v11, v35

    add-int/lit8 v35, v31, 0x3

    aget-wide v36, v1, v35

    sub-long v14, v14, v36

    add-int/lit8 v36, v31, 0x4

    aget-wide v37, v1, v36

    const/16 v40, 0x5

    sub-long v6, v17, v37

    add-int/lit8 v17, v31, 0x5

    aget-wide v37, v1, v17

    move-wide/from16 v42, v14

    const/16 v41, 0x2

    sub-long v13, v20, v37

    add-int/lit8 v15, v31, 0x6

    aget-wide v20, v1, v15

    add-int/lit8 v18, v32, 0x1

    aget-wide v37, v2, v18

    add-long v20, v20, v37

    move-wide/from16 v44, v11

    const/16 v37, 0x1

    sub-long v10, v22, v20

    add-int/lit8 v12, v31, 0x7

    aget-wide v20, v1, v12

    add-int/lit8 v22, v32, 0x2

    aget-wide v22, v2, v22

    add-long v20, v20, v22

    move-object/from16 v38, v1

    sub-long v0, v25, v20

    add-int/lit8 v20, v31, 0x8

    aget-wide v20, v38, v20

    move-object/from16 v46, v2

    move-object/from16 v47, v3

    int-to-long v2, v5

    add-long v20, v20, v2

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v22, v2

    sub-long v2, v28, v20

    move-object/from16 v48, v4

    const/16 v4, 0x8

    move/from16 p1, v5

    move-wide/from16 v49, v6

    move-wide/from16 v5, v44

    invoke-static {v5, v6, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v6, 0x23

    invoke-static {v2, v3, v6, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v8, v2

    const/16 v6, 0x38

    move-wide/from16 v20, v2

    move-wide/from16 v2, v42

    invoke-static {v10, v11, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v2, v10

    const/16 v7, 0x16

    move-wide/from16 v25, v2

    move-wide/from16 v2, v49

    invoke-static {v2, v3, v7, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v13, v2

    const/16 v7, 0x19

    invoke-static {v4, v5, v7, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    const/16 v7, 0x1d

    invoke-static {v2, v3, v7, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v7, 0x27

    invoke-static {v10, v11, v7, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const/16 v6, 0x2b

    move-wide/from16 v42, v8

    move-wide/from16 v7, v20

    move-wide/from16 v20, v2

    move-wide/from16 v2, v25

    invoke-static {v7, v8, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v2, v6

    const/16 v8, 0xd

    invoke-static {v4, v5, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v8, 0x32

    invoke-static {v6, v7, v8, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v13, v6

    const/16 v8, 0xa

    invoke-static {v10, v11, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v0, v8

    move-wide/from16 v10, v20

    move-wide/from16 v20, v0

    move-wide/from16 v0, v42

    move/from16 v42, v12

    const/16 v12, 0x11

    invoke-static {v10, v11, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v0, v10

    const/16 v12, 0x27

    invoke-static {v4, v5, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v12, 0x1e

    invoke-static {v10, v11, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v2, v10

    const/16 v12, 0x22

    invoke-static {v8, v9, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v13, v8

    const/16 v12, 0x18

    move-wide/from16 v25, v0

    move-wide/from16 v0, v20

    invoke-static {v6, v7, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v0, v6

    aget-wide v20, v38, v31

    move-wide/from16 v43, v0

    sub-long v0, v25, v20

    aget-wide v20, v38, v33

    sub-long v4, v4, v20

    aget-wide v20, v38, v34

    sub-long v2, v2, v20

    aget-wide v20, v38, v35

    sub-long v10, v10, v20

    aget-wide v20, v38, v36

    sub-long v13, v13, v20

    aget-wide v20, v38, v17

    aget-wide v25, v46, v32

    add-long v20, v20, v25

    sub-long v8, v8, v20

    aget-wide v20, v38, v15

    aget-wide v17, v46, v18

    add-long v20, v20, v17

    move-wide/from16 v17, v6

    sub-long v6, v43, v20

    aget-wide v20, v38, v42

    add-long v20, v20, v22

    move-wide/from16 v22, v10

    sub-long v10, v17, v20

    const/16 v12, 0x2c

    invoke-static {v4, v5, v12, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v12, 0x9

    invoke-static {v10, v11, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v0, v10

    const/16 v12, 0x36

    invoke-static {v8, v9, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v2, v8

    move-wide/from16 v17, v2

    move-wide/from16 v2, v22

    const/16 v12, 0x38

    invoke-static {v2, v3, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v13, v2

    const/16 v12, 0x11

    invoke-static {v4, v5, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    const/16 v15, 0x31

    invoke-static {v2, v3, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    const/16 v15, 0x24

    invoke-static {v8, v9, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v0, v8

    move-wide/from16 v20, v13

    move-wide/from16 v12, v17

    const/16 v14, 0x27

    invoke-static {v10, v11, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v12, v10

    const/16 v14, 0x21

    invoke-static {v4, v5, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v14, 0x1b

    move-wide/from16 v17, v12

    move-wide/from16 v12, v20

    invoke-static {v10, v11, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v12, v10

    const/16 v14, 0xe

    invoke-static {v8, v9, v14, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v14, 0x2a

    invoke-static {v2, v3, v14, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v14, 0x2e

    invoke-static {v4, v5, v14, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    move-wide/from16 v20, v0

    move-wide/from16 v0, v17

    invoke-static {v2, v3, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v17

    sub-long v14, v0, v17

    const/16 v0, 0x13

    invoke-static {v8, v9, v0, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v22

    sub-long v0, v12, v22

    const/16 v2, 0x25

    invoke-static {v10, v11, v2, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v25, v6, v28

    add-int/lit8 v2, p1, -0x2

    move-wide v11, v4

    move-wide/from16 v8, v20

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    const/16 v6, 0x11

    const/4 v7, 0x5

    const/4 v10, 0x1

    const/4 v13, 0x2

    move-wide/from16 v20, v0

    move v5, v2

    move-object/from16 v1, v38

    move-object/from16 v2, v46

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v38, v1

    move-object/from16 v46, v2

    const/16 v37, 0x1

    const/16 v40, 0x5

    const/16 v41, 0x2

    aget-wide v0, v38, v30

    sub-long/2addr v8, v0

    aget-wide v0, v38, v37

    sub-long/2addr v11, v0

    aget-wide v0, v38, v41

    sub-long/2addr v14, v0

    aget-wide v0, v38, v16

    sub-long v17, v17, v0

    aget-wide v0, v38, v19

    sub-long v20, v20, v0

    aget-wide v0, v38, v40

    aget-wide v2, v46, v30

    add-long/2addr v0, v2

    sub-long v22, v22, v0

    aget-wide v0, v38, v24

    aget-wide v2, v46, v37

    add-long/2addr v0, v2

    sub-long v25, v25, v0

    aget-wide v0, v38, v27

    sub-long v28, v28, v0

    aput-wide v8, p2, v30

    aput-wide v11, p2, v37

    aput-wide v14, p2, v41

    aput-wide v17, p2, v16

    aput-wide v20, p2, v19

    aput-wide v22, p2, v40

    aput-wide v25, p2, v24

    aput-wide v28, p2, v27

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

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

.method public encryptBlock([J[J)V
    .locals 49

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v3

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    array-length v5, v1

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    array-length v5, v2

    const/4 v7, 0x5

    if-ne v5, v7, :cond_1

    const/4 v5, 0x0

    aget-wide v8, p1, v5

    const/4 v10, 0x1

    aget-wide v11, p1, v10

    const/4 v13, 0x2

    aget-wide v14, p1, v13

    const/16 v16, 0x3

    aget-wide v17, p1, v16

    const/16 v19, 0x4

    aget-wide v20, p1, v19

    aget-wide v22, p1, v7

    const/16 v24, 0x6

    aget-wide v25, p1, v24

    const/16 v27, 0x7

    aget-wide v28, p1, v27

    aget-wide v30, v1, v5

    add-long v8, v8, v30

    aget-wide v30, v1, v10

    add-long v11, v11, v30

    aget-wide v30, v1, v13

    add-long v14, v14, v30

    aget-wide v30, v1, v16

    add-long v17, v17, v30

    aget-wide v30, v1, v19

    add-long v20, v20, v30

    aget-wide v30, v1, v7

    aget-wide v32, v2, v5

    add-long v30, v30, v32

    add-long v22, v22, v30

    aget-wide v30, v1, v24

    aget-wide v32, v2, v10

    add-long v30, v30, v32

    add-long v25, v25, v30

    aget-wide v30, v1, v27

    add-long v28, v28, v30

    move-wide/from16 v47, v20

    move-wide/from16 v20, v8

    move-wide/from16 v9, v28

    move-wide/from16 v28, v25

    move-wide/from16 v25, v14

    move-wide/from16 v13, v22

    move-wide/from16 v22, v47

    move-wide/from16 v7, v17

    const/16 p1, 0x2

    const/4 v5, 0x1

    const/16 v17, 0x5

    const/16 v18, 0x0

    const/16 v30, 0x1

    :goto_0
    const/16 v15, 0x12

    if-ge v5, v15, :cond_0

    aget v15, v3, v5

    aget v31, v4, v5

    move-wide/from16 v33, v7

    add-long v6, v20, v11

    const/16 v8, 0x2e

    invoke-static {v11, v12, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-object v8, v1

    add-long v0, v25, v33

    move-object/from16 v35, v2

    const/16 v2, 0x24

    move-object/from16 v36, v3

    move-object/from16 v37, v4

    move-wide/from16 v3, v33

    invoke-static {v3, v4, v2, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v3

    move-wide/from16 v25, v3

    add-long v2, v22, v13

    const/16 v4, 0x13

    invoke-static {v13, v14, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v33, v0

    add-long v0, v28, v9

    const/16 v4, 0x25

    invoke-static {v9, v10, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-wide/from16 v21, v0

    add-long v0, v33, v11

    const/16 v4, 0x21

    invoke-static {v11, v12, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long/2addr v2, v9

    const/16 v4, 0x1b

    invoke-static {v9, v10, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-wide/from16 v28, v0

    add-long v0, v21, v13

    const/16 v4, 0xe

    invoke-static {v13, v14, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long v6, v6, v25

    const/16 v4, 0x2a

    move-wide/from16 v21, v0

    move-wide/from16 v0, v25

    invoke-static {v0, v1, v4, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v2, v11

    const/16 v4, 0x11

    invoke-static {v11, v12, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v25, v2

    add-long v2, v21, v0

    const/16 v4, 0x31

    invoke-static {v0, v1, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v6, v13

    const/16 v4, 0x24

    invoke-static {v13, v14, v4, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v20, v2

    add-long v2, v28, v9

    const/16 v4, 0x27

    invoke-static {v9, v10, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move/from16 v33, v5

    add-long v4, v20, v11

    move-wide/from16 v20, v2

    const/16 v2, 0x2c

    invoke-static {v11, v12, v2, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v6, v9

    const/16 v11, 0x9

    invoke-static {v9, v10, v11, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long v11, v20, v13

    move-wide/from16 v20, v2

    const/16 v2, 0x36

    invoke-static {v13, v14, v2, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v13, v25, v0

    move-wide/from16 v25, v2

    const/16 v2, 0x38

    invoke-static {v0, v1, v2, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    aget-wide v28, v8, v15

    add-long v6, v6, v28

    add-int/lit8 v3, v15, 0x1

    aget-wide v28, v8, v3

    move/from16 v34, v3

    add-long v2, v20, v28

    add-int/lit8 v20, v15, 0x2

    aget-wide v28, v8, v20

    add-long v11, v11, v28

    add-int/lit8 v21, v15, 0x3

    aget-wide v28, v8, v21

    add-long v0, v0, v28

    add-int/lit8 v28, v15, 0x4

    aget-wide v38, v8, v28

    add-long v13, v13, v38

    add-int/lit8 v29, v15, 0x5

    aget-wide v38, v8, v29

    aget-wide v40, v35, v31

    add-long v38, v38, v40

    move-wide/from16 v40, v4

    add-long v4, v25, v38

    add-int/lit8 v25, v15, 0x6

    aget-wide v38, v8, v25

    add-int/lit8 v26, v31, 0x1

    aget-wide v42, v35, v26

    add-long v38, v38, v42

    add-long v38, v40, v38

    add-int/lit8 v40, v15, 0x7

    aget-wide v41, v8, v40

    move-wide/from16 v43, v6

    move/from16 v6, v33

    move-object/from16 v33, v8

    int-to-long v7, v6

    add-long v41, v41, v7

    add-long v9, v9, v41

    move/from16 v41, v6

    move-wide/from16 v45, v7

    add-long v6, v43, v2

    const/16 v8, 0x27

    invoke-static {v2, v3, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v11, v0

    const/16 v8, 0x1e

    invoke-static {v0, v1, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v13, v4

    const/16 v8, 0x22

    invoke-static {v4, v5, v8, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v42, v6

    add-long v6, v38, v9

    const/16 v8, 0x18

    invoke-static {v9, v10, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v11, v2

    const/16 v10, 0xd

    invoke-static {v2, v3, v10, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v13, v8

    const/16 v10, 0x32

    invoke-static {v8, v9, v10, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v6, v4

    const/16 v10, 0xa

    invoke-static {v4, v5, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v38, v6

    add-long v6, v42, v0

    const/16 v10, 0x11

    invoke-static {v0, v1, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v13, v2

    const/16 v10, 0x19

    invoke-static {v2, v3, v10, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v42, v6

    add-long v6, v38, v0

    const/16 v10, 0x1d

    invoke-static {v0, v1, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v38, v6

    add-long v6, v42, v4

    const/16 v10, 0x27

    invoke-static {v4, v5, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v11, v8

    const/16 v10, 0x2b

    invoke-static {v8, v9, v10, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v42, v6

    add-long v6, v38, v2

    const/16 v10, 0x8

    invoke-static {v2, v3, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v38, v11

    const/16 v12, 0x8

    add-long v10, v42, v8

    const/16 v22, 0x8

    const/16 v12, 0x23

    invoke-static {v8, v9, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v42, v2

    add-long v2, v38, v4

    const/16 v12, 0x38

    invoke-static {v4, v5, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v13, v0

    const/16 v12, 0x16

    invoke-static {v0, v1, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    aget-wide v38, v33, v34

    add-long v10, v10, v38

    aget-wide v38, v33, v20

    add-long v38, v42, v38

    aget-wide v20, v33, v21

    add-long v2, v2, v20

    aget-wide v20, v33, v28

    add-long v0, v0, v20

    aget-wide v20, v33, v29

    add-long v13, v13, v20

    aget-wide v20, v33, v25

    aget-wide v25, v35, v26

    add-long v20, v20, v25

    add-long v4, v4, v20

    aget-wide v20, v33, v40

    add-int/lit8 v31, v31, 0x2

    aget-wide v25, v35, v31

    add-long v20, v20, v25

    add-long v28, v6, v20

    add-int/lit8 v15, v15, 0x8

    aget-wide v6, v33, v15

    add-long v6, v6, v45

    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    add-long/2addr v6, v8

    add-int/lit8 v8, v41, 0x2

    move-wide/from16 v25, v2

    move-wide/from16 v20, v10

    move-wide/from16 v22, v13

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-wide/from16 v11, v38

    move-wide v13, v4

    move-wide v9, v6

    move v5, v8

    move-object/from16 v4, v37

    const/16 v6, 0x11

    move-wide v7, v0

    move-object/from16 v1, v33

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    move-wide v3, v7

    aput-wide v20, p2, v18

    aput-wide v11, p2, v30

    aput-wide v25, p2, p1

    aput-wide v3, p2, v16

    aput-wide v22, p2, v19

    aput-wide v13, p2, v17

    aput-wide v28, p2, v24

    aput-wide v9, p2, v27

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

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
