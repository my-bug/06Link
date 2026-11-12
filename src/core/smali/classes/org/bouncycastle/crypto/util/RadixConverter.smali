.class public Lorg/bouncycastle/crypto/util/RadixConverter;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_POWERS_TO_CACHE:I = 0xa

.field private static final LOG_LONG_MAX_VALUE:D


# instance fields
.field private final digitsGroupLength:I

.field private final digitsGroupSpacePowers:[Ljava/math/BigInteger;

.field private final digitsGroupSpaceSize:Ljava/math/BigInteger;

.field private final radix:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/crypto/util/RadixConverter;->LOG_LONG_MAX_VALUE:D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/util/RadixConverter;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->radix:I

    sget-wide v0, Lorg/bouncycastle/crypto/util/RadixConverter;->LOG_LONG_MAX_VALUE:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->precomputeDigitsGroupPowers(ILjava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    return-void
.end method

.method private fromEncoding(II[S)J
    .locals 4

    const-wide/16 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    iget v2, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    aget-short v2, p3, p1

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private precomputeDigitsGroupPowers(ILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3

    new-array v0, p1, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    move-object v2, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aput-object v2, v0, v1

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toEncoding(JI[S)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_1

    if-ltz p3, :cond_1

    cmp-long v2, p1, v3

    if-nez v2, :cond_0

    add-int/lit8 v2, p3, -0x1

    aput-short v0, p4, p3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, p3, -0x1

    iget v3, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v4, v3

    rem-long v4, p1, v4

    long-to-int v5, v4

    int-to-short v4, v5

    aput-short v4, p4, p3

    int-to-long v3, v3

    div-long/2addr p1, v3

    :goto_1
    move p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmp-long p4, p1, v3

    if-nez p4, :cond_2

    return p3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to convert decimal number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public fromEncoding([S)Ljava/math/BigInteger;
    .locals 9

    sget-object v0, Lorg/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    array-length v1, p1

    iget v2, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    neg-int v7, v6

    if-le v2, v7, :cond_3

    if-gez v2, :cond_0

    add-int/2addr v6, v2

    const/4 v2, 0x0

    :cond_0
    add-int/2addr v6, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {p0, v2, v6, p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding(II[S)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    if-nez v5, :cond_1

    move-object v3, v6

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    array-length v8, v7

    if-gt v5, v8, :cond_2

    add-int/lit8 v0, v5, -0x1

    aget-object v0, v7, v0

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_1
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_2
    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    sub-int/2addr v2, v6

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public getDigitsGroupLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    return v0
.end method

.method public getRadix()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->radix:I

    return v0
.end method

.method public toEncoding(Ljava/math/BigInteger;I[S)V
    .locals 4

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    add-int/lit8 v1, p2, -0x1

    aput-short v2, p3, p2

    move p2, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    aget-object v1, p1, v2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2, p3}, Lorg/bouncycastle/crypto/util/RadixConverter;->toEncoding(JI[S)I

    move-result p1

    move p2, p1

    move-object p1, v1

    :goto_0
    if-gez p2, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
