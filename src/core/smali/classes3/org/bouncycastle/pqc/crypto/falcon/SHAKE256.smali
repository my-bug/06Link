.class Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
.super Ljava/lang/Object;


# instance fields
.field A:[J

.field private RC:[J

.field dbuf:[B

.field dptr:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->RC:[J

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dbuf:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void

    nop

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.3E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method


# virtual methods
.method i_shake256_flip()V
    .locals 7

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    long-to-int v1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    shr-int/lit8 v2, v1, 0x3

    aget-wide v3, v0, v2

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x3

    const-wide/16 v5, 0x1f

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    aput-wide v3, v0, v2

    const/16 v1, 0x10

    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x8000000000000000L

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    const-wide/16 v0, 0x88

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void
.end method

.method inner_shake256_extract([BII)V
    .locals 6

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    long-to-int v1, v0

    :cond_0
    if-lez p3, :cond_3

    const/16 v0, 0x88

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->process_block([J)V

    const/4 v1, 0x0

    :cond_1
    rsub-int v0, v1, 0x88

    if-le v0, p3, :cond_2

    move v0, p3

    :cond_2
    sub-int/2addr p3, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    shr-int/lit8 v4, v1, 0x3

    aget-wide v4, v3, v4

    and-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x3

    ushr-long v3, v4, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p1, p2

    add-int/lit8 v1, v1, 0x1

    move p2, v0

    move v0, v2

    goto :goto_0

    :cond_3
    int-to-long p1, v1

    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void
.end method

.method inner_shake256_init()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method inner_shake256_inject([BII)V
    .locals 22

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    move-wide v3, v1

    move/from16 v1, p2

    move/from16 v2, p3

    :cond_0
    :goto_0
    if-lez v2, :cond_3

    const-wide/16 v5, 0x88

    sub-long v7, v5, v3

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-lez v2, :cond_1

    move-wide v7, v9

    :cond_1
    const-wide/16 v13, 0x0

    :goto_1
    cmp-long v2, v13, v7

    if-gez v2, :cond_2

    add-long v15, v13, v3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    const/16 v17, 0x3

    move-wide/from16 p2, v5

    shr-long v5, v15, v17

    long-to-int v6, v5

    aget-wide v18, v2, v6

    long-to-int v5, v13

    add-int/2addr v5, v1

    aget-byte v5, p1, v5

    int-to-long v11, v5

    const-wide/16 v20, 0xff

    and-long v11, v11, v20

    const-wide/16 v20, 0x7

    and-long v15, v15, v20

    move/from16 v20, v6

    shl-long v5, v15, v17

    long-to-int v6, v5

    shl-long v5, v11, v6

    xor-long v5, v18, v5

    aput-wide v5, v2, v20

    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    move-wide/from16 v5, p2

    goto :goto_1

    :cond_2
    move-wide/from16 p2, v5

    add-long/2addr v3, v7

    int-to-long v1, v1

    add-long/2addr v1, v7

    long-to-int v1, v1

    sub-long/2addr v9, v7

    long-to-int v2, v9

    cmp-long v5, v3, p2

    if-nez v5, :cond_0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->process_block([J)V

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_3
    iput-wide v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void
.end method

.method process_block([J)V
    .locals 90

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, -0x1

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v1, 0x2

    aget-wide v5, p1, v1

    xor-long/2addr v5, v3

    aput-wide v5, p1, v1

    const/16 v2, 0x8

    aget-wide v5, p1, v2

    xor-long/2addr v5, v3

    aput-wide v5, p1, v2

    const/16 v5, 0xc

    aget-wide v6, p1, v5

    xor-long/2addr v6, v3

    aput-wide v6, p1, v5

    const/16 v6, 0x11

    aget-wide v7, p1, v6

    xor-long/2addr v7, v3

    aput-wide v7, p1, v6

    const/16 v7, 0x14

    aget-wide v8, p1, v7

    xor-long/2addr v8, v3

    aput-wide v8, p1, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x18

    if-ge v9, v10, :cond_0

    aget-wide v11, p1, v0

    const/4 v13, 0x6

    aget-wide v14, p1, v13

    xor-long v16, v11, v14

    const/16 v18, 0xb

    aget-wide v19, p1, v18

    const/16 v21, 0x10

    aget-wide v22, p1, v21

    xor-long v24, v19, v22

    const/16 v26, 0x15

    aget-wide v27, p1, v26

    xor-long v24, v27, v24

    xor-long v16, v16, v24

    shl-long v24, v16, v0

    const/16 v29, 0x3f

    ushr-long v16, v16, v29

    or-long v16, v24, v16

    const/16 v24, 0x4

    aget-wide v24, p1, v24

    const/16 v30, 0x9

    aget-wide v31, p1, v30

    xor-long v33, v24, v31

    const/16 v35, 0xe

    aget-wide v36, p1, v35

    const/16 v38, 0x13

    aget-wide v39, p1, v38

    xor-long v41, v36, v39

    aget-wide v43, p1, v10

    xor-long v16, v16, v43

    xor-long v33, v33, v41

    xor-long v16, v16, v33

    aget-wide v33, p1, v1

    const/16 v41, 0x7

    aget-wide v41, p1, v41

    xor-long v45, v33, v41

    aget-wide v47, p1, v5

    aget-wide v49, p1, v6

    xor-long v51, v47, v49

    const/16 v53, 0x16

    aget-wide v53, p1, v53

    xor-long v51, v53, v51

    xor-long v45, v45, v51

    shl-long v51, v45, v0

    ushr-long v45, v45, v29

    or-long v45, v51, v45

    aget-wide v51, p1, v8

    const/16 v55, 0x5

    aget-wide v55, p1, v55

    xor-long v57, v51, v55

    const/16 v59, 0xa

    aget-wide v60, p1, v59

    const/16 v62, 0xf

    aget-wide v63, p1, v62

    xor-long v65, v60, v63

    aget-wide v67, p1, v7

    xor-long v45, v45, v67

    xor-long v57, v57, v65

    xor-long v45, v45, v57

    const/16 v57, 0x3

    aget-wide v65, p1, v57

    aget-wide v69, p1, v2

    xor-long v71, v65, v69

    const/16 v58, 0xd

    aget-wide v73, p1, v58

    const/16 v58, 0x12

    aget-wide v75, p1, v58

    xor-long v77, v73, v75

    const/16 v79, 0x17

    aget-wide v80, p1, v79

    xor-long v77, v80, v77

    xor-long v71, v71, v77

    shl-long v77, v71, v0

    ushr-long v71, v71, v29

    or-long v71, v77, v71

    xor-long v77, v11, v14

    xor-long v82, v19, v22

    xor-long v71, v71, v27

    xor-long v77, v77, v82

    xor-long v71, v71, v77

    xor-long v77, v24, v31

    xor-long v82, v36, v39

    xor-long v82, v43, v82

    xor-long v77, v77, v82

    shl-long v82, v77, v0

    ushr-long v77, v77, v29

    or-long v77, v82, v77

    xor-long v82, v33, v41

    xor-long v84, v47, v49

    xor-long v77, v77, v53

    xor-long v82, v82, v84

    xor-long v77, v77, v82

    xor-long v82, v51, v55

    xor-long v84, v60, v63

    xor-long v84, v67, v84

    xor-long v82, v82, v84

    shl-long v84, v82, v0

    ushr-long v82, v82, v29

    or-long v82, v84, v82

    xor-long v84, v65, v69

    xor-long v86, v73, v75

    xor-long v82, v82, v80

    xor-long v84, v84, v86

    xor-long v82, v82, v84

    xor-long v51, v51, v16

    aput-wide v51, p1, v8

    xor-long v55, v55, v16

    const/16 v84, 0x5

    aput-wide v55, p1, v84

    xor-long v60, v60, v16

    aput-wide v60, p1, v59

    xor-long v63, v63, v16

    aput-wide v63, p1, v62

    xor-long v16, v67, v16

    aput-wide v16, p1, v7

    xor-long v11, v11, v45

    aput-wide v11, p1, v0

    xor-long v14, v14, v45

    aput-wide v14, p1, v13

    xor-long v19, v19, v45

    aput-wide v19, p1, v18

    xor-long v22, v22, v45

    aput-wide v22, p1, v21

    xor-long v27, v27, v45

    aput-wide v27, p1, v26

    xor-long v33, v33, v71

    aput-wide v33, p1, v1

    xor-long v41, v41, v71

    const/16 v45, 0x7

    aput-wide v41, p1, v45

    xor-long v45, v47, v71

    aput-wide v45, p1, v5

    xor-long v47, v49, v71

    aput-wide v47, p1, v6

    xor-long v49, v53, v71

    const/16 v53, 0x16

    aput-wide v49, p1, v53

    xor-long v53, v65, v77

    aput-wide v53, p1, v57

    xor-long v65, v69, v77

    aput-wide v65, p1, v2

    xor-long v67, v73, v77

    const/16 v69, 0xd

    aput-wide v67, p1, v69

    xor-long v69, v75, v77

    aput-wide v69, p1, v58

    xor-long v71, v80, v77

    aput-wide v71, p1, v79

    xor-long v24, v24, v82

    const/16 v73, 0x4

    aput-wide v24, p1, v73

    xor-long v31, v31, v82

    aput-wide v31, p1, v30

    xor-long v36, v36, v82

    aput-wide v36, p1, v35

    xor-long v39, v39, v82

    aput-wide v39, p1, v38

    xor-long v43, v43, v82

    aput-wide v43, p1, v10

    const/16 v73, 0x24

    shl-long v73, v55, v73

    const/16 v75, 0x1c

    ushr-long v55, v55, v75

    or-long v55, v73, v55

    const/16 v73, 0x5

    aput-wide v55, p1, v73

    shl-long v73, v60, v57

    const/16 v75, 0x3d

    ushr-long v60, v60, v75

    or-long v60, v73, v60

    aput-wide v60, p1, v59

    const/16 v73, 0x29

    shl-long v73, v63, v73

    ushr-long v63, v63, v79

    or-long v63, v73, v63

    aput-wide v63, p1, v62

    shl-long v73, v16, v58

    const/16 v75, 0x2e

    ushr-long v16, v16, v75

    or-long v16, v73, v16

    aput-wide v16, p1, v7

    shl-long v73, v11, v0

    ushr-long v11, v11, v29

    or-long v11, v73, v11

    aput-wide v11, p1, v0

    const/16 v73, 0x2c

    shl-long v73, v14, v73

    ushr-long/2addr v14, v7

    or-long v14, v73, v14

    aput-wide v14, p1, v13

    shl-long v73, v19, v59

    const/16 v75, 0x36

    ushr-long v19, v19, v75

    or-long v19, v73, v19

    aput-wide v19, p1, v18

    const/16 v73, 0x2d

    shl-long v73, v22, v73

    ushr-long v22, v22, v38

    or-long v22, v73, v22

    aput-wide v22, p1, v21

    shl-long v73, v27, v1

    const/16 v75, 0x3e

    ushr-long v27, v27, v75

    or-long v27, v73, v27

    aput-wide v27, p1, v26

    const/16 v73, 0x3e

    shl-long v73, v33, v73

    ushr-long v33, v33, v1

    or-long v33, v73, v33

    aput-wide v33, p1, v1

    shl-long v73, v41, v13

    const/16 v75, 0x3a

    ushr-long v41, v41, v75

    or-long v41, v73, v41

    const/16 v73, 0x7

    aput-wide v41, p1, v73

    const/16 v73, 0x2b

    shl-long v73, v45, v73

    ushr-long v45, v45, v26

    or-long v45, v73, v45

    aput-wide v45, p1, v5

    shl-long v73, v47, v62

    const/16 v75, 0x31

    ushr-long v47, v47, v75

    or-long v47, v73, v47

    aput-wide v47, p1, v6

    const/16 v73, 0x3d

    shl-long v73, v49, v73

    ushr-long v49, v49, v57

    or-long v49, v73, v49

    const/16 v73, 0x16

    aput-wide v49, p1, v73

    const/16 v73, 0x1c

    shl-long v73, v53, v73

    const/16 v75, 0x24

    ushr-long v53, v53, v75

    or-long v53, v73, v53

    aput-wide v53, p1, v57

    const/16 v73, 0x37

    shl-long v73, v65, v73

    ushr-long v65, v65, v30

    or-long v65, v73, v65

    aput-wide v65, p1, v2

    const/16 v73, 0x19

    shl-long v73, v67, v73

    const/16 v75, 0x27

    ushr-long v67, v67, v75

    or-long v67, v73, v67

    const/16 v73, 0xd

    aput-wide v67, p1, v73

    shl-long v73, v69, v26

    const/16 v75, 0x2b

    ushr-long v69, v69, v75

    or-long v69, v73, v69

    aput-wide v69, p1, v58

    const/16 v73, 0x38

    shl-long v73, v71, v73

    ushr-long v71, v71, v2

    or-long v71, v73, v71

    aput-wide v71, p1, v79

    const/16 v73, 0x1b

    shl-long v73, v24, v73

    const/16 v75, 0x25

    ushr-long v24, v24, v75

    or-long v24, v73, v24

    const/16 v73, 0x4

    aput-wide v24, p1, v73

    shl-long v73, v31, v7

    const/16 v75, 0x2c

    ushr-long v31, v31, v75

    or-long v31, v73, v31

    aput-wide v31, p1, v30

    const/16 v73, 0x27

    shl-long v73, v36, v73

    const/16 v75, 0x19

    ushr-long v36, v36, v75

    or-long v36, v73, v36

    aput-wide v36, p1, v35

    shl-long v73, v39, v2

    const/16 v75, 0x38

    ushr-long v39, v39, v75

    or-long v39, v73, v39

    aput-wide v39, p1, v38

    shl-long v73, v43, v35

    const/16 v75, 0x32

    ushr-long v43, v43, v75

    or-long v43, v73, v43

    aput-wide v43, p1, v10

    xor-long v73, v45, v3

    or-long v75, v14, v45

    xor-long v75, v51, v75

    or-long v73, v73, v69

    xor-long v73, v14, v73

    and-long v77, v69, v43

    xor-long v45, v45, v77

    or-long v77, v43, v51

    xor-long v69, v69, v77

    and-long v14, v51, v14

    xor-long v14, v43, v14

    aput-wide v75, p1, v8

    aput-wide v73, p1, v13

    aput-wide v45, p1, v5

    aput-wide v69, p1, v58

    aput-wide v14, p1, v10

    xor-long v43, v49, v3

    or-long v51, v31, v60

    xor-long v51, v53, v51

    and-long v77, v60, v22

    xor-long v77, v31, v77

    or-long v43, v22, v43

    xor-long v43, v60, v43

    or-long v60, v49, v53

    xor-long v22, v22, v60

    and-long v31, v53, v31

    xor-long v31, v49, v31

    aput-wide v51, p1, v57

    aput-wide v77, p1, v30

    aput-wide v43, p1, v59

    aput-wide v22, p1, v21

    const/16 v49, 0x16

    aput-wide v31, p1, v49

    xor-long v49, v39, v3

    or-long v53, v41, v67

    xor-long v53, v11, v53

    and-long v39, v67, v39

    xor-long v39, v41, v39

    and-long v60, v49, v16

    xor-long v60, v67, v60

    or-long v67, v16, v11

    xor-long v49, v49, v67

    and-long v11, v11, v41

    xor-long v11, v16, v11

    aput-wide v53, p1, v0

    const/16 v16, 0x7

    aput-wide v39, p1, v16

    const/16 v16, 0xd

    aput-wide v60, p1, v16

    aput-wide v49, p1, v38

    aput-wide v11, p1, v7

    xor-long v16, v47, v3

    and-long v41, v55, v19

    xor-long v41, v24, v41

    or-long v47, v19, v47

    xor-long v47, v55, v47

    or-long v67, v16, v71

    xor-long v19, v19, v67

    and-long v67, v71, v24

    xor-long v16, v16, v67

    or-long v24, v24, v55

    xor-long v24, v71, v24

    const/16 v55, 0x4

    aput-wide v41, p1, v55

    const/16 v55, 0x5

    aput-wide v47, p1, v55

    aput-wide v19, p1, v18

    aput-wide v16, p1, v6

    aput-wide v24, p1, v79

    xor-long v55, v65, v3

    and-long v67, v55, v36

    xor-long v67, v33, v67

    or-long v71, v36, v63

    xor-long v55, v55, v71

    and-long v71, v63, v27

    xor-long v36, v36, v71

    or-long v71, v27, v33

    xor-long v63, v63, v71

    and-long v33, v33, v65

    xor-long v27, v27, v33

    aput-wide v67, p1, v1

    aput-wide v55, p1, v2

    aput-wide v36, p1, v35

    aput-wide v63, p1, v62

    aput-wide v27, p1, v26

    const/16 v33, 0x1

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->RC:[J

    aget-wide v65, v1, v9

    xor-long v65, v75, v65

    aput-wide v65, p1, v8

    xor-long v71, v73, v77

    xor-long v75, v39, v47

    xor-long v75, v55, v75

    xor-long v71, v71, v75

    shl-long v75, v71, v33

    ushr-long v71, v71, v29

    or-long v71, v75, v71

    xor-long v75, v14, v31

    xor-long v80, v11, v24

    xor-long v71, v71, v27

    xor-long v75, v75, v80

    xor-long v71, v71, v75

    xor-long v75, v45, v43

    xor-long v80, v60, v19

    xor-long v80, v36, v80

    xor-long v75, v75, v80

    shl-long v80, v75, v33

    ushr-long v75, v75, v29

    or-long v75, v80, v75

    xor-long v80, v65, v51

    xor-long v82, v53, v41

    xor-long v75, v75, v67

    xor-long v80, v80, v82

    xor-long v75, v75, v80

    xor-long v80, v69, v22

    xor-long v82, v49, v16

    xor-long v82, v63, v82

    xor-long v80, v80, v82

    shl-long v82, v80, v33

    ushr-long v80, v80, v29

    or-long v80, v82, v80

    xor-long v82, v73, v77

    xor-long v84, v39, v47

    xor-long v80, v80, v55

    xor-long v82, v82, v84

    xor-long v80, v80, v82

    xor-long v82, v14, v31

    xor-long v84, v11, v24

    xor-long v84, v27, v84

    xor-long v82, v82, v84

    shl-long v84, v82, v33

    ushr-long v82, v82, v29

    or-long v82, v84, v82

    xor-long v84, v45, v43

    xor-long v86, v60, v19

    xor-long v82, v82, v36

    xor-long v84, v84, v86

    xor-long v82, v82, v84

    xor-long v84, v65, v51

    xor-long v86, v53, v41

    xor-long v86, v67, v86

    xor-long v84, v84, v86

    shl-long v86, v84, v33

    ushr-long v84, v84, v29

    or-long v84, v86, v84

    xor-long v86, v69, v22

    xor-long v88, v49, v16

    xor-long v84, v84, v63

    xor-long v86, v86, v88

    xor-long v84, v84, v86

    xor-long v65, v65, v71

    aput-wide v65, p1, v8

    xor-long v51, v51, v71

    aput-wide v51, p1, v57

    xor-long v53, v53, v71

    aput-wide v53, p1, v33

    xor-long v41, v41, v71

    const/16 v86, 0x4

    aput-wide v41, p1, v86

    xor-long v67, v67, v71

    aput-wide v67, p1, v34

    xor-long v71, v73, v75

    aput-wide v71, p1, v13

    xor-long v73, v77, v75

    aput-wide v73, p1, v30

    xor-long v39, v39, v75

    const/16 v77, 0x7

    aput-wide v39, p1, v77

    xor-long v47, v47, v75

    const/16 v77, 0x5

    aput-wide v47, p1, v77

    xor-long v55, v55, v75

    aput-wide v55, p1, v2

    xor-long v45, v45, v80

    aput-wide v45, p1, v5

    xor-long v43, v43, v80

    aput-wide v43, p1, v59

    xor-long v60, v60, v80

    const/16 v75, 0xd

    aput-wide v60, p1, v75

    xor-long v19, v19, v80

    aput-wide v19, p1, v18

    xor-long v36, v36, v80

    aput-wide v36, p1, v35

    xor-long v69, v69, v82

    aput-wide v69, p1, v58

    xor-long v22, v22, v82

    aput-wide v22, p1, v21

    xor-long v49, v49, v82

    aput-wide v49, p1, v38

    xor-long v16, v16, v82

    aput-wide v16, p1, v6

    xor-long v63, v63, v82

    aput-wide v63, p1, v62

    xor-long v14, v14, v84

    aput-wide v14, p1, v10

    xor-long v31, v31, v84

    const/16 v75, 0x16

    aput-wide v31, p1, v75

    xor-long v11, v11, v84

    aput-wide v11, p1, v7

    xor-long v24, v24, v84

    aput-wide v24, p1, v79

    xor-long v27, v27, v84

    aput-wide v27, p1, v26

    const/16 v75, 0x24

    shl-long v75, v51, v75

    const/16 v77, 0x1c

    ushr-long v51, v51, v77

    or-long v51, v75, v51

    aput-wide v51, p1, v57

    shl-long v75, v53, v57

    const/16 v77, 0x3d

    ushr-long v53, v53, v77

    or-long v53, v75, v53

    aput-wide v53, p1, v33

    const/16 v75, 0x29

    shl-long v75, v41, v75

    ushr-long v41, v41, v79

    or-long v41, v75, v41

    const/16 v75, 0x4

    aput-wide v41, p1, v75

    shl-long v75, v67, v58

    const/16 v77, 0x2e

    ushr-long v67, v67, v77

    or-long v67, v75, v67

    aput-wide v67, p1, v34

    shl-long v75, v71, v33

    ushr-long v71, v71, v29

    or-long v71, v75, v71

    aput-wide v71, p1, v13

    const/16 v29, 0x2c

    shl-long v75, v73, v29

    ushr-long v73, v73, v7

    or-long v73, v75, v73

    aput-wide v73, p1, v30

    shl-long v75, v39, v59

    const/16 v29, 0x36

    ushr-long v39, v39, v29

    or-long v39, v75, v39

    const/16 v29, 0x7

    aput-wide v39, p1, v29

    const/16 v29, 0x2d

    shl-long v75, v47, v29

    ushr-long v47, v47, v38

    or-long v47, v75, v47

    const/16 v29, 0x5

    aput-wide v47, p1, v29

    shl-long v75, v55, v34

    const/16 v29, 0x3e

    ushr-long v55, v55, v29

    or-long v55, v75, v55

    aput-wide v55, p1, v2

    shl-long v75, v45, v29

    ushr-long v45, v45, v34

    or-long v45, v75, v45

    aput-wide v45, p1, v5

    shl-long v75, v43, v13

    const/16 v29, 0x3a

    ushr-long v43, v43, v29

    or-long v43, v75, v43

    aput-wide v43, p1, v59

    const/16 v29, 0x2b

    shl-long v75, v60, v29

    ushr-long v60, v60, v26

    or-long v60, v75, v60

    const/16 v29, 0xd

    aput-wide v60, p1, v29

    shl-long v75, v19, v62

    const/16 v29, 0x31

    ushr-long v19, v19, v29

    or-long v19, v75, v19

    aput-wide v19, p1, v18

    const/16 v29, 0x3d

    shl-long v75, v36, v29

    ushr-long v36, v36, v57

    or-long v36, v75, v36

    aput-wide v36, p1, v35

    const/16 v29, 0x1c

    shl-long v75, v69, v29

    const/16 v29, 0x24

    ushr-long v69, v69, v29

    or-long v69, v75, v69

    aput-wide v69, p1, v58

    const/16 v29, 0x37

    shl-long v75, v22, v29

    ushr-long v22, v22, v30

    or-long v22, v75, v22

    aput-wide v22, p1, v21

    const/16 v29, 0x19

    shl-long v75, v49, v29

    const/16 v29, 0x27

    ushr-long v49, v49, v29

    or-long v49, v75, v49

    aput-wide v49, p1, v38

    shl-long v75, v16, v26

    const/16 v29, 0x2b

    ushr-long v16, v16, v29

    or-long v16, v75, v16

    aput-wide v16, p1, v6

    const/16 v29, 0x38

    shl-long v75, v63, v29

    ushr-long v63, v63, v2

    or-long v63, v75, v63

    aput-wide v63, p1, v62

    const/16 v29, 0x1b

    shl-long v75, v14, v29

    const/16 v29, 0x25

    ushr-long v14, v14, v29

    or-long v14, v75, v14

    aput-wide v14, p1, v10

    shl-long v75, v31, v7

    const/16 v29, 0x2c

    ushr-long v31, v31, v29

    or-long v31, v75, v31

    const/16 v29, 0x16

    aput-wide v31, p1, v29

    const/16 v29, 0x27

    shl-long v75, v11, v29

    const/16 v29, 0x19

    ushr-long v11, v11, v29

    or-long v11, v75, v11

    aput-wide v11, p1, v7

    shl-long v75, v24, v2

    const/16 v29, 0x38

    ushr-long v24, v24, v29

    or-long v24, v75, v24

    aput-wide v24, p1, v79

    shl-long v75, v27, v35

    const/16 v29, 0x32

    ushr-long v27, v27, v29

    or-long v27, v75, v27

    aput-wide v27, p1, v26

    xor-long v75, v60, v3

    or-long v77, v73, v60

    xor-long v77, v65, v77

    or-long v75, v75, v16

    xor-long v75, v73, v75

    and-long v80, v16, v27

    xor-long v60, v60, v80

    or-long v80, v27, v65

    xor-long v16, v16, v80

    and-long v65, v65, v73

    xor-long v27, v27, v65

    aput-wide v77, p1, v8

    aput-wide v75, p1, v30

    const/16 v29, 0xd

    aput-wide v60, p1, v29

    aput-wide v16, p1, v6

    aput-wide v27, p1, v26

    xor-long v65, v36, v3

    or-long v73, v31, v53

    xor-long v73, v69, v73

    and-long v80, v53, v47

    xor-long v80, v31, v80

    or-long v65, v47, v65

    xor-long v53, v53, v65

    or-long v65, v36, v69

    xor-long v47, v47, v65

    and-long v31, v69, v31

    xor-long v31, v36, v31

    aput-wide v73, p1, v58

    const/16 v29, 0x16

    aput-wide v80, p1, v29

    aput-wide v53, p1, v33

    const/16 v29, 0x5

    aput-wide v47, p1, v29

    aput-wide v31, p1, v35

    xor-long v36, v24, v3

    or-long v65, v43, v49

    xor-long v65, v71, v65

    and-long v24, v49, v24

    xor-long v24, v43, v24

    and-long v69, v36, v67

    xor-long v49, v49, v69

    or-long v69, v67, v71

    xor-long v36, v36, v69

    and-long v43, v71, v43

    xor-long v43, v67, v43

    aput-wide v65, p1, v13

    aput-wide v24, p1, v59

    aput-wide v49, p1, v38

    aput-wide v36, p1, v79

    aput-wide v43, p1, v34

    xor-long v67, v19, v3

    and-long v69, v51, v39

    xor-long v69, v14, v69

    or-long v19, v39, v19

    xor-long v19, v51, v19

    or-long v71, v67, v63

    xor-long v39, v39, v71

    and-long v71, v63, v14

    xor-long v67, v67, v71

    or-long v14, v14, v51

    xor-long v14, v63, v14

    aput-wide v69, p1, v10

    aput-wide v19, p1, v57

    const/16 v29, 0x7

    aput-wide v39, p1, v29

    aput-wide v67, p1, v18

    aput-wide v14, p1, v62

    xor-long v51, v22, v3

    and-long v63, v51, v11

    xor-long v63, v45, v63

    or-long v71, v11, v41

    xor-long v51, v51, v71

    and-long v71, v41, v55

    xor-long v11, v11, v71

    or-long v71, v55, v45

    xor-long v41, v41, v71

    and-long v22, v45, v22

    xor-long v22, v55, v22

    aput-wide v63, p1, v5

    aput-wide v51, p1, v21

    aput-wide v11, p1, v7

    const/16 v29, 0x4

    aput-wide v41, p1, v29

    aput-wide v22, p1, v2

    add-int/lit8 v29, v9, 0x1

    aget-wide v45, v1, v29

    xor-long v45, v77, v45

    aput-wide v45, p1, v8

    const/4 v1, 0x5

    aput-wide v73, p1, v1

    aput-wide v67, p1, v58

    aput-wide v24, p1, v18

    aput-wide v65, p1, v59

    aput-wide v80, p1, v13

    const/16 v1, 0x16

    aput-wide v11, p1, v1

    aput-wide v63, p1, v7

    aput-wide v49, p1, v5

    aput-wide v14, p1, v38

    aput-wide v69, p1, v62

    aput-wide v22, p1, v10

    aput-wide v47, p1, v2

    aput-wide v75, p1, v33

    aput-wide v31, p1, v30

    aput-wide v43, p1, v35

    aput-wide v60, p1, v34

    const/16 v1, 0xd

    aput-wide v36, p1, v1

    aput-wide v41, p1, v79

    const/4 v1, 0x4

    aput-wide v27, p1, v1

    aput-wide v51, p1, v26

    aput-wide v19, p1, v21

    aput-wide v16, p1, v57

    aput-wide v39, p1, v6

    const/4 v1, 0x7

    aput-wide v53, p1, v1

    add-int/lit8 v9, v9, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    const/16 v33, 0x1

    const/16 v34, 0x2

    aget-wide v8, p1, v33

    xor-long/2addr v8, v3

    aput-wide v8, p1, v33

    aget-wide v8, p1, v34

    xor-long/2addr v8, v3

    aput-wide v8, p1, v34

    aget-wide v8, p1, v2

    xor-long/2addr v8, v3

    aput-wide v8, p1, v2

    aget-wide v1, p1, v5

    xor-long/2addr v1, v3

    aput-wide v1, p1, v5

    aget-wide v1, p1, v6

    xor-long/2addr v1, v3

    aput-wide v1, p1, v6

    aget-wide v1, p1, v7

    xor-long/2addr v1, v3

    aput-wide v1, p1, v7

    return-void
.end method
