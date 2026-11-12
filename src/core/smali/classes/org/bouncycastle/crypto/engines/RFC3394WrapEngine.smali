.class public Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# static fields
.field private static final DEFAULT_IV:[B


# instance fields
.field private final engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private final iv:[B

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private final wrapCipherMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->DEFAULT_IV:[B

    return-void

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_0
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    sget-object p1, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->DEFAULT_IV:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_3

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    array-length v2, p1

    if-ne v2, v0, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV not equal to 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public unwrap([BII)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v4, :cond_c

    const/16 v4, 0x10

    if-lt v3, v4, :cond_b

    div-int/lit8 v4, v3, 0x8

    mul-int/lit8 v5, v4, 0x8

    if-ne v5, v3, :cond_a

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-boolean v6, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v5, v6, v8}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v5

    sub-int v6, v3, v6

    new-array v6, v6, [B

    array-length v8, v5

    new-array v8, v8, [B

    array-length v9, v5

    const/16 v10, 0x8

    add-int/2addr v9, v10

    new-array v9, v9, [B

    sub-int/2addr v4, v7

    const/4 v12, 0x0

    if-ne v4, v7, :cond_1

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5, v1, v2, v9, v12}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v5, v5

    invoke-static {v9, v12, v8, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v5, v5

    invoke-static {v9, v5, v6, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const/16 v17, 0x1

    goto :goto_3

    :cond_1
    array-length v5, v5

    invoke-static {v1, v2, v8, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v13, v5

    add-int/2addr v13, v2

    array-length v5, v5

    sub-int v5, v3, v5

    invoke-static {v1, v13, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x5

    :goto_0
    if-ltz v5, :cond_0

    move v13, v4

    :goto_1
    if-lt v13, v7, :cond_3

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v14, v14

    invoke-static {v8, v12, v9, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v13, -0x1

    mul-int/lit8 v14, v14, 0x8

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v15, v15

    invoke-static {v6, v14, v9, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v15, v4, v5

    add-int/2addr v15, v13

    const/16 v16, 0x1

    :goto_2
    if-eqz v15, :cond_2

    int-to-byte v11, v15

    const/16 v17, 0x1

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    sub-int v7, v7, v16

    aget-byte v18, v9, v7

    xor-int v11, v18, v11

    int-to-byte v11, v11

    aput-byte v11, v9, v7

    ushr-int/lit8 v15, v15, 0x8

    add-int/lit8 v16, v16, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x1

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v9, v12, v9, v12}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v9, v12, v8, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v10, v6, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, -0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v7, 0x1

    goto :goto_0

    :goto_3
    const-string v5, "checksum failed"

    const/4 v7, 0x1

    if-eq v4, v7, :cond_5

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v8, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_6

    :cond_4
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v1, v5}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v8, v7}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    invoke-static {v1, v2, v8, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v7

    add-int/2addr v2, v11

    array-length v7, v7

    sub-int/2addr v3, v7

    invoke-static {v1, v2, v6, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x5

    :goto_4
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    if-ltz v11, :cond_7

    array-length v1, v1

    invoke-static {v8, v12, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    invoke-static {v6, v12, v9, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v1, v4, v11

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x1

    :goto_5
    if-eqz v1, :cond_6

    int-to-byte v2, v1

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v3, v3

    sub-int/2addr v3, v7

    aget-byte v13, v9, v3

    xor-int/2addr v2, v13

    int-to-byte v2, v2

    aput-byte v2, v9, v3

    ushr-int/lit8 v1, v1, 0x8

    const/16 v17, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    const/16 v17, 0x1

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, v9, v12, v9, v12}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v9, v12, v8, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v10, v6, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_7
    invoke-static {v8, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v1, v5}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_6
    return-object v6

    :cond_a
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v2, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v2, "unwrap data too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not set for unwrapping"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public wrap([BII)[B
    .locals 11

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    if-lt p3, v0, :cond_5

    div-int/lit8 v1, p3, 0x8

    mul-int/lit8 v2, v1, 0x8

    if-ne v2, p3, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v3, v2

    add-int/2addr v3, p3

    new-array v3, v3, [B

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v2, v2

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v3, v5, v3, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-object v3

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length p2, p2

    add-int/2addr p2, v0

    new-array p2, p2, [B

    const/4 p3, 0x0

    :goto_0
    const/4 v2, 0x6

    if-eq p3, v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-gt v2, v1, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v4, v4

    invoke-static {v3, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v4, v2, 0x8

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v6

    invoke-static {v3, v4, p2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, p2, v5, p2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    mul-int v6, v1, p3

    add-int/2addr v6, v2

    const/4 v7, 0x1

    :goto_2
    if-eqz v6, :cond_1

    int-to-byte v8, v6

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    sub-int/2addr v9, v7

    aget-byte v10, p2, v9

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, p2, v9

    ushr-int/lit8 v6, v6, 0x8

    add-int/2addr v7, p1

    goto :goto_2

    :cond_1
    invoke-static {p2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v0, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-object v3

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo p2, "wrap data must be a multiple of 8 bytes"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo p2, "wrap data must be at least 8 bytes"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for wrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
