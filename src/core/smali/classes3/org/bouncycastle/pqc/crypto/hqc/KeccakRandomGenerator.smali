.class Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
.super Ljava/lang/Object;


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected rate:I

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->KeccakRoundConstants:[J

    return-void

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

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x120

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1a

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->dataQueue:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->init(I)V

    return-void
.end method

.method private init(I)V
    .locals 1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x120

    if-eq p1, v0, :cond_1

    const/16 v0, 0x180

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitLength must be one of 128, 224, 256, 288, 384, or 512."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    shl-int/lit8 p1, p1, 0x1

    rsub-int p1, p1, 0x640

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->initSponge(I)V

    return-void
.end method

.method private initSponge(I)V
    .locals 4

    if-lez p1, :cond_0

    const/16 v0, 0x640

    if-ge p1, v0, :cond_0

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->dataQueue:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->bitsInQueue:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->fixedOutputLength:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid rate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private keccakIncAbsorb([BI)V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    shr-int/lit8 v1, v1, 0x3

    move/from16 v3, p2

    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v8, 0x19

    aget-wide v9, v7, v8

    add-long/2addr v9, v5

    int-to-long v11, v1

    const-wide/16 v13, 0x7

    const-wide/16 v15, 0x8

    cmp-long v7, v9, v11

    if-ltz v7, :cond_1

    const/4 v3, 0x0

    :goto_1
    int-to-long v9, v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v17, v7, v8

    sub-long v19, v11, v17

    cmp-long v21, v9, v19

    if-gez v21, :cond_0

    move/from16 v20, v3

    add-long v2, v17, v9

    long-to-int v3, v2

    shr-int/lit8 v2, v3, 0x3

    aget-wide v17, v7, v2

    add-int v3, v20, v4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v21

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v23, v3, v8

    add-long v23, v23, v9

    and-long v9, v23, v13

    mul-long v9, v9, v15

    long-to-int v3, v9

    shl-long v9, v21, v3

    xor-long v9, v17, v9

    aput-wide v9, v7, v2

    add-int/lit8 v3, v20, 0x1

    goto :goto_1

    :cond_0
    sub-long v2, v11, v17

    sub-long/2addr v5, v2

    long-to-int v3, v5

    int-to-long v4, v4

    sub-long v11, v11, v17

    add-long/2addr v4, v11

    long-to-int v4, v4

    const-wide/16 v5, 0x0

    aput-wide v5, v7, v8

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakPermutation([J)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v9, v1, v8

    int-to-long v11, v2

    add-long/2addr v9, v11

    long-to-int v7, v9

    shr-int/lit8 v7, v7, 0x3

    aget-wide v9, v1, v7

    add-int v17, v2, v4

    const/16 p2, 0x19

    aget-byte v8, p1, v17

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v17

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v19, v8, p2

    add-long v19, v19, v11

    and-long v11, v19, v13

    mul-long v11, v11, v15

    long-to-int v8, v11

    shl-long v11, v17, v8

    xor-long/2addr v9, v11

    aput-wide v9, v1, v7

    add-int/lit8 v2, v2, 0x1

    const/16 v8, 0x19

    goto :goto_2

    :cond_2
    const/16 p2, 0x19

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v2, v1, p2

    add-long/2addr v2, v5

    aput-wide v2, v1, p2

    return-void
.end method

.method private keccakIncFinalize(I)V
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v2, 0x19

    aget-wide v3, v1, v2

    long-to-int v4, v3

    shr-int/lit8 v3, v4, 0x3

    aget-wide v4, v1, v3

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v6

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v8, p1, v2

    const-wide/16 v10, 0x7

    and-long/2addr v8, v10

    const-wide/16 v10, 0x8

    mul-long v8, v8, v10

    long-to-int v9, v8

    shl-long/2addr v6, v9

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v1, v0, 0x3

    aget-wide v3, p1, v1

    const/16 v5, 0x80

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v5

    and-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x8

    shl-long/2addr v5, v0

    xor-long/2addr v3, v5

    aput-wide v3, p1, v1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v0, 0x0

    aput-wide v0, p1, v2

    return-void
.end method

.method private keccakIncSqueeze([BI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    const/4 v3, 0x3

    shr-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x19

    if-ge v5, v1, :cond_0

    int-to-long v7, v5

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v10, v9, v6

    cmp-long v12, v7, v10

    if-gez v12, :cond_0

    int-to-long v12, v2

    sub-long v14, v12, v10

    add-long/2addr v14, v7

    shr-long/2addr v14, v3

    long-to-int v6, v14

    aget-wide v14, v9, v6

    sub-long/2addr v12, v10

    add-long/2addr v12, v7

    const-wide/16 v6, 0x7

    and-long/2addr v6, v12

    const-wide/16 v8, 0x8

    mul-long v6, v6, v8

    long-to-int v7, v6

    shr-long v6, v14, v7

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v7, v3, v6

    int-to-long v9, v5

    sub-long/2addr v7, v9

    aput-wide v7, v3, v6

    :goto_1
    if-lez v1, :cond_2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakPermutation([J)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_1

    if-ge v3, v2, :cond_1

    add-int v7, v5, v3

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    shr-int/lit8 v9, v3, 0x3

    aget-wide v9, v8, v9

    and-int/lit8 v8, v3, 0x7

    mul-int/lit8 v8, v8, 0x8

    shr-long v8, v9, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v5, v3

    sub-int/2addr v1, v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    sub-int v3, v2, v3

    int-to-long v8, v3

    aput-wide v8, v7, v6

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static keccakPermutation([J)V
    .locals 90

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    const/4 v9, 0x3

    aget-wide v10, p0, v9

    const/4 v12, 0x4

    aget-wide v13, p0, v12

    const/4 v15, 0x5

    aget-wide v16, p0, v15

    const/16 v18, 0x6

    aget-wide v19, p0, v18

    const/16 v21, 0x7

    aget-wide v22, p0, v21

    const/16 v24, 0x8

    aget-wide v25, p0, v24

    const/16 v27, 0x9

    aget-wide v28, p0, v27

    const/16 v30, 0xa

    aget-wide v31, p0, v30

    const/16 v33, 0xb

    aget-wide v34, p0, v33

    const/16 v36, 0xc

    aget-wide v36, p0, v36

    const/16 v38, 0xd

    aget-wide v38, p0, v38

    const/16 v40, 0xe

    aget-wide v41, p0, v40

    const/16 v43, 0xf

    aget-wide v44, p0, v43

    const/16 v46, 0x10

    aget-wide v46, p0, v46

    const/16 v48, 0x11

    aget-wide v48, p0, v48

    const/16 v50, 0x12

    aget-wide v51, p0, v50

    const/16 v53, 0x13

    aget-wide v54, p0, v53

    const/16 v56, 0x14

    aget-wide v57, p0, v56

    const/16 v59, 0x15

    aget-wide v60, p0, v59

    const/16 v62, 0x16

    aget-wide v62, p0, v62

    const/16 v64, 0x17

    aget-wide v65, p0, v64

    const/16 v67, 0x0

    const/16 v0, 0x18

    aget-wide v68, p0, v0

    const/4 v3, 0x0

    const/16 v70, 0x1

    :goto_0
    if-ge v3, v0, :cond_0

    xor-long v71, v1, v16

    xor-long v71, v71, v31

    xor-long v71, v71, v44

    xor-long v71, v71, v57

    xor-long v73, v4, v19

    xor-long v73, v73, v34

    xor-long v73, v73, v46

    xor-long v73, v73, v60

    xor-long v75, v7, v22

    xor-long v75, v75, v36

    xor-long v75, v75, v48

    xor-long v75, v75, v62

    xor-long v77, v10, v25

    xor-long v77, v77, v38

    xor-long v77, v77, v51

    xor-long v77, v77, v65

    xor-long v79, v13, v28

    xor-long v79, v79, v41

    xor-long v79, v79, v54

    xor-long v79, v79, v68

    shl-long v81, v73, v70

    const/16 v83, -0x1

    ushr-long v84, v73, v83

    or-long v81, v81, v84

    xor-long v81, v81, v79

    shl-long v84, v75, v70

    ushr-long v86, v75, v83

    or-long v84, v84, v86

    xor-long v84, v84, v71

    shl-long v86, v77, v70

    ushr-long v88, v77, v83

    or-long v86, v86, v88

    xor-long v73, v86, v73

    shl-long v86, v79, v70

    ushr-long v79, v79, v83

    or-long v79, v86, v79

    xor-long v75, v79, v75

    shl-long v79, v71, v70

    ushr-long v71, v71, v83

    or-long v71, v79, v71

    xor-long v71, v71, v77

    xor-long v1, v1, v81

    xor-long v16, v16, v81

    xor-long v31, v31, v81

    xor-long v44, v44, v81

    xor-long v57, v57, v81

    xor-long v4, v4, v84

    xor-long v19, v19, v84

    xor-long v34, v34, v84

    xor-long v46, v46, v84

    xor-long v60, v60, v84

    xor-long v7, v7, v73

    xor-long v22, v22, v73

    xor-long v36, v36, v73

    xor-long v48, v48, v73

    xor-long v62, v62, v73

    xor-long v10, v10, v75

    xor-long v25, v25, v75

    xor-long v38, v38, v75

    xor-long v51, v51, v75

    xor-long v65, v65, v75

    xor-long v13, v13, v71

    xor-long v28, v28, v71

    xor-long v41, v41, v71

    xor-long v54, v54, v71

    xor-long v68, v68, v71

    shl-long v71, v4, v70

    const/16 v73, 0x3f

    ushr-long v4, v4, v73

    or-long v4, v71, v4

    const/16 v71, 0x2c

    shl-long v71, v19, v71

    ushr-long v19, v19, v56

    or-long v19, v71, v19

    shl-long v71, v28, v56

    const/16 v73, 0x2c

    ushr-long v28, v28, v73

    or-long v28, v71, v28

    const/16 v71, 0x3d

    shl-long v71, v62, v71

    ushr-long v62, v62, v9

    or-long v62, v71, v62

    const/16 v71, 0x27

    shl-long v71, v41, v71

    const/16 v73, 0x19

    ushr-long v41, v41, v73

    or-long v41, v71, v41

    shl-long v71, v57, v50

    const/16 v73, 0x2e

    ushr-long v57, v57, v73

    or-long v57, v71, v57

    const/16 v71, 0x3e

    shl-long v71, v7, v71

    ushr-long/2addr v7, v6

    or-long v7, v71, v7

    const/16 v71, 0x2b

    shl-long v71, v36, v71

    ushr-long v36, v36, v59

    or-long v36, v71, v36

    const/16 v71, 0x19

    shl-long v71, v38, v71

    const/16 v73, 0x27

    ushr-long v38, v38, v73

    or-long v38, v71, v38

    shl-long v71, v54, v24

    const/16 v73, 0x38

    ushr-long v54, v54, v73

    or-long v54, v71, v54

    const/16 v71, 0x38

    shl-long v71, v65, v71

    ushr-long v65, v65, v24

    or-long v65, v71, v65

    const/16 v71, 0x29

    shl-long v71, v44, v71

    ushr-long v44, v44, v64

    or-long v44, v71, v44

    const/16 v71, 0x1b

    shl-long v71, v13, v71

    const/16 v73, 0x25

    ushr-long v13, v13, v73

    or-long v13, v71, v13

    shl-long v71, v68, v40

    const/16 v73, 0x32

    ushr-long v68, v68, v73

    or-long v68, v71, v68

    shl-long v71, v60, v6

    const/16 v73, 0x3e

    ushr-long v60, v60, v73

    or-long v60, v71, v60

    const/16 v71, 0x37

    shl-long v71, v25, v71

    ushr-long v25, v25, v27

    or-long v25, v71, v25

    const/16 v71, 0x2d

    shl-long v71, v46, v71

    ushr-long v46, v46, v53

    or-long v46, v71, v46

    const/16 v71, 0x24

    shl-long v71, v16, v71

    const/16 v73, 0x1c

    ushr-long v16, v16, v73

    or-long v16, v71, v16

    const/16 v71, 0x1c

    shl-long v71, v10, v71

    const/16 v73, 0x24

    ushr-long v10, v10, v73

    or-long v10, v71, v10

    shl-long v71, v51, v59

    const/16 v73, 0x2b

    ushr-long v51, v51, v73

    or-long v51, v71, v51

    shl-long v71, v48, v43

    const/16 v73, 0x31

    ushr-long v48, v48, v73

    or-long v48, v71, v48

    shl-long v71, v34, v30

    const/16 v73, 0x36

    ushr-long v34, v34, v73

    or-long v34, v71, v34

    shl-long v71, v22, v18

    const/16 v73, 0x3a

    ushr-long v22, v22, v73

    or-long v22, v71, v22

    shl-long v71, v31, v9

    const/16 v73, 0x3d

    ushr-long v31, v31, v73

    or-long v31, v71, v31

    const-wide/16 v71, -0x1

    xor-long v73, v19, v71

    and-long v73, v73, v36

    xor-long v73, v1, v73

    xor-long v75, v36, v71

    and-long v75, v75, v51

    xor-long v75, v19, v75

    xor-long v77, v51, v71

    and-long v77, v77, v68

    xor-long v36, v36, v77

    xor-long v77, v68, v71

    and-long v77, v77, v1

    xor-long v51, v51, v77

    xor-long v1, v1, v71

    and-long v1, v1, v19

    xor-long v1, v68, v1

    xor-long v19, v28, v71

    and-long v19, v19, v31

    xor-long v19, v10, v19

    xor-long v68, v31, v71

    and-long v68, v68, v46

    xor-long v68, v28, v68

    xor-long v77, v46, v71

    and-long v77, v77, v62

    xor-long v31, v31, v77

    xor-long v77, v62, v71

    and-long v77, v77, v10

    xor-long v46, v46, v77

    xor-long v10, v10, v71

    and-long v10, v10, v28

    xor-long v28, v62, v10

    xor-long v10, v22, v71

    and-long v10, v10, v38

    xor-long/2addr v10, v4

    xor-long v62, v38, v71

    and-long v62, v62, v54

    xor-long v62, v22, v62

    xor-long v77, v54, v71

    and-long v77, v77, v57

    xor-long v38, v38, v77

    xor-long v77, v57, v71

    and-long v77, v77, v4

    xor-long v54, v54, v77

    xor-long v4, v4, v71

    and-long v4, v4, v22

    xor-long v4, v57, v4

    xor-long v22, v16, v71

    and-long v22, v22, v34

    xor-long v22, v13, v22

    xor-long v57, v34, v71

    and-long v57, v57, v48

    xor-long v57, v16, v57

    xor-long v77, v48, v71

    and-long v77, v77, v65

    xor-long v34, v34, v77

    xor-long v77, v65, v71

    and-long v77, v77, v13

    xor-long v48, v48, v77

    xor-long v13, v13, v71

    and-long v13, v13, v16

    xor-long v13, v65, v13

    xor-long v16, v25, v71

    and-long v16, v16, v41

    xor-long v16, v7, v16

    xor-long v65, v41, v71

    and-long v65, v65, v44

    xor-long v65, v25, v65

    xor-long v77, v44, v71

    and-long v77, v77, v60

    xor-long v41, v41, v77

    xor-long v77, v60, v71

    and-long v77, v77, v7

    xor-long v44, v44, v77

    xor-long v7, v7, v71

    and-long v7, v7, v25

    xor-long v7, v60, v7

    sget-object v25, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->KeccakRoundConstants:[J

    aget-wide v60, v25, v3

    xor-long v25, v73, v60

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v60, v13

    move-wide v13, v1

    move-wide/from16 v1, v25

    move-wide/from16 v25, v46

    move-wide/from16 v46, v57

    move-wide/from16 v57, v16

    move-wide/from16 v16, v19

    move-wide/from16 v19, v68

    move-wide/from16 v68, v7

    move-wide/from16 v7, v36

    move-wide/from16 v36, v38

    move-wide/from16 v38, v54

    move-wide/from16 v54, v60

    move-wide/from16 v60, v65

    move-wide/from16 v65, v44

    move-wide/from16 v44, v22

    move-wide/from16 v22, v31

    move-wide/from16 v31, v10

    move-wide/from16 v10, v51

    move-wide/from16 v51, v48

    move-wide/from16 v48, v34

    move-wide/from16 v34, v62

    move-wide/from16 v62, v41

    move-wide/from16 v41, v4

    move-wide/from16 v4, v75

    goto/16 :goto_0

    :cond_0
    aput-wide v1, p0, v67

    aput-wide v4, p0, v70

    aput-wide v7, p0, v6

    aput-wide v10, p0, v9

    aput-wide v13, p0, v12

    aput-wide v16, p0, v15

    aput-wide v19, p0, v18

    aput-wide v22, p0, v21

    aput-wide v25, p0, v24

    aput-wide v28, p0, v27

    aput-wide v31, p0, v30

    aput-wide v34, p0, v33

    const/16 v1, 0xc

    aput-wide v36, p0, v1

    const/16 v1, 0xd

    aput-wide v38, p0, v1

    aput-wide v41, p0, v40

    aput-wide v44, p0, v43

    const/16 v1, 0x10

    aput-wide v46, p0, v1

    const/16 v1, 0x11

    aput-wide v48, p0, v1

    aput-wide v51, p0, v50

    aput-wide v54, p0, v53

    aput-wide v57, p0, v56

    aput-wide v60, p0, v59

    const/16 v1, 0x16

    aput-wide v62, p0, v1

    aput-wide v65, p0, v64

    aput-wide v68, p0, v0

    return-void
.end method

.method private static toUnsignedLong(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public SHAKE256_512_ds([B[BI[B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    array-length p2, p4

    invoke-direct {p0, p4, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    const/16 p2, 0x1f

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    const/16 p2, 0x40

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    return-void
.end method

.method public expandSeed([BI)V
    .locals 3

    and-int/lit8 v0, p2, 0x7

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    new-array v2, v1, [B

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public randomGeneratorInit([B[BII)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    invoke-direct {p0, p2, p4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    const/16 p1, 0x1f

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    return-void
.end method

.method public seedExpanderInit([BI)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    const/16 p1, 0x1f

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    return-void
.end method

.method public squeeze([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    return-void
.end method
