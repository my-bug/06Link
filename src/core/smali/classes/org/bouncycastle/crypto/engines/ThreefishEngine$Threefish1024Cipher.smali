.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish1024Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x18

.field private static final ROTATION_0_1:I = 0xd

.field private static final ROTATION_0_2:I = 0x8

.field private static final ROTATION_0_3:I = 0x2f

.field private static final ROTATION_0_4:I = 0x8

.field private static final ROTATION_0_5:I = 0x11

.field private static final ROTATION_0_6:I = 0x16

.field private static final ROTATION_0_7:I = 0x25

.field private static final ROTATION_1_0:I = 0x26

.field private static final ROTATION_1_1:I = 0x13

.field private static final ROTATION_1_2:I = 0xa

.field private static final ROTATION_1_3:I = 0x37

.field private static final ROTATION_1_4:I = 0x31

.field private static final ROTATION_1_5:I = 0x12

.field private static final ROTATION_1_6:I = 0x17

.field private static final ROTATION_1_7:I = 0x34

.field private static final ROTATION_2_0:I = 0x21

.field private static final ROTATION_2_1:I = 0x4

.field private static final ROTATION_2_2:I = 0x33

.field private static final ROTATION_2_3:I = 0xd

.field private static final ROTATION_2_4:I = 0x22

.field private static final ROTATION_2_5:I = 0x29

.field private static final ROTATION_2_6:I = 0x3b

.field private static final ROTATION_2_7:I = 0x11

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x14

.field private static final ROTATION_3_2:I = 0x30

.field private static final ROTATION_3_3:I = 0x29

.field private static final ROTATION_3_4:I = 0x2f

.field private static final ROTATION_3_5:I = 0x1c

.field private static final ROTATION_3_6:I = 0x10

.field private static final ROTATION_3_7:I = 0x19

.field private static final ROTATION_4_0:I = 0x29

.field private static final ROTATION_4_1:I = 0x9

.field private static final ROTATION_4_2:I = 0x25

.field private static final ROTATION_4_3:I = 0x1f

.field private static final ROTATION_4_4:I = 0xc

.field private static final ROTATION_4_5:I = 0x2f

.field private static final ROTATION_4_6:I = 0x2c

.field private static final ROTATION_4_7:I = 0x1e

.field private static final ROTATION_5_0:I = 0x10

.field private static final ROTATION_5_1:I = 0x22

.field private static final ROTATION_5_2:I = 0x38

.field private static final ROTATION_5_3:I = 0x33

.field private static final ROTATION_5_4:I = 0x4

.field private static final ROTATION_5_5:I = 0x35

.field private static final ROTATION_5_6:I = 0x2a

.field private static final ROTATION_5_7:I = 0x29

.field private static final ROTATION_6_0:I = 0x1f

.field private static final ROTATION_6_1:I = 0x2c

.field private static final ROTATION_6_2:I = 0x2f

.field private static final ROTATION_6_3:I = 0x2e

.field private static final ROTATION_6_4:I = 0x13

.field private static final ROTATION_6_5:I = 0x2a

.field private static final ROTATION_6_6:I = 0x2c

.field private static final ROTATION_6_7:I = 0x19

.field private static final ROTATION_7_0:I = 0x9

.field private static final ROTATION_7_1:I = 0x30

.field private static final ROTATION_7_2:I = 0x23

.field private static final ROTATION_7_3:I = 0x34

.field private static final ROTATION_7_4:I = 0x17

.field private static final ROTATION_7_5:I = 0x1f

.field private static final ROTATION_7_6:I = 0x25

