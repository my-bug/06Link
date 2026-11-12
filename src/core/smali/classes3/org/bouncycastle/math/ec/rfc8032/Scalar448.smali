.class abstract Lorg/bouncycastle/math/ec/rfc8032/Scalar448;
.super Ljava/lang/Object;


# static fields
.field private static final L:[I

.field private static final L4_0:I = 0x29eec34

.field private static final L4_1:I = 0x1cf5b55

.field private static final L4_2:I = 0x9c2ab72

.field private static final L4_3:I = 0xf635c8e

.field private static final L4_4:I = 0x5bf7a4c

.field private static final L4_5:I = 0xd944a72

.field private static final L4_6:I = 0x8eec492

.field private static final L4_7:I = 0x20cd7705

.field private static final LSq:[I

.field private static final L_0:I = 0x4a7bb0d

.field private static final L_1:I = 0x873d6d5

.field private static final L_2:I = 0xa70aadc

.field private static final L_3:I = 0x3d8d723

.field private static final L_4:I = 0x96fde93

.field private static final L_5:I = 0xb65129c

.field private static final L_6:I = 0x63bb124

.field private static final L_7:I = 0x8335dc1

.field private static final M26L:J = 0x3ffffffL

.field private static final M28L:J = 0xfffffffL

.field private static final M32L:J = 0xffffffffL

.field private static final SCALAR_BYTES:I = 0x39

.field static final SIZE:I = 0xe

.field private static final TARGET_LENGTH:I = 0x1bf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->LSq:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x54a7bb0d
        0x2378c292
        -0x723a70ab
        0x216cc272
        -0x5129c970
        -0x3bb124b7
        0x7cca23e9
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data

    :array_1
    .array-data 4
        0x1ba1fea9
        -0x3e520448
        0x49e0a8b2    # 1840406.2f
        -0x46e40ac9
        -0x189b27eb
        0x4525492b
        -0x5d478e93    # -4.9993394E-18f
        0x4ae17cf6    # 7388795.0f
        -0x45c3b83c
        -0xe5633ec
        0x7e4d070a
        -0x6dfad435
        -0x607dc48e
        -0x3cbfd56d
        0x55ac2279
        -0x6e439eb7
        0x46e2c7aa
        0x10b66139
        -0x2894e4b8
        -0x1dd8925c
        -0x419aee0c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xfffffff
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkVar([B[I)Z
    .locals 1

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    const/16 p0, 0xe

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static decode([B[I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    return-void
.end method

.method static getOrderWnafVar(I[B)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    return-void
.end method

.method static multiply225Var([I[I[I)V
    .locals 9

    const/16 v0, 0x16

    new-array v7, v0, [I

    const/16 v6, 0xe

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    move-object v4, p0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/math/raw/Nat;->mul([III[III[II)V

    const/4 p0, 0x7

    aget p0, v1, p0

    const/4 p1, 0x0

    if-gez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    const/16 v1, 0xe

    const/16 v2, 0x8

    invoke-static {v1, p0, p1, v7, v2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    invoke-static {v1, v4, p1, v7, v2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    :cond_0
    const/16 p0, 0x58

    new-array p0, p0, [B

    invoke-static {v7, p1, v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce704([B)[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    return-void
.end method

.method static reduce704([B)[B
    .locals 76

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    move-wide/from16 v16, v4

    int-to-long v4, v15

    and-long v4, v4, v16

    const/16 v15, 0x12

    invoke-static {v0, v15}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v15

    shl-int/2addr v15, v6

    move-wide/from16 v19, v7

    const/16 v18, 0x4

    int-to-long v6, v15

    and-long v6, v6, v16

    const/16 v8, 0x15

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long v14, v14, v16

    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    move-wide/from16 v21, v10

    int-to-long v9, v8

    and-long v9, v9, v16

    const/16 v8, 0x1c

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v11

    move-wide/from16 v23, v9

    const/16 v10, 0x1c

    int-to-long v8, v11

    and-long v8, v8, v16

    const/16 v11, 0x20

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v11

    shl-int/lit8 v11, v11, 0x4

    const/16 v25, 0x1c

    int-to-long v10, v11

    and-long v10, v10, v16

    const/16 v1, 0x23

    move-wide/from16 v26, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    and-long v2, v2, v16

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    move-wide/from16 v28, v2

    int-to-long v1, v1

    and-long v1, v1, v16

    const/16 v3, 0x2a

    move-wide/from16 v30, v1

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v16

    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v32, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x31

    move-wide/from16 v34, v1

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v16

    const/16 v3, 0x35

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v36, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x38

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v38, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x3c

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v40, v1

    int-to-long v1, v3

    and-long v42, v1, v16

    const/16 v3, 0x3f

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v44, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x43

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v46, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x46

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v48, v1

    int-to-long v1, v3

    and-long v50, v1, v16

    const/16 v3, 0x4a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v52, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x4d

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v54, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x51

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v56, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x54

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v0

    move-wide/from16 v58, v1

    int-to-long v0, v0

    and-long v2, v0, v16

    ushr-long v2, v2, v25

    const-wide/32 v16, 0xfffffff

    and-long v0, v0, v16

    const-wide/32 v60, 0x29eec34

    mul-long v62, v2, v60

    add-long v10, v10, v62

    const-wide/32 v62, 0x1cf5b55

    mul-long v64, v2, v62

    add-long v28, v28, v64

    const-wide/32 v64, 0x9c2ab72

    mul-long v66, v2, v64

    add-long v30, v30, v66

    const-wide/32 v66, 0xf635c8e

    mul-long v68, v2, v66

    add-long v32, v32, v68

    const-wide/32 v68, 0x5bf7a4c

    mul-long v70, v2, v68

    add-long v34, v34, v70

    const-wide/32 v70, 0xd944a72

    mul-long v72, v2, v70

    add-long v36, v36, v72

    const-wide/32 v72, 0x8eec492

    mul-long v74, v2, v72

    add-long v38, v38, v74

    const-wide/32 v74, 0x20cd7705

    mul-long v2, v2, v74

    add-long v2, v40, v2

    ushr-long v40, v50, v25

    add-long v40, v54, v40

    and-long v50, v52, v16

    ushr-long v52, v40, v25

    add-long v52, v56, v52

    and-long v40, v40, v16

    ushr-long v54, v52, v25

    add-long v54, v58, v54

    and-long v52, v52, v16

    ushr-long v56, v54, v25

    add-long v0, v0, v56

    and-long v54, v54, v16

    mul-long v56, v0, v60

    add-long v8, v8, v56

    mul-long v56, v0, v62

    add-long v10, v10, v56

    mul-long v56, v0, v64

    add-long v28, v28, v56

    mul-long v56, v0, v66

    add-long v30, v30, v56

    mul-long v56, v0, v68

    add-long v32, v32, v56

    mul-long v56, v0, v70

    add-long v34, v34, v56

    mul-long v56, v0, v72

    add-long v36, v36, v56

    mul-long v0, v0, v74

    add-long v38, v38, v0

    mul-long v0, v54, v60

    add-long v0, v23, v0

    mul-long v23, v54, v62

    add-long v8, v8, v23

    mul-long v23, v54, v64

    add-long v10, v10, v23

    mul-long v23, v54, v66

    add-long v28, v28, v23

    mul-long v23, v54, v68

    add-long v30, v30, v23

    mul-long v23, v54, v70

    add-long v32, v32, v23

    mul-long v23, v54, v72

    add-long v34, v34, v23

    mul-long v54, v54, v74

    add-long v36, v36, v54

    mul-long v23, v52, v60

    add-long v14, v14, v23

    mul-long v23, v52, v62

    add-long v0, v0, v23

    mul-long v23, v52, v64

    add-long v8, v8, v23

    mul-long v23, v52, v66

    add-long v10, v10, v23

    mul-long v23, v52, v68

    add-long v28, v28, v23

    mul-long v23, v52, v70

    add-long v30, v30, v23

    mul-long v23, v52, v72

    add-long v32, v32, v23

    mul-long v52, v52, v74

    add-long v34, v34, v52

    ushr-long v23, v42, v25

    add-long v23, v46, v23

    and-long v42, v44, v16

    ushr-long v44, v23, v25

    add-long v44, v48, v44

    and-long v23, v23, v16

    ushr-long v46, v44, v25

    add-long v50, v50, v46

    and-long v44, v44, v16

    ushr-long v46, v50, v25

    add-long v40, v40, v46

    and-long v46, v50, v16

    mul-long v48, v40, v60

    add-long v6, v6, v48

    mul-long v48, v40, v62

    add-long v14, v14, v48

    mul-long v48, v40, v64

    add-long v0, v0, v48

    mul-long v48, v40, v66

    add-long v8, v8, v48

    mul-long v48, v40, v68

    add-long v10, v10, v48

    mul-long v48, v40, v70

    add-long v28, v28, v48

    mul-long v48, v40, v72

    add-long v30, v30, v48

    mul-long v40, v40, v74

    add-long v32, v32, v40

    mul-long v40, v46, v60

    add-long v4, v4, v40

    mul-long v40, v46, v62

    add-long v6, v6, v40

    mul-long v40, v46, v64

    add-long v14, v14, v40

    mul-long v40, v46, v66

    add-long v0, v0, v40

    mul-long v40, v46, v68

    add-long v8, v8, v40

    mul-long v40, v46, v70

    add-long v10, v10, v40

    mul-long v40, v46, v72

    add-long v28, v28, v40

    mul-long v46, v46, v74

    add-long v30, v30, v46

    mul-long v40, v44, v60

    add-long v12, v12, v40

    mul-long v40, v44, v62

    add-long v4, v4, v40

    mul-long v40, v44, v64

    add-long v6, v6, v40

    mul-long v40, v44, v66

    add-long v14, v14, v40

    mul-long v40, v44, v68

    add-long v0, v0, v40

    mul-long v40, v44, v70

    add-long v8, v8, v40

    mul-long v40, v44, v72

    add-long v10, v10, v40

    mul-long v44, v44, v74

    add-long v28, v28, v44

    ushr-long v40, v36, v25

    add-long v38, v38, v40

    and-long v36, v36, v16

    ushr-long v40, v38, v25

    add-long v2, v2, v40

    and-long v40, v38, v16

    ushr-long v44, v2, v25

    add-long v42, v42, v44

    and-long v2, v2, v16

    ushr-long v44, v42, v25

    add-long v23, v23, v44

    and-long v42, v42, v16

    mul-long v44, v23, v60

    add-long v21, v21, v44

    mul-long v44, v23, v62

    add-long v12, v12, v44

    mul-long v44, v23, v64

    add-long v4, v4, v44

    mul-long v44, v23, v66

    add-long v6, v6, v44

    mul-long v44, v23, v68

    add-long v14, v14, v44

    mul-long v44, v23, v70

    add-long v0, v0, v44

    mul-long v44, v23, v72

    add-long v8, v8, v44

    mul-long v23, v23, v74

    add-long v10, v10, v23

    mul-long v60, v60, v42

    add-long v19, v19, v60

    mul-long v62, v62, v42

    add-long v21, v21, v62

    mul-long v64, v64, v42

    add-long v12, v12, v64

    mul-long v66, v66, v42

    add-long v4, v4, v66

    mul-long v68, v68, v42

    add-long v6, v6, v68

    mul-long v70, v70, v42

    add-long v14, v14, v70

    mul-long v72, v72, v42

    add-long v0, v0, v72

    mul-long v42, v42, v74

    add-long v8, v8, v42

    const-wide/16 v23, 0x4

    mul-long v2, v2, v23

    const/16 v18, 0x1a

    ushr-long v23, v40, v18

    add-long v2, v2, v23

    const-wide/32 v23, 0x3ffffff

    and-long v38, v38, v23

    const-wide/16 v40, 0x1

    add-long v2, v2, v40

    const-wide/32 v42, 0x4a7bb0d

    mul-long v42, v42, v2

    add-long v26, v26, v42

    const-wide/32 v42, 0x873d6d5

    mul-long v42, v42, v2

    add-long v19, v19, v42

    const-wide/32 v42, 0xa70aadc

    mul-long v42, v42, v2

    add-long v21, v21, v42

    const-wide/32 v42, 0x3d8d723

    mul-long v42, v42, v2

    add-long v12, v12, v42

    const-wide/32 v42, 0x96fde93

    mul-long v42, v42, v2

    add-long v4, v4, v42

    const-wide/32 v42, 0xb65129c

    mul-long v42, v42, v2

    add-long v6, v6, v42

    const-wide/32 v42, 0x63bb124

    mul-long v42, v42, v2

    add-long v14, v14, v42

    const-wide/32 v42, 0x8335dc1

    mul-long v2, v2, v42

    add-long/2addr v0, v2

    ushr-long v2, v26, v25

    add-long v19, v19, v2

    and-long v2, v26, v16

    ushr-long v26, v19, v25

    add-long v21, v21, v26

    and-long v19, v19, v16

    ushr-long v26, v21, v25

    add-long v12, v12, v26

    and-long v21, v21, v16

    ushr-long v26, v12, v25

    add-long v4, v4, v26

    and-long v12, v12, v16

    ushr-long v26, v4, v25

    add-long v6, v6, v26

    and-long v4, v4, v16

    ushr-long v26, v6, v25

    add-long v14, v14, v26

    and-long v6, v6, v16

    ushr-long v26, v14, v25

    add-long v0, v0, v26

    and-long v14, v14, v16

    ushr-long v26, v0, v25

    add-long v8, v8, v26

    and-long v0, v0, v16

    ushr-long v26, v8, v25

    add-long v10, v10, v26

    and-long v8, v8, v16

    ushr-long v26, v10, v25

    add-long v28, v28, v26

    and-long v10, v10, v16

    ushr-long v26, v28, v25

    add-long v30, v30, v26

    and-long v26, v28, v16

    ushr-long v28, v30, v25

    add-long v32, v32, v28

    and-long v28, v30, v16

    ushr-long v30, v32, v25

    add-long v34, v34, v30

    and-long v30, v32, v16

    ushr-long v32, v34, v25

    add-long v36, v36, v32

    and-long v32, v34, v16

    ushr-long v34, v36, v25

    add-long v38, v38, v34

    and-long v34, v36, v16

    ushr-long v36, v38, v18

    and-long v23, v38, v23

    sub-long v36, v36, v40

    const-wide/32 v38, 0x4a7bb0d

    and-long v38, v36, v38

    sub-long v2, v2, v38

    const-wide/32 v38, 0x873d6d5

    and-long v38, v36, v38

    sub-long v19, v19, v38

    const-wide/32 v38, 0xa70aadc

    and-long v38, v36, v38

    sub-long v21, v21, v38

    const-wide/32 v38, 0x3d8d723

    and-long v38, v36, v38

    sub-long v12, v12, v38

    const-wide/32 v38, 0x96fde93

    and-long v38, v36, v38

    sub-long v4, v4, v38

    const-wide/32 v38, 0xb65129c

    and-long v38, v36, v38

    sub-long v6, v6, v38

    const-wide/32 v38, 0x63bb124

    and-long v38, v36, v38

    sub-long v14, v14, v38

    const-wide/32 v38, 0x8335dc1

    and-long v36, v36, v38

    sub-long v0, v0, v36

    shr-long v36, v2, v25

    add-long v19, v19, v36

    and-long v2, v2, v16

    shr-long v36, v19, v25

    add-long v21, v21, v36

    and-long v19, v19, v16

    shr-long v36, v21, v25

    add-long v12, v12, v36

    and-long v21, v21, v16

    shr-long v36, v12, v25

    add-long v4, v4, v36

    and-long v12, v12, v16

    shr-long v36, v4, v25

    add-long v6, v6, v36

    and-long v4, v4, v16

    shr-long v36, v6, v25

    add-long v14, v14, v36

    and-long v6, v6, v16

    shr-long v36, v14, v25

    add-long v0, v0, v36

    and-long v14, v14, v16

    shr-long v36, v0, v25

    add-long v8, v8, v36

    and-long v0, v0, v16

    shr-long v36, v8, v25

    add-long v10, v10, v36

    and-long v8, v8, v16

    shr-long v36, v10, v25

    add-long v26, v26, v36

    and-long v10, v10, v16

    shr-long v36, v26, v25

    add-long v28, v28, v36

    and-long v26, v26, v16

    shr-long v36, v28, v25

    add-long v30, v30, v36

    and-long v28, v28, v16

    shr-long v36, v30, v25

    add-long v32, v32, v36

    and-long v30, v30, v16

    shr-long v36, v32, v25

    add-long v34, v34, v36

    and-long v32, v32, v16

    shr-long v36, v34, v25

    add-long v23, v23, v36

    and-long v16, v34, v16

    move-wide/from16 v34, v0

    const/16 v0, 0x39

    new-array v0, v0, [B

    shl-long v18, v19, v25

    or-long v2, v2, v18

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v12, v25

    or-long v1, v21, v1

    const/4 v3, 0x7

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v6, v25

    or-long/2addr v1, v4

    const/16 v3, 0xe

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v34, v25

    or-long/2addr v1, v14

    const/16 v3, 0x15

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v10, v25

    or-long/2addr v1, v8

    const/16 v10, 0x1c

    invoke-static {v1, v2, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v28, v10

    or-long v1, v26, v1

    const/16 v3, 0x23

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v32, v10

    or-long v1, v30, v1

    const/16 v3, 0x2a

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v23, v10

    or-long v1, v16, v1

    const/16 v3, 0x31

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    return-object v0
.end method

.method static reduce912([B)[B
    .locals 92

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    move-wide/from16 v16, v4

    int-to-long v4, v15

    and-long v4, v4, v16

    const/16 v15, 0x12

    invoke-static {v0, v15}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v15

    shl-int/2addr v15, v6

    move-wide/from16 v19, v7

    const/16 v18, 0x4

    int-to-long v6, v15

    and-long v6, v6, v16

    const/16 v8, 0x15

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long v14, v14, v16

    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    move-wide/from16 v21, v10

    int-to-long v9, v8

    and-long v9, v9, v16

    const/16 v8, 0x1c

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v11

    move-wide/from16 v23, v9

    const/16 v10, 0x1c

    int-to-long v8, v11

    and-long v8, v8, v16

    const/16 v11, 0x20

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v11

    shl-int/lit8 v11, v11, 0x4

    const/16 v25, 0x1c

    int-to-long v10, v11

    and-long v10, v10, v16

    const/16 v1, 0x23

    move-wide/from16 v26, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    and-long v2, v2, v16

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    move-wide/from16 v28, v2

    int-to-long v1, v1

    and-long v1, v1, v16

    const/16 v3, 0x2a

    move-wide/from16 v30, v1

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v16

    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v32, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x31

    move-wide/from16 v34, v1

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v16

    const/16 v3, 0x35

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v36, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x38

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v38, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x3c

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v40, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x3f

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v42, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x43

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v44, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x46

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v46, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x4a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v48, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x4d

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v50, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x51

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v52, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x54

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v54, v1

    int-to-long v1, v3

    and-long v56, v1, v16

    const/16 v3, 0x58

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v58, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x5b

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v60, v1

    int-to-long v1, v3

    and-long v62, v1, v16

    const/16 v3, 0x5f

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v64, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x62

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v66, v1

    int-to-long v1, v3

    and-long v68, v1, v16

    const/16 v3, 0x66

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v70, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x69

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v72, v1

    int-to-long v1, v3

    and-long v74, v1, v16

    const/16 v3, 0x6d

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v76, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x70

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode16([BI)I

    move-result v0

    move-wide/from16 v78, v1

    int-to-long v0, v0

    and-long v0, v0, v16

    const-wide/32 v2, 0x29eec34

    mul-long v16, v0, v2

    add-long v16, v40, v16

    const-wide/32 v40, 0x1cf5b55

    mul-long v80, v0, v40

    add-long v42, v42, v80

    const-wide/32 v80, 0x9c2ab72

    mul-long v82, v0, v80

    add-long v44, v44, v82

    const-wide/32 v82, 0xf635c8e

    mul-long v84, v0, v82

    add-long v46, v46, v84

    const-wide/32 v84, 0x5bf7a4c

    mul-long v86, v0, v84

    add-long v48, v48, v86

    const-wide/32 v86, 0xd944a72

    mul-long v88, v0, v86

    add-long v50, v50, v88

    const-wide/32 v88, 0x8eec492

    mul-long v90, v0, v88

    add-long v52, v52, v90

    const-wide/32 v90, 0x20cd7705

    mul-long v0, v0, v90

    add-long v0, v54, v0

    ushr-long v54, v74, v25

    add-long v54, v78, v54

    const-wide/32 v74, 0xfffffff

    and-long v76, v76, v74

    mul-long v78, v54, v2

    add-long v38, v38, v78

    mul-long v78, v54, v40

    add-long v16, v16, v78

    mul-long v78, v54, v80

    add-long v42, v42, v78

    mul-long v78, v54, v82

    add-long v44, v44, v78

    mul-long v78, v54, v84

    add-long v46, v46, v78

    mul-long v78, v54, v86

    add-long v48, v48, v78

    mul-long v78, v54, v88

    add-long v50, v50, v78

    mul-long v54, v54, v90

    add-long v52, v52, v54

    mul-long v54, v76, v2

    add-long v36, v36, v54

    mul-long v54, v76, v40

    add-long v38, v38, v54

    mul-long v54, v76, v80

    add-long v16, v16, v54

    mul-long v54, v76, v82

    add-long v42, v42, v54

    mul-long v54, v76, v84

    add-long v44, v44, v54

    mul-long v54, v76, v86

    add-long v46, v46, v54

    mul-long v54, v76, v88

    add-long v48, v48, v54

    mul-long v76, v76, v90

    add-long v50, v50, v76

    ushr-long v54, v68, v25

    add-long v54, v72, v54

    and-long v68, v70, v74

    mul-long v70, v54, v2

    add-long v34, v34, v70

    mul-long v70, v54, v40

    add-long v36, v36, v70

    mul-long v70, v54, v80

    add-long v38, v38, v70

    mul-long v70, v54, v82

    add-long v16, v16, v70

    mul-long v70, v54, v84

    add-long v42, v42, v70

    mul-long v70, v54, v86

    add-long v44, v44, v70

    mul-long v70, v54, v88

    add-long v46, v46, v70

    mul-long v54, v54, v90

    add-long v48, v48, v54

    mul-long v54, v68, v2

    add-long v32, v32, v54

    mul-long v54, v68, v40

    add-long v34, v34, v54

    mul-long v54, v68, v80

    add-long v36, v36, v54

    mul-long v54, v68, v82

    add-long v38, v38, v54

    mul-long v54, v68, v84

    add-long v16, v16, v54

    mul-long v54, v68, v86

    add-long v42, v42, v54

    mul-long v54, v68, v88

    add-long v44, v44, v54

    mul-long v68, v68, v90

    add-long v46, v46, v68

    ushr-long v54, v62, v25

    add-long v54, v66, v54

    and-long v62, v64, v74

    mul-long v64, v54, v2

    add-long v30, v30, v64

    mul-long v64, v54, v40

    add-long v32, v32, v64

    mul-long v64, v54, v80

    add-long v34, v34, v64

    mul-long v64, v54, v82

    add-long v36, v36, v64

    mul-long v64, v54, v84

    add-long v38, v38, v64

    mul-long v64, v54, v86

    add-long v16, v16, v64

    mul-long v64, v54, v88

    add-long v42, v42, v64

    mul-long v54, v54, v90

    add-long v44, v44, v54

    mul-long v54, v62, v2

    add-long v28, v28, v54

    mul-long v54, v62, v40

    add-long v30, v30, v54

    mul-long v54, v62, v80

    add-long v32, v32, v54

    mul-long v54, v62, v82

    add-long v34, v34, v54

    mul-long v54, v62, v84

    add-long v36, v36, v54

    mul-long v54, v62, v86

    add-long v38, v38, v54

    mul-long v54, v62, v88

    add-long v16, v16, v54

    mul-long v62, v62, v90

    add-long v42, v42, v62

    ushr-long v54, v56, v25

    add-long v54, v60, v54

    and-long v56, v58, v74

    mul-long v58, v54, v2

    add-long v10, v10, v58

    mul-long v58, v54, v40

    add-long v28, v28, v58

    mul-long v58, v54, v80

    add-long v30, v30, v58

    mul-long v58, v54, v82

    add-long v32, v32, v58

    mul-long v58, v54, v84

    add-long v34, v34, v58

    mul-long v58, v54, v86

    add-long v36, v36, v58

    mul-long v58, v54, v88

    add-long v38, v38, v58

    mul-long v54, v54, v90

    add-long v16, v16, v54

    ushr-long v54, v48, v25

    add-long v50, v50, v54

    and-long v48, v48, v74

    ushr-long v54, v50, v25

    add-long v52, v52, v54

    and-long v50, v50, v74

    ushr-long v54, v52, v25

    add-long v0, v0, v54

    and-long v52, v52, v74

    ushr-long v54, v0, v25

    add-long v56, v56, v54

    and-long v0, v0, v74

    mul-long v54, v56, v2

    add-long v8, v8, v54

    mul-long v54, v56, v40

    add-long v10, v10, v54

    mul-long v54, v56, v80

    add-long v28, v28, v54

    mul-long v54, v56, v82

    add-long v30, v30, v54

    mul-long v54, v56, v84

    add-long v32, v32, v54

    mul-long v54, v56, v86

    add-long v34, v34, v54

    mul-long v54, v56, v88

    add-long v36, v36, v54

    mul-long v56, v56, v90

    add-long v38, v38, v56

    mul-long v54, v0, v2

    add-long v23, v23, v54

    mul-long v54, v0, v40

    add-long v8, v8, v54

    mul-long v54, v0, v80

    add-long v10, v10, v54

    mul-long v54, v0, v82

    add-long v28, v28, v54

    mul-long v54, v0, v84

    add-long v30, v30, v54

    mul-long v54, v0, v86

    add-long v32, v32, v54

    mul-long v54, v0, v88

    add-long v34, v34, v54

    mul-long v0, v0, v90

    add-long v36, v36, v0

    mul-long v0, v52, v2

    add-long/2addr v14, v0

    mul-long v0, v52, v40

    add-long v23, v23, v0

    mul-long v0, v52, v80

    add-long/2addr v8, v0

    mul-long v0, v52, v82

    add-long/2addr v10, v0

    mul-long v0, v52, v84

    add-long v28, v28, v0

    mul-long v0, v52, v86

    add-long v30, v30, v0

    mul-long v0, v52, v88

    add-long v32, v32, v0

    mul-long v52, v52, v90

    add-long v34, v34, v52

    ushr-long v0, v42, v25

    add-long v44, v44, v0

    and-long v0, v42, v74

    ushr-long v42, v44, v25

    add-long v46, v46, v42

    and-long v42, v44, v74

    ushr-long v44, v46, v25

    add-long v48, v48, v44

    and-long v44, v46, v74

    ushr-long v46, v48, v25

    add-long v50, v50, v46

    and-long v46, v48, v74

    mul-long v48, v50, v2

    add-long v6, v6, v48

    mul-long v48, v50, v40

    add-long v14, v14, v48

    mul-long v48, v50, v80

    add-long v23, v23, v48

    mul-long v48, v50, v82

    add-long v8, v8, v48

    mul-long v48, v50, v84

    add-long v10, v10, v48

    mul-long v48, v50, v86

    add-long v28, v28, v48

    mul-long v48, v50, v88

    add-long v30, v30, v48

    mul-long v50, v50, v90

    add-long v32, v32, v50

    mul-long v48, v46, v2

    add-long v4, v4, v48

    mul-long v48, v46, v40

    add-long v6, v6, v48

    mul-long v48, v46, v80

    add-long v14, v14, v48

    mul-long v48, v46, v82

    add-long v23, v23, v48

    mul-long v48, v46, v84

    add-long v8, v8, v48

    mul-long v48, v46, v86

    add-long v10, v10, v48

    mul-long v48, v46, v88

    add-long v28, v28, v48

    mul-long v46, v46, v90

    add-long v30, v30, v46

    mul-long v46, v44, v2

    add-long v12, v12, v46

    mul-long v46, v44, v40

    add-long v4, v4, v46

    mul-long v46, v44, v80

    add-long v6, v6, v46

    mul-long v46, v44, v82

    add-long v14, v14, v46

    mul-long v46, v44, v84

    add-long v23, v23, v46

    mul-long v46, v44, v86

    add-long v8, v8, v46

    mul-long v46, v44, v88

    add-long v10, v10, v46

    mul-long v44, v44, v90

    add-long v28, v28, v44

    ushr-long v44, v36, v25

    add-long v38, v38, v44

    and-long v36, v36, v74

    ushr-long v44, v38, v25

    add-long v16, v16, v44

    and-long v44, v38, v74

    ushr-long v46, v16, v25

    add-long v0, v0, v46

    and-long v16, v16, v74

    ushr-long v46, v0, v25

    add-long v42, v42, v46

    and-long v0, v0, v74

    mul-long v46, v42, v2

    add-long v21, v21, v46

    mul-long v46, v42, v40

    add-long v12, v12, v46

    mul-long v46, v42, v80

    add-long v4, v4, v46

    mul-long v46, v42, v82

    add-long v6, v6, v46

    mul-long v46, v42, v84

    add-long v14, v14, v46

    mul-long v46, v42, v86

    add-long v23, v23, v46

    mul-long v46, v42, v88

    add-long v8, v8, v46

    mul-long v42, v42, v90

    add-long v10, v10, v42

    mul-long v2, v2, v0

    add-long v2, v19, v2

    mul-long v40, v40, v0

    add-long v21, v21, v40

    mul-long v80, v80, v0

    add-long v12, v12, v80

    mul-long v82, v82, v0

    add-long v4, v4, v82

    mul-long v84, v84, v0

    add-long v6, v6, v84

    mul-long v86, v86, v0

    add-long v14, v14, v86

    mul-long v88, v88, v0

    add-long v23, v23, v88

    mul-long v0, v0, v90

    add-long/2addr v8, v0

    const-wide/16 v0, 0x4

    mul-long v16, v16, v0

    const/16 v0, 0x1a

    ushr-long v18, v44, v0

    add-long v16, v16, v18

    const-wide/32 v18, 0x3ffffff

    and-long v38, v38, v18

    const-wide/16 v40, 0x1

    add-long v16, v16, v40

    const-wide/32 v42, 0x4a7bb0d

    mul-long v42, v42, v16

    add-long v26, v26, v42

    const-wide/32 v42, 0x873d6d5

    mul-long v42, v42, v16

    add-long v2, v2, v42

    const-wide/32 v42, 0xa70aadc

    mul-long v42, v42, v16

    add-long v21, v21, v42

    const-wide/32 v42, 0x3d8d723

    mul-long v42, v42, v16

    add-long v12, v12, v42

    const-wide/32 v42, 0x96fde93

    mul-long v42, v42, v16

    add-long v4, v4, v42

    const-wide/32 v42, 0xb65129c

    mul-long v42, v42, v16

    add-long v6, v6, v42

    const-wide/32 v42, 0x63bb124

    mul-long v42, v42, v16

    add-long v14, v14, v42

    const-wide/32 v42, 0x8335dc1

    mul-long v16, v16, v42

    add-long v23, v23, v16

    ushr-long v16, v26, v25

    add-long v2, v2, v16

    and-long v16, v26, v74

    ushr-long v26, v2, v25

    add-long v21, v21, v26

    and-long v2, v2, v74

    ushr-long v26, v21, v25

    add-long v12, v12, v26

    and-long v21, v21, v74

    ushr-long v26, v12, v25

    add-long v4, v4, v26

    and-long v12, v12, v74

    ushr-long v26, v4, v25

    add-long v6, v6, v26

    and-long v4, v4, v74

    ushr-long v26, v6, v25

    add-long v14, v14, v26

    and-long v6, v6, v74

    ushr-long v26, v14, v25

    add-long v23, v23, v26

    and-long v14, v14, v74

    ushr-long v26, v23, v25

    add-long v8, v8, v26

    and-long v23, v23, v74

    ushr-long v26, v8, v25

    add-long v10, v10, v26

    and-long v8, v8, v74

    ushr-long v26, v10, v25

    add-long v28, v28, v26

    and-long v10, v10, v74

    ushr-long v26, v28, v25

    add-long v30, v30, v26

    and-long v26, v28, v74

    ushr-long v28, v30, v25

    add-long v32, v32, v28

    and-long v28, v30, v74

    ushr-long v30, v32, v25

    add-long v34, v34, v30

    and-long v30, v32, v74

    ushr-long v32, v34, v25

    add-long v36, v36, v32

    and-long v32, v34, v74

    ushr-long v34, v36, v25

    add-long v38, v38, v34

    and-long v34, v36, v74

    ushr-long v0, v38, v0

    and-long v18, v38, v18

    sub-long v0, v0, v40

    const-wide/32 v36, 0x4a7bb0d

    and-long v36, v0, v36

    sub-long v16, v16, v36

    const-wide/32 v36, 0x873d6d5

    and-long v36, v0, v36

    sub-long v2, v2, v36

    const-wide/32 v36, 0xa70aadc

    and-long v36, v0, v36

    sub-long v21, v21, v36

    const-wide/32 v36, 0x3d8d723

    and-long v36, v0, v36

    sub-long v12, v12, v36

    const-wide/32 v36, 0x96fde93

    and-long v36, v0, v36

    sub-long v4, v4, v36

    const-wide/32 v36, 0xb65129c

    and-long v36, v0, v36

    sub-long v6, v6, v36

    const-wide/32 v36, 0x63bb124

    and-long v36, v0, v36

    sub-long v14, v14, v36

    const-wide/32 v36, 0x8335dc1

    and-long v0, v0, v36

    sub-long v23, v23, v0

    shr-long v0, v16, v25

    add-long/2addr v2, v0

    and-long v0, v16, v74

    shr-long v16, v2, v25

    add-long v21, v21, v16

    and-long v2, v2, v74

    shr-long v16, v21, v25

    add-long v12, v12, v16

    and-long v16, v21, v74

    shr-long v21, v12, v25

    add-long v4, v4, v21

    and-long v12, v12, v74

    shr-long v21, v4, v25

    add-long v6, v6, v21

    and-long v4, v4, v74

    shr-long v21, v6, v25

    add-long v14, v14, v21

    and-long v6, v6, v74

    shr-long v21, v14, v25

    add-long v23, v23, v21

    and-long v14, v14, v74

    shr-long v21, v23, v25

    add-long v8, v8, v21

    and-long v21, v23, v74

    shr-long v23, v8, v25

    add-long v10, v10, v23

    and-long v8, v8, v74

    shr-long v23, v10, v25

    add-long v26, v26, v23

    and-long v10, v10, v74

    shr-long v23, v26, v25

    add-long v28, v28, v23

    and-long v23, v26, v74

    shr-long v26, v28, v25

    add-long v30, v30, v26

    and-long v26, v28, v74

    shr-long v28, v30, v25

    add-long v32, v32, v28

    and-long v28, v30, v74

    shr-long v30, v32, v25

    add-long v34, v34, v30

    and-long v30, v32, v74

    shr-long v32, v34, v25

    add-long v18, v18, v32

    and-long v32, v34, v74

    move-wide/from16 v34, v0

    const/16 v0, 0x39

    new-array v0, v0, [B

    shl-long v1, v2, v25

    or-long v1, v34, v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v12, v25

    or-long v1, v16, v1

    const/4 v3, 0x7

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v6, v25

    or-long/2addr v1, v4

    const/16 v3, 0xe

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v21, v25

    or-long/2addr v1, v14

    const/16 v3, 0x15

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v10, v25

    or-long/2addr v1, v8

    const/16 v10, 0x1c

    invoke-static {v1, v2, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v26, v10

    or-long v1, v23, v1

    const/16 v3, 0x23

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v30, v10

    or-long v1, v28, v1

    const/16 v3, 0x2a

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v18, v10

    or-long v1, v32, v1

    const/16 v3, 0x31

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    return-object v0
.end method

.method static reduceBasisVar([I[I[I)Z
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, 0x1c

    new-array v2, v1, [I

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->LSq:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v1, [I

    invoke-static {v0, v3}, Lorg/bouncycastle/math/raw/Nat448;->square([I[I)V

    aget v5, v3, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aput v5, v3, v4

    new-array v11, v1, [I

    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v5, v0, v11}, Lorg/bouncycastle/math/raw/Nat448;->mul([I[I[I)V

    new-array v12, v1, [I

    const/16 v1, 0x8

    new-array v7, v1, [I

    invoke-static {v5, v4, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v1, [I

    new-array v8, v1, [I

    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v1, [I

    aput v6, v0, v4

    const/16 v9, 0x1b

    invoke-static {v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v10

    const/16 v13, 0x6fc

    move-object/from16 v19, v0

    move-object v9, v2

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    move v0, v10

    const/16 v7, 0x1b

    move-object v10, v3

    :goto_0
    const/16 v2, 0x1bf

    if-le v0, v2, :cond_3

    add-int/lit8 v13, v13, -0x1

    if-gez v13, :cond_0

    return v4

    :cond_0
    invoke-static {v7, v11}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLength(I[I)I

    move-result v2

    sub-int/2addr v2, v0

    shr-int/lit8 v3, v2, 0x1f

    xor-int/lit8 v3, v3, -0x1

    and-int v15, v2, v3

    aget v2, v11, v7

    move v8, v15

    if-gez v2, :cond_1

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_NP(II[I[I[I[I)V

    const/4 v14, 0x7

    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_UV(II[I[I[I[I)V

    goto :goto_1

    :cond_1
    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_NP(II[I[I[I[I)V

    const/4 v14, 0x7

    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_UV(II[I[I[I[I)V

    :goto_1
    move-object/from16 v8, v18

    move-object/from16 v2, v19

    invoke-static {v7, v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->lessThan(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    ushr-int/lit8 v0, v0, 0x5

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v3

    move-object v7, v10

    move-object v10, v9

    move-object v9, v7

    move v7, v0

    move v0, v3

    move-object/from16 v18, v16

    move-object/from16 v19, v17

    move-object/from16 v17, v2

    move-object/from16 v16, v8

    goto :goto_0

    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v18, v8

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v8, v18

    move-object/from16 v2, v19

    invoke-static {v8, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p2

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v6
.end method

.method static toSignedDigits(I[I[I)V
    .locals 4

    add-int/lit16 p0, p0, -0x1c0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    const/4 v1, 0x0

    aget v2, p1, v1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    const/16 v3, 0xe

    invoke-static {v3, v0, p1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->cadd(II[I[I[I)I

    move-result p1

    add-int/2addr p0, p1

    aput p0, p2, v3

    const/16 p0, 0xf

    invoke-static {p0, p2, v1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    return-void
.end method
