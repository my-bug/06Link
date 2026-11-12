.class public Lorg/bouncycastle/crypto/digests/XoodyakDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;
    }
.end annotation


# instance fields
.field private final MAXROUNDS:I

.field private final PhaseDown:I

.field private final PhaseUp:I

.field private final RC:[I

.field private Rabsorb:I

.field private final Rhash:I

.field private final TAGLEN:I

.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private final f_bPrime:I

.field private mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

.field private phase:I

.field private state:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->f_bPrime:I

    const/16 v1, 0x10

    iput v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Rhash:I

    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->PhaseDown:I

    const/4 v2, 0x2

    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->PhaseUp:I

    const/16 v2, 0xc

    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->MAXROUNDS:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->TAGLEN:I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->RC:[I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->reset()V

    return-void

    nop

    :array_0
    .array-data 4
        0x58
        0x38
        0x3c0
        0xd0
        0x120
        0x14
        0x60
        0x2c
        0x380
        0xf0
        0x1a0
        0x12
    .end array-data
.end method

.method private Up([BIII)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v3, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v3, 0x2f

    aget-byte v4, v2, v3

    xor-int v4, v4, p4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v9, 0xc

    invoke-static {v8, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v13, 0x14

    invoke-static {v12, v13}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v12

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v14

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v13, 0x1c

    invoke-static {v15, v13}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v15

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v11, 0x20

    invoke-static {v13, v11}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v13

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v5, 0x24

    invoke-static {v11, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v3, 0x28

    invoke-static {v5, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v7, 0x2c

    invoke-static {v3, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_1

    xor-int v16, v2, v10

    xor-int v9, v16, v13

    xor-int v16, v4, v12

    move/from16 v17, v7

    xor-int v7, v16, v11

    xor-int v16, v6, v14

    xor-int v1, v16, v5

    xor-int v16, v8, v15

    move/from16 v18, v3

    xor-int v3, v16, v18

    move/from16 v16, v5

    const/4 v5, 0x5

    invoke-static {v3, v5}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v19

    const/16 v5, 0xe

    invoke-static {v3, v5}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v3

    xor-int v3, v19, v3

    move/from16 v19, v3

    const/4 v3, 0x5

    invoke-static {v9, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v20

    invoke-static {v9, v5}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v9

    xor-int v9, v20, v9

    invoke-static {v7, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v20

    invoke-static {v7, v5}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v7

    xor-int v7, v20, v7

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v3

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v1, v3

    xor-int v2, v2, v19

    xor-int v3, v10, v19

    xor-int v5, v13, v19

    xor-int/2addr v4, v9

    xor-int v10, v12, v9

    xor-int/2addr v9, v11

    xor-int/2addr v6, v7

    xor-int v11, v14, v7

    xor-int v7, v16, v7

    xor-int/2addr v8, v1

    xor-int v12, v15, v1

    xor-int v1, v18, v1

    const/16 v13, 0xb

    invoke-static {v5, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    invoke-static {v9, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v9

    invoke-static {v7, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v7

    invoke-static {v1, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->RC:[I

    aget v13, v13, v17

    xor-int/2addr v2, v13

    xor-int/lit8 v13, v12, -0x1

    and-int/2addr v13, v5

    xor-int/2addr v13, v2

    xor-int/lit8 v14, v3, -0x1

    and-int/2addr v14, v9

    xor-int/2addr v14, v4

    xor-int/lit8 v15, v10, -0x1

    and-int/2addr v15, v7

    xor-int/2addr v15, v6

    xor-int/lit8 v16, v11, -0x1

    and-int v16, v16, v1

    xor-int v16, v8, v16

    xor-int/lit8 v18, v5, -0x1

    and-int v18, v18, v2

    move/from16 v19, v1

    xor-int v1, v12, v18

    xor-int/lit8 v18, v9, -0x1

    and-int v18, v18, v4

    move/from16 v20, v2

    xor-int v2, v3, v18

    xor-int/lit8 v18, v7, -0x1

    and-int v18, v18, v6

    move/from16 v21, v3

    xor-int v3, v10, v18

    xor-int/lit8 v18, v19, -0x1

    and-int v18, v18, v8

    move/from16 v22, v4

    xor-int v4, v11, v18

    xor-int/lit8 v18, v20, -0x1

    and-int v12, v18, v12

    xor-int/2addr v5, v12

    xor-int/lit8 v12, v22, -0x1

    and-int v12, v12, v21

    xor-int/2addr v9, v12

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v10

    xor-int/2addr v6, v7

    xor-int/lit8 v7, v8, -0x1

    and-int/2addr v7, v11

    xor-int v7, v19, v7

    const/4 v8, 0x1

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v10

    invoke-static {v2, v8}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    invoke-static {v3, v8}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    invoke-static {v4, v8}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v6, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v4

    invoke-static {v7, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v11

    invoke-static {v5, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    invoke-static {v9, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v6

    add-int/lit8 v7, v17, 0x1

    move v3, v6

    move v6, v15

    move/from16 v8, v16

    const/16 v9, 0xc

    move v15, v2

    move v2, v13

    move v13, v4

    move v4, v14

    move v14, v1

    goto/16 :goto_0

    :cond_1
    move/from16 v18, v3

    move/from16 v16, v5

    const/16 v3, 0x8

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v5, 0x0

    invoke-static {v2, v1, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v2, 0x4

    invoke-static {v4, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    invoke-static {v6, v1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v2, 0xc

    invoke-static {v8, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v2, 0x10

    invoke-static {v10, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v2, 0x14

    invoke-static {v12, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v2, 0x18

    invoke-static {v14, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v2, 0x1c

    invoke-static {v15, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v2, 0x20

    invoke-static {v13, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v2, 0x24

    invoke-static {v11, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    move/from16 v5, v16

    const/16 v2, 0x28

    invoke-static {v5, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    move/from16 v3, v18

    const/16 v2, 0x2c

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    const/4 v1, 0x2

    iput v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    if-eqz p1, :cond_2

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method


# virtual methods
.method Down([BIII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    aget-byte v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    aget-byte p2, p1, p3

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    const/16 p2, 0x2f

    aget-byte p3, p1, p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v2, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    if-ne v1, v2, :cond_1

    and-int/lit8 p4, p4, 0x1

    :cond_1
    xor-int/2addr p3, p4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    return-void
.end method

.method public doFinal([BI)I
    .locals 8

    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    invoke-direct {p0, v7, v2, v2, v2}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    :cond_0
    iget v5, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Rabsorb:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v0, v4, v5, v3}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Down([BIII)V

    add-int/2addr v4, v5

    sub-int/2addr v1, v5

    if-nez v1, :cond_1

    const/16 v0, 0x40

    const/16 v1, 0x10

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    invoke-virtual {p0, v7, v2, v2, v2}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Down([BIII)V

    add-int/2addr p2, v1

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->reset()V

    const/16 p1, 0x20

    return p1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Xoodyak Hash"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    sget-object v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Rabsorb:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
