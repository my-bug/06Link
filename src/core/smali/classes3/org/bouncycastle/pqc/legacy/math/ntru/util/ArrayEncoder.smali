.class public Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;
.super Ljava/lang/Object;


# static fields
.field private static final BIT1_TABLE:[I

.field private static final BIT2_TABLE:[I

.field private static final BIT3_TABLE:[I

.field private static final COEFF1_TABLE:[I

.field private static final COEFF2_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF1_TABLE:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF2_TABLE:[I

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT1_TABLE:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT2_TABLE:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT3_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        -0x1
        0x0
        0x1
        -0x1
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeMod3Sves([BI)[I
    .locals 6

    new-array v0, p1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x8

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v4

    add-int/lit8 v5, v1, 0x2

    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v3

    add-int/lit8 v1, v1, 0x3

    invoke-static {p0, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v5

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v2, 0x1

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF1_TABLE:[I

    aget v5, v5, v4

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x2

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF2_TABLE:[I

    aget v4, v5, v4

    aput v4, v0, v3

    add-int/lit8 v3, p1, -0x2

    if-le v2, v3, :cond_0

    :cond_1
    return-object v0
.end method

.method public static decodeMod3Tight(Ljava/io/InputStream;I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeMod3Tight([BI)[I

    move-result-object p0

    return-object p0
.end method

.method public static decodeMod3Tight([BI)[I
    .locals 7

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array p0, p1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    const-wide/16 v3, 0x3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    aput v6, p0, v2

    if-le v6, v1, :cond_0

    add-int/lit8 v5, v5, -0x4

    aput v5, p0, v2

    :cond_0
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static decodeModQ(Ljava/io/InputStream;II)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    mul-int v0, v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object p0

    return-object p0
.end method

.method public static decodeModQ([BII)[I
    .locals 6

    new-array v0, p1, [I

    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x1f

    mul-int p1, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    if-lez v1, :cond_0

    rem-int v3, v1, p2

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v3

    aget v4, v0, v2

    rem-int v5, v1, p2

    shl-int/2addr v3, v5

    add-int/2addr v4, v3

    aput v4, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static encodeMod3Sves([I)[B
    .locals 11

    array-length v0, p0

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x7

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    array-length v7, p0

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x2

    if-ge v4, v7, :cond_4

    add-int/lit8 v7, v4, 0x1

    aget v8, p0, v4

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x2

    aget v7, p0, v7

    add-int/lit8 v7, v7, 0x1

    if-nez v8, :cond_2

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal encoding!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v7

    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT1_TABLE:[I

    aget v7, v7, v8

    sget-object v9, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT2_TABLE:[I

    aget v9, v9, v8

    sget-object v10, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT3_TABLE:[I

    aget v8, v10, v8

    filled-new-array {v7, v9, v8}, [I

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_0

    aget-byte v9, v0, v6

    aget v10, v7, v8

    shl-int/2addr v10, v5

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v6

    if-ne v5, v2, :cond_3

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static encodeMod3Tight([I)[B
    .locals 5

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const-wide/16 v3, 0x3

    if-ltz v1, :cond_0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aget v3, p0, v1

    add-int/2addr v3, v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    new-array v1, p0, [B

    array-length v2, v0

    sub-int/2addr p0, v2

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    array-length v1, v0

    if-le v1, p0, :cond_2

    array-length p0, v0

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static encodeModQ([II)[B
    .locals 9

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x1f

    array-length v0, p0

    mul-int v0, v0, p1

    const/4 v1, 0x7

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p1, :cond_1

    aget v7, p0, v3

    shr-int/2addr v7, v6

    and-int/lit8 v7, v7, 0x1

    aget-byte v8, v0, v5

    shl-int/2addr v7, v4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    if-ne v4, v1, :cond_0

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getBit([BI)I
    .locals 1

    div-int/lit8 v0, p1, 0x8

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    rem-int/lit8 p1, p1, 0x8

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0
.end method
