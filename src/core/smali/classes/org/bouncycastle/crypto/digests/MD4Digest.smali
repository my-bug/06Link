.class public Lorg/bouncycastle/crypto/digests/MD4Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S11:I = 0x3

.field private static final S12:I = 0x7

.field private static final S13:I = 0xb

.field private static final S14:I = 0x13

.field private static final S21:I = 0x3

.field private static final S22:I = 0x5

.field private static final S23:I = 0x9

.field private static final S24:I = 0xd

.field private static final S31:I = 0x3

.field private static final S32:I = 0x9

.field private static final S33:I = 0xb

.field private static final S34:I = 0xf


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v0, 0x40

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/MD4Digest;)V
    .locals 2

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v0, 0x40

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD4Digest;)V

    return-void
.end method

.method private F(III)I
    .locals 0

    and-int/2addr p2, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private G(III)I
    .locals 1

    or-int v0, p2, p3

    and-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private H(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/MD4Digest;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    return-void
.end method

.method private rotateLeft(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD4Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/lit8 p2, p2, 0xc

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->reset()V

    const/16 p1, 0x10

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "MD4"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iget v3, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iget v4, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v1, v5

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v4, v7

    const/4 v7, 0x7

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v3, v9

    const/16 v9, 0xb

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v11, v11, v5

    add-int/2addr v2, v11

    const/16 v11, 0x13

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v14, 0x5

    aget v12, v12, v14

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v15, 0x6

    aget v12, v12, v15

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v7

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v16, 0x8

    aget v12, v12, v16

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v17, 0x1

    const/16 v8, 0x9

    aget v12, v12, v8

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v18, 0xa

    aget v12, v12, v18

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v9

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v19, 0xc

    aget v12, v12, v19

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v20, 0x2

    const/16 v10, 0xd

    aget v12, v12, v10

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v21, 0xe

    aget v12, v12, v21

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v22, 0x7

    const/16 v7, 0xf

    aget v12, v12, v7

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v11, v11, v6

    add-int/2addr v1, v11

    const v11, 0x5a827999

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v13

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v16

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v19

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v17

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v14

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v10

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v20

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v15

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v18

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v21

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v5

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v22

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v9

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v7

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v11, v11, v6

    add-int/2addr v1, v11

    const v11, 0x6ed9eba1

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v16

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v13

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v19

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v7}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v20

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v18

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v15

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v21

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v7}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v17

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v14

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v10, v12, v10

    add-int/2addr v2, v10

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v7}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v10, v10, v5

    add-int/2addr v1, v10

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v5, v5, v9

    add-int/2addr v4, v5

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v5, v5, v22

    add-int/2addr v3, v5

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v5, v5, v7

    add-int/2addr v2, v5

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v7}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    iget v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    add-int/2addr v5, v1

    iput v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/2addr v1, v4

    iput v1, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iput v6, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

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

    check-cast p1, Lorg/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD4Digest;)V

    return-void
.end method
