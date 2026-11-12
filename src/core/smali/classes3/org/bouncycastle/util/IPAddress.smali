.class public Lorg/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isParseable(Ljava/lang/String;IIIIZII)Z
    .locals 4

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-le v0, p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    or-int/2addr p4, v3

    if-eqz p4, :cond_2

    return v1

    :cond_2
    if-le v0, v2, :cond_3

    const/4 p4, 0x1

    goto :goto_2

    :cond_3
    const/4 p4, 0x0

    :goto_2
    xor-int/2addr p5, v2

    and-int/2addr p4, p5

    if-eqz p4, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-static {p4, p3}, Ljava/lang/Character;->digit(CI)I

    move-result p4

    if-gtz p4, :cond_4

    return v1

    :cond_4
    const/4 p4, 0x0

    :goto_3
    if-ge p1, p2, :cond_6

    add-int/lit8 p5, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    if-gez p1, :cond_5

    return v1

    :cond_5
    mul-int p4, p4, p3

    add-int/2addr p4, p1

    move p1, p5

    goto :goto_3

    :cond_6
    if-lt p4, p6, :cond_7

    const/4 p0, 0x1

    goto :goto_4

    :cond_7
    const/4 p0, 0x0

    :goto_4
    if-gt p4, p7, :cond_8

    const/4 v1, 0x1

    :cond_8
    and-int/2addr p0, v1

    return p0
.end method

.method private static isParseableIPv4Mask(Ljava/lang/String;)Z
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v1, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static isParseableIPv4Octet(Ljava/lang/String;II)Z
    .locals 8

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static isParseableIPv6Mask(Ljava/lang/String;)Z
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x1

    const/16 v7, 0x80

    const/4 v1, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static isParseableIPv6Segment(Ljava/lang/String;II)Z
    .locals 8

    const/4 v6, 0x0

    const v7, 0xffff

    const/16 v3, 0x10

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidIPv4(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_2

    const/16 v4, 0x2e

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-static {p0, v3, v4}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv4Octet(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v3, v0}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv4Octet(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method public static isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv4Mask(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static isValidIPv6(Ljava/lang/String;)Z
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_1

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v0, v5, :cond_8

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-lt v5, v0, :cond_8

    if-ne v3, v6, :cond_2

    return v1

    :cond_2
    if-eq v0, v5, :cond_5

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    if-ne v5, v9, :cond_4

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_3

    return v1

    :cond_3
    invoke-static {v8}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_4
    invoke-static {p0, v0, v5}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv6Segment(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_5
    if-eq v5, v7, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    if-eq v5, v0, :cond_6

    if-eqz v4, :cond_6

    return v1

    :cond_6
    const/4 v4, 0x1

    :cond_7
    add-int/lit8 v0, v5, 0x1

    add-int/2addr v3, v7

    goto :goto_0

    :cond_8
    if-eq v3, v6, :cond_a

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    return v1

    :cond_a
    :goto_1
    return v7
.end method

.method public static isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv6Mask(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static isValidWithNetMask(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
