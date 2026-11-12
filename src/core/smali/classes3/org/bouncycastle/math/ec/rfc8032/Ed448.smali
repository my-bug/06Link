.class public abstract Lorg/bouncycastle/math/ec/rfc8032/Ed448;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$Algorithm;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    }
.end annotation


# static fields
.field private static final B225_x:[I

.field private static final B225_y:[I

.field private static final B_x:[I

.field private static final B_y:[I

.field private static final COORD_INTS:I = 0xe

.field private static final C_d:I = 0x98a9

.field private static final DOM4_PREFIX:[B

.field private static final P:[I

.field private static final POINT_BYTES:I = 0x39

.field private static PRECOMP_BASE225_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine; = null

.field private static PRECOMP_BASE_COMB:[I = null

.field private static PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine; = null

.field private static final PRECOMP_BLOCKS:I = 0x5

.field private static final PRECOMP_LOCK:Ljava/lang/Object;

.field private static final PRECOMP_MASK:I = 0xf

.field private static final PRECOMP_POINTS:I = 0x10

.field private static final PRECOMP_RANGE:I = 0x1c2

.field private static final PRECOMP_SPACING:I = 0x12

.field private static final PRECOMP_TEETH:I = 0x5

.field public static final PREHASH_SIZE:I = 0x40

.field public static final PUBLIC_KEY_SIZE:I = 0x39

.field private static final SCALAR_BYTES:I = 0x39

.field private static final SCALAR_INTS:I = 0xe

.field public static final SECRET_KEY_SIZE:I = 0x39

.field public static final SIGNATURE_SIZE:I = 0x72

.field private static final WNAF_WIDTH_225:I = 0x5

.field private static final WNAF_WIDTH_BASE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->DOM4_PREFIX:[B

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_x:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_y:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B225_x:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B225_y:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE225_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x69t
        0x67t
        0x45t
        0x64t
        0x34t
        0x34t
        0x38t
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x70cc05e
        0x26a82bc
        0x938e26
        0x80e18b0
        0x511433b
        0xf72ab66
        0x412ae1a
        0xa3d3a46
        0xa6de324
        0xf1767e
        0x4657047
        0x36da9e1
        0x5a622bf
        0xed221d1
        0x66bed0d
        0x4f1970c
    .end array-data

    :array_3
    .array-data 4
        0x230fa14
        0x8795bf
        0x7c8ad98
        0x132c4ed
        0x9c4fdbd
        0x1ce67c3
        0x73ad3ff
        0x5a0c2d
        0x7789c1e
        0xa398408
        0xa73736c
        0xc7624be
        0x3756c9
        0x2488762
        0x16eb6bc
        0x693f467
    .end array-data

    :array_4
    .array-data 4
        0x6909ee2
        0x1d7605c
        0x995ec8a
        0xfc4d970
        0xcf2b361
        0x2d82e9d
        0x1225f55
        0x7f0ef6
        0xaee9c55
        0xa240c13
        0x5627b54
        0xd449d1e
        0x3a44575    # 9.655E-37f
        0x7164a7
        0xbd4bd71
        0x61a15fd
    .end array-data

    :array_5
    .array-data 4
        0xd3a9fe4
        0x30696b9
        0x7e7e326
        0x68308c7
        0xce0b8c8
        0x3ac222b
        0x304db8e
        0x83ee319
        0x5e5db0b
        0xeca503b
        0xb1c6539
        0x78a8dce
        0x2d256bc
        0x4a8b05e
        0xbd9fd57
        0xa1c3cb8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateS([B[B[B)[B
    .locals 3

    const/16 v0, 0x1c

    new-array v1, v0, [I

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    const/16 p0, 0xe

    new-array v2, p0, [I

    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    new-array p1, p0, [I

    invoke-static {p2, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    invoke-static {p0, v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->mulAddTo(I[I[I[I)I

    const/16 p0, 0x72

    new-array p0, p0, [B

    const/4 p1, 0x0

    invoke-static {v1, p1, v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce912([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static checkContextVar([B)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length p0, p0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)I
    .locals 4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->subOne([I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result p0

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    return p0
.end method

.method private static checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)I
    .locals 5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result p0

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    return p0
.end method

.method private static checkPointFullVar([B)Z
    .locals 8

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x34

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v0

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    xor-int/2addr v2, v0

    const/16 v3, 0xc

    :goto_0
    const/high16 v4, -0x80000000

    if-lez v3, :cond_2

    mul-int/lit8 v5, v3, 0x4

    invoke-static {p0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v5

    if-nez v2, :cond_1

    add-int v6, v5, v4

    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    aget v7, v7, v3

    add-int/2addr v7, v4

    if-le v6, v7, :cond_1

    return v1

    :cond_1
    or-int/2addr v0, v5

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    aget v4, v4, v3

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result p0

    const v3, -0x7fffffff

    if-nez v0, :cond_3

    add-int v0, p0, v4

    if-gt v0, v3, :cond_3

    return v1

    :cond_3
    if-nez v2, :cond_4

    add-int/2addr p0, v4

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    aget v0, v0, v1

    sub-int/2addr v0, v3

    if-lt p0, v0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)Z

    move-result p0

    return p0
.end method

.method private static checkPointVar([B)Z
    .locals 5

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x34

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v0

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    const/16 v3, 0xd

    aget v3, v2, v3

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    return v4

    :cond_1
    const/16 v0, 0xe

    new-array v3, v0, [I

    invoke-static {p0, v1, v3, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0
.end method

.method private static copy([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static createPrehash()Lorg/bouncycastle/crypto/Xof;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    return-object v0
.end method

.method private static createXof()Lorg/bouncycastle/crypto/Xof;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    return-object v0
.end method

.method private static decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z
    .locals 3

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    ushr-int/lit8 v0, v0, 0x7

    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->decode([B[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object p0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    const v2, 0x98a9

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {p0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->addOne([I)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->addOne([I)V

    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {p0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqrtRatioVar([I[I[I)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZeroVar([I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    aget v2, v2, v1

    and-int/2addr v2, p0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    iget-object p1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    iget-object v0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    iget-object p1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    :cond_3
    return p0
.end method

.method private static dom4(Lorg/bouncycastle/crypto/Xof;B[B)V
    .locals 6

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->DOM4_PREFIX:[B

    array-length v1, v0

    add-int/lit8 v2, v1, 0x2

    array-length v3, p2

    add-int/2addr v3, v2

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p1, v4, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, p2

    int-to-byte p1, p1

    aput-byte p1, v4, v1

    array-length p1, p2

    invoke-static {p2, v5, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p0, v4, v5, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    return-void
.end method

.method private static encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->encode([I[BI)V

    add-int/lit8 p2, p2, 0x38

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BI)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;->data:[I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->encode([II[BI)V

    add-int/lit8 p2, p2, 0x38

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;->data:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static encodeResult(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;[BI)I
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)I

    move-result p0

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[BI)V

    return p0
.end method

.method private static exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    const/16 v1, 0x10

    invoke-static {p0, v2, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;-><init>([I)V

    return-object p0
.end method

.method public static generatePrivateKey(Ljava/security/SecureRandom;[B)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generatePublicKey([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    const/16 v1, 0x72

    new-array v2, v1, [B

    const/16 v3, 0x39

    invoke-interface {v0, p0, p1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v2, p0, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array p1, v3, [B

    invoke-static {v2, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static generatePublicKey([BI[BI)V
    .locals 4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    const/16 v1, 0x72

    new-array v2, v1, [B

    const/16 v3, 0x39

    invoke-interface {v0, p0, p1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v2, p0, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array p1, v3, [B

    invoke-static {v2, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    return-void
.end method

.method private static getWindow4([II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    aget p0, p0, v0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V
    .locals 4

    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    const/16 v0, 0x39

    invoke-interface {p0, p1, v0, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce912([B)[B

    move-result-object v1

    new-array v3, v0, [B

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    invoke-interface {p0, v3, v2, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {p0, p3, p4, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length p3, p1

    invoke-interface {p0, p1, v2, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce912([B)[B

    move-result-object p0

    invoke-static {v1, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->calculateS([B[B[B)[B

    move-result-object p0

    invoke-static {v3, v2, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p11, v0

    invoke-static {p0, v2, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static implSign([BI[BB[BII[BI)V
    .locals 13

    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v1

    const/16 v0, 0x72

    new-array v2, v0, [B

    const/16 v3, 0x39

    invoke-interface {v1, p0, p1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v1, v2, p0, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array p1, v3, [B

    invoke-static {v2, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    new-array v4, v3, [B

    invoke-static {p1, v4, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    const/4 v5, 0x0

    move-object v3, p1

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static implSign([BI[BI[BB[BII[BI)V
    .locals 13

    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v1

    const/16 v0, 0x72

    new-array v2, v0, [B

    const/16 v3, 0x39

    invoke-interface {v1, p0, p1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v1, v2, p0, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array v3, v3, [B

    invoke-static {v2, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BB[BII)Z
    .locals 11

    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x39

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v2

    add-int/2addr p1, v1

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object p0

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointVar([B)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    const/16 p1, 0xe

    new-array v4, p1, [I

    invoke-static {p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->checkVar([B[I)Z

    move-result p0

    if-nez p0, :cond_1

    return v3

    :cond_1
    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/4 v6, 0x1

    invoke-static {v2, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v6

    if-nez v6, :cond_2

    return v3

    :cond_2
    new-instance v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v6, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;->data:[I

    iget-object v8, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;->data:[I

    const/16 v8, 0x10

    iget-object v9, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v7, v8, v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    new-array v7, v1, [B

    invoke-static {p2, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BI)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    const/16 v8, 0x72

    new-array v9, v8, [B

    move v10, p4

    invoke-static {v0, p4, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    invoke-interface {v0, v2, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v0, v7, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v7, p7

    invoke-interface {v0, v1, v2, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v0, v9, v3, v8}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {v9}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce912([B)[B

    move-result-object v0

    new-array p1, p1, [I

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduceBasisVar([I[I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v4, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->multiply225Var([I[I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {p1, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    move-object/from16 p6, p0

    move-object/from16 p7, p1

    move-object/from16 p5, v0

    move-object p3, v1

    move-object p2, v4

    move-object p4, v6

    invoke-static/range {p2 .. p7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultStraus225Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    move-object/from16 p0, p7

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static implVerify([BI[BI[BB[BII)Z
    .locals 12

    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v1

    add-int/2addr p1, v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object p0

    invoke-static {p2, p3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object p1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointVar([B)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/16 v2, 0xe

    new-array v4, v2, [I

    invoke-static {p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->checkVar([B[I)Z

    move-result p0

    if-nez p0, :cond_1

    return v3

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointFullVar([B)Z

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/4 v6, 0x1

    invoke-static {v1, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v7

    if-nez v7, :cond_3

    return v3

    :cond_3
    new-instance v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v7, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p1, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v6

    if-nez v6, :cond_4

    return v3

    :cond_4
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v6

    const/16 v8, 0x72

    new-array v9, v8, [B

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-static {v6, v11, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    invoke-interface {v6, v1, v3, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v6, p1, v3, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    move-object/from16 p1, p6

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-interface {v6, p1, v0, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v6, v9, v3, v8}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {v9}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce912([B)[B

    move-result-object p1

    new-array v0, v2, [I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    const/16 p1, 0x8

    new-array v1, p1, [I

    new-array p1, p1, [I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduceBasisVar([I[I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v4, p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->multiply225Var([I[I[I)V

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    move-object/from16 p6, p0

    move-object/from16 p5, p1

    move-object/from16 p7, v0

    move-object p3, v1

    move-object p2, v4

    move-object/from16 p4, v7

    invoke-static/range {p2 .. p7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultStraus225Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    move-object/from16 p0, p7

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)Z

    move-result p0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static invertZs([Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 7

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p0, v3

    iget-object v4, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v4, v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    invoke-static {v2, v3, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v0, :cond_0

    aget-object v4, p0, v5

    iget-object v4, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v2, v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    mul-int/lit8 v4, v5, 0x10

    invoke-static {v2, v3, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-static {v2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->invVar([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    :goto_1
    if-lez v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    mul-int/lit8 v6, v5, 0x10

    invoke-static {v1, v6, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    invoke-static {v0, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    aget-object v6, p0, v4

    iget-object v6, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v2, v6, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    aget-object v4, p0, v4

    iget-object v4, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v0, v3, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    move v4, v5

    goto :goto_1

    :cond_1
    aget-object p0, p0, v3

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v2, v3, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    return-void
.end method

.method private static normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->inv([I[I)V

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    return-void
.end method

.method private static normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZeroVar([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZeroVar([I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->areEqualVar([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 8

    iget-object v0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r1:[I

    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r2:[I

    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r3:[I

    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r4:[I

    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r5:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r6:[I

    iget-object p2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r7:[I

    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v6, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v6, v7, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v6, v7, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    const v6, 0x98a9

    invoke-static {v3, v6, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0, v3, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v6, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {p0, v6, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {p2, v3, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {p2, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v3, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v4, p2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v3, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v4, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 9

    iget-object v0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r0:[I

    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r1:[I

    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r2:[I

    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r3:[I

    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r4:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r5:[I

    iget-object v6, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r6:[I

    iget-object p2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r7:[I

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v7, v8, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v7, v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v7, v8, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    const v7, 0x98a9

    invoke-static {v4, v7, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v4, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v7, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {p0, v7, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {p2, v4, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v3, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {p2, v1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v4, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v5, p2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v4, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v5, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 11

    iget-object v0, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r1:[I

    iget-object v1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r2:[I

    iget-object v2, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r3:[I

    iget-object v3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r4:[I

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r5:[I

    iget-object v5, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r6:[I

    iget-object p3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r7:[I

    if-eqz p0, :cond_0

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {p0, v6, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    move-object v8, v0

    move-object v7, v3

    move-object v6, v4

    move-object p0, v5

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {p0, v6, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    move-object v7, v0

    move-object v8, v3

    move-object p0, v4

    move-object v6, v5

    :goto_0
    iget-object v9, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v9, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    iget-object v10, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v9, v10, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v9, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {p1, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    const p1, 0x98a9

    invoke-static {v3, p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v0, v3, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0, v3, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object p1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {p0, p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {p3, v3, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v2, v1, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v2, v1, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {p3, v0, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {p3, p0, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v3, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v4, p3, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v3, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v4, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 12

    iget-object v0, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r0:[I

    iget-object v1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r1:[I

    iget-object v2, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r2:[I

    iget-object v3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r3:[I

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r4:[I

    iget-object v5, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r5:[I

    iget-object v6, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r6:[I

    iget-object p3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r7:[I

    if-eqz p0, :cond_0

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {p0, v7, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    move-object v9, v1

    move-object v8, v4

    move-object v7, v5

    move-object p0, v6

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {p0, v7, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    move-object v8, v1

    move-object v9, v4

    move-object p0, v5

    move-object v7, v6

    :goto_0
    iget-object v10, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v11, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v10, v11, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v10, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v11, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v10, v11, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v10, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {p1, v10, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    const p1, 0x98a9

    invoke-static {v4, p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v1, v4, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v4, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object p1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {p0, p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {p3, v4, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v3, v2, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v3, v2, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {p3, v1, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {p3, v0, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v4, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v5, p3, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v4, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v5, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {p0, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {p0, v2, p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    return-void
.end method

.method private static pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 7

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r1:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r2:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r3:[I

    iget-object v3, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r4:[I

    iget-object v4, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r7:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r0:[I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v5, v6, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v5, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v5, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v4, v4, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {v3, v4, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v3, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v3, p1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)V
    .locals 6

    mul-int/lit16 p0, p0, 0x200

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    xor-int v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1f

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v2, v3, p0, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v3, p0, 0x10

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v2, v4, v3, v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 p0, p0, 0x20

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static pointLookup([II[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 6

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->getWindow4([II)I

    move-result p0

    ushr-int/lit8 p1, p0, 0x3

    xor-int/lit8 p1, p1, 0x1

    neg-int v0, p1

    xor-int/2addr p0, v0

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    xor-int v3, v1, p0

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v3, p2, v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v4, v2, 0x10

    iget-object v5, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v3, p2, v4, v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v4, v2, 0x20

    iget-object v5, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v3, p2, v4, v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v2, v2, 0x30

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cnegate(I[I)V

    return-void
.end method

.method private static pointLookup15([ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 3

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    const/16 v1, 0x150

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    const/16 v0, 0x160

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {p0, v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    const/16 v0, 0x170

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    return-void
.end method

.method private static pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 5

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    invoke-static {v0, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    aput-object v2, p1, p2

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    const/4 p0, 0x1

    :goto_0
    if-ge p0, p3, :cond_0

    add-int v2, p2, p0

    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    aput-object v3, p1, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p1, v4

    invoke-static {v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    aget-object v2, p1, v2

    invoke-static {v0, v2, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)[I
    .locals 7

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    invoke-static {v2, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    mul-int/lit8 p0, p1, 0x3

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v5, v1, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v5, v3, 0x10

    iget-object v6, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v6, v1, p0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v5, v3, 0x20

    iget-object v6, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v6, v1, p0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x30

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {v2, v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    goto :goto_0
.end method

.method private static pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->zero([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    return-void
.end method

.method public static precompute()V
    .locals 17

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/16 v0, 0x90

    new-array v2, v0, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    new-instance v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_x:[I

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_y:[I

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v6, v8, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    const/16 v6, 0x20

    invoke-static {v5, v2, v8, v6, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    new-instance v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v7, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    sget-object v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B225_x:[I

    iget-object v10, v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v9, v8, v10, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    sget-object v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B225_y:[I

    iget-object v10, v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v9, v8, v10, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    invoke-static {v7, v2, v6, v6, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    new-instance v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v7, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {v5, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    const/4 v5, 0x5

    new-array v9, v5, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_2

    new-instance v11, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v11, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    const/16 v12, 0x40

    :goto_1
    if-ge v11, v5, :cond_8

    add-int/lit8 v13, v12, 0x1

    new-instance v14, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v14, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    aput-object v14, v2, v12

    const/4 v12, 0x0

    :goto_2
    const/4 v15, 0x1

    if-ge v12, v5, :cond_5

    if-nez v12, :cond_3

    invoke-static {v7, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    goto :goto_3

    :cond_3
    invoke-static {v7, v14, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    :goto_3
    invoke-static {v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    aget-object v5, v9, v12

    invoke-static {v7, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    add-int v5, v11, v12

    const/16 v10, 0x8

    if-eq v5, v10, :cond_4

    :goto_4
    const/16 v5, 0x12

    if-ge v15, v5, :cond_4

    invoke-static {v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x5

    goto :goto_2

    :cond_5
    iget-object v5, v14, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v10, v14, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v5, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    move v12, v13

    const/4 v5, 0x0

    :goto_5
    const/4 v10, 0x4

    if-ge v5, v10, :cond_7

    shl-int v10, v15, v5

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v10, :cond_6

    new-instance v14, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v14, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    aput-object v14, v2, v12

    sub-int v16, v12, v10

    aget-object v15, v2, v16

    invoke-static {v15, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    aget-object v14, v9, v5

    aget-object v15, v2, v12

    invoke-static {v14, v15, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/4 v15, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x5

    goto :goto_1

    :cond_8
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->invertZs([Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    new-array v3, v6, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    sput-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v6, :cond_9

    aget-object v5, v2, v3

    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    new-instance v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v9, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    aput-object v9, v7, v3

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v10, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v11, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v7, v10, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v7, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v5, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v10, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v7, v5, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v5, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    new-array v3, v6, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    sput-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE225_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v6, :cond_a

    add-int v5, v6, v3

    aget-object v5, v2, v5

    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE225_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    new-instance v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v9, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    aput-object v9, v7, v3

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v10, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v11, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v7, v10, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v7, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v5, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v10, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v7, v5, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v5, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    const/16 v3, 0xa0

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    const/4 v3, 0x0

    const/16 v10, 0x40

    :goto_9
    if-ge v10, v0, :cond_0

    aget-object v4, v2, v10

    iget-object v5, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v7, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v5, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object v5, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v7, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v5, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object v5, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    invoke-static {v5, v8, v6, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v5, v3, 0x10

    iget-object v4, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    invoke-static {v4, v8, v6, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x20

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method private static pruneScalar([BI[B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x38

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, p2, v0

    and-int/lit16 p0, p0, 0xfc

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    const/16 p0, 0x37

    aget-byte p1, p2, p0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    aput-byte v0, p2, v1

    return-void
.end method

.method private static scalarMult([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [I

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    const/16 p0, 0x1c1

    invoke-static {p0, v0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->toSignedDigits(I[I[I)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;

    invoke-direct {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/16 v1, 0x8

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)[I

    move-result-object v1

    invoke-static {v1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup15([ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    invoke-static {p1, p2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    const/16 p1, 0x6f

    :cond_0
    invoke-static {v0, p1, v1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup([II[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    invoke-static {p0, p2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    invoke-static {p2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 13

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompute()V

    const/16 v0, 0xf

    new-array v1, v0, [I

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    const/16 p0, 0x1c2

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->toSignedDigits(I[I[I)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;

    invoke-direct {v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    const/16 v2, 0x11

    :goto_0
    const/4 v4, 0x0

    move v6, v2

    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x5

    if-ge v5, v7, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x1

    if-ge v8, v7, :cond_0

    ushr-int/lit8 v11, v6, 0x5

    aget v11, v1, v11

    and-int/lit8 v12, v6, 0x1f

    ushr-int/2addr v11, v12

    shl-int/2addr v10, v8

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v9, v10

    shl-int v10, v11, v8

    xor-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x12

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    ushr-int/lit8 v7, v9, 0x4

    and-int/2addr v7, v10

    neg-int v8, v7

    xor-int/2addr v8, v9

    and-int/2addr v8, v0

    invoke-static {v5, v8, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)V

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cnegate(I[I)V

    invoke-static {p0, p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    goto :goto_0
.end method

.method private static scalarMultBaseEncoded([B[BI)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodeResult(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;[BI)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static scalarMultBaseXY(Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;[BI[I[I)V
    .locals 0

    if-eqz p0, :cond_1

    const/16 p0, 0x39

    new-array p0, p0, [B

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)I

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {p0, p2, p4, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by X448"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static scalarMultOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 7

    const/16 v0, 0x1bf

    new-array v0, v0, [B

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->getOrderWnafVar(I[B)V

    const/16 v1, 0x8

    new-array v2, v1, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/4 v4, 0x0

    invoke-static {p0, v2, v4, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    const/16 p0, 0x1be

    :goto_0
    aget-byte v1, v0, p0

    if-eqz v1, :cond_1

    shr-int/lit8 v5, v1, 0x1

    shr-int/lit8 v6, v1, 0x1f

    xor-int/2addr v5, v6

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    aget-object v5, v2, v5

    invoke-static {v1, v5, p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    :cond_1
    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    goto :goto_0
.end method

.method private static scalarMultStraus225Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 7

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompute()V

    const/16 v0, 0x1c2

    new-array v0, v0, [B

    const/16 v1, 0xe1

    new-array v2, v1, [B

    new-array v3, v1, [B

    const/4 v4, 0x7

    invoke-static {p0, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    const/4 p0, 0x5

    invoke-static {p1, p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    invoke-static {p3, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    const/16 p0, 0x8

    new-array p1, p0, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    new-array p3, p0, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    new-instance v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/4 v5, 0x0

    invoke-static {p2, p1, v5, p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    invoke-static {p4, p3, v5, p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    invoke-static {p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    :goto_0
    add-int/lit8 p0, v1, -0x1

    if-ltz p0, :cond_1

    aget-byte p2, v0, p0

    add-int/lit16 v1, v1, 0xe0

    aget-byte p4, v0, v1

    or-int/2addr p2, p4

    aget-byte p4, v2, p0

    or-int/2addr p2, p4

    aget-byte p4, v3, p0

    or-int/2addr p2, p4

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    move v1, p0

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz p0, :cond_a

    aget-byte p2, v0, p0

    const/4 p4, 0x1

    if-eqz p2, :cond_3

    shr-int/lit8 v1, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v1, v6

    if-gez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    aget-object v1, v6, v1

    invoke-static {p2, v1, p5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    :cond_3
    add-int/lit16 p2, p0, 0xe1

    aget-byte p2, v0, p2

    if-eqz p2, :cond_5

    shr-int/lit8 v1, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v1, v6

    if-gez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE225_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    aget-object v1, v6, v1

    invoke-static {p2, v1, p5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    :cond_5
    aget-byte p2, v2, p0

    if-eqz p2, :cond_7

    shr-int/lit8 v1, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v1, v6

    if-gez p2, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    aget-object v1, p1, v1

    invoke-static {p2, v1, p5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    :cond_7
    aget-byte p2, v3, p0

    if-eqz p2, :cond_9

    shr-int/lit8 v1, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v1, v6

    if-gez p2, :cond_8

    goto :goto_5

    :cond_8
    const/4 p4, 0x0

    :goto_5
    aget-object p2, p3, v1

    invoke-static {p4, p2, p5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    :cond_9
    invoke-static {p5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_a
    invoke-static {p5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    return-void
.end method

.method public static sign([BI[BI[B[BII[BI)V
    .locals 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static sign([BI[B[BII[BI)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static signPrehash([BI[BI[BLorg/bouncycastle/crypto/Xof;[BI)V
    .locals 11

    const/16 v8, 0x40

    new-array v6, v8, [B

    const/4 v0, 0x0

    const/16 v1, 0x40

    move-object/from16 v2, p5

    invoke-interface {v2, v6, v0, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signPrehash([BI[BI[B[BI[BI)V
    .locals 11

    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static signPrehash([BI[BLorg/bouncycastle/crypto/Xof;[BI)V
    .locals 9

    const/16 v6, 0x40

    new-array v4, v6, [B

    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-interface {p3, v4, v0, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result p3

    if-ne v1, p3, :cond_0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signPrehash([BI[B[BI[BI)V
    .locals 9

    const/4 v3, 0x1

    const/16 v6, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static validatePublicKeyFull([BI)Z
    .locals 2

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointFullVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result p0

    return p0
.end method

.method public static validatePublicKeyFullExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .locals 2

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointFullVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object p0

    return-object p0
.end method

.method public static validatePublicKeyPartial([BI)Z
    .locals 2

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointFullVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result p0

    return p0
.end method

.method public static validatePublicKeyPartialExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .locals 2

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointFullVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object p0

    return-object p0
.end method

.method public static verify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[B[BII)Z
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verify([BI[BI[B[BII)Z
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BLorg/bouncycastle/crypto/Xof;)Z
    .locals 8

    const/16 v7, 0x40

    new-array v5, v7, [B

    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-interface {p4, v5, v0, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result p4

    if-ne v1, p4, :cond_0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BB[BII)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[B[BI)Z
    .locals 8

    const/4 v4, 0x1

    const/16 v7, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verifyPrehash([BI[BI[BLorg/bouncycastle/crypto/Xof;)Z
    .locals 9

    const/16 v8, 0x40

    new-array v6, v8, [B

    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-interface {p5, v6, v0, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result p5

    if-ne v1, p5, :cond_0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyPrehash([BI[BI[B[BI)Z
    .locals 9

    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method
