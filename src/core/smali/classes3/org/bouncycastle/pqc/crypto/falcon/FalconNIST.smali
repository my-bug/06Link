.class Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;
.super Ljava/lang/Object;


# instance fields
.field CRYPTO_BYTES:I

.field private CRYPTO_PUBLICKEYBYTES:I

.field private CRYPTO_SECRETKEYBYTES:I

.field LOGN:I

.field private N:I

.field NONCELEN:I

.field private codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

.field private rand:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(IILjava/security/SecureRandom;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    const/4 p2, 0x1

    shl-int p3, p2, p1

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v0, p3, 0xe

    const/16 v1, 0x8

    div-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/16 p1, 0x901

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    const/16 p1, 0x532

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    return-void

    :cond_0
    const/16 v0, 0x9

    const/16 v2, 0x2b2

    if-eq p1, v0, :cond_4

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    mul-int/lit8 p1, p3, 0x2

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    return-void

    :cond_3
    :goto_0
    mul-int/lit8 p1, p3, 0xe

    div-int/2addr p1, v1

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    return-void

    :cond_4
    :goto_1
    mul-int/lit8 p1, p3, 0xc

    div-int/2addr p1, v1

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    return-void
.end method


# virtual methods
.method crypto_sign(Z[B[BII[BI)[B
    .locals 28

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v4, v2, [B

    new-array v11, v2, [B

    new-array v13, v2, [B

    new-array v14, v2, [B

    new-array v15, v2, [S

    new-array v2, v2, [S

    const/16 v12, 0x30

    new-array v3, v12, [B

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    new-array v5, v5, [B

    new-instance v6, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;-><init>()V

    new-instance v20, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;

    invoke-direct/range {v20 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;-><init>()V

    new-instance v21, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    invoke-direct/range {v21 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;-><init>()V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;-><init>()V

    move-object v8, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    move-object v9, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v10, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v10, v10, v12

    move-object v12, v7

    move v7, v10

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    move-object/from16 v17, v5

    const/4 v5, 0x0

    move-object/from16 v23, v9

    move-object/from16 v24, v12

    move-object/from16 v22, v17

    move/from16 v9, p7

    move-object v12, v8

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BIII[BII)I

    move-result v3

    if-eqz v3, :cond_7

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v9, v6, v7

    move-object v6, v11

    add-int v11, p7, v3

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int/2addr v7, v3

    move-object v10, v12

    move v12, v7

    const/4 v7, 0x0

    move-object/from16 v25, v10

    move-object/from16 v10, p6

    invoke-virtual/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BIII[BII)I

    move-result v5

    if-eqz v5, :cond_6

    add-int/2addr v3, v5

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    move-object/from16 v19, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v5, v12, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v16, v5, v7

    add-int v18, p7, v3

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int/2addr v5, v3

    move-object v7, v14

    const/4 v14, 0x0

    move-object/from16 v17, p6

    move-object/from16 v27, v19

    move/from16 v19, v5

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BIII[BII)I

    move-result v5

    move-object v10, v13

    if-eqz v5, :cond_5

    add-int/2addr v3, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    if-ne v3, v5, :cond_4

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v3, v3, 0x2

    new-array v13, v3, [S

    const/4 v14, 0x0

    const/4 v5, 0x0

    move-object v8, v6

    move-object v6, v4

    move-object v4, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, v21

    invoke-virtual/range {v3 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->complete_private([BI[BI[BI[BII[SI)Z

    move-result v3

    move-object v7, v4

    move-object v4, v6

    move-object v6, v8

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    const/4 v8, 0x0

    move-object/from16 v9, v23

    invoke-virtual {v9, v5, v8, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    move-object/from16 v3, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual {v9, v3, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v12, v24

    invoke-virtual {v12, v9, v2, v8, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->hash_to_point_vartime(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    move-object/from16 v12, v25

    invoke-virtual {v3, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    const/16 v3, 0x30

    invoke-virtual {v9, v12, v8, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v12, v12, 0xa

    new-array v12, v12, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/16 v19, 0x0

    move-object/from16 v17, v5

    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object/from16 v22, v17

    move/from16 v17, v11

    move-object v11, v10

    const/4 v10, 0x0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 p3, v9

    move-object v9, v6

    move-object/from16 v6, p3

    move-object v15, v2

    move-object v13, v7

    move-object/from16 v3, v20

    move-object/from16 v2, v22

    const/16 p3, 0x1

    const/4 v1, 0x0

    const/16 v26, 0x30

    move-object v7, v4

    move-object/from16 v4, v27

    invoke-virtual/range {v3 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->sign_dyn([SILorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v19, v4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    add-int/lit8 v3, v3, -0x2

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    sub-int/2addr v3, v4

    new-array v4, v3, [B

    const-string v5, "signature failed to generate"

    if-eqz p1, :cond_1

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v7, v6, 0x20

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int/lit8 v18, v3, -0x1

    const/16 v20, 0x0

    const/16 v17, 0x1

    move-object/from16 v16, v4

    move/from16 v21, v6

    invoke-virtual/range {v15 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_encode([BII[SII)I

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v16

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v16, v4

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    const/16 v20, 0x0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    const/16 v17, 0x0

    move/from16 v18, v3

    move/from16 v21, v4

    invoke-virtual/range {v15 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_encode([BII[SII)I

    move-result v3

    move-object/from16 v4, v16

    if-eqz v3, :cond_2

    :goto_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, p2, v1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    move-object/from16 v6, p2

    const/4 v7, 0x1

    invoke-static {v2, v1, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/2addr v2, v7

    invoke-static {v4, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/2addr v2, v7

    add-int/2addr v2, v3

    invoke-static {v6, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "complete_private failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "full key not used"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "F decode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "g decode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "f decode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method crypto_sign_keypair([BI[BI)[[B
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v4, v1, [B

    new-array v5, v1, [B

    new-array v8, v1, [B

    new-array v12, v1, [S

    const/16 v1, 0x30

    new-array v2, v1, [B

    new-instance v3, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;-><init>()V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;-><init>()V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v7, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    const/4 v15, 0x0

    invoke-virtual {v3, v2, v15, v1}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    const/4 v13, 0x0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object v2, v6

    move-object v6, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->keygen(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII)V

    move-object v9, v6

    move-object v10, v8

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v1, v7, 0x50

    int-to-byte v1, v1

    aput-byte v1, p3, p4

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int/lit8 v3, p4, 0x1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v8, v5, v6

    const/4 v6, 0x0

    move-object v5, v4

    move v4, v2

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BIII)I

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v13, v1, 0x1

    invoke-static {v2, v3, v13}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int v3, p4, v13

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int/2addr v4, v13

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v8, v5, v6

    const/4 v6, 0x0

    move-object v5, v9

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BIII)I

    move-result v1

    if-eqz v1, :cond_3

    add-int/2addr v13, v1

    invoke-static {v2, v3, v13}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int v3, p4, v13

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int/2addr v4, v13

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v8, v5, v6

    const/4 v6, 0x0

    move-object v5, v10

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BIII)I

    move-result v1

    if-eqz v1, :cond_2

    add-int/2addr v13, v1

    invoke-static {v2, v3, v13}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    if-ne v13, v1, :cond_1

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    int-to-byte v1, v7

    aput-byte v1, p1, p2

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int/lit8 v3, p2, 0x1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    add-int/lit8 v4, v2, -0x1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object v5, v12

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->modq_encode([BII[SII)I

    move-result v1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    sub-int/2addr v3, v11

    if-ne v1, v3, :cond_0

    array-length v1, v2

    invoke-static {v2, v11, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [[B

    aput-object v1, v2, v15

    aput-object v14, v2, v11

    const/4 v1, 0x2

    aput-object v9, v2, v1

    const/4 v1, 0x3

    aput-object v8, v2, v1

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "public key encoding failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "secret key encoding failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "F encode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "g encode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "f encode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method crypto_sign_open(Z[B[B[B[BI)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v10, v1, [S

    new-array v2, v1, [S

    new-array v1, v1, [S

    new-instance v3, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;-><init>()V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;-><init>()V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;-><init>()V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    const/4 v11, 0x1

    add-int/lit8 v15, v7, -0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->modq_decode([SII[BII)I

    move-result v9

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    sub-int/2addr v11, v7

    const/4 v12, -0x1

    if-eq v9, v11, :cond_0

    return v12

    :cond_0
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v13, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->to_ntt_monty([SII)V

    array-length v9, v5

    array-length v11, v8

    if-eqz p1, :cond_3

    if-lt v9, v7, :cond_2

    aget-byte v14, v5, v13

    move-object v15, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    const/16 p5, -0x1

    add-int/lit8 v12, v4, 0x20

    int-to-byte v12, v12

    if-eq v14, v12, :cond_1

    goto :goto_0

    :cond_1
    move-object v12, v2

    move-object v2, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int/lit8 v7, v9, -0x1

    move-object v9, v3

    const/4 v3, 0x0

    move-object v14, v6

    const/4 v6, 0x1

    move-object/from16 v16, v14

    move-object v14, v9

    move-object/from16 v9, v16

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_decode([SII[BII)I

    move-result v1

    if-eq v1, v7, :cond_4

    return p5

    :cond_2
    const/16 p5, -0x1

    :goto_0
    return p5

    :cond_3
    move-object v12, v2

    move-object v14, v3

    move-object v15, v4

    const/16 p5, -0x1

    move-object v2, v1

    move-object v1, v6

    if-lt v9, v7, :cond_6

    move-object v3, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    const/4 v6, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    move v7, v9

    move-object v9, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_decode([SII[BII)I

    move-result v1

    if-eq v1, v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    move-object/from16 v3, p3

    invoke-virtual {v14, v3, v13, v1}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    invoke-virtual {v14, v8, v13, v11}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-virtual {v9, v14, v12, v13, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->hash_to_point_vartime(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII)V

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v1, v1, [S

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    move-object v7, v10

    move-object v3, v12

    move-object v2, v15

    move-object v10, v1

    invoke-virtual/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->verify_raw([SI[SI[SII[SI)I

    move-result v1

    if-nez v1, :cond_5

    return p5

    :cond_5
    return v13

    :cond_6
    :goto_1
    return p5
.end method
