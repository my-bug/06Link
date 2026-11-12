.class abstract Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static MUL32_NO_SIMD_GF2X(JJ)J
    .locals 7

    const-wide/16 v0, 0x1

    and-long v2, p2, v0

    neg-long v2, v2

    and-long/2addr v2, p0

    const/4 v4, 0x1

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/4 v4, 0x2

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/4 v4, 0x3

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/4 v4, 0x4

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/4 v4, 0x5

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/4 v4, 0x6

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/4 v4, 0x7

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x8

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x9

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xa

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xb

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xc

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xd

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xe

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xf

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x10

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x11

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x12

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x13

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x14

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x15

    ushr-long v5, p2, v4

    and-long/2addr v5, v0

    neg-long v5, v5

    and-long/2addr v5, p0

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x16

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x16

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x17

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x17

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x18

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x19

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x19

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1a

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x1a

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1b

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x1b

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1c

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1d

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x1d

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1e

    ushr-long v4, p2, v4

    and-long/2addr v4, v0

    neg-long v4, v4

    and-long/2addr v4, p0

    const/16 v6, 0x1e

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1f

    ushr-long/2addr p2, v4

    and-long/2addr p2, v0

    neg-long p2, p2

    and-long/2addr p0, p2

    const/16 p2, 0x1f

    shl-long/2addr p0, p2

    xor-long/2addr p0, v2

    return-wide p0
.end method