.field private static final ROTATION_7_7:I = 0x14


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 84

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v3

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    array-length v5, v1

    const/16 v6, 0x21

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

    const/16 v18, 0x0

    const/4 v5, 0x4

    aget-wide v19, p1, v5

    aget-wide v21, p1, v6

    const/16 v23, 0x6

    aget-wide v24, p1, v23

    const/16 v26, 0x7

    aget-wide v27, p1, v26

    const/16 v29, 0x2

    const/16 v12, 0x8

    aget-wide v30, p1, v12

    const/16 v32, 0x3

    const/16 v15, 0x9

    aget-wide v33, p1, v15

    const/16 v12, 0xa

    aget-wide v36, p1, v12

    const/16 v38, 0xb

    aget-wide v39, p1, v38

    const/16 v12, 0xc

    aget-wide v42, p1, v12

    const/16 v6, 0xd

    aget-wide v45, p1, v6

    const/16 v47, 0xe

    aget-wide v48, p1, v47

    const/16 v50, 0xf

    aget-wide v51, p1, v50

    const/16 v12, 0x13

    :goto_0
    if-lt v12, v9, :cond_0

    aget v55, v3, v12

    aget v56, v4, v12

    add-int/lit8 v57, v55, 0x1

    aget-wide v58, v1, v57

    sub-long v7, v7, v58

    add-int/lit8 v58, v55, 0x2

    aget-wide v59, v1, v58

    sub-long v10, v10, v59

    add-int/lit8 v59, v55, 0x3

    aget-wide v60, v1, v59

    sub-long v13, v13, v60

    add-int/lit8 v60, v55, 0x4

    aget-wide v61, v1, v60

    sub-long v5, v16, v61

    add-int/lit8 v16, v55, 0x5

    aget-wide v61, v1, v16

    move-wide/from16 v65, v10

    const/16 v64, 0x1

    sub-long v9, v19, v61

    add-int/lit8 v11, v55, 0x6

    aget-wide v19, v1, v11

    move-object/from16 v61, v1

    sub-long v0, v21, v19

    add-int/lit8 v17, v55, 0x7

    aget-wide v19, v61, v17

    move-object/from16 v62, v2

    move-object/from16 v67, v3

    sub-long v2, v24, v19

    add-int/lit8 v19, v55, 0x8

    aget-wide v20, v61, v19

    move-object/from16 v68, v4

    move-wide/from16 v69, v5

    sub-long v4, v27, v20

    add-int/lit8 v6, v55, 0x9

    aget-wide v20, v61, v6

    move-wide/from16 v24, v4

    sub-long v4, v30, v20

    add-int/lit8 v20, v55, 0xa

    aget-wide v21, v61, v20

    move-wide/from16 v71, v0

    sub-long v0, v33, v21

    add-int/lit8 v21, v55, 0xb

    aget-wide v27, v61, v21

    move-wide/from16 v30, v4

    sub-long v4, v36, v27

    add-int/lit8 v22, v55, 0xc

    aget-wide v27, v61, v22

    move-wide/from16 v33, v4

    sub-long v4, v39, v27

    add-int/lit8 v27, v55, 0xd

    aget-wide v36, v61, v27

    move-wide/from16 v73, v0

    sub-long v0, v42, v36

    add-int/lit8 v28, v55, 0xe

    aget-wide v36, v61, v28

    add-int/lit8 v39, v56, 0x1

    aget-wide v42, v62, v39

    add-long v36, v36, v42

    move-wide/from16 v42, v0

    sub-long v0, v45, v36

    add-int/lit8 v36, v55, 0xf

    aget-wide v45, v61, v36

    add-int/lit8 v37, v56, 0x2

    aget-wide v75, v62, v37

    add-long v45, v45, v75

    move-wide/from16 v75, v9

    sub-long v9, v48, v45

    add-int/lit8 v37, v55, 0x10

    aget-wide v45, v61, v37

    move-wide/from16 v48, v9

    int-to-long v9, v12

    add-long v45, v45, v9

    const-wide/16 v77, 0x1

    add-long v45, v45, v77

    move-wide/from16 v77, v9

    sub-long v9, v51, v45

    invoke-static {v9, v10, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const/16 v15, 0x30

    invoke-static {v4, v5, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    const/16 v15, 0x23

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v15, 0x34

    move-wide/from16 v45, v4

    move/from16 v81, v11

    move/from16 v80, v12

    move-wide/from16 v4, v73

    move-wide/from16 v11, v75

    invoke-static {v4, v5, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v11, v4

    const/16 v15, 0x17

    move-wide/from16 v51, v48

    move-wide/from16 v48, v0

    move-wide/from16 v0, v51

    move-wide/from16 v51, v4

    move-wide/from16 v4, v65

    invoke-static {v4, v5, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v15, 0x1f

    move-wide/from16 v65, v30

    move-wide/from16 v30, v9

    move-wide/from16 v9, v65

    move-wide/from16 v65, v0

    move-wide/from16 v0, v71

    invoke-static {v0, v1, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v15, 0x25

    move-wide/from16 v71, v33

    move-wide/from16 v33, v2

    move-wide/from16 v2, v71

    move-wide/from16 v71, v9

    move-wide/from16 v9, v69

    invoke-static {v9, v10, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v2, v9

    const/16 v15, 0x14

    move-wide/from16 v69, v2

    move-wide/from16 v2, v24

    move-wide/from16 v24, v4

    move-wide/from16 v4, v42

    invoke-static {v2, v3, v15, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    const/16 v15, 0x1f

    invoke-static {v2, v3, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v15, 0x2c

    invoke-static {v0, v1, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v13, v0

    const/16 v15, 0x2f

    invoke-static {v9, v10, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v11, v9

    const/16 v15, 0x2e

    move-wide/from16 v73, v24

    move-wide/from16 v24, v9

    move-wide/from16 v9, v73

    move-wide/from16 v73, v0

    move-wide/from16 v0, v33

    invoke-static {v9, v10, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v0, v9

    move-wide/from16 v33, v9

    move-wide/from16 v9, v30

    const/16 v15, 0x13

    invoke-static {v9, v10, v15, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v4, v9

    const/16 v15, 0x2a

    move-wide/from16 v30, v4

    move-wide/from16 v4, v48

    move-wide/from16 v48, v2

    move-wide/from16 v2, v65

    invoke-static {v4, v5, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v15, 0x2c

    move-wide/from16 v65, v2

    move-wide/from16 v2, v45

    move-wide/from16 v45, v9

    move-wide/from16 v9, v71

    invoke-static {v2, v3, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    const/16 v15, 0x19

    move-wide/from16 v71, v9

    move-wide/from16 v9, v51

    move-wide/from16 v51, v11

    move-wide/from16 v11, v69

    invoke-static {v9, v10, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v11, v9

    const/16 v15, 0x10

    invoke-static {v9, v10, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const/16 v15, 0x22

    invoke-static {v4, v5, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    const/16 v15, 0x38

    invoke-static {v2, v3, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v15, 0x33

    move-wide/from16 v69, v45

    move-wide/from16 v45, v2

    move-wide/from16 v2, v69

    move-wide/from16 v69, v4

    move-wide/from16 v4, v51

    invoke-static {v2, v3, v15, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    move-wide/from16 v51, v2

    move-wide/from16 v2, v48

    const/4 v15, 0x4

    invoke-static {v2, v3, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v11, v2

    const/16 v15, 0x35

    move-wide/from16 v48, v11

    move-wide/from16 v11, v24

    move-wide/from16 v24, v9

    move-wide/from16 v9, v30

    invoke-static {v11, v12, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const/16 v15, 0x2a

    move-wide/from16 v30, v65

    move-wide/from16 v65, v0

    move-wide/from16 v0, v30

    move-wide/from16 v30, v9

    move-wide/from16 v9, v73

    invoke-static {v9, v10, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v0, v9

    const/16 v15, 0x29

    move-wide/from16 v73, v0

    move-wide/from16 v0, v33

    move-wide/from16 v33, v2

    move-wide/from16 v2, v71

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    invoke-static {v0, v1, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v15, 0x9

    invoke-static {v11, v12, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v13, v11

    const/16 v15, 0x25

    invoke-static {v9, v10, v15, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v4, v9

    move-wide/from16 v75, v33

    move-wide/from16 v33, v4

    move-wide/from16 v4, v75

    move-wide/from16 v75, v0

    move-wide/from16 v0, v65

    const/16 v15, 0x1f

    invoke-static {v4, v5, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    move-wide/from16 v65, v0

    move-wide/from16 v0, v24

    const/16 v15, 0xc

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v45

    const/16 v15, 0x2f

    move-wide/from16 v45, v2

    move-wide/from16 v2, v48

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v15, 0x2c

    move-wide/from16 v48, v30

    move-wide/from16 v30, v2

    move-wide/from16 v2, v48

    move-wide/from16 v48, v0

    move-wide/from16 v0, v69

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v15, 0x1e

    move-wide/from16 v69, v0

    move-wide/from16 v0, v51

    move-wide/from16 v51, v2

    move-wide/from16 v2, v73

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    aget-wide v72, v61, v55

    sub-long v7, v7, v72

    aget-wide v72, v61, v57

    move-wide/from16 v82, v0

    sub-long v0, v75, v72

    aget-wide v57, v61, v58

    sub-long v13, v13, v57

    aget-wide v57, v61, v59

    sub-long v11, v11, v57

    aget-wide v57, v61, v60

    move-wide/from16 v59, v2

    sub-long v2, v33, v57

    aget-wide v15, v61, v16

    sub-long/2addr v9, v15

    aget-wide v15, v61, v81

    move-wide/from16 v33, v4

    sub-long v4, v65, v15

    aget-wide v15, v61, v17

    move-wide/from16 v57, v11

    sub-long v11, v33, v15

    aget-wide v15, v61, v19

    move-wide/from16 v33, v11

    sub-long v11, v45, v15

    aget-wide v15, v61, v6

    move-wide/from16 v45, v9

    sub-long v9, v24, v15

    aget-wide v15, v61, v20

    move-wide/from16 v19, v11

    sub-long v11, v30, v15

    aget-wide v15, v61, v21

    move-wide/from16 v24, v11

    sub-long v11, v48, v15

    aget-wide v15, v61, v22

    move-wide/from16 v21, v0

    sub-long v0, v51, v15

    aget-wide v15, v61, v27

    aget-wide v30, v62, v56

    add-long v15, v15, v30

    move-wide/from16 v30, v0

    sub-long v0, v69, v15

    aget-wide v15, v61, v28

    aget-wide v27, v62, v39

    add-long v15, v15, v27

    move-wide/from16 v27, v2

    sub-long v2, v59, v15

    aget-wide v15, v61, v36

    add-long v15, v15, v77

    move-wide/from16 v36, v2

    sub-long v2, v82, v15

    const/4 v6, 0x5

    invoke-static {v2, v3, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v6, 0x14

    invoke-static {v11, v12, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v13, v11

    const/16 v6, 0x30

    invoke-static {v0, v1, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    move-wide v15, v11

    move-wide/from16 v11, v27

    const/16 v6, 0x29

    invoke-static {v9, v10, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v11, v9

    move-wide/from16 v27, v9

    move-wide/from16 v9, v21

    const/16 v6, 0x2f

    move-wide/from16 v21, v0

    move-wide/from16 v0, v36

    invoke-static {v9, v10, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v0, v9

    const/16 v6, 0x1c

    move-wide/from16 v36, v19

    move-wide/from16 v19, v2

    move-wide/from16 v2, v36

    move-wide/from16 v36, v0

    move-wide/from16 v0, v45

    invoke-static {v0, v1, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    move-wide/from16 v45, v24

    move-wide/from16 v24, v4

    move-wide/from16 v4, v45

    move-wide/from16 v45, v2

    move-wide/from16 v2, v57

    const/16 v6, 0x10

    invoke-static {v2, v3, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    const/16 v6, 0x19

    move-wide/from16 v48, v30

    move-wide/from16 v30, v9

    move-wide/from16 v9, v48

    move-wide/from16 v48, v4

    move-wide/from16 v4, v33

    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    const/16 v6, 0x21

    invoke-static {v4, v5, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v7, v4

    const/4 v6, 0x4

    invoke-static {v0, v1, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v13, v0

    const/16 v6, 0x33

    invoke-static {v2, v3, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v11, v2

    move-wide/from16 v33, v0

    move-wide/from16 v0, v24

    const/16 v6, 0xd

    move-wide/from16 v24, v2

    move-wide/from16 v2, v30

    invoke-static {v2, v3, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v6, 0x22

    move-wide/from16 v30, v2

    move-wide/from16 v2, v19

    invoke-static {v2, v3, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    move-wide/from16 v19, v9

    move-wide/from16 v9, v21

    const/16 v6, 0x29

    move-wide/from16 v21, v4

    move-wide/from16 v4, v36

    invoke-static {v9, v10, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v4, v9

    const/16 v6, 0x3b

    move-wide/from16 v36, v4

    move-wide v4, v15

    move-wide v15, v2

    move-wide/from16 v2, v45

    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v6, 0x11

    move-wide/from16 v45, v2

    move-wide/from16 v2, v27

    move-wide/from16 v27, v11

    move-wide/from16 v11, v48

    invoke-static {v2, v3, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v11, v2

    const/16 v6, 0x26

    invoke-static {v2, v3, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v6, 0x13

    invoke-static {v9, v10, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v13, v9

    const/16 v6, 0xa

    invoke-static {v4, v5, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v6, 0x37

    move-wide/from16 v48, v15

    move-wide v15, v4

    move-wide/from16 v4, v48

    move-wide/from16 v48, v9

    move-wide/from16 v9, v27

    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    const/16 v6, 0x31

    move-wide/from16 v27, v4

    move-wide/from16 v4, v21

    invoke-static {v4, v5, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v11, v4

    const/16 v6, 0x12

    move-wide/from16 v21, v19

    move-wide/from16 v19, v2

    move-wide/from16 v2, v21

    move-wide/from16 v21, v11

    move-wide/from16 v11, v24

    invoke-static {v11, v12, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v2, v11

    const/16 v6, 0x17

    move-wide/from16 v24, v2

    move-wide/from16 v2, v33

    move-wide/from16 v33, v0

    move-wide/from16 v0, v36

    invoke-static {v2, v3, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v6, 0x34

    move-wide/from16 v36, v0

    move-wide/from16 v0, v30

    move-wide/from16 v30, v4

    move-wide/from16 v4, v45

    invoke-static {v0, v1, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v6, 0x18

    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v6, 0xd

    invoke-static {v11, v12, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v13, v11

    const/16 v6, 0x8

    invoke-static {v2, v3, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    move-wide/from16 v45, v30

    move-wide/from16 v30, v0

    move-wide/from16 v0, v45

    move-wide/from16 v45, v7

    move-wide/from16 v6, v33

    const/16 v8, 0x2f

    invoke-static {v0, v1, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v19

    const/16 v8, 0x8

    invoke-static {v0, v1, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v8, 0x11

    move-wide/from16 v19, v0

    move-wide v0, v15

    move-wide v15, v2

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v8, 0x16

    move-wide/from16 v21, v24

    move-wide/from16 v24, v2

    move-wide/from16 v2, v21

    move-wide/from16 v21, v0

    move-wide/from16 v0, v48

    invoke-static {v0, v1, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v42, v2, v0

    move-wide/from16 v2, v27

    const/16 v8, 0x25

    move-wide/from16 v27, v0

    move-wide/from16 v0, v36

    invoke-static {v2, v3, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v51

    sub-long v48, v0, v51

    add-int/lit8 v0, v80, -0x2

    move-wide/from16 v39, v21

    move-wide/from16 v36, v24

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    move-object/from16 v3, v67

    move-wide/from16 v24, v6

    move-wide/from16 v21, v15

    move-wide/from16 v7, v45

    const/16 v15, 0x9

    move-wide/from16 v16, v11

    move-wide/from16 v45, v27

    move-wide/from16 v27, v33

    move v12, v0

    move-wide/from16 v33, v19

    move-object/from16 v0, p0

    move-wide/from16 v19, v9

    move-wide/from16 v10, v30

    const/4 v9, 0x1

    move-wide/from16 v30, v4

    move-object/from16 v4, v68

    const/4 v5, 0x4

    goto/16 :goto_0

    :cond_0
    move-object/from16 v61, v1

    move-object/from16 v62, v2

    const/16 v64, 0x1

    aget-wide v0, v61, v18

    sub-long/2addr v7, v0

    aget-wide v0, v61, v64

    sub-long/2addr v10, v0

    aget-wide v0, v61, v29

    sub-long/2addr v13, v0

    aget-wide v0, v61, v32

    sub-long v16, v16, v0

    const/16 v63, 0x4

    aget-wide v0, v61, v63

    sub-long v19, v19, v0

    const/16 v44, 0x5

    aget-wide v0, v61, v44

    sub-long v21, v21, v0

    aget-wide v0, v61, v23

    sub-long v24, v24, v0

    aget-wide v0, v61, v26

    sub-long v27, v27, v0

    const/16 v35, 0x8

    aget-wide v0, v61, v35

    sub-long v30, v30, v0

    const/16 v79, 0x9

    aget-wide v0, v61, v79

    sub-long v33, v33, v0

    const/16 v41, 0xa

    aget-wide v0, v61, v41

    sub-long v36, v36, v0

    aget-wide v0, v61, v38

    sub-long v39, v39, v0

    const/16 v54, 0xc

    aget-wide v0, v61, v54

    sub-long v42, v42, v0

    const/16 v53, 0xd

    aget-wide v0, v61, v53

    aget-wide v2, v62, v18

    add-long/2addr v0, v2

    sub-long v45, v45, v0

    aget-wide v0, v61, v47

    aget-wide v2, v62, v64

    add-long/2addr v0, v2

    sub-long v48, v48, v0

    aget-wide v0, v61, v50

    sub-long v51, v51, v0

    aput-wide v7, p2, v18

    aput-wide v10, p2, v64

    aput-wide v13, p2, v29

    aput-wide v16, p2, v32

    const/16 v63, 0x4

    aput-wide v19, p2, v63

    const/16 v44, 0x5

    aput-wide v21, p2, v44

    aput-wide v24, p2, v23

    aput-wide v27, p2, v26

    const/16 v35, 0x8

    aput-wide v30, p2, v35

    const/16 v79, 0x9

    aput-wide v33, p2, v79

    const/16 v41, 0xa

    aput-wide v36, p2, v41

    aput-wide v39, p2, v38

    const/16 v54, 0xc

    aput-wide v42, p2, v54

    const/16 v53, 0xd

    aput-wide v45, p2, v53

    aput-wide v48, p2, v47

    aput-wide v51, p2, v50

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
    .locals 86

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v3

    # getter for: Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    array-length v5, v1

    const/16 v6, 0x21

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

    const/16 v18, 0x0

    const/4 v5, 0x4

    aget-wide v19, p1, v5

    aget-wide v21, p1, v6

    const/16 v23, 0x6

    aget-wide v24, p1, v23

    const/16 v26, 0x7

    aget-wide v27, p1, v26

    const/16 v29, 0x1

    const/16 v9, 0x8

    aget-wide v30, p1, v9

    const/16 v32, 0x2

    const/16 v12, 0x9

    aget-wide v33, p1, v12

    const/16 v35, 0x3

    const/16 v15, 0xa

    aget-wide v36, p1, v15

    const/16 v38, 0xb

    aget-wide v39, p1, v38

    const/16 v41, 0x9

    const/16 v12, 0xc

    aget-wide v42, p1, v12

    const/16 v44, 0xc

    const/16 v12, 0xd

    aget-wide v45, p1, v12

    const/16 v47, 0xe

    aget-wide v48, p1, v47

    const/16 v50, 0xf

    aget-wide v51, p1, v50

    aget-wide v53, v1, v18

    add-long v7, v7, v53

    aget-wide v53, v1, v29

    add-long v10, v10, v53

    aget-wide v53, v1, v32

    add-long v13, v13, v53

    aget-wide v53, v1, v35

    add-long v16, v16, v53

    aget-wide v53, v1, v5

    add-long v19, v19, v53

    aget-wide v53, v1, v6

    add-long v21, v21, v53

    aget-wide v53, v1, v23

    add-long v24, v24, v53

    aget-wide v53, v1, v26

    add-long v27, v27, v53

    aget-wide v53, v1, v9

    add-long v30, v30, v53

    aget-wide v53, v1, v41

    add-long v33, v33, v53

    aget-wide v53, v1, v15

    add-long v36, v36, v53

    aget-wide v53, v1, v38

    add-long v39, v39, v53

    aget-wide v53, v1, v44

    add-long v42, v42, v53

    aget-wide v53, v1, v12

    aget-wide v55, v2, v18

    add-long v53, v53, v55

    add-long v45, v45, v53

    aget-wide v53, v1, v47

    aget-wide v55, v2, v29

    add-long v53, v53, v55

    add-long v48, v48, v53

    aget-wide v53, v1, v50

    add-long v51, v51, v53

    move-wide/from16 v57, v21

    move-wide/from16 v59, v27

    move-wide/from16 v61, v33

    move-wide/from16 v63, v39

    move-wide/from16 v65, v45

    move-wide/from16 v67, v51

    move-wide/from16 v21, v19

    move-wide/from16 v19, v7

    move-wide/from16 v6, v16

    const/4 v8, 0x1

    :goto_0
    const/16 v5, 0x14

    if-ge v8, v5, :cond_0

    aget v27, v3, v8

    aget v28, v4, v8

    move-wide/from16 v33, v6

    add-long v5, v19, v10

    const/16 v7, 0x18

    invoke-static {v10, v11, v7, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v13, v13, v33

    move-wide/from16 v19, v10

    move-wide/from16 v9, v33

    invoke-static {v9, v10, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move v11, v8

    move-wide/from16 v39, v13

    move-wide/from16 v7, v57

    add-long v12, v21, v7

    const/16 v14, 0x8

    invoke-static {v7, v8, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    move-object/from16 v45, v1

    move-wide/from16 v14, v59

    add-long v0, v24, v14

    move-object/from16 v46, v2

    const/16 v2, 0x2f

    invoke-static {v14, v15, v2, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    move-wide/from16 v24, v0

    move-object/from16 v51, v3

    move-wide/from16 v2, v61

    add-long v0, v30, v2

    move-object/from16 v52, v4

    const/16 v4, 0x8

    invoke-static {v2, v3, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v30, v0

    move-wide/from16 v53, v5

    move-wide/from16 v0, v63

    add-long v4, v36, v0

    const/16 v6, 0x11

    invoke-static {v0, v1, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v36, v4

    move v6, v11

    move-wide/from16 v56, v12

    move-wide/from16 v4, v65

    add-long v11, v42, v4

    const/16 v13, 0x16

    invoke-static {v4, v5, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v58, v7

    move-wide/from16 v42, v11

    move-wide/from16 v11, v67

    move v8, v6

    add-long v6, v48, v11

    const/16 v13, 0x25

    invoke-static {v11, v12, v13, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v60, v14

    add-long v13, v53, v2

    const/16 v15, 0x26

    invoke-static {v2, v3, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v48, v6

    add-long v6, v39, v4

    const/16 v15, 0x13

    invoke-static {v4, v5, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v39, v6

    add-long v6, v24, v0

    const/16 v15, 0xa

    invoke-static {v0, v1, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v24, v6

    add-long v6, v56, v11

    const/16 v15, 0x37

    invoke-static {v11, v12, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v53, v6

    add-long v6, v36, v60

    const/16 v15, 0x31

    move-wide/from16 v36, v13

    move-wide/from16 v13, v60

    invoke-static {v13, v14, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v56, v6

    add-long v6, v42, v9

    const/16 v15, 0x12

    invoke-static {v9, v10, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-wide/from16 v42, v6

    add-long v6, v48, v58

    const/16 v15, 0x17

    move-wide/from16 v48, v2

    move-wide/from16 v2, v58

    invoke-static {v2, v3, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v58, v6

    add-long v6, v30, v19

    const/16 v15, 0x34

    move-wide/from16 v30, v0

    move-wide/from16 v0, v19

    invoke-static {v0, v1, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v19, v6

    add-long v6, v36, v13

    const/16 v15, 0x21

    invoke-static {v13, v14, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v36, v6

    add-long v6, v39, v2

    const/4 v15, 0x4

    invoke-static {v2, v3, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v39, v6

    add-long v6, v53, v9

    const/16 v15, 0x33

    invoke-static {v9, v10, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-wide/from16 v53, v6

    add-long v6, v24, v0

    const/16 v15, 0xd

    invoke-static {v0, v1, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v24, v6

    add-long v6, v42, v11

    const/16 v15, 0x22

    invoke-static {v11, v12, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v42, v6

    add-long v6, v58, v4

    const/16 v15, 0x29

    invoke-static {v4, v5, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v58, v6

    add-long v6, v19, v30

    const/16 v15, 0x3b

    move-wide/from16 v60, v13

    move-wide/from16 v13, v30

    invoke-static {v13, v14, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v30, v6

    add-long v6, v56, v48

    const/16 v15, 0x11

    move/from16 v20, v8

    move-wide/from16 v56, v9

    move-wide/from16 v8, v48

    invoke-static {v8, v9, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v48, v6

    add-long v6, v36, v11

    const/4 v10, 0x5

    invoke-static {v11, v12, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v36, v6

    add-long v6, v39, v13

    const/16 v10, 0x14

    invoke-static {v13, v14, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v39, v6

    add-long v6, v24, v4

    const/16 v10, 0x30

    invoke-static {v4, v5, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v24, v4

    add-long v4, v53, v8

    const/16 v10, 0x29

    invoke-static {v8, v9, v10, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v53, v4

    add-long v4, v58, v0

    const/16 v10, 0x2f

    invoke-static {v0, v1, v10, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v58, v0

    add-long v0, v30, v2

    const/16 v10, 0x1c

    invoke-static {v2, v3, v10, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v30, v0

    add-long v0, v48, v56

    const/16 v10, 0x10

    move-wide/from16 v48, v2

    move-wide/from16 v2, v56

    invoke-static {v2, v3, v10, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v56, v11

    add-long v10, v42, v60

    const/16 v15, 0x19

    move-wide/from16 v42, v13

    move-wide/from16 v12, v60

    invoke-static {v12, v13, v15, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    aget-wide v60, v45, v27

    add-long v36, v36, v60

    add-int/lit8 v60, v27, 0x1

    aget-wide v61, v45, v60

    add-long v14, v58, v61

    add-int/lit8 v58, v27, 0x2

    aget-wide v61, v45, v58

    add-long v39, v39, v61

    add-int/lit8 v59, v27, 0x3

    aget-wide v61, v45, v59

    add-long v2, v2, v61

    add-int/lit8 v61, v27, 0x4

    aget-wide v64, v45, v61

    add-long v53, v53, v64

    add-int/lit8 v62, v27, 0x5

    aget-wide v64, v45, v62

    move-wide/from16 v66, v0

    add-long v0, v48, v64

    add-int/lit8 v48, v27, 0x6

    aget-wide v64, v45, v48

    add-long v6, v6, v64

    add-int/lit8 v49, v27, 0x7

    aget-wide v64, v45, v49

    add-long v12, v12, v64

    add-int/lit8 v64, v27, 0x8

    aget-wide v68, v45, v64

    add-long v30, v30, v68

    add-int/lit8 v65, v27, 0x9

    aget-wide v68, v45, v65

    add-long v8, v8, v68

    add-int/lit8 v68, v27, 0xa

    aget-wide v69, v45, v68

    add-long v66, v66, v69

    add-int/lit8 v69, v27, 0xb

    aget-wide v70, v45, v69

    move-wide/from16 v72, v4

    add-long v4, v42, v70

    add-int/lit8 v42, v27, 0xc

    aget-wide v70, v45, v42

    add-long v10, v10, v70

    add-int/lit8 v43, v27, 0xd

    aget-wide v70, v45, v43

    aget-wide v74, v46, v28

    add-long v70, v70, v74

    move-wide/from16 v74, v6

    add-long v6, v24, v70

    add-int/lit8 v24, v27, 0xe

    aget-wide v70, v45, v24

    add-int/lit8 v25, v28, 0x1

    aget-wide v76, v46, v25

    add-long v70, v70, v76

    add-long v70, v72, v70

    add-int/lit8 v72, v27, 0xf

    aget-wide v76, v45, v72

    move-wide/from16 v80, v6

    move-wide/from16 v78, v10

    move/from16 v10, v20

    int-to-long v6, v10

    add-long v76, v76, v6

    move-wide/from16 v82, v6

    add-long v6, v56, v76

    add-long v10, v36, v14

    move-wide/from16 v36, v6

    const/16 v6, 0x29

    invoke-static {v14, v15, v6, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    add-long v6, v39, v2

    move-wide/from16 v39, v10

    const/16 v10, 0x9

    invoke-static {v2, v3, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v10, v53, v0

    move-wide/from16 v53, v6

    const/16 v6, 0x25

    invoke-static {v0, v1, v6, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide v6, v14

    add-long v14, v74, v12

    move-wide/from16 v56, v10

    const/16 v10, 0x1f

    invoke-static {v12, v13, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v73, v11

    add-long v10, v30, v8

    const/16 v12, 0xc

    invoke-static {v8, v9, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v30, v14

    add-long v13, v66, v4

    const/16 v12, 0x2f

    invoke-static {v4, v5, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v66, v10

    add-long v10, v78, v80

    const/16 v12, 0x2c

    move-wide/from16 v75, v13

    move-wide/from16 v13, v80

    invoke-static {v13, v14, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v77, v10

    add-long v10, v70, v36

    const/16 v12, 0x1e

    move-wide/from16 v70, v6

    move-wide/from16 v6, v36

    invoke-static {v6, v7, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    move-wide/from16 v36, v10

    add-long v10, v39, v8

    const/16 v12, 0x10

    invoke-static {v8, v9, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v39, v10

    move-wide/from16 v84, v73

    add-long v10, v53, v13

    const/16 v12, 0x22

    invoke-static {v13, v14, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    move-wide/from16 v53, v10

    add-long v10, v30, v4

    const/16 v14, 0x38

    invoke-static {v4, v5, v14, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v30, v10

    add-long v10, v56, v6

    const/16 v14, 0x33

    invoke-static {v6, v7, v14, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    move-wide/from16 v56, v10

    move-wide/from16 v73, v12

    move-wide/from16 v10, v84

    add-long v12, v75, v10

    const/4 v14, 0x4

    invoke-static {v10, v11, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    move-wide/from16 v75, v12

    add-long v12, v77, v2

    const/16 v14, 0x35

    invoke-static {v2, v3, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v77, v12

    add-long v12, v36, v0

    const/16 v14, 0x2a

    invoke-static {v0, v1, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v36, v12

    add-long v12, v66, v70

    move-wide/from16 v14, v70

    move-wide/from16 v70, v8

    const/16 v8, 0x29

    invoke-static {v14, v15, v8, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long v14, v39, v10

    move-wide/from16 v39, v12

    const/16 v12, 0x1f

    invoke-static {v10, v11, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    move-wide/from16 v12, v73

    move-wide/from16 v73, v14

    add-long v14, v53, v0

    move-wide/from16 v53, v10

    const/16 v10, 0x2c

    invoke-static {v0, v1, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v10, v56, v2

    move-wide/from16 v56, v14

    const/16 v14, 0x2f

    invoke-static {v2, v3, v14, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v14, v30, v8

    move-wide/from16 v30, v10

    const/16 v10, 0x2e

    invoke-static {v8, v9, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long v10, v77, v6

    move-wide/from16 v77, v14

    const/16 v14, 0x13

    invoke-static {v6, v7, v14, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    add-long v14, v36, v12

    move-wide/from16 v36, v10

    const/16 v10, 0x2a

    invoke-static {v12, v13, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v12, v39, v4

    move-wide/from16 v39, v14

    const/16 v14, 0x2c

    invoke-static {v4, v5, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v14, v75, v70

    move-wide/from16 v75, v12

    const/16 v12, 0x19

    move-wide/from16 v79, v2

    move-wide/from16 v2, v70

    invoke-static {v2, v3, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v12, v73, v6

    move-wide/from16 v70, v14

    const/16 v14, 0x9

    invoke-static {v6, v7, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    add-long v14, v56, v4

    move-wide/from16 v56, v6

    const/16 v6, 0x30

    invoke-static {v4, v5, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v6, v77, v10

    move-wide/from16 v73, v4

    const/16 v4, 0x23

    invoke-static {v10, v11, v4, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long v10, v30, v2

    move-wide/from16 v30, v4

    const/16 v4, 0x34

    invoke-static {v2, v3, v4, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v4, v39, v8

    move-wide/from16 v39, v2

    const/16 v2, 0x17

    invoke-static {v8, v9, v2, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v8, v75, v0

    move-wide/from16 v75, v2

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v2, v70, v79

    move-wide/from16 v66, v0

    move-wide/from16 v21, v4

    move-wide/from16 v0, v79

    const/16 v4, 0x25

    invoke-static {v0, v1, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v4, v36, v53

    move-wide/from16 v36, v0

    move-wide/from16 v0, v53

    move-wide/from16 v53, v2

    const/16 v2, 0x14

    invoke-static {v0, v1, v2, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    aget-wide v2, v45, v60

    add-long/2addr v2, v12

    aget-wide v12, v45, v58

    add-long v12, v75, v12

    aget-wide v58, v45, v59

    add-long v14, v14, v58

    aget-wide v58, v45, v61

    add-long v36, v36, v58

    aget-wide v58, v45, v62

    add-long v10, v10, v58

    aget-wide v58, v45, v48

    add-long v58, v66, v58

    aget-wide v48, v45, v49

    add-long v6, v6, v48

    aget-wide v48, v45, v64

    add-long v0, v0, v48

    aget-wide v48, v45, v65

    add-long v8, v8, v48

    aget-wide v48, v45, v68

    add-long v61, v39, v48

    aget-wide v39, v45, v69

    add-long v39, v53, v39

    aget-wide v48, v45, v42

    add-long v48, v73, v48

    aget-wide v42, v45, v43

    add-long v42, v4, v42

    aget-wide v4, v45, v24

    aget-wide v24, v46, v25

    add-long v4, v4, v24

    add-long v65, v30, v4

    aget-wide v4, v45, v72

    add-int/lit8 v28, v28, 0x2

    aget-wide v24, v46, v28

    add-long v4, v4, v24

    add-long v4, v21, v4

    const/16 v63, 0x10

    add-int/lit8 v27, v27, 0x10

    aget-wide v21, v45, v27

    add-long v21, v21, v82

    const-wide/16 v24, 0x1

    add-long v21, v21, v24

    add-long v67, v56, v21

    add-int/lit8 v19, v20, 0x2

    move-wide/from16 v24, v6

    move-wide/from16 v30, v8

    move-wide/from16 v21, v10

    move-wide v10, v12

    move-wide v13, v14

    move/from16 v8, v19

    move-wide/from16 v6, v36

    move-wide/from16 v36, v39

    move-wide/from16 v63, v48

    move-wide/from16 v57, v58

    const/16 v9, 0x8

    const/16 v12, 0xd

    const/16 v15, 0xa

    const/16 v41, 0x9

    const/16 v44, 0xc

    move-wide/from16 v59, v0

    move-wide/from16 v19, v2

    move-wide/from16 v48, v4

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    move-object/from16 v3, v51

    move-object/from16 v4, v52

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v27, v10

    move-wide/from16 v39, v13

    move-wide/from16 v14, v59

    move-wide/from16 v2, v61

    move-wide/from16 v0, v63

    move-wide/from16 v4, v65

    move-wide/from16 v11, v67

    move-wide v9, v6

    move-wide/from16 v7, v57

    aput-wide v19, p2, v18

    aput-wide v27, p2, v29

    aput-wide v39, p2, v32

    aput-wide v9, p2, v35

    const/16 v17, 0x4

    aput-wide v21, p2, v17

    const/16 v16, 0x5

    aput-wide v7, p2, v16

    aput-wide v24, p2, v23

    aput-wide v14, p2, v26

    const/16 v14, 0x8

    aput-wide v30, p2, v14

    const/16 v41, 0x9

    aput-wide v2, p2, v41

    const/16 v33, 0xa

    aput-wide v36, p2, v33

    aput-wide v0, p2, v38

    const/16 v44, 0xc

    aput-wide v42, p2, v44

    const/16 v34, 0xd

    aput-wide v4, p2, v34

    aput-wide v48, p2, v47

    aput-wide v11, p2, v50

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
