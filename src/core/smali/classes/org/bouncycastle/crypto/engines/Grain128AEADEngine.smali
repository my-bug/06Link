.class public Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;
    }
.end annotation


# static fields
.field private static final STATE_SIZE:I = 0x4


# instance fields
.field private aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

.field private aadFinished:Z

.field private authAcc:[I

.field private authSr:[I

.field private initialised:Z

.field private lfsr:[I

.field private mac:[B

.field private nfsr:[I

.field private workingIV:[B

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->initialised:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    new-instance v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    return-void
.end method

.method private accumulate()V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v4, v3, v1

    xor-int/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    aget v3, v3, v1

    xor-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method private authShift(I)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    ushr-int/2addr v2, v3

    aget v4, v0, v3

    shl-int/lit8 v5, v4, 0x1f

    or-int/2addr v2, v5

    aput v2, v0, v1

    ushr-int/lit8 v1, v4, 0x1

    shl-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v1

    aput p1, v0, v3

    return-void
.end method

.method private doProcessAADBytes([BII)V
    .locals 10

    const/16 v0, 0x80

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge p3, v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [B

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-static {p3}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->len_length(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, p3

    new-array v3, v3, [B

    or-int/lit16 v4, v0, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    move v5, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    add-int/lit8 v4, v4, 0x1

    int-to-byte v6, v5

    aput-byte v6, v3, v4

    ushr-int/2addr v5, v1

    goto :goto_0

    :cond_1
    move-object v9, v3

    move v3, v0

    move-object v0, v9

    :goto_1
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-ge v4, p3, :cond_2

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int v6, p2, v4

    aget-byte v6, p1, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_3
    array-length p2, v0

    if-ge p1, p2, :cond_4

    aget-byte p2, v0, p1

    const/4 p3, 0x0

    :goto_4
    if-ge p3, v1, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v6, v6, v2

    xor-int/2addr v4, v6

    and-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v4

    and-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    shr-int v3, p2, p3

    and-int/2addr v3, v5

    neg-int v3, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    aget v6, v4, v2

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v8, v7, v2

    and-int/2addr v8, v3

    xor-int/2addr v6, v8

    aput v6, v4, v2

    aget v6, v4, v5

    aget v7, v7, v5

    and-int/2addr v3, v7

    xor-int/2addr v3, v6

    aput v3, v4, v5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authShift(I)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v6, v6, v2

    xor-int/2addr v4, v6

    and-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v4

    and-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private getKeyStream([BII[BI)[B
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v8, v8, v0

    xor-int/2addr v7, v8

    const/4 v8, 0x1

    and-int/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v7

    and-int/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    shr-int v6, v2, v3

    and-int/2addr v6, v8

    xor-int/2addr v5, v6

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    neg-int v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    aget v7, v6, v0

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v10, v9, v0

    and-int/2addr v10, v5

    xor-int/2addr v7, v10

    aput v7, v6, v0

    aget v7, v6, v8

    aget v9, v9, v8

    and-int/2addr v5, v9

    xor-int/2addr v5, v7

    aput v5, v6, v8

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authShift(I)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v7, v7, v0

    xor-int/2addr v6, v7

    and-int/2addr v6, v8

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v6

    and-int/2addr v6, v8

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int v2, p5, v1

    aput-byte v4, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p4
.end method

.method private getOutput()I
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    ushr-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v3, v3, 0xf

    const/4 v6, 0x1

    aget v7, v1, v6

    ushr-int/lit8 v8, v7, 0x4

    ushr-int/lit8 v7, v7, 0xd

    const/4 v9, 0x2

    aget v1, v1, v9

    ushr-int/lit8 v10, v1, 0x9

    ushr-int/lit8 v11, v1, 0x19

    ushr-int/lit8 v12, v1, 0x1f

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v2, v13, v2

    ushr-int/lit8 v14, v2, 0x8

    ushr-int/lit8 v15, v2, 0xd

    ushr-int/lit8 v2, v2, 0x14

    aget v16, v13, v6

    ushr-int/lit8 v17, v16, 0xa

    ushr-int/lit8 v16, v16, 0x1c

    aget v9, v13, v9

    ushr-int/lit8 v13, v9, 0xf

    ushr-int/lit8 v18, v9, 0x1d

    ushr-int/lit8 v9, v9, 0x1e

    and-int/2addr v14, v5

    and-int/2addr v2, v15

    xor-int/2addr v2, v14

    and-int v14, v12, v17

    xor-int/2addr v2, v14

    and-int v13, v16, v13

    xor-int/2addr v2, v13

    and-int/2addr v5, v12

    and-int/2addr v5, v9

    xor-int/2addr v2, v5

    xor-int v2, v2, v18

    xor-int/2addr v2, v4

    xor-int/2addr v2, v3

    xor-int/2addr v2, v8

    xor-int/2addr v2, v7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v10

    xor-int/2addr v1, v11

    and-int/2addr v1, v6

    return v1
.end method

.method private getOutputLFSR()I
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    ushr-int/lit8 v2, v1, 0x7

    const/4 v3, 0x1

    aget v4, v0, v3

    ushr-int/lit8 v4, v4, 0x6

    const/4 v5, 0x2

    aget v5, v0, v5

    ushr-int/lit8 v6, v5, 0x6

    ushr-int/lit8 v5, v5, 0x11

    const/4 v7, 0x3

    aget v0, v0, v7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v4

    xor-int/2addr v1, v6

    xor-int/2addr v1, v5

    xor-int/2addr v0, v1

    and-int/2addr v0, v3

    return v0
.end method

.method private getOutputNFSR()I
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    ushr-int/lit8 v3, v2, 0xb

    ushr-int/lit8 v4, v2, 0xd

    ushr-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0x12

    ushr-int/lit8 v7, v2, 0x16

    ushr-int/lit8 v8, v2, 0x18

    ushr-int/lit8 v9, v2, 0x19

    ushr-int/lit8 v10, v2, 0x1a

    const/4 v11, 0x1

    aget v12, v1, v11

    ushr-int/lit8 v13, v12, 0x8

    ushr-int/lit8 v14, v12, 0x10

    ushr-int/lit8 v15, v12, 0x18

    ushr-int/lit8 v16, v12, 0x1d

    const/16 v17, 0x2

    aget v17, v1, v17

    ushr-int/lit8 v18, v17, 0x1

    ushr-int/lit8 v19, v17, 0x4

    ushr-int/lit8 v20, v17, 0x6

    ushr-int/lit8 v21, v17, 0xe

    ushr-int/lit8 v22, v17, 0x12

    ushr-int/lit8 v23, v17, 0x14

    ushr-int/lit8 v24, v17, 0x18

    ushr-int/lit8 v25, v17, 0x1b

    ushr-int/lit8 v26, v17, 0x1c

    ushr-int/lit8 v27, v17, 0x1d

    ushr-int/lit8 v28, v17, 0x1f

    const/16 v29, 0x3

    aget v1, v1, v29

    xor-int/2addr v10, v2

    xor-int/2addr v10, v15

    xor-int v10, v10, v25

    xor-int/2addr v1, v10

    and-int v10, v2, v17

    ushr-int/lit8 v10, v10, 0x3

    xor-int/2addr v1, v10

    and-int/2addr v3, v4

    xor-int/2addr v1, v3

    and-int v3, v5, v6

    xor-int/2addr v1, v3

    and-int/2addr v2, v12

    ushr-int/lit8 v2, v2, 0x1b

    xor-int/2addr v1, v2

    and-int v2, v13, v14

    xor-int/2addr v1, v2

    and-int v2, v16, v18

    xor-int/2addr v1, v2

    and-int v2, v19, v23

    xor-int/2addr v1, v2

    and-int v2, v7, v8

    and-int/2addr v2, v9

    xor-int/2addr v1, v2

    and-int v2, v20, v21

    and-int v2, v2, v22

    xor-int/2addr v1, v2

    and-int v2, v24, v26

    and-int v2, v2, v27

    and-int v2, v2, v28

    xor-int/2addr v1, v2

    and-int/2addr v1, v11

    return v1
.end method

.method private initGrain()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x140

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v6, v6, v0

    xor-int/2addr v5, v6

    xor-int/2addr v5, v2

    and-int/2addr v5, v3

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v5

    xor-int/2addr v2, v5

    and-int/2addr v2, v3

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v8, v8, v0

    xor-int/2addr v7, v8

    xor-int/2addr v7, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    aget-byte v8, v8, v1

    shr-int/2addr v8, v4

    xor-int/2addr v7, v8

    and-int/2addr v7, v3

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v7

    xor-int/2addr v5, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    add-int/lit8 v8, v1, 0x8

    aget-byte v7, v7, v8

    shr-int/2addr v7, v4

    xor-int/2addr v5, v7

    and-int/2addr v5, v3

    invoke-direct {p0, v6, v5}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x20

    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v8, v8, v0

    xor-int/2addr v7, v8

    and-int/2addr v7, v3

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v7

    and-int/2addr v7, v3

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    aget v7, v6, v1

    shl-int/2addr v5, v4

    or-int/2addr v5, v7

    aput v5, v6, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v4, :cond_6

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v9, v9, v0

    xor-int/2addr v8, v9

    and-int/2addr v8, v3

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v8

    and-int/2addr v8, v3

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v8, v7, v1

    shl-int/2addr v6, v5

    or-int/2addr v6, v8

    aput v6, v7, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->initialised:Z

    return-void
.end method

.method private static len_length(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0xffffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private reset(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->reset()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->setKey([B[B)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->initGrain()V

    return-void
.end method

.method private setKey([B[B)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, -0x1

    aput-byte v1, p2, v0

    const/16 v0, 0xd

    aput-byte v1, p2, v0

    const/16 v0, 0xe

    aput-byte v1, p2, v0

    const/16 v0, 0xf

    const/16 v1, 0x7f

    aput-byte v1, p2, v0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    return-void
.end method

.method private shift([II)[I
    .locals 6

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    aget v3, p1, v2

    shl-int/lit8 v4, v3, 0x1f

    or-int/2addr v1, v4

    aput v1, p1, v0

    ushr-int/lit8 v0, v3, 0x1

    const/4 v1, 0x2

    aget v3, p1, v1

    shl-int/lit8 v4, v3, 0x1f

    or-int/2addr v0, v4

    aput v0, p1, v2

    ushr-int/lit8 v0, v3, 0x1

    const/4 v3, 0x3

    aget v4, p1, v3

    shl-int/lit8 v5, v4, 0x1f

    or-int/2addr v0, v5

    aput v0, p1, v1

    ushr-int/lit8 v0, v4, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v0

    aput p2, p1, v3

    return-object p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->getBuf()[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->doProcessAADBytes([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->accumulate()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->reset(Z)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    array-length p1, p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Grain-128AEAD"

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v2, v4, v5, p2, p1}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    new-array p1, v3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    new-array p2, v3, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    const/4 p2, 0x4

    new-array v2, p2, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    new-array p2, p2, [I

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 p2, 0x2

    new-array v2, p2, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    new-array p2, p2, [I

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    array-length p2, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    array-length p2, v0

    invoke-static {v0, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->reset()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grain-128AEAD key must be 128 bits long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grain-128AEAD init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grain-128AEAD requires exactly 12 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grain-128AEAD init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADByte(B)V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->write(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "associated data must be added before plaintext/ciphertext"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADBytes([BII)V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "associated data must be added before plaintext/ciphertext"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->initialised:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->getBuf()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->doProcessAADBytes([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getKeyStream([BII[BI)[B

    return p3

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->reset(Z)V

    return-void
.end method
