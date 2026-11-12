.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;


# instance fields
.field l1_Q3:[[[S

.field l1_Q5:[[[S

.field l1_Q6:[[[S

.field l1_Q9:[[[S

.field l2_Q9:[[[S

.field pk:[[[S

.field pk_seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v3, v4, :cond_3

    new-array p1, v6, [I

    aput v2, p1, v5

    aput v2, p1, v7

    aput v1, p1, v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[S

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge p1, v2, :cond_4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    if-le p1, v4, :cond_0

    aget-object v6, v6, v5

    aget-object v6, v6, p1

    aput-short v0, v6, v4

    goto :goto_3

    :cond_0
    aget-object v6, v6, v5

    aget-object v6, v6, p1

    aget-byte v7, p2, v3

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    aput-short v7, v6, v4

    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    new-array v4, v6, [I

    aput v3, v4, v5

    aput v2, v4, v7

    aput v1, v4, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v3

    new-array v4, v6, [I

    aput v3, v4, v5

    aput v2, v4, v7

    aput v1, v4, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    new-array v4, v6, [I

    aput v3, v4, v5

    aput v2, v4, v7

    aput v1, v4, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    new-array v4, v6, [I

    aput v3, v4, v5

    aput v2, v4, v7

    aput v1, v4, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    new-array v4, v6, [I

    aput v3, v4, v5

    aput v2, v4, v7

    aput v1, v4, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-static {v1, p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-static {v1, p2, p1, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-static {v1, p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-static {v0, p2, p1, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-static {v0, p2, p1, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v0

    add-int/2addr p1, v0

    array-length p2, p2

    if-ne p1, p2, :cond_5

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unparsed data in key encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[[S[[[S[[[S[[[S[[[S)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-static {p7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result p1

    const/4 v6, 0x3

    new-array v6, v6, [I

    const/4 v7, 0x2

    aput p1, v6, v7

    const/4 p1, 0x1

    aput v5, v6, p1

    aput v4, v6, v0

    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[S

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    aget-object v5, p2, p1

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v6, v6, p1

    aget-object v6, v6, v4

    invoke-static {v5, v0, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p3, p1

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v6, v6, p1

    aget-object v6, v6, v4

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p4, p1

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v6, v6, p1

    aget-object v6, v6, v4

    add-int v7, v1, v2

    invoke-static {v5, v0, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_1

    aget-object v5, p5, p1

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v6, v6, p1

    add-int v7, v4, v1

    aget-object v6, v6, v7

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p6, p1

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v6, v6, p1

    aget-object v6, v6, v7

    add-int v7, v1, v2

    invoke-static {v5, v0, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_2

    aget-object v5, p7, p1

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v6, v6, p1

    add-int v7, v4, v1

    add-int/2addr v7, v2

    aget-object v6, v6, v7

    add-int v7, v1, v2

    invoke-static {v5, v0, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_4
    if-ge p1, v3, :cond_7

    const/4 p2, 0x0

    :goto_5
    if-ge p2, v1, :cond_4

    aget-object p3, p8, p1

    aget-object p3, p3, p2

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int p5, p1, v2

    aget-object p4, p4, p5

    aget-object p4, p4, p2

    invoke-static {p3, v0, p4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p3, p9, p1

    aget-object p3, p3, p2

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object p4, p4, p5

    aget-object p4, p4, p2

    invoke-static {p3, v0, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p3, p10, p1

    aget-object p3, p3, p2

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object p4, p4, p5

    aget-object p4, p4, p2

    add-int p5, v1, v2

    invoke-static {p3, v0, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    :goto_6
    if-ge p2, v2, :cond_5

    aget-object p3, p11, p1

    aget-object p3, p3, p2

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int p5, p1, v2

    aget-object p4, p4, p5

    add-int v4, p2, v1

    aget-object p4, p4, v4

    invoke-static {p3, v0, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p3, p12, p1

    aget-object p3, p3, p2

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object p4, p4, p5

    aget-object p4, p4, v4

    add-int p5, v1, v2

    invoke-static {p3, v0, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_5
    const/4 p2, 0x0

    :goto_7
    if-ge p2, v3, :cond_6

    aget-object p3, p13, p1

    aget-object p3, p3, p2

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int p5, p1, v2

    aget-object p4, p4, p5

    add-int p5, p2, v1

    add-int/2addr p5, v2

    aget-object p4, p4, p5

    add-int p5, v1, v2

    invoke-static {p3, v0, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getPk()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    return-object v0
.end method
