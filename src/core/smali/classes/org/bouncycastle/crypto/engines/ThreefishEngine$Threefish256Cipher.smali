.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish256Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0xe

.field private static final ROTATION_0_1:I = 0x10

.field private static final ROTATION_1_0:I = 0x34

.field private static final ROTATION_1_1:I = 0x39

.field private static final ROTATION_2_0:I = 0x17

.field private static final ROTATION_2_1:I = 0x28

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x25

.field private static final ROTATION_4_0:I = 0x19

.field private static final ROTATION_4_1:I = 0x21

.field private static final ROTATION_5_0:I = 0x2e

.field private static final ROTATION_5_1:I = 0xc

.field private static final ROTATION_6_0:I = 0x3a

.field private static final ROTATION_6_1:I = 0x16

.field private static final ROTATION_7_0:I = 0x20

.field private static final ROTATION_7_1:I = 0x20


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v3

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    array-length v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    aget-wide v7, p1, v5

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x3

    aget-wide v16, p1, v15

    const/16 v18, 0x11

    const/16 v5, 0x11

    const/16 v18, 0x0

    :goto_0
    if-lt v5, v9, :cond_0

    aget v19, v3, v5

    aget v20, v4, v5

    add-int/lit8 v21, v19, 0x1

    aget-wide v22, v1, v21

    sub-long v7, v7, v22

    add-int/lit8 v22, v19, 0x2

    aget-wide v23, v1, v22

    add-int/lit8 v25, v20, 0x1

    aget-wide v26, v2, v25

    add-long v23, v23, v26

    sub-long v10, v10, v23

    add-int/lit8 v23, v19, 0x3

    aget-wide v26, v1, v23

    add-int/lit8 v24, v20, 0x2

    aget-wide v28, v2, v24

    add-long v26, v26, v28

    sub-long v13, v13, v26

    add-int/lit8 v24, v19, 0x4

    aget-wide v26, v1, v24

    move-wide/from16 v28, v10

    const/16 v24, 0x1

    int-to-long v9, v5

    add-long v26, v26, v9

    const-wide/16 v30, 0x1

    add-long v26, v26, v30

    move-wide/from16 v31, v13

    const/16 v30, 0x2

    sub-long v12, v16, v26

    const/16 v11, 0x20

    invoke-static {v12, v13, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v7, v12

    move-object/from16 v27, v1

    move-wide/from16 v16, v7

    move-wide/from16 v6, v28

    move-wide/from16 v0, v31

    invoke-static {v6, v7, v11, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const/16 v8, 0x3a

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-wide/from16 v2, v16

    invoke-static {v6, v7, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v2, v6

    const/16 v8, 0x16

    invoke-static {v12, v13, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v0, v11

    const/16 v8, 0x2e

    invoke-static {v11, v12, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v2, v11

    const/16 v8, 0xc

    invoke-static {v6, v7, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const/16 v8, 0x19

    invoke-static {v6, v7, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v2, v6

    const/16 v8, 0x21

    invoke-static {v11, v12, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v0, v11

    aget-wide v13, v27, v19

    sub-long/2addr v2, v13

    aget-wide v13, v27, v21

    aget-wide v16, v28, v20

    add-long v13, v13, v16

    sub-long/2addr v6, v13

    aget-wide v13, v27, v22

    aget-wide v16, v28, v25

    add-long v13, v13, v16

    sub-long/2addr v0, v13

    aget-wide v13, v27, v23

    add-long/2addr v13, v9

    sub-long/2addr v11, v13

    const/4 v9, 0x5

    invoke-static {v11, v12, v9, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v2, v10

    const/16 v8, 0x25

    invoke-static {v6, v7, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const/16 v8, 0x17

    invoke-static {v6, v7, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v2, v6

    const/16 v8, 0x28

    invoke-static {v10, v11, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v0, v10

    const/16 v8, 0x34

    invoke-static {v10, v11, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v2, v10

    const/16 v8, 0x39

    invoke-static {v6, v7, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const/16 v8, 0xe

    invoke-static {v6, v7, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v2, v6

    const/16 v8, 0x10

    invoke-static {v10, v11, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v13, v0, v16

    add-int/lit8 v5, v5, -0x2

    move-object/from16 v0, p0

    move-wide v10, v6

    move-object/from16 v1, v27

    const/4 v6, 0x5

    const/4 v9, 0x1

    const/4 v12, 0x2

    move-wide v7, v2

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    goto/16 :goto_0

    :cond_0
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    const/16 v24, 0x1

    const/16 v30, 0x2

    aget-wide v0, v27, v18

    sub-long/2addr v7, v0

    aget-wide v0, v27, v24

    aget-wide v2, v28, v18

    add-long/2addr v0, v2

    sub-long/2addr v10, v0

    aget-wide v0, v27, v30

    aget-wide v2, v28, v24

    add-long/2addr v0, v2

    sub-long/2addr v13, v0

    aget-wide v0, v27, v15

    sub-long v16, v16, v0

    aput-wide v7, p2, v18

    aput-wide v10, p2, v24

    aput-wide v13, p2, v30

    aput-wide v16, p2, v15

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

.method encryptBlock([J[J)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v3

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    array-length v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    aget-wide v7, p1, v5

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x3

    aget-wide v16, p1, v15

    aget-wide v18, v1, v5

    add-long v7, v7, v18

    aget-wide v18, v1, v9

    aget-wide v20, v2, v5

    add-long v18, v18, v20

    add-long v10, v10, v18

    aget-wide v18, v1, v12

    aget-wide v20, v2, v9

    add-long v18, v18, v20

    add-long v13, v13, v18

    aget-wide v18, v1, v15

    add-long v16, v16, v18

    move-wide/from16 v29, v16

    move-wide/from16 v17, v13

    move-wide/from16 v12, v29

    const/4 v14, 0x1

    const/16 v16, 0x2

    const/16 v19, 0x0

    :goto_0
    const/16 v5, 0x12

    if-ge v14, v5, :cond_0

    aget v5, v3, v14

    aget v20, v4, v14

    add-long/2addr v7, v10

    const/16 v21, 0x1

    const/16 v9, 0xe

    invoke-static {v10, v11, v9, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-wide/from16 v23, v7

    add-long v6, v17, v12

    const/16 v8, 0x10

    invoke-static {v12, v13, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-object/from16 v25, v1

    add-long v0, v23, v11

    const/16 v8, 0x34

    invoke-static {v11, v12, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long/2addr v6, v9

    const/16 v8, 0x39

    invoke-static {v9, v10, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v0, v8

    const/16 v10, 0x17

    invoke-static {v8, v9, v10, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v6, v11

    const/16 v10, 0x28

    invoke-static {v11, v12, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v0, v10

    const/4 v12, 0x5

    invoke-static {v10, v11, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v6, v8

    const/16 v13, 0x25

    invoke-static {v8, v9, v13, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    aget-wide v17, v25, v5

    add-long v0, v0, v17

    add-int/lit8 v13, v5, 0x1

    aget-wide v17, v25, v13

    aget-wide v22, v2, v20

    add-long v17, v17, v22

    add-long v8, v8, v17

    add-int/lit8 v17, v5, 0x2

    aget-wide v22, v25, v17

    add-int/lit8 v18, v20, 0x1

    aget-wide v26, v2, v18

    add-long v22, v22, v26

    add-long v6, v6, v22

    add-int/lit8 v22, v5, 0x3

    aget-wide v23, v25, v22

    move/from16 p1, v13

    int-to-long v12, v14

    add-long v23, v23, v12

    add-long v10, v10, v23

    add-long/2addr v0, v8

    const/16 v23, 0x3

    const/16 v15, 0x19

    invoke-static {v8, v9, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v6, v10

    const/16 v15, 0x21

    invoke-static {v10, v11, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v0, v10

    const/16 v15, 0x2e

    invoke-static {v10, v11, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v6, v8

    const/16 v15, 0xc

    invoke-static {v8, v9, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v0, v8

    const/16 v15, 0x3a

    invoke-static {v8, v9, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v6, v10

    const/16 v15, 0x16

    invoke-static {v10, v11, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v0, v10

    const/16 v15, 0x20

    invoke-static {v10, v11, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v6, v8

    invoke-static {v8, v9, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    aget-wide v27, v25, p1

    add-long v0, v0, v27

    aget-wide v27, v25, v17

    aget-wide v17, v2, v18

    add-long v27, v27, v17

    add-long v8, v8, v27

    aget-wide v17, v25, v22

    add-int/lit8 v20, v20, 0x2

    aget-wide v27, v2, v20

    add-long v17, v17, v27

    add-long v17, v6, v17

    add-int/lit8 v5, v5, 0x4

    aget-wide v5, v25, v5

    add-long/2addr v5, v12

    const-wide/16 v12, 0x1

    add-long/2addr v5, v12

    add-long v12, v10, v5

    add-int/lit8 v14, v14, 0x2

    move-wide v10, v8

    const/4 v6, 0x5

    const/4 v9, 0x1

    const/4 v15, 0x3

    move-wide v7, v0

    move-object/from16 v1, v25

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    const/16 v21, 0x1

    const/16 v23, 0x3

    aput-wide v7, p2, v19

    aput-wide v10, p2, v21

    aput-wide v17, p2, v16

    aput-wide v12, p2, v23

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
