.class Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static LDDecode(IIII)S
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x18008

    sub-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x1f

    int-to-short p0, p0

    return p0
.end method

.method static abs(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr p0, v0

    sub-int/2addr p0, v0

    return p0
.end method

.method static f([IIII)I
    .locals 3

    mul-int/lit16 v0, p3, 0xaaa

    shr-int/lit8 v0, v0, 0x19

    mul-int/lit16 v1, v0, 0x3001

    sub-int v1, p3, v1

    rsub-int v1, v1, 0x3000

    shr-int/lit8 v1, v1, 0x1f

    sub-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v1

    aput v2, p0, p1

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    aput v0, p0, p2

    aget p0, p0, p1

    mul-int/lit16 p0, p0, 0x6002

    sub-int/2addr p3, p0

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result p0

    return p0
.end method

.method static g(I)I
    .locals 3

    mul-int/lit16 v0, p0, 0xaaa

    shr-int/lit8 v0, v0, 0x1b

    const v1, 0xc004

    mul-int v1, v1, v0

    sub-int v1, p0, v1

    const v2, 0xc003

    sub-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1f

    sub-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    const v1, 0x18008

    mul-int v0, v0, v1

    sub-int/2addr v0, p0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result p0

    return p0
.end method

.method static helpRec([S[S[BB)V
    .locals 17

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p3, v1, v2

    const/16 v3, 0x20

    new-array v4, v3, [B

    move-object/from16 v5, p2

    invoke-static {v5, v1, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/newhope/ChaCha20;->process([B[B[BII)V

    new-array v1, v0, [I

    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x100

    if-ge v3, v5, :cond_0

    ushr-int/lit8 v5, v3, 0x3

    aget-byte v5, v4, v5

    and-int/lit8 v6, v3, 0x7

    ushr-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/2addr v5, v6

    aget-short v7, p1, v3

    mul-int/lit8 v7, v7, 0x8

    const/4 v8, 0x4

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v7, v5

    invoke-static {v1, v2, v8, v7}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v7

    add-int/lit16 v9, v3, 0x100

    aget-short v10, p1, v9

    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v5

    const/4 v11, 0x5

    invoke-static {v1, v6, v11, v10}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v10

    add-int/2addr v7, v10

    add-int/lit16 v10, v3, 0x200

    aget-short v12, p1, v10

    mul-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v5

    const/4 v13, 0x2

    const/4 v14, 0x6

    invoke-static {v1, v13, v14, v12}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v12

    add-int/2addr v7, v12

    add-int/lit16 v12, v3, 0x300

    aget-short v15, p1, v12

    mul-int/lit8 v15, v15, 0x8

    add-int/2addr v15, v5

    const/4 v5, 0x3

    const/4 v0, 0x7

    invoke-static {v1, v5, v0, v15}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v15

    add-int/2addr v7, v15

    rsub-int v7, v7, 0x6001

    shr-int/lit8 v7, v7, 0x1f

    xor-int/lit8 v15, v7, -0x1

    aget v16, v1, v2

    and-int v16, v15, v16

    aget v8, v1, v8

    and-int/2addr v8, v7

    xor-int v8, v16, v8

    aget v16, v1, v6

    and-int v16, v15, v16

    aget v11, v1, v11

    and-int/2addr v11, v7

    xor-int v11, v16, v11

    aget v16, v1, v13

    and-int v16, v15, v16

    aget v14, v1, v14

    and-int/2addr v14, v7

    xor-int v14, v16, v14

    aget v16, v1, v5

    and-int v15, v15, v16

    aget v0, v1, v0

    and-int/2addr v0, v7

    xor-int/2addr v0, v15

    filled-new-array {v8, v11, v14, v0}, [I

    move-result-object v0

    aget v8, v0, v2

    aget v11, v0, v5

    sub-int/2addr v8, v11

    and-int/2addr v8, v5

    int-to-short v8, v8

    aput-short v8, p0, v3

    aget v6, v0, v6

    sub-int/2addr v6, v11

    and-int/2addr v6, v5

    int-to-short v6, v6

    aput-short v6, p0, v9

    aget v0, v0, v13

    sub-int/2addr v0, v11

    and-int/2addr v0, v5

    int-to-short v0, v0

    aput-short v0, p0, v10

    neg-int v0, v7

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v0, v11

    and-int/2addr v0, v5

    int-to-short v0, v0

    aput-short v0, p0, v12

    add-int/lit8 v3, v3, 0x1

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method static rec([B[S[S)V
    .locals 10

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    aget-short v2, p1, v1

    mul-int/lit8 v2, v2, 0x8

    const v3, 0x30010

    add-int/2addr v2, v3

    aget-short v4, p2, v1

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/lit16 v6, v1, 0x300

    aget-short v7, p2, v6

    add-int/2addr v4, v7

    mul-int/lit16 v4, v4, 0x3001

    sub-int/2addr v2, v4

    add-int/lit16 v4, v1, 0x100

    aget-short v8, p1, v4

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v3

    aget-short v4, p2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    mul-int/lit16 v4, v4, 0x3001

    sub-int/2addr v8, v4

    add-int/lit16 v4, v1, 0x200

    aget-short v9, p1, v4

    mul-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v3

    aget-short v4, p2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    mul-int/lit16 v4, v4, 0x3001

    sub-int/2addr v9, v4

    aget-short v4, p1, v6

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v3

    mul-int/lit16 v7, v7, 0x3001

    sub-int/2addr v4, v7

    filled-new-array {v2, v8, v9, v4}, [I

    move-result-object v2

    ushr-int/lit8 v3, v1, 0x3

    aget-byte v4, p0, v3

    aget v6, v2, v0

    const/4 v7, 0x1

    aget v7, v2, v7

    aget v5, v2, v5

    const/4 v8, 0x3

    aget v2, v2, v8

    invoke-static {v6, v7, v5, v2}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->LDDecode(IIII)S

    move-result v2

    and-int/lit8 v5, v1, 0x7

    shl-int/2addr v2, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
