.class public Lorg/bouncycastle/crypto/digests/KeccakDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field protected rate:I

.field protected squeezing:Z

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

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
    .locals 2

    const/16 v0, 0x120

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->init(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1

    const/16 v0, 0x120

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/KeccakDigest;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const/16 v1, 0xc0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    iget-boolean p1, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method private KeccakAbsorb([BI)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    ushr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v3, v2, v1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    return-void
.end method

.method private KeccakExtract()V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    ushr-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    return-void
.end method

.method private KeccakPermutation()V
    .locals 92

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    aget-wide v9, v1, v8

    const/4 v11, 0x3

    aget-wide v12, v1, v11

    const/4 v14, 0x4

    aget-wide v15, v1, v14

    const/16 v17, 0x5

    aget-wide v18, v1, v17

    const/16 v20, 0x6

    aget-wide v21, v1, v20

    const/16 v23, 0x7

    aget-wide v24, v1, v23

    const/16 v26, 0x8

    aget-wide v27, v1, v26

    const/16 v29, 0x9

    aget-wide v30, v1, v29

    const/16 v32, 0xa

    aget-wide v33, v1, v32

    const/16 v35, 0xb

    aget-wide v36, v1, v35

    const/16 v38, 0xc

    aget-wide v38, v1, v38

    const/16 v40, 0xd

    aget-wide v40, v1, v40

    const/16 v42, 0xe

    aget-wide v43, v1, v42

    const/16 v45, 0xf

    aget-wide v46, v1, v45

    const/16 v48, 0x10

    aget-wide v48, v1, v48

    const/16 v50, 0x11

    aget-wide v50, v1, v50

    const/16 v52, 0x12

    aget-wide v53, v1, v52

    const/16 v55, 0x13

    aget-wide v56, v1, v55

    const/16 v58, 0x14

    aget-wide v59, v1, v58

    const/16 v61, 0x15

    aget-wide v62, v1, v61

    const/16 v64, 0x16

    aget-wide v64, v1, v64

    const/16 v66, 0x17

    aget-wide v67, v1, v66

    const/16 v69, 0x0

    const/16 v2, 0x18

    aget-wide v70, v1, v2

    const/4 v5, 0x0

    const/16 v72, 0x1

    :goto_0
    if-ge v5, v2, :cond_0

    xor-long v73, v3, v18

    xor-long v73, v73, v33

    xor-long v73, v73, v46

    xor-long v73, v73, v59

    xor-long v75, v6, v21

    xor-long v75, v75, v36

    xor-long v75, v75, v48

    xor-long v75, v75, v62

    xor-long v77, v9, v24

    xor-long v77, v77, v38

    xor-long v77, v77, v50

    xor-long v77, v77, v64

    xor-long v79, v12, v27

    xor-long v79, v79, v40

    xor-long v79, v79, v53

    xor-long v79, v79, v67

    xor-long v81, v15, v30

    xor-long v81, v81, v43

    xor-long v81, v81, v56

    xor-long v81, v81, v70

    shl-long v83, v75, v72

    const/16 v85, -0x1

    ushr-long v86, v75, v85

    or-long v83, v83, v86

    xor-long v83, v83, v81

    shl-long v86, v77, v72

    ushr-long v88, v77, v85

    or-long v86, v86, v88

    xor-long v86, v86, v73

    shl-long v88, v79, v72

    ushr-long v90, v79, v85

    or-long v88, v88, v90

    xor-long v75, v88, v75

    shl-long v88, v81, v72

    ushr-long v81, v81, v85

    or-long v81, v88, v81

    xor-long v77, v81, v77

    shl-long v81, v73, v72

    ushr-long v73, v73, v85

    or-long v73, v81, v73

    xor-long v73, v73, v79

    xor-long v3, v3, v83

    xor-long v18, v18, v83

    xor-long v33, v33, v83

    xor-long v46, v46, v83

    xor-long v59, v59, v83

    xor-long v6, v6, v86

    xor-long v21, v21, v86

    xor-long v36, v36, v86

    xor-long v48, v48, v86

    xor-long v62, v62, v86

    xor-long v9, v9, v75

    xor-long v24, v24, v75

    xor-long v38, v38, v75

    xor-long v50, v50, v75

    xor-long v64, v64, v75

    xor-long v12, v12, v77

    xor-long v27, v27, v77

    xor-long v40, v40, v77

    xor-long v53, v53, v77

    xor-long v67, v67, v77

    xor-long v15, v15, v73

    xor-long v30, v30, v73

    xor-long v43, v43, v73

    xor-long v56, v56, v73

    xor-long v70, v70, v73

    shl-long v73, v6, v72

    const/16 v75, 0x3f

    ushr-long v6, v6, v75

    or-long v6, v73, v6

    const/16 v73, 0x2c

    shl-long v73, v21, v73

    ushr-long v21, v21, v58

    or-long v21, v73, v21

    shl-long v73, v30, v58

    const/16 v75, 0x2c

    ushr-long v30, v30, v75

    or-long v30, v73, v30

    const/16 v73, 0x3d

    shl-long v73, v64, v73

    ushr-long v64, v64, v11

    or-long v64, v73, v64

    const/16 v73, 0x27

    shl-long v73, v43, v73

    const/16 v75, 0x19

    ushr-long v43, v43, v75

    or-long v43, v73, v43

    shl-long v73, v59, v52

    const/16 v75, 0x2e

    ushr-long v59, v59, v75

    or-long v59, v73, v59

    const/16 v73, 0x3e

    shl-long v73, v9, v73

    ushr-long/2addr v9, v8

    or-long v9, v73, v9

    const/16 v73, 0x2b

    shl-long v73, v38, v73

    ushr-long v38, v38, v61

    or-long v38, v73, v38

    const/16 v73, 0x19

    shl-long v73, v40, v73

    const/16 v75, 0x27

    ushr-long v40, v40, v75

    or-long v40, v73, v40

    shl-long v73, v56, v26

    const/16 v75, 0x38

    ushr-long v56, v56, v75

    or-long v56, v73, v56

    const/16 v73, 0x38

    shl-long v73, v67, v73

    ushr-long v67, v67, v26

    or-long v67, v73, v67

    const/16 v73, 0x29

    shl-long v73, v46, v73

    ushr-long v46, v46, v66

    or-long v46, v73, v46

    const/16 v73, 0x1b

    shl-long v73, v15, v73

    const/16 v75, 0x25

    ushr-long v15, v15, v75

    or-long v15, v73, v15

    shl-long v73, v70, v42

    const/16 v75, 0x32

    ushr-long v70, v70, v75

    or-long v70, v73, v70

    shl-long v73, v62, v8

    const/16 v75, 0x3e

    ushr-long v62, v62, v75

    or-long v62, v73, v62

    const/16 v73, 0x37

    shl-long v73, v27, v73

    ushr-long v27, v27, v29

    or-long v27, v73, v27

    const/16 v73, 0x2d

    shl-long v73, v48, v73

    ushr-long v48, v48, v55

    or-long v48, v73, v48

    const/16 v73, 0x24

    shl-long v73, v18, v73

    const/16 v75, 0x1c

    ushr-long v18, v18, v75

    or-long v18, v73, v18

    const/16 v73, 0x1c

    shl-long v73, v12, v73

    const/16 v75, 0x24

    ushr-long v12, v12, v75

    or-long v12, v73, v12

    shl-long v73, v53, v61

    const/16 v75, 0x2b

    ushr-long v53, v53, v75

    or-long v53, v73, v53

    shl-long v73, v50, v45

    const/16 v75, 0x31

    ushr-long v50, v50, v75

    or-long v50, v73, v50

    shl-long v73, v36, v32

    const/16 v75, 0x36

    ushr-long v36, v36, v75

    or-long v36, v73, v36

    shl-long v73, v24, v20

    const/16 v75, 0x3a

    ushr-long v24, v24, v75

    or-long v24, v73, v24

    shl-long v73, v33, v11

    const/16 v75, 0x3d

    ushr-long v33, v33, v75

    or-long v33, v73, v33

    const-wide/16 v73, -0x1

    xor-long v75, v21, v73

    and-long v75, v75, v38

    xor-long v75, v3, v75

    xor-long v77, v38, v73

    and-long v77, v77, v53

    xor-long v77, v21, v77

    xor-long v79, v53, v73

    and-long v79, v79, v70

    xor-long v38, v38, v79

    xor-long v79, v70, v73

    and-long v79, v79, v3

    xor-long v53, v53, v79

    xor-long v3, v3, v73

    and-long v3, v3, v21

    xor-long v3, v70, v3

    xor-long v21, v30, v73

    and-long v21, v21, v33

    xor-long v21, v12, v21

    xor-long v70, v33, v73

    and-long v70, v70, v48

    xor-long v70, v30, v70

    xor-long v79, v48, v73

    and-long v79, v79, v64

    xor-long v33, v33, v79

    xor-long v79, v64, v73

    and-long v79, v79, v12

    xor-long v48, v48, v79

    xor-long v12, v12, v73

    and-long v12, v12, v30

    xor-long v30, v64, v12

    xor-long v12, v24, v73

    and-long v12, v12, v40

    xor-long/2addr v12, v6

    xor-long v64, v40, v73

    and-long v64, v64, v56

    xor-long v64, v24, v64

    xor-long v79, v56, v73

    and-long v79, v79, v59

    xor-long v40, v40, v79

    xor-long v79, v59, v73

    and-long v79, v79, v6

    xor-long v56, v56, v79

    xor-long v6, v6, v73

    and-long v6, v6, v24

    xor-long v6, v59, v6

    xor-long v24, v18, v73

    and-long v24, v24, v36

    xor-long v24, v15, v24

    xor-long v59, v36, v73

    and-long v59, v59, v50

    xor-long v59, v18, v59

    xor-long v79, v50, v73

    and-long v79, v79, v67

    xor-long v36, v36, v79

    xor-long v79, v67, v73

    and-long v79, v79, v15

    xor-long v50, v50, v79

    xor-long v15, v15, v73

    and-long v15, v15, v18

    xor-long v15, v67, v15

    xor-long v18, v27, v73

    and-long v18, v18, v43

    xor-long v18, v9, v18

    xor-long v67, v43, v73

    and-long v67, v67, v46

    xor-long v67, v27, v67

    xor-long v79, v46, v73

    and-long v79, v79, v62

    xor-long v43, v43, v79

    xor-long v79, v62, v73

    and-long v79, v79, v9

    xor-long v46, v46, v79

    xor-long v9, v9, v73

    and-long v9, v9, v27

    xor-long v9, v62, v9

    sget-object v27, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    aget-wide v62, v27, v5

    xor-long v27, v75, v62

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v62, v15

    move-wide v15, v3

    move-wide/from16 v3, v27

    move-wide/from16 v27, v48

    move-wide/from16 v48, v59

    move-wide/from16 v59, v18

    move-wide/from16 v18, v21

    move-wide/from16 v21, v70

    move-wide/from16 v70, v9

    move-wide/from16 v9, v38

    move-wide/from16 v38, v40

    move-wide/from16 v40, v56

    move-wide/from16 v56, v62

    move-wide/from16 v62, v67

    move-wide/from16 v67, v46

    move-wide/from16 v46, v24

    move-wide/from16 v24, v33

    move-wide/from16 v33, v12

    move-wide/from16 v12, v53

    move-wide/from16 v53, v50

    move-wide/from16 v50, v36

    move-wide/from16 v36, v64

    move-wide/from16 v64, v43

    move-wide/from16 v43, v6

    move-wide/from16 v6, v77

    goto/16 :goto_0

    :cond_0
    aput-wide v3, v1, v69

    aput-wide v6, v1, v72

    aput-wide v9, v1, v8

    aput-wide v12, v1, v11

    aput-wide v15, v1, v14

    aput-wide v18, v1, v17

    aput-wide v21, v1, v20

    aput-wide v24, v1, v23

    aput-wide v27, v1, v26

    aput-wide v30, v1, v29

    aput-wide v33, v1, v32

    aput-wide v36, v1, v35

    const/16 v3, 0xc

    aput-wide v38, v1, v3

    const/16 v3, 0xd

    aput-wide v40, v1, v3

    aput-wide v43, v1, v42

    aput-wide v46, v1, v45

    const/16 v3, 0x10

    aput-wide v48, v1, v3

    const/16 v3, 0x11

    aput-wide v50, v1, v3

    aput-wide v53, v1, v52

    aput-wide v56, v1, v55

    aput-wide v59, v1, v58

    aput-wide v62, v1, v61

    const/16 v3, 0x16

    aput-wide v64, v1, v3

    aput-wide v67, v1, v66

    aput-wide v70, v1, v2

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->initSponge(I)V

    return-void
.end method

.method private initSponge(I)V
    .locals 6

    if-lez p1, :cond_1

    const/16 v0, 0x640

    if-ge p1, v0, :cond_1

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_1

    iput p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v4, v3

    if-ge v2, v4, :cond_0

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid rate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v2, v1, 0x3

    aget-byte v3, v0, v2

    and-int/lit8 v4, v1, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    goto :goto_1

    :cond_0
    ushr-int/lit8 v0, v1, 0x6

    and-int/lit8 v1, v1, 0x3f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v7, v6, v2

    iget-object v9, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v9, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v9

    xor-long/2addr v7, v9

    aput-wide v7, v6, v2

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    const-wide/16 v6, 0x1

    shl-long v1, v6, v1

    sub-long/2addr v1, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v7, v6, v0

    iget-object v9, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v9, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v9

    and-long/2addr v1, v9

    xor-long/2addr v1, v7

    aput-wide v1, v6, v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    sub-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x6

    aget-wide v6, v0, v1

    const-wide/high16 v8, -0x8000000000000000L

    xor-long/2addr v6, v8

    aput-wide v6, v0, v1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput-boolean v5, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    return-void
.end method


# virtual methods
.method protected absorb(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    ushr-int/lit8 v2, v0, 0x3

    aput-byte p1, v1, v2

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    iput p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to absorb while squeezing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to absorb with odd length queue"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected absorb([BII)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v1, :cond_3

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    ushr-int/lit8 v1, v1, 0x3

    sub-int v2, v1, v0

    if-ge p3, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shl-int/lit8 p2, p3, 0x3

    add-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    return-void

    :cond_0
    const/4 v3, 0x0

    if-lez v0, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, p2, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sub-int v0, p3, v2

    if-lt v0, v1, :cond_2

    add-int v0, p2, v2

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    add-int/2addr v2, v1

    goto :goto_1

    :cond_2
    add-int/2addr p2, v2

    iget-object p3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, p2, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 p1, v0, 0x3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb while squeezing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb with odd length queue"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected absorbBits(II)V
    .locals 4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/4 v1, 0x7

    if-gt p2, v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v2, :cond_0

    shl-int v2, v0, p2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    ushr-int/lit8 v3, v1, 0x3

    and-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    add-int/2addr v1, p2

    iput v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb while squeezing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb with odd length queue"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'bits\' must be in the range 1 to 7"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->reset()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result p1

    return p1
.end method

.method protected doFinal([BIBI)I
    .locals 0

    if-lez p4, :cond_0

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorbBits(II)V

    :cond_0
    iget p3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long p3, p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->reset()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keccak-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->init(I)V

    return-void
.end method

.method protected squeeze([BIJ)V
    .locals 9

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->padAndSwitchToSqueezingPhase()V

    :cond_0
    const-wide/16 v0, 0x8

    rem-long v2, p3, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    :goto_0
    cmp-long v2, v4, p3

    if-gez v2, :cond_2

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    :cond_1
    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    int-to-long v2, v2

    sub-long v6, p3, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v6, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iget v7, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x8

    div-long v7, v4, v0

    long-to-int v8, v7

    add-int/2addr v8, p2

    div-int/lit8 v7, v3, 0x8

    invoke-static {v2, v6, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    int-to-long v2, v3

    add-long/2addr v4, v2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "outputLength not a multiple of 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public update(B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorb(B)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    return-void
.end method
