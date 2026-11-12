.class public Lorg/bouncycastle/crypto/engines/XoodyakEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;
    }
.end annotation


# instance fields
.field private K:[B

.field private final MAXROUNDS:I

.field private final PhaseDown:I

.field private final PhaseUp:I

.field private final RC:[I

.field private Rabsorb:I

.field final Rkin:I

.field private final Rkout:I

.field private final TAGLEN:I

.field private final aadData:Ljava/io/ByteArrayOutputStream;

.field private aadFinished:Z

.field private encrypted:Z

.field private final f_bPrime:I

.field private forEncryption:Z

.field private initialised:Z

.field private iv:[B

.field private final message:Ljava/io/ByteArrayOutputStream;

.field private mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

.field private phase:I

.field private state:[B

.field private tag:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->f_bPrime:I

    const/16 v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rkout:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->PhaseDown:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->PhaseUp:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->MAXROUNDS:I

    const/16 v1, 0x10

    iput v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->TAGLEN:I

    const/16 v1, 0x2c

    iput v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rkin:I

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->RC:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    return-void

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

.method private AbsorbAny([BIIII)V
    .locals 3

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p5}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Down([BIII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p5, 0x0

    goto :goto_0
.end method

.method private Up([BII)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    sget-object v3, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeHash:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v3, 0x2f

    aget-byte v4, v2, v3

    xor-int v4, v4, p3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v9, 0xc

    invoke-static {v8, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v13, 0x14

    invoke-static {v12, v13}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v12

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v14

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v13, 0x1c

    invoke-static {v15, v13}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v15

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v11, 0x20

    invoke-static {v13, v11}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v13

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v5, 0x24

    invoke-static {v11, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v3, 0x28

    invoke-static {v5, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

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

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->RC:[I

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

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/4 v5, 0x0

    invoke-static {v2, v1, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/4 v2, 0x4

    invoke-static {v4, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    invoke-static {v6, v1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v2, 0xc

    invoke-static {v8, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v2, 0x10

    invoke-static {v10, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v2, 0x14

    invoke-static {v12, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v2, 0x18

    invoke-static {v14, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v2, 0x1c

    invoke-static {v15, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v2, 0x20

    invoke-static {v13, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v2, 0x24

    invoke-static {v11, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    move/from16 v5, v16

    const/16 v2, 0x28

    invoke-static {v5, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    move/from16 v3, v18

    const/16 v2, 0x2c

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    const/4 v1, 0x2

    iput v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    if-eqz p1, :cond_2

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private encrypt([BII[BI)I
    .locals 9

    const/16 v0, 0x18

    new-array v1, v0, [B

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    :goto_0
    move v4, p3

    :goto_1
    if-nez v4, :cond_2

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    return p3

    :cond_2
    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v6, :cond_3

    invoke-static {p1, p2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    const/4 v6, 0x0

    invoke-direct {p0, v6, v3, v2}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_4

    add-int v6, p5, v2

    add-int/lit8 v7, p2, 0x1

    aget-byte p2, p1, p2

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    aget-byte v8, v8, v2

    xor-int/2addr p2, v8

    int-to-byte p2, p2

    aput-byte p2, p4, v6

    add-int/lit8 v2, v2, 0x1

    move p2, v7

    goto :goto_3

    :cond_4
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1, v3, v5, v3}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Down([BIII)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0, p4, p5, v5, v3}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Down([BIII)V

    :goto_4
    add-int/2addr p5, v5

    sub-int/2addr v4, v5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private processAAD()V
    .locals 7

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v4, v2

    iget v5, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rabsorb:I

    const/4 v6, 0x3

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->AbsorbAny([BIIII)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    return-void

    :cond_0
    move-object v1, p0

    return-void
.end method

.method private reset(Z)V
    .locals 9

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    const/4 p1, 0x2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    array-length p1, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    array-length v1, v1

    const/16 v2, 0x2c

    new-array v4, v2, [B

    sget-object v3, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeKeyed:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    iput v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rabsorb:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    invoke-static {v2, v0, v4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    invoke-static {v2, v0, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v1

    int-to-byte v0, v1

    aput-byte v0, v4, p1

    add-int/lit8 v6, p1, 0x1

    iget v7, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rabsorb:I

    const/4 v8, 0x2

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->AbsorbAny([BIIII)V

    return-void
.end method


# virtual methods
.method Down([BIII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

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
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    aget-byte p2, p1, p3

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    const/16 p2, 0x2f

    aget-byte p3, p1, p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    sget-object v2, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeHash:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    if-ne v1, v2, :cond_1

    and-int/lit8 p4, p4, 0x1

    :cond_1
    xor-int/2addr p3, p4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    return-void
.end method

.method public doFinal([BI)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    add-int/lit8 v1, v4, 0x10

    add-int/2addr v1, p2

    array-length v3, p1

    if-gt v1, v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    add-int/lit8 v0, v4, -0x10

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->processAAD()V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    const/16 v7, 0x40

    const/4 v8, 0x0

    const/16 v9, 0x10

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypt([BII[BI)I

    add-int p2, v6, v4

    new-array p1, v9, [B

    iput-object p1, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    invoke-direct {p0, p1, v9, v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    iget-object p1, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    invoke-static {p1, v8, v5, p2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v9

    goto :goto_2

    :cond_3
    move-object v1, p0

    move-object v5, p1

    move v6, p2

    sub-int/2addr v4, v9

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypt([BII[BI)I

    new-array p1, v9, [B

    iput-object p1, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    invoke-direct {p0, p1, v9, v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    move p1, v4

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v9, :cond_5

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    aget-byte v0, v0, p2

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, v2, p1

    if-ne v0, p1, :cond_4

    add-int/lit8 p2, p2, 0x1

    move p1, v3

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mac does not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->reset(Z)V

    return v4

    :cond_6
    move-object v1, p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Need call init function before encryption/decryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Xoodyak AEAD"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getIVBytesSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x10

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    array-length v0, v0

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v0, v1, v3, p2, p1}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    const/16 p1, 0x30

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    new-array p1, v2, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->reset()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Xoodyak key must be 128 bits long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Xoodyak init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Xoodyak requires exactly 16 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Xoodyak init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADByte(B)V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AAD cannot be added after reading a full block("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes) of input for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    const-string v1, "encryption"

    goto :goto_0

    :cond_0
    const-string v1, "decryption"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AAD cannot be added after reading a full block("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes) of input for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz p3, :cond_0

    const-string p3, "encryption"

    goto :goto_0

    :cond_0
    const-string p3, "decryption"

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processByte(B[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    sget-object v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeKeyed:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    if-ne v0, v1, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x10

    :goto_0
    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result p2

    if-lt p1, p2, :cond_2

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result p2

    div-int/2addr p1, p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result p2

    mul-int v3, p1, p2

    add-int p1, v3, p5

    array-length p2, p4

    if-gt p1, p2, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->processAAD()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypt([BII[BI)I

    iget-object p1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    array-length p2, v1

    sub-int/2addr p2, v3

    invoke-virtual {p1, v1, v3, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return v3

    :cond_1
    move-object v0, p0

    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v0, p0

    return p3

    :cond_3
    move-object v0, p0

    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    move-object v0, p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Xoodyak has not been initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move-object v0, p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Need call init function before encryption/decryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->reset(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
