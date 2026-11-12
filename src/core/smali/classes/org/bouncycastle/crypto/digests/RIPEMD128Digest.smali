.class public Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x10


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V
    .locals 2

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v0, 0x80

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V

    return-void
.end method

.method private F1(IIIIII)I
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f1(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private F2(IIIIII)I
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f2(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x5a827999

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private F3(IIIIII)I
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f3(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x6ed9eba1

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private F4(IIIIII)I
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f4(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, -0x70e44324

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private FF1(IIIIII)I
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f1(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private FF2(IIIIII)I
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f2(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x6d703ef3

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private FF3(IIIIII)I
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f3(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x5c4dd124

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private FF4(IIIIII)I
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f4(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x50a28be6

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private RL(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    return-void
.end method

.method private f1(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private f2(III)I
    .locals 0

    and-int/2addr p2, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private f3(III)I
    .locals 0

    xor-int/lit8 p2, p2, -0x1

    or-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private f4(III)I
    .locals 0

    and-int/2addr p1, p3

    xor-int/lit8 p3, p3, -0x1

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;-><init>(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    add-int/lit8 p2, p2, 0xc

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->reset()V

    const/16 p1, 0x10

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RIPEMD128"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 32

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    iget v3, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    iget v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    move v8, v1

    move v1, v2

    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v9, 0x1

    aget v2, v2, v9

    const/16 v6, 0xe

    move/from16 v31, v3

    move v3, v1

    move v1, v4

    move/from16 v4, v31

    move/from16 v31, v5

    move v5, v2

    move/from16 v2, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    move v10, v1

    move v1, v3

    move v3, v4

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v11, 0x2

    aget v4, v4, v11

    const/16 v6, 0xf

    move/from16 v31, v4

    move v4, v1

    move v1, v3

    move v3, v2

    move v2, v5

    move/from16 v5, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    move v12, v3

    move v3, v2

    move v2, v12

    move v12, v1

    move v1, v4

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v13, 0x3

    aget v4, v4, v13

    const/16 v6, 0xc

    move/from16 v31, v4

    move v4, v2

    move v2, v5

    move/from16 v5, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    move v14, v1

    move v1, v2

    move v2, v4

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v15, 0x4

    aget v4, v4, v15

    const/4 v6, 0x5

    move/from16 v31, v3

    move v3, v1

    move v1, v2

    move v2, v5

    move v5, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v16, 0x5

    aget v5, v5, v16

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v17, 0x6

    aget v5, v5, v17

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v18, 0x7

    aget v5, v5, v18

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v19, 0x8

    aget v5, v5, v19

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v20, 0x9

    aget v5, v5, v20

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v21, 0xa

    aget v5, v5, v21

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v22, 0xb

    aget v5, v5, v22

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v23, 0xc

    aget v5, v5, v23

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v24, 0xd

    aget v5, v5, v24

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v25, 0xe

    aget v5, v5, v25

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v26, 0xf

    aget v5, v5, v26

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v9

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v7

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v9

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v7

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v9

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v7

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v27

    move/from16 v30, v2

    move/from16 v29, v3

    move/from16 v28, v4

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v1, v16

    const/16 v6, 0x8

    move v1, v8

    move v4, v10

    move v3, v12

    move v2, v14

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v7

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v9

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v7

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v9

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v9

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v9

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v7

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    iget v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    add-int v5, v30, v5

    add-int/2addr v3, v5

    iget v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    add-int v5, v5, v29

    add-int/2addr v5, v4

    iput v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    iget v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    add-int v4, v4, v28

    add-int/2addr v4, v1

    iput v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    add-int v1, v1, v27

    add-int/2addr v1, v2

    iput v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    iput v3, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    long-to-int v2, p1

    aput v2, v0, v1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p2, p1

    const/16 p1, 0xf

    aput p2, v0, p1

    return-void
.end method

.method protected processWord([BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V

    return-void
.end method
