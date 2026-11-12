.class public abstract Lorg/bouncycastle/math/ec/rfc8032/Ed25519;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$Algorithm;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    }
.end annotation


# static fields
.field private static final B128_x:[I

.field private static final B128_y:[I

.field private static final B_x:[I

.field private static final B_y:[I

.field private static final COORD_INTS:I = 0x8

.field private static final C_d:[I

.field private static final C_d2:[I

.field private static final C_d4:[I

.field private static final DOM2_PREFIX:[B

.field private static final ORDER8_y1:[I

.field private static final ORDER8_y2:[I

.field private static final P:[I

.field private static final POINT_BYTES:I = 0x20

.field private static PRECOMP_BASE128_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp; = null

.field private static PRECOMP_BASE_COMB:[I = null

.field private static PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp; = null

.field private static final PRECOMP_BLOCKS:I = 0x8

.field private static final PRECOMP_LOCK:Ljava/lang/Object;

.field private static final PRECOMP_MASK:I = 0x7

.field private static final PRECOMP_POINTS:I = 0x8

.field private static final PRECOMP_RANGE:I = 0x100

.field private static final PRECOMP_SPACING:I = 0x8

.field private static final PRECOMP_TEETH:I = 0x4

.field public static final PREHASH_SIZE:I = 0x40

.field public static final PUBLIC_KEY_SIZE:I = 0x20

.field private static final SCALAR_BYTES:I = 0x20

.field private static final SCALAR_INTS:I = 0x8

.field public static final SECRET_KEY_SIZE:I = 0x20

.field public static final SIGNATURE_SIZE:I = 0x40

.field private static final WNAF_WIDTH_128:I = 0x4

.field private static final WNAF_WIDTH_BASE:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->DOM2_PREFIX:[B

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y1:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y2:[I

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_x:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_y:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B128_x:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B128_y:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d2:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d4:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE128_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    return-void

    :array_0
    .array-data 1
        0x53t
        0x69t
        0x67t
        0x45t
        0x64t
        0x32t
        0x35t
        0x35t
        0x31t
        0x39t
        0x20t
        0x6et
        0x6ft
        0x20t
        0x45t
        0x64t
        0x32t
        0x35t
        0x35t
        0x31t
        0x39t
        0x20t
        0x63t
        0x6ft
        0x6ct
        0x6ct
        0x69t
        0x73t
        0x69t
        0x6ft
        0x6et
        0x73t
    .end array-data

    :array_1
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_2
    .array-data 4
        0x706a17c7
        0x4fd84d3d
        0x760b3cba
        0xf67100d
        -0x5acdfd6
        -0x3933c6d4
        0x77fdc74e
        0x7a03ac92
    .end array-data

    :array_3
    .array-data 4
        -0x706a17da
        -0x4fd84d3e
        -0x760b3cbb
        -0xf67100e
        0x5acdfd5
        0x3933c6d3
        -0x77fdc74f
        0x5fc536d
    .end array-data

    :array_4
    .array-data 4
        0x325d51a
        0x18b5823
        0x7b2c95
        0x304a92d
        0xd2598e
        0x1d6dc5c
        0x1388c7f
        0x13fec0a
        0x29e6b72
        0x42d26d
    .end array-data

    :array_5
    .array-data 4
        0x2666658
        0x1999999
        0x666666
        0x3333333
        0xcccccc
        0x2666666
        0x1999999
        0x666666
        0x3333333
        0xcccccc
    .end array-data

    :array_6
    .array-data 4
        0xb7e824
        0x11eb98
        0x3e5fc8
        0x24e1739
        0x131cd0b
        0x14e29a0
        0x34e6138
        0x132c952
        0x3f9e22f
        0x984f5f
    .end array-data

    :array_7
    .array-data 4
        0x3f5a66b
        0x2af4452
        0x49e5bb
        0xf28d26
        0x121a17c
        0x2c29c3a
        0x47ad89
        0x87d95f
        0x332936e
        0xbe5933
    .end array-data

    :array_8
    .array-data 4
        0x35978a3
        0x2d37284
        0x18ab75e
        0x26a0a0e
        0xe014
        0x379e898
        0x1d01e5d
        0x1e738cc
        0x3715b7f
        0xa406d9
    .end array-data

    :array_9
    .array-data 4
        0x2b2f159
        0x1a6e509
        0x1156ebd
        0xd4141d
        0x1c029
        0x2f3d130
        0x3a03cbb
        0x1ce7198
        0x2e2b6ff
        0x480db3
    .end array-data

    :array_a
    .array-data 4
        0x165e2b2
        0x34dca13
        0x2add7a
        0x1a8283b
        0x38052
        0x1e7a260
        0x3407977
        0x19ce331
        0x1c56dff
        0x901b67
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateS([B[B[B)[B
    .locals 3

    const/16 v0, 0x10

    new-array v1, v0, [I

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    const/16 p0, 0x8

    new-array v2, p0, [I

    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    new-array p0, p0, [I

    invoke-static {p2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    invoke-static {v2, p0, v1}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    const/16 p0, 0x40

    new-array p0, p0, [B

    const/4 p1, 0x0

    invoke-static {v1, p1, v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce512([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static checkContextVar([BB)Z
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    array-length p0, p0

    const/16 p1, 0x100

    if-ge p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)I
    .locals 5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sub([I[I[I)V

    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d:[I

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZero([I)I

    move-result p0

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZero([I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZero([I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    return p0
.end method

.method private static checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)I
    .locals 4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sub([I[I[I)V

    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d:[I

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->addOne([I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZero([I)I

    move-result p0

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZero([I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    return p0
.end method

.method private static checkPointFullVar([B)Z
    .locals 7

    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int/2addr v1, v0

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y1:[I

    aget v3, v3, v2

    xor-int/2addr v3, v0

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y2:[I

    aget v2, v4, v2

    xor-int/2addr v2, v0

    const/4 v4, 0x6

    :goto_0
    if-lez v4, :cond_0

    mul-int/lit8 v5, v4, 0x4

    invoke-static {p0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v5

    or-int/2addr v0, v5

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    aget v6, v6, v4

    xor-int/2addr v6, v5

    or-int/2addr v1, v6

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y1:[I

    aget v6, v6, v4

    xor-int/2addr v6, v5

    or-int/2addr v3, v6

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y2:[I

    aget v6, v6, v4

    xor-int/2addr v5, v6

    or-int/2addr v2, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result p0

    const v5, -0x7fffffff

    const/high16 v6, -0x80000000

    if-nez v0, :cond_1

    add-int v0, p0, v6

    if-gt v0, v5, :cond_1

    return v4

    :cond_1
    if-nez v1, :cond_2

    add-int/2addr v6, p0

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    aget v0, v0, v4

    sub-int/2addr v0, v5

    if-lt v6, v0, :cond_2

    return v4

    :cond_2
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y1:[I

    aget v0, v0, v4

    xor-int/2addr v0, p0

    or-int/2addr v0, v3

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y2:[I

    aget v1, v1, v4

    xor-int/2addr p0, v1

    or-int/2addr p0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    const/4 v4, 0x1

    :cond_4
    and-int p0, v0, v4

    return p0
.end method

.method private static checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Z

    move-result p0

    return p0
.end method

.method private static checkPointVar([B)Z
    .locals 7

    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    const/4 v3, 0x7

    aget v4, v2, v3

    const/4 v5, 0x1

    if-ge v0, v4, :cond_0

    return v5

    :cond_0
    const/16 v0, 0x8

    new-array v4, v0, [I

    const/4 v6, 0x0

    invoke-static {p0, v6, v4, v6, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    aget p0, v4, v3

    and-int/2addr p0, v1

    aput p0, v4, v3

    invoke-static {v4, v2}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    xor-int/2addr p0, v5

    return p0
.end method

.method private static copy([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static createDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static createPrehash()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method private static decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z
    .locals 3

    const/16 v0, 0x1f

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    ushr-int/lit8 v0, v0, 0x7

    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->decode([B[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object p0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v1

    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d:[I

    invoke-static {v2, p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->subOne([I)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->addOne([I)V

    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {p0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqrtRatioVar([I[I[I)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZeroVar([I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    aget v2, v2, v1

    and-int/2addr v2, p0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    iget-object p1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    iget-object v0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->negate([I[I)V

    iget-object p1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    :cond_3
    return p0
.end method

.method private static dom2(Lorg/bouncycastle/crypto/Digest;B[B)V
    .locals 6

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->DOM2_PREFIX:[B

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

    invoke-interface {p0, v4, v5, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private static encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[BI)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->encode([I[BI)V

    add-int/lit8 p2, p2, 0x1f

    aget-byte v0, p1, p2

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    const/4 v1, 0x0

    aget p0, p0, v1

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BI)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;->data:[I

    const/16 v1, 0xa

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->encode([II[BI)V

    add-int/lit8 p2, p2, 0x1f

    aget-byte v0, p1, p2

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;->data:[I

    const/4 v1, 0x0

    aget p0, p0, v1

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static encodeResult(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;[BI)I
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)I

    move-result p0

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[BI)V

    return p0
.end method

.method private static exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    const/16 v1, 0xa

    invoke-static {p0, v2, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;-><init>([I)V

    return-object p0
.end method

.method public static generatePrivateKey(Ljava/security/SecureRandom;[B)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generatePublicKey([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    const/16 v1, 0x40

    new-array v1, v1, [B

    const/16 v2, 0x20

    invoke-interface {v0, p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-array p1, v2, [B

    invoke-static {v1, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static generatePublicKey([BI[BI)V
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    const/16 v1, 0x40

    new-array v1, v1, [B

    const/16 v2, 0x20

    invoke-interface {v0, p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-array p1, v2, [B

    invoke-static {v1, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseEncoded([B[BI)V

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

.method private static groupCombBits([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Interleave;->shuffle2(I)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static implSign(Lorg/bouncycastle/crypto/Digest;[B[B[BI[BB[BII[BI)V
    .locals 4

    if-eqz p5, :cond_0

    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    :cond_0
    const/16 v0, 0x20

    invoke-interface {p0, p1, v0, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce512([B)[B

    move-result-object v2

    new-array v3, v0, [B

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseEncoded([B[BI)V

    if-eqz p5, :cond_1

    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    :cond_1
    invoke-interface {p0, v3, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p3, p4, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p1, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce512([B)[B

    move-result-object p0

    invoke-static {v2, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->calculateS([B[B[B)[B

    move-result-object p0

    invoke-static {v3, v1, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p11, v0

    invoke-static {p0, v1, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static implSign([BI[BB[BII[BI)V
    .locals 13

    invoke-static/range {p2 .. p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    const/16 v0, 0x40

    new-array v2, v0, [B

    const/16 v0, 0x20

    invoke-interface {v1, p0, p1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v1, v2, p0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-array v3, v0, [B

    invoke-static {v2, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    new-array v4, v0, [B

    invoke-static {v3, v4, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseEncoded([B[BI)V

    const/4 v5, 0x0

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign(Lorg/bouncycastle/crypto/Digest;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static implSign([BI[BI[BB[BII[BI)V
    .locals 13

    invoke-static/range {p4 .. p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    const/16 v0, 0x40

    new-array v2, v0, [B

    const/16 v0, 0x20

    invoke-interface {v1, p0, p1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v1, v2, p0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-array v3, v0, [B

    invoke-static {v2, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign(Lorg/bouncycastle/crypto/Digest;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BB[BII)Z
    .locals 10

    invoke-static/range {p3 .. p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x20

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v2

    add-int/2addr p1, v1

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object p0

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointVar([B)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    const/16 p1, 0x8

    new-array v4, p1, [I

    invoke-static {p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->checkVar([B[I)Z

    move-result p0

    if-nez p0, :cond_1

    return v3

    :cond_1
    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    const/4 v6, 0x1

    invoke-static {v2, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v6

    if-nez v6, :cond_2

    return v3

    :cond_2
    new-instance v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v6, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;->data:[I

    iget-object v8, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->negate([I[I)V

    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;->data:[I

    const/16 v8, 0xa

    iget-object v9, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v7, v8, v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    new-array v7, v1, [B

    invoke-static {p2, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BI)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object p2

    const/16 v8, 0x40

    new-array v8, v8, [B

    if-eqz p3, :cond_3

    invoke-static {p2, p4, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    :cond_3
    invoke-interface {p2, v2, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p2, v7, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-interface {p2, p5, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p2, v8, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {v8}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce512([B)[B

    move-result-object p2

    new-array p1, p1, [I

    invoke-static {p2, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    const/4 p2, 0x4

    new-array v0, p2, [I

    new-array p2, p2, [I

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduceBasisVar([I[I[I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v4, p2, v4}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->multiply128Var([I[I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    invoke-direct {p1, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    move-object/from16 p6, p0

    move-object/from16 p7, p1

    move-object p5, p2

    move-object p3, v0

    move-object p2, v4

    move-object p4, v6

    invoke-static/range {p2 .. p7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultStraus128Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    move-object/from16 p0, p7

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Z

    move-result p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static implVerify([BI[BI[BB[BII)Z
    .locals 9

    invoke-static/range {p4 .. p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x20

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v2

    add-int/2addr p1, v1

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object p0

    invoke-static {p2, p3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object p1

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointVar([B)Z

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return v3

    :cond_0
    const/16 p2, 0x8

    new-array v4, p2, [I

    invoke-static {p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->checkVar([B[I)Z

    move-result p0

    if-nez p0, :cond_1

    return v3

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointFullVar([B)Z

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    const/4 v6, 0x1

    invoke-static {v2, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v7

    if-nez v7, :cond_3

    return v3

    :cond_3
    new-instance v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v7, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p1, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v6

    if-nez v6, :cond_4

    return v3

    :cond_4
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    const/16 v8, 0x40

    new-array v8, v8, [B

    if-eqz p4, :cond_5

    invoke-static {v6, p5, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    :cond_5
    invoke-interface {v6, v2, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v6, p1, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object p1, p6

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-interface {v6, p6, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v6, v8, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {v8}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce512([B)[B

    move-result-object p1

    new-array p2, p2, [I

    invoke-static {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    const/4 p1, 0x4

    new-array v0, p1, [I

    new-array p1, p1, [I

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduceBasisVar([I[I[I)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {v4, p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->multiply128Var([I[I[I)V

    new-instance p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    invoke-direct {p2, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    move-object/from16 p7, p0

    move-object p6, p1

    move-object/from16 p8, p2

    move-object p4, v0

    move-object p3, v4

    move-object p5, v7

    invoke-static/range {p3 .. p8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultStraus128Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    move-object/from16 p0, p8

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Z

    move-result p0

    return p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static invertDoubleZs([Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V
    .locals 7

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->createTable(I)[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p0, v3

    iget-object v4, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v4, v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    invoke-static {v2, v3, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v0, :cond_0

    aget-object v4, p0, v5

    iget-object v4, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v2, v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    mul-int/lit8 v4, v5, 0xa

    invoke-static {v2, v3, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-static {v2, v2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    invoke-static {v2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->invVar([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v0

    :goto_1
    if-lez v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    mul-int/lit8 v6, v5, 0xa

    invoke-static {v1, v6, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    invoke-static {v0, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    aget-object v6, p0, v4

    iget-object v6, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v2, v6, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    aget-object v4, p0, v4

    iget-object v4, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v0, v3, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    move v4, v5

    goto :goto_1

    :cond_1
    aget-object p0, p0, v3

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v2, v3, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    return-void
.end method

.method private static normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->inv([I[I)V

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    return-void
.end method

.method private static normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZeroVar([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZeroVar([I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->areEqualVar([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 5

    iget-object v0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v2, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    iget-object p3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r1:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v3, v4, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object v3, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v4, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v3, v4, p3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    invoke-static {v0, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v1, p3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    iget-object v4, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    invoke-static {v3, v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d2:[I

    invoke-static {v2, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v3, p0, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {p3, p0, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v1, v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    invoke-static {p3, v2, p3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v2, p3, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v1, p3, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 6

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object p2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v3, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    iget-object v4, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v5, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v4, v5, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v0, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v1, v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v4, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v5, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v4, v5, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {p2, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v1, v0, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {p0, p2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v1, v3, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 7

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object p2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object v3, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v4, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    iget-object v5, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v5, v6, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    invoke-static {v0, v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    invoke-static {v1, v5, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v5, v6, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {p2, v5, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->z:[I

    invoke-static {v5, p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v1, v0, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    invoke-static {v2, p2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0, v3, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v1, v4, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 7

    iget-object v0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object p3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    if-eqz p0, :cond_0

    move-object v4, v0

    move-object p0, v1

    goto :goto_0

    :cond_0
    move-object p0, v0

    move-object v4, v1

    :goto_0
    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v6, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v5, v6, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object v5, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {p0, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v4, v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v6, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v5, v6, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {p3, p1, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v1, v0, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object p1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {p1, p3, v4, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v1, v3, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 8

    iget-object v0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object p3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    if-eqz p0, :cond_0

    move-object v5, v0

    move-object p0, v1

    goto :goto_0

    :cond_0
    move-object p0, v0

    move-object v5, v1

    :goto_0
    iget-object v6, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v6, v7, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    invoke-static {p0, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    invoke-static {v5, v6, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v6, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v6, v7, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {p3, v6, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v6, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->z:[I

    invoke-static {v6, p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    invoke-static {v1, v0, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    invoke-static {v2, p3, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0, v3, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v1, v4, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->one([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    iget-object v3, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d2:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->z:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    return-void
.end method

.method private static pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v5, v6, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v5, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v5, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    invoke-static {v2, v2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    invoke-static {v0, v1, v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    invoke-static {v4, v3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sub([I[I[I)V

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->carry([I)V

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v1, v4, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;)V
    .locals 6

    mul-int/lit16 p0, p0, 0xf0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    xor-int v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1f

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v2, v3, p0, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v3, p0, 0xa

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v2, v4, v3, v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v3, p0, 0x14

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v2, v4, v3, v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 p0, p0, 0x1e

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static pointLookupZ([II[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;)V
    .locals 6

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->getWindow4([II)I

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

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    invoke-static {v3, p2, v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v4, v2, 0xa

    iget-object v5, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    invoke-static {v3, p2, v4, v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v4, v2, 0x14

    iget-object v5, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {v3, p2, v4, v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v4, v2, 0x1e

    iget-object v5, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->z:[I

    invoke-static {v3, p2, v4, v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v2, v2, 0x28

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    iget-object p2, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    invoke-static {p1, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cswap(I[I[I)V

    iget-object p0, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cnegate(I[I)V

    return-void
.end method

.method private static pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 5

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aput-object v0, p1, p2

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aget-object v0, p1, p2

    invoke-static {v0, v0, p0, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v2, p2, v0

    add-int/lit8 v3, v2, -0x1

    aget-object v3, p1, v3

    new-instance v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aput-object v4, p1, v2

    invoke-static {v3, p0, v4, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {v0, v0, p0, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    invoke-direct {v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aput-object v3, p1, v2

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;)V

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p0, v0, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    goto :goto_0
.end method

.method private static pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)[I
    .locals 8

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {v0, v0, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    invoke-direct {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    mul-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->createTable(I)[I

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-static {v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;)V

    iget-object v6, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    invoke-static {v6, v3, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v6, v4, 0xa

    iget-object v7, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    invoke-static {v7, v3, v1, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v6, v4, 0x14

    iget-object v7, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {v7, v3, v1, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v6, v4, 0x1e

    iget-object v7, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->z:[I

    invoke-static {v7, v3, v1, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v4, v4, 0x28

    add-int/lit8 v5, v5, 0x1

    if-ne v5, p1, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0, p0, v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    goto :goto_0
.end method

.method private static pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->zero([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->one([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->one([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->zero([I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->one([I)V

    return-void
.end method

.method public static precompute()V
    .locals 17

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/16 v0, 0x60

    new-array v2, v0, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    new-instance v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_x:[I

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_y:[I

    iget-object v9, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v7, v8, v9, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    const/16 v9, 0x10

    invoke-static {v5, v2, v8, v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    new-instance v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    sget-object v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B128_x:[I

    iget-object v11, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v10, v8, v11, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    sget-object v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B128_y:[I

    iget-object v11, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v10, v8, v11, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    invoke-static {v5, v2, v9, v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    new-instance v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    invoke-direct {v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    iget-object v10, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v6, v8, v10, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    iget-object v6, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v7, v8, v6, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    iget-object v6, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->one([I)V

    iget-object v6, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    invoke-static {v6, v8, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    iget-object v6, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v6, v8, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    const/4 v6, 0x4

    new-array v7, v6, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_2

    new-instance v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v11, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aput-object v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    new-instance v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v10, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    const/4 v12, 0x0

    const/16 v13, 0x20

    :goto_1
    const/16 v14, 0x8

    if-ge v12, v14, :cond_8

    add-int/lit8 v15, v13, 0x1

    new-instance v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v11, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aput-object v11, v2, v13

    const/4 v13, 0x0

    :goto_2
    const/16 v16, 0x1

    if-ge v13, v6, :cond_5

    if-nez v13, :cond_3

    invoke-static {v5, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    goto :goto_3

    :cond_3
    invoke-static {v5, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    invoke-static {v11, v10, v11, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    :goto_3
    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    aget-object v6, v7, v13

    invoke-static {v5, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    add-int v6, v12, v13

    const/16 v8, 0xa

    if-eq v6, v8, :cond_4

    const/4 v6, 0x1

    :goto_4
    if-ge v6, v14, :cond_4

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x4

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    iget-object v6, v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v8, v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v6, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->negate([I[I)V

    iget-object v6, v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    iget-object v8, v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    invoke-static {v6, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->negate([I[I)V

    move v13, v15

    const/4 v6, 0x0

    :goto_5
    const/4 v8, 0x3

    if-ge v6, v8, :cond_7

    shl-int v8, v16, v6

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v8, :cond_6

    new-instance v14, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v14, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aput-object v14, v2, v13

    sub-int v15, v13, v8

    aget-object v15, v2, v15

    aget-object v0, v7, v6

    invoke-static {v15, v0, v14, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    const/16 v0, 0x60

    goto :goto_6

    :cond_6
    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x60

    goto :goto_5

    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0x60

    const/4 v6, 0x4

    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->invertDoubleZs([Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    new-array v0, v9, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v9, :cond_9

    aget-object v3, v2, v0

    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    new-instance v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    invoke-direct {v6, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aput-object v6, v5, v0

    iget-object v5, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v7, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v8, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v5, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v7, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v8, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v5, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v7, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v8, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v5, v7, v8, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object v5, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v3, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v7, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v5, v3, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v3, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d4:[I

    iget-object v7, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v3, v5, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v3, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object v3, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object v3, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    new-array v0, v9, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE128_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v9, :cond_a

    add-int v3, v9, v0

    aget-object v3, v2, v3

    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE128_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    new-instance v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    invoke-direct {v6, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aput-object v6, v5, v0

    iget-object v5, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v7, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v8, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v5, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v7, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v8, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v5, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v7, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v8, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v5, v7, v8, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object v5, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v3, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v7, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v5, v3, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v3, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d4:[I

    iget-object v7, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v3, v5, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v3, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object v3, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object v3, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    const/16 v0, 0xc0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->createTable(I)[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    invoke-direct {v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    const/4 v3, 0x0

    const/16 v4, 0x60

    const/16 v11, 0x20

    :goto_9
    if-ge v11, v4, :cond_0

    aget-object v5, v2, v11

    iget-object v6, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v8, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v6, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v8, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v6, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v7, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v8, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    iget-object v9, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v6, v7, v8, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    iget-object v6, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v5, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v7, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v6, v5, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d4:[I

    iget-object v7, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    iget-object v5, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object v5, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object v5, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    iget-object v5, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v5, v3, 0xa

    iget-object v6, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    sget-object v8, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    invoke-static {v6, v7, v8, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v5, v3, 0x14

    iget-object v6, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    sget-object v8, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    invoke-static {v6, v7, v8, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x1e

    add-int/lit8 v11, v11, 0x1

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

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, p2, v1

    and-int/lit16 p0, p0, 0xf8

    int-to-byte p0, p0

    aput-byte p0, p2, v1

    const/16 p0, 0x1f

    aget-byte p1, p2, p0

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    return-void
.end method

.method private static scalarMult([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    const/16 p0, 0x100

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->toSignedDigits(I[I)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;

    invoke-direct {v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p1, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)[I

    move-result-object p1

    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    const/16 v0, 0x3f

    :cond_0
    invoke-static {v1, v0, p1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointLookupZ([II[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;)V

    invoke-static {p0, p2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 10

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompute()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    const/16 p0, 0x100

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->toSignedDigits(I[I)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->groupCombBits([I)V

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;

    invoke-direct {v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    const/4 v2, 0x0

    const/16 v4, 0x1c

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_0

    aget v7, v1, v6

    ushr-int/2addr v7, v4

    ushr-int/lit8 v8, v7, 0x3

    and-int/lit8 v8, v8, 0x1

    neg-int v9, v8

    xor-int/2addr v7, v9

    and-int/lit8 v7, v7, 0x7

    invoke-static {v6, v7, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;)V

    xor-int/2addr v5, v8

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v5, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cnegate(I[I)V

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    invoke-static {v5, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cnegate(I[I)V

    invoke-static {p0, p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x4

    if-gez v4, :cond_1

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cnegate(I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    invoke-static {v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cnegate(I[I)V

    return-void

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    goto :goto_0
.end method

.method private static scalarMultBaseEncoded([B[BI)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encodeResult(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;[BI)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static scalarMultBaseYZ(Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;[BI[I[I)V
    .locals 0

    if-eqz p0, :cond_1

    const/16 p0, 0x20

    new-array p0, p0, [B

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)I

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {p0, p2, p4, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by X25519"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static scalarMultOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 6

    const/16 v0, 0xfd

    new-array v0, v0, [B

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->getOrderWnafVar(I[B)V

    new-array v2, v1, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p0, v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    const/16 p0, 0xfc

    :goto_0
    aget-byte v1, v0, p0

    if-eqz v1, :cond_1

    shr-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v1, 0x1f

    xor-int/2addr v4, v5

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    aget-object v4, v2, v4

    invoke-static {v1, v4, p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    :cond_1
    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    goto :goto_0
.end method

.method private static scalarMultStraus128Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 7

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompute()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/16 v1, 0x80

    new-array v2, v1, [B

    new-array v3, v1, [B

    const/4 v4, 0x6

    invoke-static {p0, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    const/4 p0, 0x4

    invoke-static {p1, p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    invoke-static {p3, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    new-array p1, p0, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    new-array p3, p0, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    new-instance v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p2, p1, p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    invoke-static {p4, p3, p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    invoke-static {p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    :goto_0
    add-int/lit8 p0, v1, -0x1

    if-ltz p0, :cond_1

    aget-byte p2, v0, p0

    add-int/lit8 v1, v1, 0x7f

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

    const/4 p4, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    shr-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v5, v6

    if-gez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    aget-object v5, v6, v5

    invoke-static {p2, v5, p5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    :cond_3
    add-int/lit16 p2, p0, 0x80

    aget-byte p2, v0, p2

    if-eqz p2, :cond_5

    shr-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v5, v6

    if-gez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE128_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    aget-object v5, v6, v5

    invoke-static {p2, v5, p5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    :cond_5
    aget-byte p2, v2, p0

    if-eqz p2, :cond_7

    shr-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v5, v6

    if-gez p2, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    aget-object v5, p1, v5

    invoke-static {p2, v5, p5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    :cond_7
    aget-byte p2, v3, p0

    if-eqz p2, :cond_9

    shr-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v5, v6

    if-gez p2, :cond_8

    const/4 p4, 0x1

    :cond_8
    aget-object p2, p3, v5

    invoke-static {p4, p2, p5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    :cond_9
    invoke-static {p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_a
    invoke-static {p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    invoke-static {p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    return-void
.end method

.method public static sign([BI[BII[BI)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static sign([BI[BI[BII[BI)V
    .locals 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

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

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

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

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static signPrehash([BI[BI[BLorg/bouncycastle/crypto/Digest;[BI)V
    .locals 11

    const/16 v8, 0x40

    new-array v6, v8, [B

    const/4 v0, 0x0

    move-object/from16 v1, p5

    invoke-interface {v1, v6, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    const/16 v1, 0x40

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

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

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

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static signPrehash([BI[BLorg/bouncycastle/crypto/Digest;[BI)V
    .locals 9

    const/16 v6, 0x40

    new-array v4, v6, [B

    const/4 v0, 0x0

    invoke-interface {p3, v4, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result p3

    const/16 v0, 0x40

    if-ne v0, p3, :cond_0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

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

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static validatePublicKeyFull([BI)Z
    .locals 2

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointFullVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result p0

    return p0
.end method

.method public static validatePublicKeyFullExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .locals 2

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointFullVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object p0

    return-object p0
.end method

.method public static validatePublicKeyPartial([BI)Z
    .locals 2

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointFullVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result p0

    return p0
.end method

.method public static validatePublicKeyPartialExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .locals 2

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointFullVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object p0

    return-object p0
.end method

.method public static verify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BII)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[B[BII)Z
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verify([BI[BI[BII)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

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

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BLorg/bouncycastle/crypto/Digest;)Z
    .locals 8

    const/16 v7, 0x40

    new-array v5, v7, [B

    const/4 v0, 0x0

    invoke-interface {p4, v5, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result p4

    const/16 v0, 0x40

    if-ne v0, p4, :cond_0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BB[BII)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[B[BI)Z
    .locals 8

    const/4 v4, 0x1

    const/16 v7, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verifyPrehash([BI[BI[BLorg/bouncycastle/crypto/Digest;)Z
    .locals 9

    const/16 v8, 0x40

    new-array v6, v8, [B

    const/4 v0, 0x0

    invoke-interface {p5, v6, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result p5

    const/16 v0, 0x40

    if-ne v0, p5, :cond_0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

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

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method
