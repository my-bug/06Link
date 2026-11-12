.class Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;
.super Ljava/lang/Object;


# static fields
.field public static final MASK:I = 0xff

.field static final gfInvTable:[B

.field static final gfMulTable:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    new-array v0, v2, [B

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfInvTable:[B

    const-wide v4, 0x101010101010101L

    move-wide v6, v4

    :goto_0
    const/16 v0, 0xff

    const-wide v8, 0x808080808080808L

    const-wide v10, 0x706050403020100L

    if-gt v1, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-static {v6, v7, v10, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v12

    sget-object v14, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    aget-object v14, v14, v1

    invoke-static {v12, v13, v14, v0}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-long/2addr v10, v8

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_0
    add-long/2addr v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v3, v2, :cond_2

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Inv_64(J)J

    move-result-wide v0

    sget-object v4, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfInvTable:[B

    invoke-static {v0, v1, v4, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-long/2addr v10, v8

    add-int/lit8 v3, v3, 0x8

    goto :goto_2

    :cond_2
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addElem(SS)S
    .locals 0

    xor-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static addElem_64(JJ)J
    .locals 0

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method private static gf16Mul(SS)S
    .locals 4

    and-int/lit8 v0, p0, 0x3

    int-to-short v0, v0

    ushr-int/lit8 p0, p0, 0x2

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    and-int/lit8 v1, p1, 0x3

    int-to-short v1, v1

    ushr-int/lit8 p1, p1, 0x2

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul(SS)S

    move-result v2

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul(SS)S

    move-result v3

    xor-int/2addr p0, v0

    int-to-short p0, p0

    xor-int/2addr p1, v1

    int-to-short p1, p1

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul(SS)S

    move-result p0

    xor-int/2addr p0, v2

    int-to-short p0, p0

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result p1

    shl-int/lit8 p0, p0, 0x2

    xor-int/2addr p0, v2

    xor-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static gf16Mul8(S)S
    .locals 1

    and-int/lit8 v0, p0, 0x3

    int-to-short v0, v0

    ushr-int/lit8 p0, p0, 0x2

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    xor-int/2addr v0, p0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul3(S)S

    move-result p0

    or-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static gf16Mul8_64(J)J
    .locals 4

    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v0, p0

    const-wide v2, -0x3333333333333334L    # -9.255963134931783E61

    and-long/2addr p0, v2

    const/4 v2, 0x2

    shl-long/2addr v0, v2

    xor-long/2addr v0, p0

    ushr-long/2addr p0, v2

    xor-long/2addr v0, p0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2_64(J)J

    move-result-wide v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static gf16Mul_64(JJ)J
    .locals 9

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul_64(JJ)J

    move-result-wide v0

    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v2, v0

    const-wide v4, -0x3333333333333334L    # -9.255963134931783E61

    and-long/2addr v0, v4

    const/4 v6, 0x2

    shl-long v7, p0, v6

    xor-long/2addr p0, v7

    and-long/2addr p0, v4

    ushr-long/2addr v0, v6

    xor-long/2addr p0, v0

    shl-long v0, p2, v6

    xor-long/2addr p2, v0

    and-long/2addr p2, v4

    const-wide v0, 0x2222222222222222L

    xor-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul_64(JJ)J

    move-result-wide p0

    shl-long p2, v2, v6

    xor-long/2addr p0, p2

    xor-long/2addr p0, v2

    return-wide p0
.end method

.method private static gf16Squ(S)S
    .locals 2

    and-int/lit8 v0, p0, 0x3

    int-to-short v0, v0

    ushr-int/lit8 p0, p0, 0x2

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Squ(S)S

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result v1

    shl-int/lit8 p0, p0, 0x2

    xor-int/2addr p0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Squ(S)S

    move-result v0

    xor-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static gf16Squ_64(J)J
    .locals 3

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Squ_64(J)J

    move-result-wide p0

    const-wide v0, -0x3333333333333334L    # -9.255963134931783E61

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2_64(J)J

    move-result-wide v0

    const/4 v2, 0x2

    ushr-long/2addr v0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static gf256Inv(S)S
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v1

    invoke-static {v0, p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result p0

    return p0
.end method

.method private static gf256Inv_64(J)J
    .locals 4

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static gf256Mul(SS)S
    .locals 4

    and-int/lit8 v0, p0, 0xf

    int-to-short v0, v0

    ushr-int/lit8 p0, p0, 0x4

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    and-int/lit8 v1, p1, 0xf

    int-to-short v1, v1

    ushr-int/lit8 p1, p1, 0x4

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul(SS)S

    move-result v2

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul(SS)S

    move-result v3

    xor-int/2addr p0, v0

    int-to-short p0, p0

    xor-int/2addr p1, v1

    int-to-short p1, p1

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul(SS)S

    move-result p0

    xor-int/2addr p0, v2

    int-to-short p0, p0

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul8(S)S

    move-result p1

    shl-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v2

    xor-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static gf256Mul_64(JJ)J
    .locals 9

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul_64(JJ)J

    move-result-wide v0

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v2, v0

    const-wide v4, -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236

    and-long/2addr v0, v4

    const/4 v6, 0x4

    shl-long v7, p0, v6

    xor-long/2addr p0, v7

    and-long/2addr p0, v4

    ushr-long/2addr v0, v6

    xor-long/2addr p0, v0

    shl-long v0, p2, v6

    xor-long/2addr p2, v0

    and-long/2addr p2, v4

    const-wide v0, 0x808080808080808L

    xor-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul_64(JJ)J

    move-result-wide p0

    shl-long p2, v2, v6

    xor-long/2addr p0, p2

    xor-long/2addr p0, v2

    return-wide p0
.end method

.method private static gf256Squ(S)S
    .locals 2

    and-int/lit8 v0, p0, 0xf

    int-to-short v0, v0

    ushr-int/lit8 p0, p0, 0x4

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Squ(S)S

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul8(S)S

    move-result v1

    shl-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Squ(S)S

    move-result v0

    xor-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static gf256Squ_64(J)J
    .locals 3

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Squ_64(J)J

    move-result-wide p0

    const-wide v0, -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul8_64(J)J

    move-result-wide v0

    const/4 v2, 0x4

    ushr-long/2addr v0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static gf4Mul(SS)S
    .locals 1

    and-int/lit8 v0, p1, 0x1

    mul-int v0, v0, p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result p0

    ushr-int/lit8 p1, p1, 0x1

    mul-int p0, p0, p1

    xor-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static gf4Mul2(S)S
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x7

    xor-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static gf4Mul2_64(J)J
    .locals 4

    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, p0

    const-wide v2, -0x5555555555555556L

    and-long/2addr p0, v2

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    xor-long/2addr v0, p0

    ushr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static gf4Mul3(S)S
    .locals 2

    add-int/lit8 v0, p0, -0x2

    ushr-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, p0, 0x3

    and-int/2addr v1, v0

    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, v0

    or-int/2addr p0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static gf4Mul_64(JJ)J
    .locals 5

    const/4 v0, 0x1

    shl-long v1, p0, v0

    and-long/2addr v1, p2

    shl-long v3, p2, v0

    and-long/2addr v3, p0

    xor-long/2addr v1, v3

    const-wide v3, -0x5555555555555556L

    and-long/2addr v1, v3

    and-long/2addr p0, p2

    xor-long p2, p0, v1

    and-long/2addr p0, v3

    ushr-long/2addr p0, v0

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method private static gf4Squ(S)S
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    xor-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static gf4Squ_64(J)J
    .locals 3

    const-wide v0, -0x5555555555555556L

    and-long/2addr v0, p0

    const/4 v2, 0x1

    ushr-long/2addr v0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static invElem(S)S
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfInvTable:[B

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static invElem_64(J)J
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Inv_64(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static multElem(SS)S
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    aget-object p0, v0, p0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static multElem_64(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide p0

    return-wide p0
.end method
