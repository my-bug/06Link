.class public Lorg/bouncycastle/crypto/digests/Haraka512Digest;
.super Lorg/bouncycastle/crypto/digests/HarakaBase;


# instance fields
.field private final buffer:[B

.field private off:I

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/16 p1, 0x40

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Haraka512Digest;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    iget p1, p1, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    return-void
.end method

.method private haraka512256([B[BI)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    const/4 v10, 0x2

    new-array v1, v10, [I

    const/4 v11, 0x1

    const/16 v2, 0x10

    aput v2, v1, v11

    const/4 v12, 0x0

    const/4 v3, 0x4

    aput v3, v1, v12

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [[B

    new-array v1, v10, [I

    aput v2, v1, v11

    aput v3, v1, v12

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [[B

    aget-object v1, v13, v12

    invoke-static {v4, v12, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v13, v11

    invoke-static {v4, v2, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v13, v10

    const/16 v15, 0x20

    invoke-static {v4, v15, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v16, 0x3

    aget-object v1, v13, v16

    const/16 v5, 0x30

    invoke-static {v4, v5, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v13, v12

    sget-object v5, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v5, v5, v12

    invoke-static {v1, v5}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    aget-object v1, v13, v11

    sget-object v5, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v5, v5, v11

    invoke-static {v1, v5}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    aget-object v1, v13, v10

    sget-object v5, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v5, v5, v10

    invoke-static {v1, v5}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    aget-object v1, v13, v16

    sget-object v5, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v5, v5, v16

    invoke-static {v1, v5}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    aget-object v1, v13, v12

    sget-object v5, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v3, v5, v3

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    aget-object v1, v13, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v5, 0x5

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    aget-object v1, v13, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v5, 0x6

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    aget-object v1, v13, v16

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v5, 0x7

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v1, v14, v12

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v5, 0x8

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    aget-object v1, v14, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0x9

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    aget-object v1, v14, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xa

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    aget-object v1, v14, v16

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xb

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    aget-object v1, v13, v12

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xc

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    aget-object v1, v13, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xd

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    aget-object v1, v13, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xe

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    aget-object v1, v13, v16

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xf

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v1, v14, v12

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    aget-object v1, v14, v11

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    aget-object v1, v14, v10

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    aget-object v1, v14, v16

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    aget-object v1, v13, v12

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    aget-object v1, v13, v11

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    aget-object v1, v13, v10

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    aget-object v1, v13, v16

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v1, v14, v12

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x18

    aget-object v2, v2, v17

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    aget-object v1, v14, v11

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    aget-object v1, v14, v10

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    aget-object v1, v14, v16

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    aget-object v1, v13, v12

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    aget-object v1, v13, v11

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    aget-object v1, v13, v10

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    aget-object v1, v13, v16

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v1, v14, v12

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v2, v2, v15

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    aget-object v1, v14, v11

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    aget-object v1, v14, v10

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    aget-object v1, v14, v16

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    aget-object v1, v13, v12

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    aget-object v1, v13, v11

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    aget-object v1, v13, v10

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    aget-object v1, v13, v16

    sget-object v2, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v2, v14, v12

    aget-object v6, v13, v12

    const/4 v7, 0x0

    const/16 v1, 0x10

    const/4 v3, 0x0

    const/16 v18, 0x8

    const/4 v5, 0x0

    const/16 v10, 0x8

    const/16 v19, 0x2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    aget-object v2, v14, v11

    aget-object v6, v13, v11

    const/16 v5, 0x10

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    aget-object v2, v14, v19

    aget-object v6, v13, v19

    const/16 v5, 0x20

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    aget-object v2, v14, v16

    aget-object v6, v13, v16

    const/16 v5, 0x30

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    aget-object v1, v13, v12

    invoke-static {v1, v10, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v13, v11

    add-int/lit8 v2, v9, 0x8

    invoke-static {v1, v10, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v13, v19

    add-int/lit8 v2, v9, 0x10

    invoke-static {v1, v12, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v13, v16

    add-int/lit8 v2, v9, 0x18

    invoke-static {v1, v12, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v15
.end method

.method private mix512([[B[[B)V
    .locals 9

    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    const/16 v3, 0xc

    const/4 v4, 0x4

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    aget-object v2, p1, v1

    aget-object v5, p2, v0

    invoke-static {v2, v3, v5, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    aget-object v5, p1, v2

    aget-object v6, p2, v0

    const/16 v7, 0x8

    invoke-static {v5, v3, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x3

    aget-object v6, p1, v5

    aget-object v8, p2, v0

    invoke-static {v6, v3, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v1

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v0

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v5

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v2

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v1

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v0

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v5

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v2

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v0

    aget-object v8, p2, v5

    invoke-static {v6, v7, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v1

    aget-object v1, p2, v5

    invoke-static {v0, v7, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v2

    aget-object v1, p2, v5

    invoke-static {v0, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, p1, v5

    aget-object p2, p2, v5

    invoke-static {p1, v7, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->haraka512256([B[BI)I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->reset()V

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output too short to receive digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "input must be exactly 64 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Haraka-512"

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method

.method public update(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    aput-byte p1, v1, v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "total input cannot be more than 64 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    rsub-int/lit8 v1, p3, 0x40

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "total input cannot be more than 64 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