.method private static MUL64_NO_SIMD_GF2X([JIJJ)V
    .locals 30

    const-wide/16 v0, 0x1

    and-long v2, p4, v0

    neg-long v2, v2

    and-long v2, v2, p2

    const/16 v4, 0x3f

    ushr-long v5, p4, v4

    neg-long v5, v5

    and-long v5, v5, p2

    shl-long v7, v5, v4

    xor-long/2addr v2, v7

    const/4 v7, 0x1

    ushr-long/2addr v5, v7

    ushr-long v8, p4, v7

    and-long/2addr v8, v0

    neg-long v8, v8

    and-long v8, v8, p2

    shl-long v10, v8, v7

    xor-long/2addr v2, v10

    ushr-long/2addr v8, v4

    xor-long/2addr v5, v8

    const/4 v4, 0x2

    ushr-long v8, p4, v4

    and-long/2addr v8, v0

    neg-long v8, v8

    and-long v8, v8, p2

    shl-long v10, v8, v4

    xor-long/2addr v2, v10

    const/16 v10, 0x3e

    ushr-long/2addr v8, v10

    xor-long/2addr v5, v8

    const/4 v8, 0x3

    ushr-long v11, p4, v8

    and-long/2addr v11, v0

    neg-long v11, v11

    and-long v11, v11, p2

    shl-long v13, v11, v8

    xor-long/2addr v2, v13

    const/16 v9, 0x3d

    ushr-long/2addr v11, v9

    xor-long/2addr v5, v11

    const/4 v11, 0x4

    ushr-long v12, p4, v11

    and-long/2addr v12, v0

    neg-long v12, v12

    and-long v12, v12, p2

    shl-long v14, v12, v11

    xor-long/2addr v2, v14

    const/16 v14, 0x3c

    ushr-long/2addr v12, v14

    xor-long/2addr v5, v12

    const/4 v12, 0x5

    ushr-long v15, p4, v12

    move-wide/from16 v17, v0

    and-long v0, v15, v17

    neg-long v0, v0

    and-long v0, v0, p2

    shl-long v15, v0, v12

    xor-long/2addr v2, v15

    const/16 v13, 0x3b

    ushr-long/2addr v0, v13

    xor-long/2addr v0, v5

    const/4 v5, 0x6

    ushr-long v15, p4, v5

    const/4 v6, 0x2

    const/16 v19, 0x6

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v15, v4, v19

    xor-long/2addr v2, v15

    const/16 v15, 0x3a

    ushr-long/2addr v4, v15

    xor-long/2addr v0, v4

    const/4 v4, 0x7

    ushr-long v20, p4, v4

    const/16 v16, 0x7

    and-long v4, v20, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v20, v4, v16

    xor-long v2, v2, v20

    const/16 v20, 0x39

    ushr-long v4, v4, v20

    xor-long/2addr v0, v4

    const/16 v4, 0x8

    ushr-long v21, p4, v4

    const/16 v23, 0x8

    and-long v4, v21, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v21, v4, v23

    xor-long v2, v2, v21

    const/16 v21, 0x38

    ushr-long v4, v4, v21

    xor-long/2addr v0, v4

    const/16 v4, 0x9

    ushr-long v24, p4, v4

    const/16 v22, 0x9

    and-long v4, v24, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v24, v4, v22

    xor-long v2, v2, v24

    const/16 v24, 0x37

    ushr-long v4, v4, v24

    xor-long/2addr v0, v4

    const/16 v4, 0xa

    ushr-long v25, p4, v4

    const/16 v27, 0xa

    and-long v4, v25, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v25, v4, v27

    xor-long v2, v2, v25

    const/16 v25, 0x36

    ushr-long v4, v4, v25

    xor-long/2addr v0, v4

    const/16 v4, 0xb

    ushr-long v28, p4, v4

    const/16 v26, 0xb

    and-long v4, v28, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v28, v4, v26

    xor-long v2, v2, v28

    const/16 v28, 0x35

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0xc

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0xc

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x34

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0xd

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0xd

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x33

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0xe

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0xe

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x32

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0xf

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0xf

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x31

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x10

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x10

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x30

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x11

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x11

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2f

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x12

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x12

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2e

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x13

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x13

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2d

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x14

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x14

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2c

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x15

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x15

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2b

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x16

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x16

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2a

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x17

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x17

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x29

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x18

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x18

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x28

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x19

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x19

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x27

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1a

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1a

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x26

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1b

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1b

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x25

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1c

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1c

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x24

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1d

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1d

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x23

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1e

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1e

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x22

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1f

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1f

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x21

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x20

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x20

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x20

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x21

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x21

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1f

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x22

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x22

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1e

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x23

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x23

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1d

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x24

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x24

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1c

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x25

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x25

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1b

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x26

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x26

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1a

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x27

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x27

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x19

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x28

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x28

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x18

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x29

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x29

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x17

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2a

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2a

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x16

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2b

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2b

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x15

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2c

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2c

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x14

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2d

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2d

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x13

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2e

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2e

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x12

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2f

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2f

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x11

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x30

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x30

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x10

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x31

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x31

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0xf

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x32

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x32

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0xe

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x33

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x33

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0xd

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x34

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x34

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0xc

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x35

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x35

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    ushr-long v4, v4, v26

    xor-long/2addr v0, v4

    ushr-long v4, p4, v25

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v25, v4, v25

    xor-long v2, v2, v25

    ushr-long v4, v4, v27

    xor-long/2addr v0, v4

    ushr-long v4, p4, v24

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v24, v4, v24

    xor-long v2, v2, v24

    ushr-long v4, v4, v22

    xor-long/2addr v0, v4

    ushr-long v4, p4, v21

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v21, v4, v21

    xor-long v2, v2, v21

    ushr-long v4, v4, v23

    xor-long/2addr v0, v4

    ushr-long v4, p4, v20

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v20, v4, v20

    xor-long v2, v2, v20

    ushr-long v4, v4, v16

    xor-long/2addr v0, v4

    ushr-long v4, p4, v15

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v15, v4, v15

    xor-long/2addr v2, v15

    ushr-long v4, v4, v19

    xor-long/2addr v0, v4

    ushr-long v4, p4, v13

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v15, v4, v13

    xor-long/2addr v2, v15

    ushr-long/2addr v4, v12

    xor-long/2addr v0, v4

    ushr-long v4, p4, v14

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v12, v4, v14

    xor-long/2addr v2, v12

    ushr-long/2addr v4, v11

    xor-long/2addr v0, v4

    ushr-long v4, p4, v9

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v11, v4, v9

    xor-long/2addr v2, v11

    ushr-long/2addr v4, v8

    xor-long/2addr v0, v4

    ushr-long v4, p4, v10

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v8, v4, v10

    xor-long/2addr v2, v8

    aput-wide v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    ushr-long v3, v4, v6

    xor-long/2addr v0, v3

    aput-wide v0, p0, v2

    return-void
.end method

.method private static MUL64_NO_SIMD_GF2X_XOR([JIJJ)V
    .locals 30

    const-wide/16 v0, 0x1

    and-long v2, p4, v0

    neg-long v2, v2

    and-long v2, v2, p2

    const/16 v4, 0x3f

    ushr-long v5, p4, v4

    neg-long v5, v5

    and-long v5, v5, p2

    shl-long v7, v5, v4

    xor-long/2addr v2, v7

    const/4 v7, 0x1

    ushr-long/2addr v5, v7

    ushr-long v8, p4, v7

    and-long/2addr v8, v0

    neg-long v8, v8

    and-long v8, v8, p2

    shl-long v10, v8, v7

    xor-long/2addr v2, v10

    ushr-long/2addr v8, v4

    xor-long/2addr v5, v8

    const/4 v4, 0x2

    ushr-long v8, p4, v4

    and-long/2addr v8, v0

    neg-long v8, v8

    and-long v8, v8, p2

    shl-long v10, v8, v4

    xor-long/2addr v2, v10

    const/16 v10, 0x3e

    ushr-long/2addr v8, v10

    xor-long/2addr v5, v8

    const/4 v8, 0x3

    ushr-long v11, p4, v8

    and-long/2addr v11, v0

    neg-long v11, v11

    and-long v11, v11, p2

    shl-long v13, v11, v8

    xor-long/2addr v2, v13

    const/16 v9, 0x3d

    ushr-long/2addr v11, v9

    xor-long/2addr v5, v11

    const/4 v11, 0x4

    ushr-long v12, p4, v11

    and-long/2addr v12, v0

    neg-long v12, v12

    and-long v12, v12, p2

    shl-long v14, v12, v11

    xor-long/2addr v2, v14

    const/16 v14, 0x3c

    ushr-long/2addr v12, v14

    xor-long/2addr v5, v12

    const/4 v12, 0x5

    ushr-long v15, p4, v12

    move-wide/from16 v17, v0

    and-long v0, v15, v17

    neg-long v0, v0

    and-long v0, v0, p2

    shl-long v15, v0, v12

    xor-long/2addr v2, v15

    const/16 v13, 0x3b

    ushr-long/2addr v0, v13

    xor-long/2addr v0, v5

    const/4 v5, 0x6

    ushr-long v15, p4, v5

    const/4 v6, 0x2

    const/16 v19, 0x6

    and-long v4, v15, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v15, v4, v19

    xor-long/2addr v2, v15

    const/16 v15, 0x3a

    ushr-long/2addr v4, v15

    xor-long/2addr v0, v4

    const/4 v4, 0x7

    ushr-long v20, p4, v4

    const/16 v16, 0x7

    and-long v4, v20, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v20, v4, v16

    xor-long v2, v2, v20

    const/16 v20, 0x39

    ushr-long v4, v4, v20

    xor-long/2addr v0, v4

    const/16 v4, 0x8

    ushr-long v21, p4, v4

    const/16 v23, 0x8

    and-long v4, v21, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v21, v4, v23

    xor-long v2, v2, v21

    const/16 v21, 0x38

    ushr-long v4, v4, v21

    xor-long/2addr v0, v4

    const/16 v4, 0x9

    ushr-long v24, p4, v4

    const/16 v22, 0x9

    and-long v4, v24, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v24, v4, v22

    xor-long v2, v2, v24

    const/16 v24, 0x37

    ushr-long v4, v4, v24

    xor-long/2addr v0, v4

    const/16 v4, 0xa

    ushr-long v25, p4, v4

    const/16 v27, 0xa

    and-long v4, v25, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v25, v4, v27

    xor-long v2, v2, v25

    const/16 v25, 0x36

    ushr-long v4, v4, v25

    xor-long/2addr v0, v4

    const/16 v4, 0xb

    ushr-long v28, p4, v4

    const/16 v26, 0xb

    and-long v4, v28, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v28, v4, v26

    xor-long v2, v2, v28

    const/16 v28, 0x35

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0xc

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0xc

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x34

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0xd

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0xd

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x33

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0xe

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0xe

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x32

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0xf

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0xf

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x31

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x10

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x10

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x30

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x11

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x11

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2f

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x12

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x12

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2e

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x13

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x13

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2d

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x14

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x14

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2c

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x15

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x15

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2b

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x16

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x16

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x2a

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x17

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x17

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x29

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x18

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x18

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x28

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x19

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x19

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x27

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1a

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1a

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x26

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1b

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1b

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x25

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1c

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1c

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x24

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1d

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1d

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x23

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1e

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1e

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x22

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x1f

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x1f

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x21

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x20

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x20

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x20

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x21

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x21

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1f

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x22

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x22

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1e

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x23

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x23

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1d

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x24

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x24

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1c

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x25

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x25

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1b

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x26

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x26

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x1a

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x27

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x27

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x19

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x28

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x28

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x18

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x29

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x29

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x17

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2a

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2a

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x16

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2b

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2b

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x15

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2c

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2c

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x14

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2d

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2d

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x13

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2e

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2e

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x12

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x2f

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x2f

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x11

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x30

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x30

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0x10

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x31

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x31

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0xf

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x32

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x32

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0xe

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x33

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x33

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0xd

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x34

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x34

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    const/16 v28, 0xc

    ushr-long v4, v4, v28

    xor-long/2addr v0, v4

    const/16 v4, 0x35

    ushr-long v4, p4, v4

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    const/16 v28, 0x35

    shl-long v28, v4, v28

    xor-long v2, v2, v28

    ushr-long v4, v4, v26

    xor-long/2addr v0, v4

    ushr-long v4, p4, v25

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v25, v4, v25

    xor-long v2, v2, v25

    ushr-long v4, v4, v27

    xor-long/2addr v0, v4

    ushr-long v4, p4, v24

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v24, v4, v24

    xor-long v2, v2, v24

    ushr-long v4, v4, v22

    xor-long/2addr v0, v4

    ushr-long v4, p4, v21

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v21, v4, v21

    xor-long v2, v2, v21

    ushr-long v4, v4, v23

    xor-long/2addr v0, v4

    ushr-long v4, p4, v20

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v20, v4, v20

    xor-long v2, v2, v20

    ushr-long v4, v4, v16

    xor-long/2addr v0, v4

    ushr-long v4, p4, v15

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v15, v4, v15

    xor-long/2addr v2, v15

    ushr-long v4, v4, v19

    xor-long/2addr v0, v4

    ushr-long v4, p4, v13

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v15, v4, v13

    xor-long/2addr v2, v15

    ushr-long/2addr v4, v12

    xor-long/2addr v0, v4

    ushr-long v4, p4, v14

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v12, v4, v14

    xor-long/2addr v2, v12

    ushr-long/2addr v4, v11

    xor-long/2addr v0, v4

    ushr-long v4, p4, v9

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    shl-long v11, v4, v9

    xor-long/2addr v2, v11

    ushr-long/2addr v4, v8

    xor-long/2addr v0, v4

    ushr-long v4, p4, v10

    and-long v4, v4, v17

    neg-long v4, v4

    and-long v4, v4, p2

    aget-wide v8, p0, p1

    shl-long v10, v4, v10

    xor-long/2addr v2, v10

    xor-long/2addr v2, v8

    aput-wide v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-wide v7, p0, v2

    ushr-long v3, v4, v6

    xor-long/2addr v0, v3

    xor-long/2addr v0, v7

    aput-wide v0, p0, v2

    return-void
.end method

.method private static SQR128_NO_SIMD_GF2X([JI[JI)V
    .locals 3

    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p3, 0x1

    aget-wide v1, p2, v1

    invoke-static {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64_NO_SIMD_GF2X([JIJ)V

    aget-wide v0, p2, p3

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64_NO_SIMD_GF2X([JIJ)V

    return-void
.end method

.method private static SQR256_NO_SIMD_GF2X([JI[JI)V
    .locals 2

    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v1, p3, 0x2

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR128_NO_SIMD_GF2X([JI[JI)V

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR128_NO_SIMD_GF2X([JI[JI)V

    return-void
.end method

.method private static SQR32_NO_SIMD_GF2X(J)J
    .locals 2

    const/16 v0, 0x10

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0xffff0000ffffL

    and-long/2addr p0, v0

    const/16 v0, 0x8

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0xff00ff00ff00ffL

    and-long/2addr p0, v0

    const/4 v0, 0x4

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr p0, v0

    const/4 v0, 0x2

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr p0, v0

    const/4 v0, 0x1

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static SQR64LOW_NO_SIMD_GF2X(J)J
    .locals 3

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    const/16 v2, 0x10

    shl-long/2addr p0, v2

    xor-long/2addr p0, v0

    const-wide v0, 0xffff0000ffffL

    and-long/2addr p0, v0

    const/16 v0, 0x8

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0xff00ff00ff00ffL

    and-long/2addr p0, v0

    const/4 v0, 0x4

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr p0, v0

    const/4 v0, 0x2

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr p0, v0

    const/4 v0, 0x1

    shl-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static SQR64_NO_SIMD_GF2X([JIJ)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR32_NO_SIMD_GF2X(J)J

    move-result-wide v1

    aput-wide v1, p0, v0

    invoke-static {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64LOW_NO_SIMD_GF2X(J)J

    move-result-wide p2

    aput-wide p2, p0, p1

    return-void
.end method

.method static synthetic access$000([JIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64_NO_SIMD_GF2X([JIJ)V

    return-void
.end method

.method static synthetic access$100([JI[JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR128_NO_SIMD_GF2X([JI[JI)V

    return-void
.end method

.method static synthetic access$1000([J[JI[JI[J[J[J)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul544_no_simd_gf2x([J[JI[JI[J[J[J)V

    return-void
.end method

.method static synthetic access$1100([J[JI[JI[J[J[J[J)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul544_no_simd_gf2x_xor([J[JI[JI[J[J[J[J)V

    return-void
.end method

.method static synthetic access$200([JI[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x([JI[JI[JI[J)V

    return-void
.end method

.method static synthetic access$300(J)J
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR32_NO_SIMD_GF2X(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400([JI[JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR256_NO_SIMD_GF2X([JI[JI)V

    return-void
.end method

.method static synthetic access$500([JI[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x_xor([JI[JI[JI[J)V

    return-void
.end method

.method static synthetic access$600([J[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul384_no_simd_gf2x([J[JI[JI[J)V

    return-void
.end method

.method static synthetic access$700([J[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul384_no_simd_gf2x_xor([J[JI[JI[J)V

    return-void
.end method

.method static synthetic access$800([J[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul416_no_simd_gf2x([J[JI[JI[J)V

    return-void
.end method

.method static synthetic access$900([J[JI[JI[J[J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul416_no_simd_gf2x_xor([J[JI[JI[J[J)V

    return-void
.end method

.method private static mul128_no_simd_gf2x([JIJJJJ)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v1, p1, 0x2

    move-wide v2, p4

    move-wide v4, p8

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    aget-wide v2, p0, v1

    add-int/lit8 v0, p1, 0x1

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    aget-wide v4, p0, p1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    aget-wide v2, p0, v1

    add-int/lit8 p1, p1, 0x3

    aget-wide v4, p0, p1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    xor-long/2addr p2, p4

    xor-long p4, p6, p8

    move-object p1, p0

    move-wide p5, p4

    move-wide p3, p2

    move p2, v0

    invoke-static/range {p1 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul128_no_simd_gf2x([JI[JI[JI)V
    .locals 12

    aget-wide v2, p2, p3

    aget-wide v4, p4, p5

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v7, p1, 0x2

    add-int/lit8 v0, p3, 0x1

    aget-wide v8, p2, v0

    add-int/lit8 v1, p5, 0x1

    aget-wide v10, p4, v1

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    aget-wide v2, p0, v7

    move v4, v7

    add-int/lit8 v7, p1, 0x1

    aget-wide v5, p0, v7

    xor-long/2addr v2, v5

    aput-wide v2, p0, v4

    aget-wide v5, p0, p1

    xor-long/2addr v2, v5

    aput-wide v2, p0, v7

    aget-wide v2, p0, v4

    add-int/lit8 p1, p1, 0x3

    aget-wide v5, p0, p1

    xor-long/2addr v2, v5

    aput-wide v2, p0, v4

    aget-wide v2, p2, p3

    aget-wide p1, p2, v0

    xor-long v8, v2, p1

    aget-wide p1, p4, p5

    aget-wide v0, p4, v1

    xor-long v10, p1, v0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul128_no_simd_gf2x_xor([JIJJJJ[J)V
    .locals 9

    const/4 v1, 0x0

    move-wide v2, p2

    move-wide v4, p6

    move-object/from16 v0, p10

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v1, 0x2

    move-wide v2, p4

    move-wide/from16 v4, p8

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    aget-wide v0, p0, p1

    const/4 v2, 0x0

    aget-wide v3, p10, v2

    xor-long/2addr v0, v3

    aput-wide v0, p0, p1

    const/4 v0, 0x2

    aget-wide v3, p10, v0

    const/4 v1, 0x1

    aget-wide v5, p10, v1

    xor-long/2addr v3, v5

    aput-wide v3, p10, v0

    add-int/lit8 v1, p1, 0x1

    aget-wide v5, p0, v1

    aget-wide v7, p10, v2

    xor-long/2addr v3, v7

    xor-long/2addr v3, v5

    aput-wide v3, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget-wide v3, p0, v2

    aget-wide v5, p10, v0

    const/4 v0, 0x3

    aget-wide v7, p10, v0

    xor-long/2addr v5, v7

    xor-long/2addr v3, v5

    aput-wide v3, p0, v2

    add-int/2addr p1, v0

    aget-wide v2, p0, p1

    aget-wide v4, p10, v0

    xor-long/2addr v2, v4

    aput-wide v2, p0, p1

    xor-long/2addr p2, p4

    xor-long p4, p6, p8

    move-object p1, p0

    move-wide p5, p4

    move-wide p3, p2

    move p2, v1

    invoke-static/range {p1 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method public static mul192_no_simd_gf2x([JI[JI[JI)V
    .locals 15

    aget-wide v2, p2, p3

    aget-wide v4, p4, p5

    move-object v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v7, p1, 0x4

    add-int/lit8 v0, p3, 0x2

    aget-wide v8, p2, v0

    add-int/lit8 v1, p5, 0x2

    aget-wide v10, p4, v1

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move v2, v7

    add-int/lit8 v7, p1, 0x2

    add-int/lit8 v3, p3, 0x1

    aget-wide v8, p2, v3

    add-int/lit8 v4, p5, 0x1

    aget-wide v10, p4, v4

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move v5, v7

    add-int/lit8 v7, p1, 0x1

    aget-wide v8, p0, v7

    aget-wide v10, p0, v5

    xor-long/2addr v8, v10

    aput-wide v8, p0, v7

    add-int/lit8 v12, p1, 0x3

    aget-wide v8, p0, v12

    aget-wide v10, p0, v2

    xor-long/2addr v8, v10

    aput-wide v8, p0, v12

    add-int/lit8 v6, p1, 0x5

    aget-wide v10, p0, v6

    xor-long/2addr v8, v10

    aput-wide v8, p0, v2

    aget-wide v8, p0, v12

    aget-wide v10, p0, v7

    xor-long/2addr v8, v10

    aget-wide v10, p0, p1

    xor-long/2addr v8, v10

    aput-wide v8, p0, v5

    aget-wide v8, p0, v7

    aget-wide v10, p0, v2

    xor-long/2addr v8, v10

    aput-wide v8, p0, v12

    aget-wide v8, p0, v7

    aget-wide v10, p0, p1

    xor-long/2addr v8, v10

    aput-wide v8, p0, v7

    aget-wide v8, p2, p3

    aget-wide v10, p2, v3

    xor-long/2addr v8, v10

    aget-wide v10, p4, p5

    aget-wide v13, p4, v4

    xor-long/2addr v10, v13

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v2, p2, v3

    aget-wide v6, p2, v0

    xor-long v8, v2, v6

    aget-wide v2, p4, v4

    aget-wide v6, p4, v1

    xor-long v10, v2, v6

    move-object v6, p0

    move v7, v12

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v2, p2, p3

    aget-wide v6, p2, v0

    xor-long v8, v2, v6

    aget-wide v2, p4, p5

    aget-wide v0, p4, v1

    xor-long v10, v2, v0

    move-object v6, p0

    move v7, v5

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method public static mul192_no_simd_gf2x_xor([JI[JI[JI[J)V
    .locals 21

    aget-wide v2, p2, p3

    aget-wide v4, p4, p5

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v0, p3, 0x2

    aget-wide v8, p2, v0

    add-int/lit8 v1, p5, 0x2

    aget-wide v10, p4, v1

    const/4 v7, 0x4

    move-object/from16 v6, p6

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v2, p3, 0x1

    aget-wide v8, p2, v2

    add-int/lit8 v3, p5, 0x1

    aget-wide v10, p4, v3

    const/4 v7, 0x2

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    aget-wide v4, p0, p1

    const/4 v6, 0x0

    aget-wide v7, p6, v6

    xor-long/2addr v4, v7

    aput-wide v4, p0, p1

    const/4 v4, 0x1

    aget-wide v7, p6, v4

    const/4 v5, 0x2

    aget-wide v9, p6, v5

    xor-long/2addr v7, v9

    aput-wide v7, p6, v4

    const/4 v5, 0x3

    aget-wide v9, p6, v5

    const/4 v11, 0x4

    aget-wide v12, p6, v11

    xor-long/2addr v9, v12

    aput-wide v9, p6, v5

    const/4 v12, 0x5

    aget-wide v13, p6, v12

    xor-long/2addr v9, v13

    aput-wide v9, p6, v11

    aget-wide v9, p6, v6

    xor-long/2addr v7, v9

    aput-wide v7, p6, v6

    add-int/lit8 v14, p1, 0x1

    aget-wide v9, p0, v14

    xor-long/2addr v7, v9

    aput-wide v7, p0, v14

    add-int/lit8 v7, p1, 0x2

    aget-wide v8, p0, v7

    aget-wide v15, p6, v5

    aget-wide v5, p6, v6

    xor-long/2addr v5, v15

    xor-long/2addr v5, v8

    aput-wide v5, p0, v7

    add-int/lit8 v5, p1, 0x3

    aget-wide v8, p0, v5

    aget-wide v15, p6, v4

    aget-wide v17, p6, v11

    xor-long v15, v15, v17

    xor-long/2addr v8, v15

    aput-wide v8, p0, v5

    add-int/lit8 v4, p1, 0x4

    aget-wide v8, p0, v4

    aget-wide v10, p6, v11

    xor-long/2addr v8, v10

    aput-wide v8, p0, v4

    add-int/lit8 v4, p1, 0x5

    aget-wide v8, p0, v4

    aget-wide v10, p6, v12

    xor-long/2addr v8, v10

    aput-wide v8, p0, v4

    aget-wide v8, p2, p3

    aget-wide v10, p2, v2

    xor-long v15, v8, v10

    aget-wide v8, p4, p5

    aget-wide v10, p4, v3

    xor-long v17, v8, v10

    move-object/from16 v13, p0

    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v8, p2, v2

    aget-wide v10, p2, v0

    xor-long v17, v8, v10

    aget-wide v2, p4, v3

    aget-wide v8, p4, v1

    xor-long v19, v2, v8

    move-object/from16 v15, p0

    move/from16 v16, v5

    invoke-static/range {v15 .. v20}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v2, p2, p3

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    aget-wide v4, p4, p5

    aget-wide v0, p4, v1

    xor-long/2addr v0, v4

    move-object/from16 p1, p0

    move-wide/from16 p5, v0

    move-wide/from16 p3, v2

    move/from16 p2, v7

    invoke-static/range {p1 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul288_no_simd_gf2x([JI[JI[JI[J)V
    .locals 31

    aget-wide v2, p2, p3

    add-int/lit8 v10, p3, 0x1

    aget-wide v4, p2, v10

    aget-wide v6, p4, p5

    add-int/lit8 v11, p5, 0x1

    aget-wide v8, p4, v11

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    add-int/lit8 v13, p1, 0x4

    add-int/lit8 v0, p3, 0x2

    aget-wide v14, p2, v0

    add-int/lit8 v1, p5, 0x2

    aget-wide v16, p4, v1

    move-object/from16 v12, p0

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move v2, v13

    add-int/lit8 v13, p1, 0x7

    add-int/lit8 v3, p3, 0x3

    aget-wide v14, p2, v3

    add-int/lit8 v4, p5, 0x3

    aget-wide v16, p4, v4

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move v5, v13

    aget-wide v6, p0, v5

    add-int/lit8 v13, p1, 0x5

    aget-wide v8, p0, v13

    xor-long/2addr v6, v8

    aput-wide v6, p0, v5

    add-int/lit8 v6, p1, 0x8

    aget-wide v7, p0, v6

    add-int/lit8 v9, p3, 0x4

    aget-wide v14, p2, v9

    add-int/lit8 v18, p5, 0x4

    move/from16 v19, v0

    move/from16 v20, v1

    aget-wide v0, p4, v18

    invoke-static {v14, v15, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v0

    xor-long/2addr v0, v7

    aput-wide v0, p0, v6

    aget-wide v0, p0, v5

    aget-wide v7, p0, v2

    xor-long/2addr v0, v7

    aput-wide v0, p0, v13

    aget-wide v0, p0, v5

    aget-wide v7, p0, v6

    xor-long/2addr v0, v7

    aput-wide v0, p0, v5

    add-int/lit8 v7, p1, 0x6

    aget-wide v14, p0, v2

    xor-long/2addr v0, v14

    aput-wide v0, p0, v7

    aget-wide v0, p2, v19

    aget-wide v14, p2, v3

    xor-long/2addr v14, v0

    aget-wide v0, p4, v20

    aget-wide v16, p4, v4

    xor-long v16, v0, v16

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    move v0, v13

    aget-wide v12, p2, v3

    aget-wide v14, p2, v9

    xor-long/2addr v14, v12

    aget-wide v12, p4, v4

    aget-wide v16, p4, v18

    xor-long v16, v12, v16

    move-object/from16 v12, p0

    move v13, v5

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v12, p2, v19

    aget-wide v14, p2, v9

    xor-long/2addr v14, v12

    aget-wide v12, p4, v20

    aget-wide v16, p4, v18

    xor-long v16, v12, v16

    move-object/from16 v12, p0

    move v13, v7

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v7, p0, v2

    add-int/lit8 v1, p1, 0x2

    aget-wide v14, p0, v1

    xor-long/2addr v7, v14

    aput-wide v7, p0, v2

    aget-wide v7, p0, v0

    move v12, v13

    add-int/lit8 v13, p1, 0x3

    aget-wide v14, p0, v13

    xor-long/2addr v7, v14

    aput-wide v7, p0, v0

    aget-wide v7, p2, p3

    aget-wide v14, p2, v19

    xor-long v23, v7, v14

    aget-wide v7, p2, v10

    aget-wide v14, p2, v3

    xor-long v27, v7, v14

    aget-wide v7, p4, p5

    aget-wide v14, p4, v20

    xor-long v25, v7, v14

    aget-wide v7, p4, v11

    aget-wide v3, p4, v4

    xor-long v29, v7, v3

    const/16 v22, 0x0

    move-object/from16 v21, p6

    invoke-static/range {v21 .. v26}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move-wide/from16 v3, v25

    const/16 v26, 0x2

    move-object/from16 v25, p6

    invoke-static/range {v25 .. v30}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v7, 0x2

    aget-wide v10, p6, v7

    const/4 v8, 0x1

    aget-wide v14, p6, v8

    xor-long/2addr v10, v14

    aput-wide v10, p6, v7

    const/4 v10, 0x3

    aget-wide v14, p6, v10

    const/16 p3, 0x2

    const/16 p5, 0x1

    aget-wide v7, p2, v9

    const/16 v16, 0x3

    aget-wide v10, p4, v18

    invoke-static {v7, v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v7

    xor-long/2addr v7, v14

    aput-wide v7, p6, v16

    aget-wide v7, p0, v2

    aget-wide v10, p0, p1

    xor-long/2addr v7, v10

    const/4 v10, 0x0

    aget-wide v14, p6, v10

    xor-long/2addr v7, v14

    aput-wide v7, p0, v1

    aget-wide v7, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget-wide v14, p0, v1

    xor-long/2addr v7, v14

    aget-wide v14, p6, p3

    xor-long/2addr v7, v14

    aget-wide v14, p6, v10

    xor-long/2addr v7, v14

    aput-wide v7, p0, v13

    aget-wide v7, p6, p3

    aget-wide v14, p6, v16

    xor-long/2addr v7, v14

    aput-wide v7, p6, p3

    aget-wide v14, p0, v2

    aget-wide v19, p0, v12

    xor-long v7, v19, v7

    aget-wide v10, p6, v10

    xor-long/2addr v7, v10

    xor-long/2addr v7, v14

    aput-wide v7, p0, v2

    aget-wide v7, p0, v0

    aget-wide v10, p0, v5

    aget-wide v14, p6, p3

    xor-long/2addr v10, v14

    xor-long/2addr v7, v10

    aput-wide v7, p0, v0

    aget-wide v7, p0, v12

    aget-wide v5, p0, v6

    aget-wide v10, p6, v16

    xor-long/2addr v5, v10

    xor-long/2addr v5, v7

    aput-wide v5, p0, v12

    xor-long v14, v23, v27

    xor-long v16, v3, v29

    move-object/from16 v12, p0

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v5, p2, v9

    xor-long v14, v27, v5

    aget-wide v5, p4, v18

    xor-long v16, v29, v5

    move v13, v0

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v0, p2, v9

    xor-long v0, v23, v0

    aget-wide v5, p4, v18

    xor-long/2addr v3, v5

    move-object/from16 p1, p0

    move-wide/from16 p3, v0

    move/from16 p2, v2

    move-wide/from16 p5, v3

    invoke-static/range {p1 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul288_no_simd_gf2x_xor([JI[JI[JI[J)V
    .locals 32

    aget-wide v2, p2, p3

    add-int/lit8 v10, p3, 0x1

    aget-wide v4, p2, v10

    aget-wide v6, p4, p5

    add-int/lit8 v11, p5, 0x1

    aget-wide v8, p4, v11

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    add-int/lit8 v0, p3, 0x2

    aget-wide v14, p2, v0

    add-int/lit8 v1, p5, 0x2

    aget-wide v16, p4, v1

    const/4 v13, 0x4

    move-object/from16 v12, p6

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v2, p3, 0x3

    aget-wide v14, p2, v2

    add-int/lit8 v3, p5, 0x3

    aget-wide v16, p4, v3

    const/4 v13, 0x7

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v4, 0x7

    aget-wide v5, p6, v4

    const/4 v7, 0x5

    aget-wide v8, p6, v7

    xor-long/2addr v5, v8

    aput-wide v5, p6, v4

    const/16 v5, 0x8

    aget-wide v8, p6, v5

    add-int/lit8 v6, p3, 0x4

    aget-wide v12, p2, v6

    add-int/lit8 v18, p5, 0x4

    aget-wide v14, p4, v18

    invoke-static {v12, v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v12

    xor-long/2addr v8, v12

    aput-wide v8, p6, v5

    aget-wide v12, p6, v4

    const/16 v19, 0x4

    aget-wide v14, p6, v19

    xor-long v16, v12, v14

    aput-wide v16, p6, v7

    xor-long/2addr v8, v12

    aput-wide v8, p6, v4

    xor-long/2addr v8, v14

    const/16 v20, 0x6

    aput-wide v8, p6, v20

    const/4 v8, 0x2

    aget-wide v12, p6, v8

    xor-long/2addr v12, v14

    aput-wide v12, p6, v19

    const/4 v9, 0x3

    aget-wide v12, p6, v9

    xor-long v12, v16, v12

    aput-wide v12, p6, v7

    aget-wide v12, p0, p1

    const/16 v21, 0x0

    aget-wide v14, p6, v21

    xor-long/2addr v12, v14

    aput-wide v12, p0, p1

    add-int/lit8 v12, p1, 0x1

    aget-wide v13, p0, v12

    const/16 v22, 0x1

    aget-wide v15, p6, v22

    xor-long/2addr v13, v15

    aput-wide v13, p0, v12

    add-int/lit8 v23, p1, 0x2

    aget-wide v12, p0, v23

    aget-wide v14, p6, v19

    aget-wide v16, p6, v21

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p0, v23

    aget-wide v12, p2, v0

    aget-wide v14, p2, v2

    xor-long/2addr v14, v12

    aget-wide v12, p4, v1

    aget-wide v16, p4, v3

    xor-long v16, v12, v16

    const/4 v13, 0x5

    move-object/from16 v12, p6

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v12, p2, v2

    aget-wide v14, p2, v6

    xor-long/2addr v14, v12

    aget-wide v12, p4, v3

    aget-wide v16, p4, v18

    xor-long v16, v12, v16

    const/4 v13, 0x7

    move-object/from16 v12, p6

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v12, p2, v0

    aget-wide v14, p2, v6

    xor-long/2addr v14, v12

    aget-wide v12, p4, v1

    aget-wide v16, p4, v18

    xor-long v16, v12, v16

    const/4 v13, 0x6

    move-object/from16 v12, p6

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v24, p1, 0x3

    aget-wide v12, p0, v24

    aget-wide v14, p6, v7

    aget-wide v16, p6, v22

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p0, v24

    add-int/lit8 v25, p1, 0x4

    aget-wide v12, p0, v25

    aget-wide v14, p6, v19

    aget-wide v16, p6, v20

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p0, v25

    add-int/lit8 v27, p1, 0x5

    aget-wide v12, p0, v27

    aget-wide v14, p6, v7

    aget-wide v16, p6, v4

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p0, v27

    add-int/lit8 v7, p1, 0x6

    aget-wide v12, p0, v7

    aget-wide v14, p6, v20

    aget-wide v16, p6, v5

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p0, v7

    add-int/lit8 v12, p1, 0x7

    aget-wide v13, p0, v12

    aget-wide v15, p6, v4

    xor-long/2addr v13, v15

    aput-wide v13, p0, v12

    add-int/lit8 v4, p1, 0x8

    aget-wide v12, p0, v4

    aget-wide v14, p6, v5

    xor-long/2addr v12, v14

    aput-wide v12, p0, v4

    aget-wide v4, p2, p3

    aget-wide v12, p2, v0

    xor-long v14, v4, v12

    aget-wide v4, p2, v10

    aget-wide v12, p2, v2

    xor-long/2addr v4, v12

    aget-wide v12, p4, p5

    aget-wide v0, p4, v1

    xor-long v16, v12, v0

    aget-wide v0, p4, v11

    aget-wide v2, p4, v3

    xor-long/2addr v0, v2

    const/4 v13, 0x0

    move-object/from16 v12, p6

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move-wide v2, v14

    move-wide/from16 v10, v16

    const/4 v13, 0x2

    move-wide/from16 v16, v0

    move-wide v14, v4

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move-wide v0, v14

    move-wide/from16 v4, v16

    aget-wide v12, p6, v8

    aget-wide v14, p6, v22

    xor-long/2addr v12, v14

    aput-wide v12, p6, v8

    aget-wide v12, p6, v9

    aget-wide v14, p2, v6

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-wide v8, p4, v18

    invoke-static {v14, v15, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v8

    xor-long/2addr v8, v12

    aput-wide v8, p6, v17

    aget-wide v8, p0, v23

    aget-wide v12, p6, v21

    xor-long/2addr v8, v12

    aput-wide v8, p0, v23

    aget-wide v8, p0, v24

    aget-wide v12, p6, v16

    aget-wide v14, p6, v21

    xor-long/2addr v12, v14

    xor-long/2addr v8, v12

    aput-wide v8, p0, v24

    aget-wide v8, p6, v16

    aget-wide v12, p6, v17

    xor-long/2addr v8, v12

    aput-wide v8, p6, v16

    aget-wide v12, p0, v25

    aget-wide v14, p6, v21

    xor-long/2addr v8, v14

    xor-long/2addr v8, v12

    aput-wide v8, p0, v25

    aget-wide v8, p0, v27

    aget-wide v12, p6, v16

    xor-long/2addr v8, v12

    aput-wide v8, p0, v27

    aget-wide v8, p0, v7

    aget-wide v12, p6, v17

    xor-long/2addr v8, v12

    aput-wide v8, p0, v7

    xor-long v14, v2, v0

    xor-long v16, v10, v4

    move-object/from16 v12, p0

    move/from16 v13, v24

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v7, p2, v6

    xor-long v28, v0, v7

    aget-wide v0, p4, v18

    xor-long v30, v4, v0

    move-object/from16 v26, p0

    invoke-static/range {v26 .. v31}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v0, p2, v6

    xor-long/2addr v0, v2

    aget-wide v2, p4, v18

    xor-long/2addr v2, v10

    move-object/from16 p1, p0

    move-wide/from16 p3, v0

    move-wide/from16 p5, v2

    move/from16 p2, v25

    invoke-static/range {p1 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul384_no_simd_gf2x([J[JI[JI[J)V
    .locals 35

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    add-int/lit8 v5, p2, 0x3

    add-int/lit8 v7, p4, 0x3

    const/4 v3, 0x6

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    aget-wide v0, p1, p2

    aget-wide v2, p1, v5

    xor-long v10, v0, v2

    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x4

    aget-wide v2, p1, v2

    xor-long v14, v0, v2

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    const/4 v2, 0x5

    add-int/lit8 v3, p2, 0x5

    aget-wide v3, p1, v3

    xor-long v18, v0, v3

    aget-wide v0, p3, p4

    aget-wide v3, p3, v7

    xor-long v12, v0, v3

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v3, p4, 0x4

    aget-wide v3, p3, v3

    xor-long/2addr v0, v3

    add-int/lit8 v3, p4, 0x2

    aget-wide v3, p3, v3

    add-int/lit8 v5, p4, 0x5

    aget-wide v5, p3, v5

    xor-long v20, v3, v5

    const/4 v3, 0x6

    aget-wide v4, p0, v3

    const/4 v6, 0x3

    aget-wide v7, p0, v6

    xor-long/2addr v4, v7

    aput-wide v4, p0, v3

    const/4 v4, 0x7

    aget-wide v7, p0, v4

    const/4 v5, 0x4

    aget-wide v16, p0, v5

    xor-long v7, v7, v16

    aput-wide v7, p0, v4

    const/16 v7, 0x8

    aget-wide v8, p0, v7

    aget-wide v16, p0, v2

    xor-long v8, v8, v16

    aput-wide v8, p0, v7

    const/4 v9, 0x0

    move-object/from16 v8, p5

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move-wide v8, v12

    const/16 v17, 0x4

    move-object/from16 v16, p5

    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v13, 0x2

    move-object/from16 v12, p5

    move-wide/from16 v16, v0

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    aget-wide v0, p0, v3

    const/4 v12, 0x0

    aget-wide v22, p0, v12

    xor-long v22, v0, v22

    aget-wide v24, p5, v12

    xor-long v22, v22, v24

    aput-wide v22, p0, v6

    const/4 v13, 0x1

    aget-wide v22, p5, v13

    const/16 v26, 0x2

    aget-wide v27, p5, v26

    xor-long v22, v22, v27

    aput-wide v22, p5, v13

    xor-long v24, v24, v22

    aput-wide v24, p5, v12

    aget-wide v27, p5, v6

    aget-wide v29, p5, v5

    xor-long v27, v27, v29

    aput-wide v27, p5, v6

    aget-wide v29, p5, v2

    xor-long v29, v27, v29

    aput-wide v29, p5, v5

    aget-wide v31, p0, v7

    aget-wide v33, p0, v26

    xor-long v33, v31, v33

    xor-long v27, v33, v27

    xor-long v27, v27, v24

    aput-wide v27, p0, v2

    const/16 v6, 0x9

    aget-wide v26, p0, v6

    xor-long v22, v26, v22

    xor-long v22, v22, v29

    xor-long v0, v0, v22

    aput-wide v0, p0, v3

    aget-wide v0, p0, v4

    aget-wide v12, p0, v13

    xor-long/2addr v12, v0

    xor-long v12, v12, v24

    aput-wide v12, p0, v5

    const/16 v3, 0xa

    aget-wide v12, p0, v3

    aget-wide v5, p5, v5

    xor-long/2addr v5, v12

    xor-long/2addr v0, v5

    aput-wide v0, p0, v4

    const/16 v0, 0xb

    aget-wide v0, p0, v0

    aget-wide v2, p5, v2

    xor-long/2addr v0, v2

    xor-long v0, v31, v0

    aput-wide v0, p0, v7

    xor-long v4, v10, v14

    xor-long v6, v8, v16

    const/4 v3, 0x4

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    xor-long v4, v14, v18

    xor-long v6, v16, v20

    const/4 v3, 0x6

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    xor-long v4, v10, v18

    xor-long v6, v8, v20

    const/4 v3, 0x5

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul384_no_simd_gf2x_xor([J[JI[JI[J)V
    .locals 36

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    add-int/lit8 v5, p2, 0x3

    add-int/lit8 v7, p4, 0x3

    const/4 v3, 0x6

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v2, p5

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    aget-wide v0, p1, p2

    aget-wide v2, p1, v5

    xor-long/2addr v2, v0

    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    xor-long v8, v0, v4

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    const/4 v6, 0x5

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    xor-long v10, v0, v4

    aget-wide v0, p3, p4

    aget-wide v4, p3, v7

    xor-long/2addr v4, v0

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v7, p4, 0x4

    aget-wide v12, p3, v7

    xor-long/2addr v12, v0

    add-int/lit8 v0, p4, 0x2

    aget-wide v0, p3, v0

    add-int/lit8 v7, p4, 0x5

    aget-wide v14, p3, v7

    xor-long/2addr v14, v0

    const/4 v7, 0x6

    aget-wide v0, p5, v7

    const/16 v16, 0x3

    aget-wide v17, p5, v16

    xor-long v0, v0, v17

    aput-wide v0, p5, v7

    const/16 v17, 0x7

    aget-wide v18, p5, v17

    const/16 v20, 0x4

    aget-wide v21, p5, v20

    xor-long v18, v18, v21

    aput-wide v18, p5, v17

    const/16 v21, 0x8

    aget-wide v22, p5, v21

    aget-wide v24, p5, v6

    xor-long v22, v22, v24

    aput-wide v22, p5, v21

    const/16 v24, 0x0

    aget-wide v25, p0, v24

    aget-wide v27, p5, v24

    xor-long v25, v25, v27

    aput-wide v25, p0, v24

    const/16 v25, 0x1

    aget-wide v26, p0, v25

    aget-wide v28, p5, v25

    xor-long v26, v26, v28

    aput-wide v26, p0, v25

    const/16 v26, 0x2

    aget-wide v27, p0, v26

    aget-wide v29, p5, v26

    xor-long v27, v27, v29

    aput-wide v27, p0, v26

    aget-wide v27, p0, v16

    aget-wide v29, p5, v24

    xor-long v29, v0, v29

    xor-long v27, v27, v29

    aput-wide v27, p0, v16

    aget-wide v27, p0, v6

    aget-wide v29, p5, v26

    xor-long v29, v22, v29

    xor-long v27, v27, v29

    aput-wide v27, p0, v6

    aget-wide v27, p0, v7

    const/16 v29, 0x9

    aget-wide v30, p5, v29

    xor-long v0, v0, v30

    xor-long v0, v27, v0

    aput-wide v0, p0, v7

    aget-wide v0, p0, v20

    aget-wide v27, p5, v25

    xor-long v27, v18, v27

    xor-long v0, v0, v27

    aput-wide v0, p0, v20

    aget-wide v0, p0, v17

    const/16 v27, 0xa

    aget-wide v32, p5, v27

    xor-long v18, v18, v32

    xor-long v0, v0, v18

    aput-wide v0, p0, v17

    aget-wide v0, p0, v21

    const/16 v18, 0xb

    aget-wide v34, p5, v18

    xor-long v22, v22, v34

    xor-long v0, v0, v22

    aput-wide v0, p0, v21

    aget-wide v0, p0, v29

    xor-long v0, v0, v30

    aput-wide v0, p0, v29

    aget-wide v0, p0, v27

    xor-long v0, v0, v32

    aput-wide v0, p0, v27

    aget-wide v0, p0, v18

    xor-long v0, v0, v34

    aput-wide v0, p0, v18

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move-wide/from16 v18, v2

    move-wide/from16 v22, v4

    const/4 v1, 0x4

    move-wide v2, v10

    move-wide v4, v14

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v1, 0x2

    move-wide v2, v8

    move-wide v4, v12

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    aget-wide v0, p0, v16

    aget-wide v8, p5, v24

    xor-long/2addr v0, v8

    aput-wide v0, p0, v16

    aget-wide v0, p5, v25

    aget-wide v12, p5, v26

    xor-long/2addr v0, v12

    aput-wide v0, p5, v25

    xor-long/2addr v8, v0

    aput-wide v8, p5, v24

    aget-wide v12, p5, v16

    aget-wide v24, p5, v20

    xor-long v12, v12, v24

    aput-wide v12, p5, v16

    aget-wide v24, p5, v6

    xor-long v24, v12, v24

    aput-wide v24, p5, v20

    aget-wide v26, p0, v6

    xor-long/2addr v12, v8

    xor-long v12, v26, v12

    aput-wide v12, p0, v6

    aget-wide v12, p0, v7

    xor-long v0, v0, v24

    xor-long/2addr v0, v12

    aput-wide v0, p0, v7

    aget-wide v0, p0, v20

    xor-long/2addr v0, v8

    aput-wide v0, p0, v20

    aget-wide v0, p0, v17

    aget-wide v7, p5, v20

    xor-long/2addr v0, v7

    aput-wide v0, p0, v17

    aget-wide v0, p0, v21

    aget-wide v6, p5, v6

    xor-long/2addr v0, v6

    aput-wide v0, p0, v21

    xor-long v26, v18, v2

    xor-long v28, v22, v4

    const/16 v25, 0x4

    move-object/from16 v24, p0

    invoke-static/range {v24 .. v29}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    xor-long v32, v2, v10

    xor-long v34, v4, v14

    const/16 v31, 0x6

    move-object/from16 v30, p0

    invoke-static/range {v30 .. v35}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    xor-long v32, v18, v10

    xor-long v34, v22, v14

    const/16 v31, 0x5

    invoke-static/range {v30 .. v35}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul416_no_simd_gf2x([J[JI[JI[J)V
    .locals 42

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    add-int/lit8 v0, p2, 0x3

    aget-wide v4, p1, v0

    add-int/lit8 v1, p2, 0x4

    aget-wide v6, p1, v1

    add-int/lit8 v13, p4, 0x3

    aget-wide v8, p3, v13

    add-int/lit8 v14, p4, 0x4

    aget-wide v10, p3, v14

    const/4 v3, 0x6

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    add-int/lit8 v15, p2, 0x5

    aget-wide v4, p1, v15

    add-int/lit8 v16, p4, 0x5

    aget-wide v6, p3, v16

    const/16 v3, 0xa

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v17, p2, 0x6

    aget-wide v2, p1, v17

    add-int/lit8 v18, p4, 0x6

    aget-wide v4, p3, v18

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v2

    const/16 v19, 0xb

    aget-wide v4, p0, v19

    xor-long/2addr v2, v4

    const/16 v20, 0xc

    aput-wide v2, p0, v20

    const/16 v21, 0xa

    aget-wide v4, p0, v21

    xor-long/2addr v2, v4

    aput-wide v2, p0, v19

    aget-wide v2, p1, v15

    aget-wide v4, p1, v17

    xor-long/2addr v4, v2

    aget-wide v2, p3, v16

    aget-wide v6, p3, v18

    xor-long/2addr v6, v2

    const/16 v3, 0xb

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/16 v22, 0x8

    aget-wide v2, p0, v22

    aget-wide v4, p0, v21

    xor-long/2addr v2, v4

    aput-wide v2, p0, v22

    aget-wide v4, p0, v19

    const/16 v23, 0x9

    aget-wide v6, p0, v23

    xor-long/2addr v4, v6

    aput-wide v4, p0, v19

    aget-wide v6, p0, v20

    xor-long/2addr v6, v2

    aput-wide v6, p0, v21

    const/16 v24, 0x6

    aget-wide v6, p0, v24

    xor-long/2addr v2, v6

    aput-wide v2, p0, v22

    const/16 v25, 0x7

    aget-wide v2, p0, v25

    xor-long/2addr v2, v4

    aput-wide v2, p0, v23

    aget-wide v2, p1, v0

    aget-wide v4, p1, v15

    xor-long/2addr v4, v2

    aget-wide v2, p1, v1

    aget-wide v6, p1, v17

    xor-long/2addr v6, v2

    aget-wide v2, p3, v13

    aget-wide v8, p3, v16

    xor-long/2addr v8, v2

    aget-wide v2, p3, v14

    aget-wide v10, p3, v18

    xor-long/2addr v10, v2

    const/16 v3, 0x8

    move-object/from16 v2, p0

    move-object/from16 v12, p5

    invoke-static/range {v2 .. v12}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    aget-wide v2, p1, p2

    aget-wide v4, p1, v0

    xor-long/2addr v4, v2

    add-int/lit8 v0, p2, 0x1

    aget-wide v2, p1, v0

    aget-wide v0, p1, v1

    xor-long v6, v2, v0

    const/4 v0, 0x2

    add-int/lit8 v1, p2, 0x2

    aget-wide v1, p1, v1

    aget-wide v8, p1, v15

    xor-long v26, v1, v8

    aget-wide v1, p1, v17

    aget-wide v8, p3, p4

    aget-wide v10, p3, v13

    xor-long/2addr v8, v10

    add-int/lit8 v3, p4, 0x1

    aget-wide v10, p3, v3

    aget-wide v12, p3, v14

    xor-long/2addr v10, v12

    add-int/lit8 v3, p4, 0x2

    aget-wide v12, p3, v3

    aget-wide v14, p3, v16

    xor-long/2addr v12, v14

    aget-wide v14, p3, v18

    aget-wide v16, p0, v24

    const/16 v18, 0x3

    aget-wide v28, p0, v18

    xor-long v16, v16, v28

    aput-wide v16, p0, v24

    aget-wide v16, p0, v25

    const/16 v28, 0x4

    aget-wide v29, p0, v28

    xor-long v16, v16, v29

    aput-wide v16, p0, v25

    aget-wide v16, p0, v22

    const/16 v29, 0x5

    aget-wide v30, p0, v29

    xor-long v16, v16, v30

    aput-wide v16, p0, v22

    const/4 v3, 0x0

    move-wide v0, v1

    const/16 v16, 0x2

    move-object/from16 v2, p5

    invoke-static/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    move-wide/from16 v30, v8

    move-wide/from16 v32, v10

    move-wide v8, v4

    move-wide v10, v6

    const/4 v3, 0x4

    move-wide v6, v12

    move-wide/from16 v4, v26

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move-wide v12, v4

    move-wide/from16 v26, v6

    invoke-static {v0, v1, v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v2

    aget-wide v4, p5, v29

    xor-long/2addr v2, v4

    aput-wide v2, p5, v24

    aget-wide v4, p5, v28

    xor-long/2addr v2, v4

    aput-wide v2, p5, v29

    xor-long v4, v12, v0

    xor-long v6, v26, v14

    const/4 v3, 0x5

    move-object/from16 v2, p5

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v2, p0, v24

    const/4 v4, 0x0

    aget-wide v5, p0, v4

    xor-long/2addr v5, v2

    aget-wide v34, p5, v4

    xor-long v5, v5, v34

    aput-wide v5, p0, v18

    aget-wide v4, p0, v25

    const/4 v6, 0x1

    aget-wide v36, p0, v6

    xor-long v36, v4, v36

    aget-wide v6, p5, v6

    xor-long v36, v36, v6

    aput-wide v36, p0, v28

    aget-wide v36, p5, v16

    aget-wide v38, p5, v28

    xor-long v36, v36, v38

    aput-wide v36, p5, v16

    aget-wide v38, p5, v18

    aget-wide v40, p5, v29

    xor-long v38, v38, v40

    aput-wide v38, p5, v18

    aget-wide v17, p0, v22

    aget-wide v40, p0, v16

    xor-long v40, v17, v40

    xor-long v40, v40, v36

    xor-long v34, v40, v34

    aput-wide v34, p0, v29

    aget-wide v28, p0, v23

    xor-long v34, v28, v38

    xor-long v6, v34, v6

    xor-long/2addr v2, v6

    aput-wide v2, p0, v24

    aget-wide v2, p0, v21

    xor-long v2, v2, v36

    aget-wide v6, p5, v24

    xor-long/2addr v2, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v25

    aget-wide v2, p0, v19

    xor-long v2, v2, v38

    xor-long v2, v17, v2

    aput-wide v2, p0, v22

    aget-wide v2, p0, v20

    xor-long/2addr v2, v6

    xor-long v2, v28, v2

    aput-wide v2, p0, v23

    xor-long v4, v8, v12

    xor-long v6, v10, v0

    xor-long v8, v30, v26

    xor-long v10, v32, v14

    const/4 v3, 0x5

    move-object/from16 v2, p0

    move-object/from16 v12, p5

    invoke-static/range {v2 .. v12}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    return-void
.end method

.method private static mul416_no_simd_gf2x_xor([J[JI[JI[J[J)V
    .locals 35

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    add-int/lit8 v11, p2, 0x3

    aget-wide v2, p1, v11

    add-int/lit8 v12, p2, 0x4

    aget-wide v4, p1, v12

    add-int/lit8 v13, p4, 0x3

    aget-wide v6, p3, v13

    add-int/lit8 v14, p4, 0x4

    aget-wide v8, p3, v14

    const/4 v1, 0x6

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    add-int/lit8 v15, p2, 0x5

    aget-wide v2, p1, v15

    add-int/lit8 v16, p4, 0x5

    aget-wide v4, p3, v16

    const/16 v1, 0xa

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v17, p2, 0x6

    aget-wide v0, p1, v17

    add-int/lit8 v18, p4, 0x6

    aget-wide v2, p3, v18

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v0

    const/16 v19, 0xb

    aget-wide v2, p5, v19

    xor-long/2addr v0, v2

    const/16 v20, 0xc

    aput-wide v0, p5, v20

    const/16 v21, 0xa

    aget-wide v2, p5, v21

    xor-long/2addr v0, v2

    aput-wide v0, p5, v19

    aget-wide v0, p1, v15

    aget-wide v2, p1, v17

    xor-long/2addr v2, v0

    aget-wide v0, p3, v16

    aget-wide v4, p3, v18

    xor-long/2addr v4, v0

    const/16 v1, 0xb

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/16 v22, 0x8

    aget-wide v0, p5, v22

    aget-wide v2, p5, v21

    xor-long/2addr v0, v2

    aput-wide v0, p5, v22

    aget-wide v2, p5, v19

    const/16 v23, 0x9

    aget-wide v4, p5, v23

    xor-long/2addr v2, v4

    aput-wide v2, p5, v19

    aget-wide v4, p5, v20

    xor-long/2addr v4, v0

    aput-wide v4, p5, v21

    const/16 v24, 0x6

    aget-wide v4, p5, v24

    xor-long/2addr v0, v4

    aput-wide v0, p5, v22

    const/16 v25, 0x7

    aget-wide v6, p5, v25

    xor-long/2addr v2, v6

    aput-wide v2, p5, v23

    const/16 v26, 0x3

    aget-wide v2, p5, v26

    xor-long/2addr v2, v4

    aput-wide v2, p5, v24

    const/16 v27, 0x4

    aget-wide v2, p5, v27

    xor-long/2addr v2, v6

    aput-wide v2, p5, v25

    const/16 v28, 0x5

    aget-wide v2, p5, v28

    xor-long/2addr v0, v2

    aput-wide v0, p5, v22

    aget-wide v0, p1, v11

    aget-wide v2, p1, v15

    xor-long/2addr v2, v0

    aget-wide v0, p1, v12

    aget-wide v4, p1, v17

    xor-long/2addr v4, v0

    aget-wide v0, p3, v13

    aget-wide v6, p3, v16

    xor-long/2addr v6, v0

    aget-wide v0, p3, v14

    aget-wide v8, p3, v18

    xor-long/2addr v8, v0

    const/16 v1, 0x8

    move-object/from16 v0, p5

    move-object/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    const/4 v10, 0x0

    aget-wide v0, p0, v10

    aget-wide v2, p5, v10

    xor-long/2addr v0, v2

    aput-wide v0, p0, v10

    const/16 v29, 0x1

    aget-wide v0, p0, v29

    aget-wide v2, p5, v29

    xor-long/2addr v0, v2

    aput-wide v0, p0, v29

    const/16 v30, 0x2

    aget-wide v0, p0, v30

    aget-wide v2, p5, v30

    xor-long/2addr v0, v2

    aput-wide v0, p0, v30

    aget-wide v0, p0, v26

    aget-wide v2, p5, v24

    aget-wide v4, p5, v10

    xor-long/2addr v4, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v26

    aget-wide v0, p0, v27

    aget-wide v4, p5, v25

    aget-wide v6, p5, v29

    xor-long/2addr v6, v4

    xor-long/2addr v0, v6

    aput-wide v0, p0, v27

    aget-wide v0, p0, v28

    aget-wide v6, p5, v22

    aget-wide v8, p5, v30

    xor-long/2addr v8, v6

    xor-long/2addr v0, v8

    aput-wide v0, p0, v28

    aget-wide v0, p0, v24

    aget-wide v8, p5, v23

    xor-long/2addr v2, v8

    xor-long/2addr v0, v2

    aput-wide v0, p0, v24

    aget-wide v0, p0, v25

    aget-wide v2, p5, v21

    xor-long/2addr v4, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v25

    aget-wide v0, p0, v22

    aget-wide v4, p5, v19

    xor-long/2addr v6, v4

    xor-long/2addr v0, v6

    aput-wide v0, p0, v22

    aget-wide v0, p0, v23

    aget-wide v6, p5, v20

    xor-long/2addr v8, v6

    xor-long/2addr v0, v8

    aput-wide v0, p0, v23

    aget-wide v0, p0, v21

    xor-long/2addr v0, v2

    aput-wide v0, p0, v21

    aget-wide v0, p0, v19

    xor-long/2addr v0, v4

    aput-wide v0, p0, v19

    aget-wide v0, p0, v20

    xor-long/2addr v0, v6

    aput-wide v0, p0, v20

    aget-wide v0, p1, p2

    aget-wide v2, p1, v11

    xor-long/2addr v2, v0

    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    aget-wide v4, p1, v12

    xor-long/2addr v4, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    aget-wide v6, p1, v15

    xor-long v11, v0, v6

    aget-wide v0, p1, v17

    aget-wide v6, p3, p4

    aget-wide v8, p3, v13

    xor-long/2addr v6, v8

    add-int/lit8 v8, p4, 0x1

    aget-wide v8, p3, v8

    aget-wide v13, p3, v14

    xor-long/2addr v8, v13

    add-int/lit8 v13, p4, 0x2

    aget-wide v13, p3, v13

    aget-wide v15, p3, v16

    xor-long/2addr v13, v15

    move-wide v15, v11

    const/16 p6, 0x0

    aget-wide v10, p3, v18

    move-wide/from16 v17, v0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    move-wide/from16 p1, v13

    move-wide/from16 v12, v17

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide v6, v2

    move-wide v8, v4

    const/4 v1, 0x4

    move-wide/from16 v4, p1

    move-wide v2, v15

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    move-wide/from16 v31, v4

    invoke-static {v12, v13, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v0

    aget-wide v2, p5, v28

    xor-long/2addr v0, v2

    aput-wide v0, p5, v24

    aget-wide v2, p5, v27

    xor-long/2addr v0, v2

    aput-wide v0, p5, v28

    xor-long v2, v15, v12

    xor-long v4, v31, v10

    const/4 v1, 0x5

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    aget-wide v0, p0, v26

    aget-wide v2, p5, p6

    xor-long/2addr v0, v2

    aput-wide v0, p0, v26

    aget-wide v0, p0, v27

    aget-wide v4, p5, v29

    xor-long/2addr v0, v4

    aput-wide v0, p0, v27

    aget-wide v0, p5, v30

    aget-wide v33, p5, v27

    xor-long v0, v0, v33

    aput-wide v0, p5, v30

    aget-wide v29, p5, v26

    aget-wide v33, p5, v28

    xor-long v29, v29, v33

    aput-wide v29, p5, v26

    aget-wide v26, p0, v28

    xor-long/2addr v2, v0

    xor-long v2, v26, v2

    aput-wide v2, p0, v28

    aget-wide v2, p0, v24

    xor-long v4, v29, v4

    xor-long/2addr v2, v4

    aput-wide v2, p0, v24

    aget-wide v2, p0, v25

    aget-wide v4, p5, v24

    xor-long/2addr v0, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v25

    aget-wide v0, p0, v22

    xor-long v0, v0, v29

    aput-wide v0, p0, v22

    aget-wide v0, p0, v23

    xor-long/2addr v0, v4

    aput-wide v0, p0, v23

    xor-long v2, v6, v15

    xor-long v4, v8, v12

    xor-long v6, v17, v31

    xor-long v8, v19, v10

    const/4 v1, 0x5

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    return-void
.end method

.method private static mul544_no_simd_gf2x([J[JI[JI[J[J[J)V
    .locals 30

    aget-wide v2, p1, p2

    add-int/lit8 v10, p2, 0x1

    aget-wide v4, p1, v10

    aget-wide v6, p3, p4

    add-int/lit8 v11, p4, 0x1

    aget-wide v8, p3, v11

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    add-int/lit8 v0, p2, 0x2

    aget-wide v14, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-wide v16, p1, v1

    add-int/lit8 v2, p4, 0x2

    aget-wide v18, p3, v2

    add-int/lit8 v3, p4, 0x3

    aget-wide v20, p3, v3

    const/4 v13, 0x4

    move-object/from16 v12, p0

    invoke-static/range {v12 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/4 v4, 0x4

    aget-wide v5, p0, v4

    const/4 v7, 0x2

    aget-wide v8, p0, v7

    xor-long/2addr v5, v8

    aput-wide v5, p0, v4

    const/4 v8, 0x5

    aget-wide v12, p0, v8

    const/4 v9, 0x3

    aget-wide v14, p0, v9

    xor-long/2addr v12, v14

    aput-wide v12, p0, v8

    const/16 v23, 0x0

    aget-wide v14, p0, v23

    xor-long/2addr v14, v5

    aput-wide v14, p0, v7

    const/16 v24, 0x1

    aget-wide v14, p0, v24

    xor-long/2addr v14, v12

    aput-wide v14, p0, v9

    const/16 v25, 0x6

    aget-wide v14, p0, v25

    xor-long/2addr v5, v14

    aput-wide v5, p0, v4

    const/4 v5, 0x7

    aget-wide v14, p0, v5

    xor-long/2addr v12, v14

    aput-wide v12, p0, v8

    aget-wide v12, p1, p2

    aget-wide v14, p1, v0

    xor-long/2addr v14, v12

    aget-wide v12, p1, v10

    aget-wide v16, p1, v1

    xor-long v16, v12, v16

    aget-wide v12, p3, p4

    aget-wide v18, p3, v2

    xor-long v18, v12, v18

    aget-wide v12, p3, v11

    aget-wide v20, p3, v3

    xor-long v20, v12, v20

    const/4 v13, 0x2

    move-object/from16 v12, p0

    move-object/from16 v22, p7

    invoke-static/range {v12 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    add-int/lit8 v15, p2, 0x4

    add-int/lit8 v17, p4, 0x4

    const/16 v13, 0x8

    move-object/from16 v14, p1

    move-object/from16 v16, p3

    move-object/from16 v18, p7

    invoke-static/range {v12 .. v18}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x([JI[JI[JI[J)V

    const/16 v6, 0x8

    aget-wide v12, p0, v6

    aget-wide v18, p0, v4

    xor-long v12, v12, v18

    aput-wide v12, p0, v6

    const/16 v14, 0x9

    aget-wide v18, p0, v14

    aget-wide v20, p0, v8

    xor-long v18, v18, v20

    aput-wide v18, p0, v14

    const/16 v16, 0xa

    aget-wide v20, p0, v16

    aget-wide v26, p0, v25

    xor-long v20, v20, v26

    aput-wide v20, p0, v16

    const/16 v22, 0xb

    aget-wide v26, p0, v22

    aget-wide v28, p0, v5

    xor-long v26, v26, v28

    aput-wide v26, p0, v22

    aget-wide v28, p0, v23

    xor-long v28, v12, v28

    aput-wide v28, p0, v4

    aget-wide v28, p0, v24

    xor-long v28, v18, v28

    aput-wide v28, p0, v8

    aget-wide v28, p0, v7

    xor-long v28, v20, v28

    aput-wide v28, p0, v25

    aget-wide v28, p0, v9

    xor-long v28, v26, v28

    aput-wide v28, p0, v5

    const/16 v5, 0xc

    aget-wide v28, p0, v5

    xor-long v12, v12, v28

    aput-wide v12, p0, v6

    const/16 v8, 0xd

    aget-wide v12, p0, v8

    xor-long v12, v18, v12

    aput-wide v12, p0, v14

    const/16 v8, 0xe

    aget-wide v12, p0, v8

    xor-long v12, v20, v12

    aput-wide v12, p0, v16

    const/16 v8, 0xf

    aget-wide v12, p0, v8

    xor-long v12, v26, v12

    aput-wide v12, p0, v22

    const/16 v8, 0x10

    aget-wide v12, p0, v8

    xor-long v12, v28, v12

    aput-wide v12, p0, v5

    aget-wide v12, p1, p2

    aget-wide v14, p1, v15

    xor-long/2addr v12, v14

    aput-wide v12, p5, v23

    aget-wide v12, p1, v10

    add-int/lit8 v5, p2, 0x5

    aget-wide v14, p1, v5

    xor-long/2addr v12, v14

    aput-wide v12, p5, v24

    aget-wide v12, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-wide v14, p1, v0

    xor-long/2addr v12, v14

    aput-wide v12, p5, v7

    aget-wide v0, p1, v1

    add-int/lit8 v5, p2, 0x7

    aget-wide v12, p1, v5

    xor-long/2addr v0, v12

    aput-wide v0, p5, v9

    add-int/lit8 v0, p2, 0x8

    aget-wide v0, p1, v0

    aput-wide v0, p5, v4

    aget-wide v0, p3, p4

    aget-wide v12, p3, v17

    xor-long/2addr v0, v12

    aput-wide v0, p6, v23

    aget-wide v0, p3, v11

    add-int/lit8 v5, p4, 0x5

    aget-wide v10, p3, v5

    xor-long/2addr v0, v10

    aput-wide v0, p6, v24

    aget-wide v0, p3, v2

    add-int/lit8 v2, p4, 0x6

    aget-wide v10, p3, v2

    xor-long/2addr v0, v10

    aput-wide v0, p6, v7

    aget-wide v0, p3, v3

    add-int/lit8 v2, p4, 0x7

    aget-wide v2, p3, v2

    xor-long/2addr v0, v2

    aput-wide v0, p6, v9

    add-int/lit8 v0, p4, 0x8

    aget-wide v0, p3, v0

    aput-wide v0, p6, v4

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x4

    move-object/from16 v12, p0

    move-object/from16 v14, p5

    move-object/from16 v16, p6

    move-object/from16 v18, p7

    invoke-static/range {v12 .. v18}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x_xor([JI[JI[JI[J)V

    return-void
.end method

.method private static mul544_no_simd_gf2x_xor([J[JI[JI[J[J[J[J)V
    .locals 32

    aget-wide v2, p1, p2

    add-int/lit8 v10, p2, 0x1

    aget-wide v4, p1, v10

    aget-wide v6, p3, p4

    add-int/lit8 v11, p4, 0x1

    aget-wide v8, p3, v11

    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    add-int/lit8 v0, p2, 0x2

    aget-wide v14, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-wide v16, p1, v1

    add-int/lit8 v2, p4, 0x2

    aget-wide v18, p3, v2

    add-int/lit8 v3, p4, 0x3

    aget-wide v20, p3, v3

    const/4 v13, 0x4

    move-object/from16 v12, p7

    invoke-static/range {v12 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/4 v4, 0x4

    aget-wide v5, p7, v4

    const/4 v7, 0x2

    aget-wide v8, p7, v7

    xor-long/2addr v5, v8

    aput-wide v5, p7, v4

    const/4 v8, 0x5

    aget-wide v12, p7, v8

    const/4 v9, 0x3

    aget-wide v14, p7, v9

    xor-long/2addr v12, v14

    aput-wide v12, p7, v8

    const/16 v23, 0x0

    aget-wide v14, p7, v23

    xor-long/2addr v14, v5

    aput-wide v14, p7, v7

    const/16 v24, 0x1

    aget-wide v14, p7, v24

    xor-long/2addr v14, v12

    aput-wide v14, p7, v9

    const/16 v25, 0x6

    aget-wide v14, p7, v25

    xor-long/2addr v5, v14

    aput-wide v5, p7, v4

    const/4 v5, 0x7

    aget-wide v14, p7, v5

    xor-long/2addr v12, v14

    aput-wide v12, p7, v8

    aget-wide v12, p1, p2

    aget-wide v14, p1, v0

    xor-long/2addr v14, v12

    aget-wide v12, p1, v10

    aget-wide v16, p1, v1

    xor-long v16, v12, v16

    aget-wide v12, p3, p4

    aget-wide v18, p3, v2

    xor-long v18, v12, v18

    aget-wide v12, p3, v11

    aget-wide v20, p3, v3

    xor-long v20, v12, v20

    const/4 v13, 0x2

    move-object/from16 v12, p7

    move-object/from16 v22, p8

    invoke-static/range {v12 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    add-int/lit8 v15, p2, 0x4

    add-int/lit8 v17, p4, 0x4

    const/16 v13, 0x8

    move-object/from16 v14, p1

    move-object/from16 v16, p3

    move-object/from16 v18, p8

    invoke-static/range {v12 .. v18}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x([JI[JI[JI[J)V

    const/16 v6, 0x8

    aget-wide v12, p7, v6

    aget-wide v18, p7, v4

    xor-long v12, v12, v18

    aput-wide v12, p7, v6

    const/16 v14, 0x9

    aget-wide v18, p7, v14

    aget-wide v20, p7, v8

    xor-long v18, v18, v20

    aput-wide v18, p7, v14

    const/16 v16, 0xa

    aget-wide v20, p7, v16

    aget-wide v26, p7, v25

    xor-long v20, v20, v26

    aput-wide v20, p7, v16

    const/16 v22, 0xb

    aget-wide v26, p7, v22

    aget-wide v28, p7, v5

    xor-long v26, v26, v28

    aput-wide v26, p7, v22

    aget-wide v28, p0, v23

    aget-wide v30, p7, v23

    xor-long v28, v28, v30

    aput-wide v28, p0, v23

    aget-wide v28, p0, v24

    aget-wide v30, p7, v24

    xor-long v28, v28, v30

    aput-wide v28, p0, v24

    aget-wide v28, p0, v7

    aget-wide v30, p7, v7

    xor-long v28, v28, v30

    aput-wide v28, p0, v7

    aget-wide v28, p0, v9

    aget-wide v30, p7, v9

    xor-long v28, v28, v30

    aput-wide v28, p0, v9

    aget-wide v28, p0, v4

    aget-wide v30, p7, v23

    xor-long v30, v12, v30

    xor-long v28, v28, v30

    aput-wide v28, p0, v4

    aget-wide v28, p0, v8

    aget-wide v30, p7, v24

    xor-long v30, v18, v30

    xor-long v28, v28, v30

    aput-wide v28, p0, v8

    aget-wide v28, p0, v25

    aget-wide v30, p7, v7

    xor-long v30, v20, v30

    xor-long v28, v28, v30

    aput-wide v28, p0, v25

    aget-wide v28, p0, v5

    aget-wide v30, p7, v9

    xor-long v30, v26, v30

    xor-long v28, v28, v30

    aput-wide v28, p0, v5

    aget-wide v28, p0, v6

    const/16 v5, 0xc

    aget-wide v30, p7, v5

    xor-long v12, v12, v30

    xor-long v12, v28, v12

    aput-wide v12, p0, v6

    aget-wide v12, p0, v14

    const/16 v8, 0xd

    aget-wide v28, p7, v8

    xor-long v18, v18, v28

    xor-long v12, v12, v18

    aput-wide v12, p0, v14

    aget-wide v12, p0, v16

    const/16 v14, 0xe

    aget-wide v18, p7, v14

    xor-long v20, v20, v18

    xor-long v12, v12, v20

    aput-wide v12, p0, v16

    aget-wide v12, p0, v22

    const/16 v16, 0xf

    aget-wide v20, p7, v16

    xor-long v26, v26, v20

    xor-long v12, v12, v26

    aput-wide v12, p0, v22

    aget-wide v12, p0, v5

    const/16 v22, 0x10

    aget-wide v25, p7, v22

    xor-long v30, v30, v25

    xor-long v12, v12, v30

    aput-wide v12, p0, v5

    aget-wide v12, p0, v8

    xor-long v12, v12, v28

    aput-wide v12, p0, v8

    aget-wide v12, p0, v14

    xor-long v12, v12, v18

    aput-wide v12, p0, v14

    aget-wide v12, p0, v16

    xor-long v12, v12, v20

    aput-wide v12, p0, v16

    aget-wide v12, p0, v22

    xor-long v12, v12, v25

    aput-wide v12, p0, v22

    aget-wide v12, p1, p2

    aget-wide v14, p1, v15

    xor-long/2addr v12, v14

    aput-wide v12, p5, v23

    aget-wide v12, p1, v10

    add-int/lit8 v5, p2, 0x5

    aget-wide v14, p1, v5

    xor-long/2addr v12, v14

    aput-wide v12, p5, v24

    aget-wide v12, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-wide v14, p1, v0

    xor-long/2addr v12, v14

    aput-wide v12, p5, v7

    aget-wide v0, p1, v1

    add-int/lit8 v5, p2, 0x7

    aget-wide v12, p1, v5

    xor-long/2addr v0, v12

    aput-wide v0, p5, v9

    add-int/lit8 v0, p2, 0x8

    aget-wide v0, p1, v0

    aput-wide v0, p5, v4

    aget-wide v0, p3, p4

    aget-wide v12, p3, v17

    xor-long/2addr v0, v12

    aput-wide v0, p6, v23

    aget-wide v0, p3, v11

    add-int/lit8 v5, p4, 0x5

    aget-wide v10, p3, v5

    xor-long/2addr v0, v10

    aput-wide v0, p6, v24

    aget-wide v0, p3, v2

    add-int/lit8 v2, p4, 0x6

    aget-wide v10, p3, v2

    xor-long/2addr v0, v10

    aput-wide v0, p6, v7

    aget-wide v0, p3, v3

    add-int/lit8 v2, p4, 0x7

    aget-wide v2, p3, v2

    xor-long/2addr v0, v2

    aput-wide v0, p6, v9

    add-int/lit8 v0, p4, 0x8

    aget-wide v0, p3, v0

    aput-wide v0, p6, v4

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x4

    move-object/from16 v12, p0

    move-object/from16 v14, p5

    move-object/from16 v16, p6

    move-object/from16 v18, p7

    invoke-static/range {v12 .. v18}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x_xor([JI[JI[JI[J)V

    return-void
.end method


# virtual methods
.method public abstract mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
.end method

.method public abstract mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
.end method

.method public abstract sqr_gf2x([J[JI)V
.end method
