.class Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field protected static final LOWMC_MAX_AND_GATES:I = 0x478

.field protected static final LOWMC_MAX_KEY_BITS:I = 0x100

.field private static final LOWMC_MAX_STATE_SIZE:I = 0x40

.field protected static final LOWMC_MAX_WORDS:I = 0x10

.field private static final MAX_AUX_BYTES:I = 0xb0

.field private static final MAX_DIGEST_SIZE:I = 0x40

.field private static final PICNIC_MAX_LOWMC_BLOCK_SIZE:I = 0x20

.field private static final TRANSFORM_FS:I = 0x0

.field private static final TRANSFORM_INVALID:I = 0xff

.field private static final TRANSFORM_UR:I = 0x1

.field private static final WORD_SIZE_BITS:I = 0x20

.field protected static final saltSizeBytes:I = 0x20


# instance fields
.field private final CRYPTO_BYTES:I

.field private final CRYPTO_PUBLICKEYBYTES:I

.field private final CRYPTO_SECRETKEYBYTES:I

.field protected final UnruhGWithInputBytes:I

.field protected final UnruhGWithoutInputBytes:I

.field protected final andSizeBytes:I

.field protected final digest:Lorg/bouncycastle/crypto/Xof;

.field protected final digestSizeBytes:I

.field protected final lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

.field protected final numMPCParties:I

.field protected final numMPCRounds:I

.field protected final numOpenedRounds:I

.field protected final numRounds:I

.field protected final numSboxes:I

.field private final parameters:I

.field protected final pqSecurityLevel:I

.field protected final seedSizeBytes:I

.field private signatureLength:I

.field protected final stateSizeBits:I

.field protected final stateSizeBytes:I

.field protected final stateSizeWords:I

.field private final transform:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(ILorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    const/16 v3, 0x149

    const/16 v4, 0xdb

    const/16 v5, 0xff

    const/16 v7, 0x10

    const/16 v8, 0x81

    const/16 v9, 0x30

    const/16 v10, 0xc0

    const/16 v11, 0x60

    const/16 v13, 0x20

    const/4 v14, 0x4

    const/16 v15, 0x80

    const/4 v12, 0x3

    const/16 v2, 0x40

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown parameter set "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v3, 0x1b6

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v3, 0x55

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    goto/16 :goto_0

    :pswitch_1
    iput v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    goto/16 :goto_1

    :pswitch_2
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v2, 0x2b

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    goto/16 :goto_2

    :pswitch_3
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v3, 0x259

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v3, 0x44

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v3, 0x55

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto :goto_4

    :pswitch_4
    iput v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v3, 0x1a3

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v3, 0x34

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto :goto_4

    :pswitch_5
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v2, 0xfa

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v2, 0x24

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v2, 0x2b

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto :goto_4

    :pswitch_6
    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v3, 0x100

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v3, 0x1b6

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v7, 0xa

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    const/16 v3, 0x26

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    :goto_0
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto :goto_3

    :pswitch_7
    const/16 v7, 0xa

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    const/16 v2, 0x1e

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    :goto_1
    iput v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto :goto_3

    :pswitch_8
    const/16 v7, 0xa

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    const/16 v2, 0x14

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    :goto_2
    iput v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    :goto_3
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    :goto_4
    const/16 v2, 0x41

    const/16 v3, 0x61

    const/16 v4, 0x49

    const/16 v7, 0x31

    packed-switch v1, :pswitch_data_1

    const/4 v2, -0x1

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    goto/16 :goto_5

    :pswitch_9
    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x1ed4e

    goto :goto_5

    :pswitch_a
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x1160b

    goto :goto_5

    :pswitch_b
    const/16 v3, 0x34

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v2, 0x23

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v2, 0x7d3d

    goto :goto_5

    :pswitch_c
    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0xee64

    goto :goto_5

    :pswitch_d
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x88d4

    goto :goto_5

    :pswitch_e
    const/16 v3, 0x34

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v2, 0x23

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v2, 0x3914

    goto :goto_5

    :pswitch_f
    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x33276

    goto :goto_5

    :pswitch_10
    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x2070c

    goto :goto_5

    :pswitch_11
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x1dc01

    goto :goto_5

    :pswitch_12
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x12bf0

    goto :goto_5

    :pswitch_13
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v2, 0x21

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0xd2cd

    goto :goto_5

    :pswitch_14
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v2, 0x21

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v2, 0x84f4

    :goto_5
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v2, v2, 0x3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int v2, v2, v3

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v3

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v4

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    add-int/lit8 v9, v7, 0x1f

    div-int/2addr v9, v13

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    packed-switch v1, :pswitch_data_2

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    goto :goto_6

    :pswitch_15
    const/4 v1, 0x1

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    goto :goto_6

    :pswitch_16
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    :goto_6
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    add-int/2addr v4, v2

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_7

    :cond_0
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    :goto_7
    if-eq v7, v15, :cond_2

    if-ne v7, v8, :cond_1

    goto :goto_9

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    :goto_8
    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    return-void

    :cond_2
    :goto_9
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v1, v15}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method private Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v0, 0x0

    invoke-interface {p1, p4, v0, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p1, p4, v0, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object p2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object p2, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object p2

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {p1, p2, v0, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p1, p4, v0, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v1, p2, p3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v1, 0x0

    invoke-interface {p2, p5, v1, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, p5, v1, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object p3, p4, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {p3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object p3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {p1, p3, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, p1

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object p3, p4, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {p1, p3, v1, p4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p3

    invoke-interface {p1, p3, v1, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, p5, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private H3([I[I[[Lorg/bouncycastle/pqc/crypto/picnic/View;[[[B[B[B[B[[[B)V
    .locals 10

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v1, 0x4

    new-array v8, v1, [B

    const/4 v9, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, p3, v1

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-static {v3, v8, v9}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v3, v8, v9, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->implH3([I[I[[[B[B[B[B[[[B)V

    return-void
.end method

.method private H3([I[I[[[I[[[B[B[B[B[[[B)V
    .locals 10

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v1, 0x4

    new-array v8, v1, [B

    const/4 v9, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, p3, v1

    aget-object v3, v3, v2

    invoke-static {v3, v8, v9}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v3, v8, v9, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->implH3([I[I[[[B[B[B[B[[[B)V

    return-void
.end method

.method private HCP([B[I[I[[B[B[B[I[I[B)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v3, p4, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v3, v0, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p4, 0x20

    new-array v1, p4, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, p5, v0, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p5, p6, v0, p4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-direct {p0, p7, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    invoke-direct {p0, p8, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length p5, p9

    invoke-interface {p4, p9, v0, p5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p4, p1, v0, p5}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->expandChallengeHash([B[I[I)V

    :cond_1
    return-void
.end method

.method private LowMCEnc([I[I[I)V
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-eq p1, p2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {p1, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {p1, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result p1

    invoke-virtual {p0, v0, p3, v2, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-virtual {p0, p2, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    const/4 p1, 0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt p1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v0, p3, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->substitution([I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, p2, p2, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, p2, p2, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    invoke-virtual {p0, p2, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static appendUnique([III)I
    .locals 2

    if-nez p2, :cond_0

    aput p1, p0, p2

    :goto_0
    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aput p1, p0, p2

    goto :goto_0
.end method

.method private arePaddingBitsZero([BI)Z
    .locals 2

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    :goto_0
    mul-int/lit8 v1, v0, 0x8

    if-ge p2, v1, :cond_1

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private arePaddingBitsZero([II)Z
    .locals 2

    and-int/lit8 v0, p2, 0x1f

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getTrailingBitsMask(I)I

    move-result v0

    ushr-int/lit8 p2, p2, 0x5

    aget p1, p1, p2

    xor-int/lit8 p2, v0, -0x1

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result v1

    iget-object v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v0

    iget v3, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v2

    xor-int/2addr v1, v2

    and-int/2addr p1, p2

    xor-int/2addr p1, v1

    xor-int/2addr p1, p3

    iget-object p2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object p2, p2, v0

    iget p3, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 p3, p3, -0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {p2, p3, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    return-void
.end method

.method static bitsToChunks(I[BI[I)I
    .locals 5

    mul-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    if-le p0, p2, :cond_0

    return v0

    :cond_0
    div-int/2addr p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aput v0, p3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_1

    aget v3, p3, v1

    mul-int v4, v1, p0

    add-int/2addr v4, v2

    invoke-static {p1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v4

    shl-int/2addr v4, v2

    add-int/2addr v3, v4

    aput v3, p3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method private commit([B[B[B[BII)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    if-eqz p3, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {p2, p3, v2, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 p3, 0x20

    invoke-interface {p2, p4, v2, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p3

    const/4 p4, 0x2

    invoke-interface {p2, p3, v2, p4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p3

    invoke-interface {p2, p3, v2, p4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, p1, v2, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private commit_h([B[[B)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v3, p2, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v3, v0, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, p1, v0, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge p2, v0, :cond_0

    iget v0, p3, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v3, v3, p2

    invoke-interface {v1, v3, v2, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, p1, v2, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private computeSaltAndRootSeed([B[I[I[I[B)V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p5

    const/4 v2, 0x0

    invoke-interface {p2, p5, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-direct {p0, p3, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    invoke-direct {p0, p4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    int-to-short p2, p2

    invoke-static {p2, v0, v2}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 p3, 0x2

    invoke-interface {p2, v0, v2, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length p3, p1

    invoke-interface {p2, p1, v2, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private computeSeeds([I[I[I[B)[B
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int v1, v1, v2

    mul-int v0, v0, v1

    const/16 v1, 0x20

    add-int/2addr v0, v1

    new-array v0, v0, [B

    new-array v2, v1, [B

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p4

    const/4 v4, 0x0

    invoke-interface {p1, p4, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    invoke-direct {p0, p3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p2

    const/4 p3, 0x2

    invoke-interface {p1, p2, v4, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int p3, p3, p4

    mul-int p2, p2, p3

    add-int/2addr p2, v1

    invoke-interface {p1, v0, v4, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v0
.end method

.method private contains([III)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v2, p1, v1

    if-ne v2, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private countNonZeroChallenges([BI)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, 0x10

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const v5, 0x55555555

    if-gt v3, v4, :cond_0

    ushr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    ushr-int/lit8 v4, v0, 0x1

    and-int v6, v0, v4

    or-int/2addr v1, v6

    xor-int/2addr v0, v4

    and-int/2addr v0, v5

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v0

    add-int/2addr v2, v0

    move v0, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_1

    add-int/lit8 v3, v4, 0x7

    div-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-static {p1, p2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result p1

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getTrailingBitsMask(I)I

    move-result p2

    and-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0x1

    and-int v0, p1, p2

    or-int/2addr v1, v0

    xor-int/2addr p1, p2

    and-int/2addr p1, v5

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result p1

    add-int/2addr v2, p1

    :cond_1
    and-int p1, v1, v5

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private createRandomTape([BI[BII[BI)Z
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v1, 0x0

    if-ge p7, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v0, p1, p2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p1, p6, v1, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p1, p6, v1, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 p2, 0x20

    invoke-interface {p1, p3, v1, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, p6, v1, p7}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    const/4 p1, 0x1

    return p1
.end method

.method private createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    add-int v5, v3, p3

    aget-object v5, p2, v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v4, v5, v2, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v5, 0x20

    invoke-interface {v4, p4, v2, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v5

    invoke-interface {v4, v5, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v5

    invoke-interface {v4, v5, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v5, v5, v3

    invoke-interface {v4, v5, v2, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deserializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BII)I
    .locals 11

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    const/4 v4, -0x1

    if-ge p3, v2, :cond_0

    return v4

    :cond_0
    invoke-direct {p0, p2, p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->countNonZeroChallenges([BI)I

    move-result v5

    if-gez v5, :cond_1

    return v4

    :cond_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int v6, v6, v5

    add-int/lit8 v7, v2, 0x20

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v9, v9, 0x2

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v9, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v9, v10

    mul-int v9, v9, v8

    add-int/2addr v7, v9

    add-int/2addr v7, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    sub-int/2addr v8, v5

    mul-int v6, v6, v8

    add-int/2addr v7, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    mul-int v6, v6, v5

    add-int/2addr v7, v6

    :cond_2
    if-eq p3, v7, :cond_3

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "sigBytesLen = "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", expected bytesRequired = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v4

    :cond_3
    const/4 p3, 0x0

    invoke-static {p2, p4, v1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v2

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/16 v2, 0x20

    invoke-static {p2, p4, p1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v2

    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge p1, v2, :cond_9

    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v2

    aget-object v5, v0, p1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {p2, p4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr p4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v5, v9, :cond_5

    if-nez v2, :cond_4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_1

    :cond_4
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    :goto_1
    aget-object v6, v0, p1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {p2, p4, v6, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v5

    :cond_5
    aget-object v5, v0, p1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {p2, p4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr p4, v5

    aget-object v5, v0, p1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p2, p4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr p4, v5

    aget-object v5, v0, p1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p2, p4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr p4, v5

    if-eq v2, v9, :cond_6

    if-ne v2, v3, :cond_8

    :cond_6
    aget-object v2, v0, p1

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    div-int/lit8 v5, v5, 0x4

    invoke-static {p2, p4, v2, p3, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v5, 0x81

    if-ne v2, v5, :cond_7

    aget-object v2, v0, p1

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    sub-int/2addr v5, v9

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v6, p4

    sub-int/2addr v6, v9

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v5

    :cond_7
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr p4, v2

    aget-object v2, v0, p1

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([II)Z

    move-result v2

    if-nez v2, :cond_8

    return v4

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_9
    return p3
.end method

.method private deserializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BII)I
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/16 v1, 0x20

    add-int/2addr v0, v1

    array-length v2, p2

    const/4 v3, -0x1

    if-ge v2, v0, :cond_0

    return v3

    :cond_0
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v5, 0x0

    invoke-static {p2, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr p4, v2

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-static {p2, p4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    invoke-direct {p0, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->expandChallengeHash([B[I[I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v1, p0, v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeedsSize([II)I

    move-result v1

    iput v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v1, v2

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-direct {v4, p0, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    invoke-virtual {v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->openMerkleTreeSize([II)I

    move-result v1

    iput v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    new-array v2, v1, [I

    new-instance v4, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v4, p0, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    invoke-virtual {v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeedsSize([II)I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v4, v6, :cond_3

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v7, v8, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v7

    aget v6, v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    sub-int/2addr v7, v1

    if-eq v6, v7, :cond_1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v6

    :cond_1
    add-int/2addr v0, v2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v0, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eq p3, v0, :cond_4

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "sigLen = "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", expected bytesRequired = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v3

    :cond_4
    iget p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    new-array p3, p3, [B

    iput-object p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget-object p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    invoke-static {p2, p4, p3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr p4, p3

    iget p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    new-array p3, p3, [B

    iput-object p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget-object p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-static {p2, p4, p3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr p4, p3

    const/4 p3, 0x0

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge p3, v0, :cond_8

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v0, v4, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v4, v0, p3

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, p3

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, p3

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, p3

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    new-array v4, v4, [B

    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, p3

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, p3

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    invoke-static {p2, p4, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, p3

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr p4, v0

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v4, v6, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v4

    aget v0, v0, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    sub-int/2addr v4, v1

    if-eq v0, v4, :cond_5

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, p3

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {p2, p4, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr p4, v0

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, p3

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int/lit8 v4, v4, 0x3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int v4, v4, v6

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([BI)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p2, "failed while deserializing aux bits"

    goto/16 :goto_1

    :cond_5
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, p3

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p2, p4, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr p4, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, p3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    invoke-static {p2, p4, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int/lit8 v0, v0, 0x3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int v0, v0, v4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, p3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    invoke-direct {p0, v4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([BI)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p2, "failed while deserializing msgs bits"

    goto/16 :goto_1

    :cond_6
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, p3

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {p2, p4, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr p4, v0

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2

    :cond_8
    return v5
.end method

.method private expandChallengeHash([B[I[I)V
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v2, v3

    new-array v2, v2, [I

    const/16 v3, 0x40

    new-array v3, v3, [B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    const/4 v6, 0x1

    if-ge p1, v4, :cond_3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v0, v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->bitsToChunks(I[BI[I)I

    move-result v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_2

    aget v8, v2, v7

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v8, v9, :cond_0

    invoke-static {p2, v8, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->appendUnique([III)I

    move-result p1

    :cond_0
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ne p1, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v4, v6}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v4, v3, v5, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v4, v3, v5, v6}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ge p1, p2, :cond_7

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v1, v3, p2, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->bitsToChunks(I[BI[I)I

    move-result p2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_6

    aget v4, v2, v0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v4, v7, :cond_4

    aput v4, p3, p1

    add-int/lit8 p1, p1, 0x1

    :cond_4
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ne p1, v4, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p2, v6}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, v3, v5, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p2, v3, v5, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_3

    :cond_7
    return-void
.end method

.method static extend(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    xor-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 8

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-ge v2, v5, :cond_1

    add-int/2addr v3, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_0

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    invoke-static {p2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v3

    invoke-static {p1, v4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    move v3, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getMissingLeavesList([I)[I
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v3, :cond_1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, p1, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-nez v3, :cond_0

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private implH3([I[I[[[B[B[B[B[[[B)V
    .locals 12

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v2, v2, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    const/4 v6, 0x0

    aput-byte v6, v0, v3

    const/4 v3, 0x0

    :goto_0
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v8, 0x3

    if-ge v3, v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_0

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v10, p3, v3

    aget-object v10, v10, v7

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v9, v10, v6, v11}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne p3, v5, :cond_4

    const/4 p3, 0x0

    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge p3, v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_3

    if-ne v3, v4, :cond_2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_4

    :cond_2
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    :goto_4
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v10, p7, p3

    aget-object v10, v10, v3

    invoke-interface {v9, v10, v6, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object p1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {p3, p1, v6, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object p2

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {p1, p2, v6, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 p2, 0x20

    move-object/from16 p3, p5

    invoke-interface {p1, p3, v6, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, v1

    invoke-interface {p1, v1, v6, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p1, v2, v6, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    const/4 p1, 0x1

    const/4 p2, 0x0

    :goto_5
    if-eqz p1, :cond_a

    const/4 p3, 0x0

    :goto_6
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    if-ge p3, v1, :cond_8

    aget-byte v1, v2, p3

    const/4 v3, 0x0

    :goto_7
    const/16 v4, 0x8

    if-ge v3, v4, :cond_6

    rsub-int/lit8 v4, v3, 0x6

    ushr-int v4, v1, v4

    and-int/2addr v4, v8

    if-ge v4, v8, :cond_5

    invoke-direct {p0, v0, p2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->setChallenge([BII)V

    add-int/lit8 p2, p2, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ne p2, v4, :cond_5

    const/4 p1, 0x0

    goto :goto_8

    :cond_5
    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    :cond_6
    :goto_8
    if-nez p1, :cond_7

    goto :goto_9

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_8
    :goto_9
    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p3, v5}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p3, v2, v6, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {p3, v2, v6, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_5

    :cond_a
    :goto_a
    return-void
.end method

.method static indexOf([III)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static is_picnic3(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I
    .locals 1

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result p5

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->extend(I)I

    move-result v0

    and-int/2addr p4, v0

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->extend(I)I

    move-result v0

    and-int/2addr p3, v0

    xor-int/2addr p3, p4

    xor-int/2addr p3, p5

    iget p4, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    if-ltz p4, :cond_0

    iget-object p4, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    iget p5, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    aget-object p4, p4, p5

    iget p5, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    invoke-static {p4, p5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result p4

    iget p5, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    invoke-static {p3, p5, p4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit(III)I

    move-result p3

    :cond_0
    invoke-direct {p0, p3, p6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->wordToMsgs(ILorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result p3

    and-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 13

    move-object/from16 v0, p4

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v3

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v5, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v5

    aget v7, p1, v2

    aget v8, p2, v4

    and-int v9, v7, v8

    aget v10, p1, v4

    aget v11, p2, v2

    and-int v12, v10, v11

    xor-int/2addr v9, v12

    and-int/2addr v7, v11

    xor-int/2addr v7, v9

    xor-int/2addr v7, v1

    xor-int/2addr v7, v3

    aput v7, p3, v2

    aget v7, p2, v6

    and-int v9, v10, v7

    aget v11, p1, v6

    and-int v12, v11, v8

    xor-int/2addr v9, v12

    and-int/2addr v8, v10

    xor-int/2addr v8, v9

    xor-int/2addr v3, v8

    xor-int/2addr v3, v5

    aput v3, p3, v4

    aget p2, p2, v2

    and-int/2addr p2, v11

    aget p1, p1, v2

    and-int/2addr p1, v7

    xor-int/2addr p1, p2

    and-int p2, v11, v7

    xor-int/2addr p1, p2

    xor-int/2addr p1, v5

    xor-int/2addr p1, v1

    aput p1, p3, v6

    aget-object p1, p5, v2

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget p2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v1, p3, v2

    int-to-byte v1, v1

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    aget-object p1, p5, v4

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget p2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v1, p3, v4

    int-to-byte v1, v1

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    aget-object p1, p5, v6

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget p2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v1, p3, v6

    int-to-byte v1, v1

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    iget p1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/2addr p1, v4

    iput p1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    return-void
.end method

.method private mpc_LowMC(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;[I[I)V
    .locals 12

    move-object/from16 v1, p4

    array-length v0, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v0, v8}, Lorg/bouncycastle/util/Arrays;->fill([IIII)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v5, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant([II[III)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v1, p0, v8}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v9, v1

    aget-object v1, p2, v9

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    invoke-direct {p0, v1, v1, v10}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    const/4 v2, 0x1

    const/4 v9, 0x1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v9, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, v9}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v2, v11

    aget-object v3, p2, v11

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_substitution([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v2, p0, v11}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v4, v2

    mul-int/lit8 v2, v3, 0x3

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/4 v7, 0x3

    move v4, v3

    move-object/from16 v3, p4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_matrix_mul([II[II[III)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v1, p0, v11}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant([II[III)V

    invoke-direct {p0, v1, v1, v10}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_3
    if-ge p1, v10, :cond_3

    add-int/lit8 v2, p1, 0x3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v2, v3

    aget-object v3, p2, p1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v1, v2, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private mpc_matrix_mul([II[II[III)V
    .locals 9

    const/4 v0, 0x0

    move/from16 v1, p7

    :goto_0
    if-ge v0, v1, :cond_0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v4, v0, v3

    add-int/2addr v4, p2

    mul-int v3, v3, v0

    add-int v6, p4, v3

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v2, p0

    iget v3, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v3, v3, 0x3

    if-ge v1, v3, :cond_0

    add-int/lit8 v9, v1, 0x2

    invoke-static {v0, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v3

    aget v5, p2, v9

    add-int/lit8 v10, v1, 0x1

    invoke-static {v0, v10}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v4

    aget v6, p2, v10

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v11

    aget v12, p2, v1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v13

    move v15, v11

    move v11, v3

    move v3, v4

    move v4, v15

    move v15, v12

    move v12, v5

    move v5, v6

    move v6, v15

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v14

    move v5, v11

    move v11, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v12

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v5

    move v15, v4

    move v4, v3

    move v3, v15

    xor-int v2, v3, v14

    xor-int/2addr v3, v11

    xor-int/2addr v5, v3

    xor-int/2addr v3, v4

    xor-int/2addr v3, v13

    invoke-static {v0, v9, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    invoke-static {v0, v10, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mpc_substitution([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const/4 v7, 0x3

    new-array v1, v7, [I

    new-array v2, v7, [I

    new-array v8, v7, [I

    new-array v3, v7, [I

    new-array v9, v7, [I

    new-array v10, v7, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v4, v4, 0x3

    if-ge v12, v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_0

    add-int/lit8 v5, v4, 0x3

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v5, v5, v13

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v12

    add-int/lit8 v13, v5, 0x2

    invoke-static {v6, v13}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v13

    aput v13, v1, v4

    add-int/lit8 v13, v5, 0x1

    invoke-static {v6, v13}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v13

    aput v13, v2, v4

    invoke-static {v6, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    aput v5, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object/from16 v16, v8

    move-object v8, v1

    move-object v1, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v9

    move-object v9, v3

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object/from16 v16, v8

    move-object v8, v1

    move-object v1, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v10

    move-object v10, v3

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_1

    add-int/lit8 v5, v4, 0x3

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v5, v5, v13

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v12

    add-int/lit8 v13, v5, 0x2

    aget v14, v1, v4

    aget v15, v10, v4

    xor-int/2addr v14, v15

    invoke-static {v6, v13, v14}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v13, v5, 0x1

    aget v14, v1, v4

    aget v15, v8, v4

    xor-int/2addr v14, v15

    aget v15, v3, v4

    xor-int/2addr v14, v15

    invoke-static {v6, v13, v14}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    aget v13, v1, v4

    aget v14, v8, v4

    xor-int/2addr v13, v14

    aget v14, v2, v4

    xor-int/2addr v13, v14

    aget v14, v9, v4

    xor-int/2addr v13, v14

    invoke-static {v6, v5, v13}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x3

    move-object/from16 v16, v8

    move-object v8, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v10

    move-object v10, v3

    move-object v3, v9

    move-object/from16 v9, v16

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private mpc_xor([I[II)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v0, v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v2, p3

    add-int/2addr v2, v1

    aget v3, p1, v2

    aget v4, p2, v1

    xor-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mpc_xor_constant([II[III)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, v0, p2

    aget v2, p1, v1

    add-int v3, v0, p4

    aget v3, p3, v3

    xor-int/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mpc_xor_constant_verify([I[IIII)V
    .locals 4

    const/4 v0, 0x2

    if-nez p5, :cond_0

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 p5, p5, 0x2

    goto :goto_0

    :cond_0
    if-ne p5, v0, :cond_1

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 p5, p5, 0x3

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_1

    add-int v1, v0, p5

    aget v2, p1, v1

    add-int v3, v0, p3

    aget v3, p2, v3

    xor-int/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private picnic_keygen([B[B[BLjava/security/SecureRandom;)V
    .locals 5

    array-length v0, p3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    array-length v1, p1

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    array-length v2, p2

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v3, 0x0

    invoke-static {p3, v3, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    invoke-virtual {p4, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v3, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v1, p4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LowMCEnc([I[I[I)V

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    invoke-static {v1, p1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    invoke-static {v2, p2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method private picnic_read_public_key([I[I[B)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p3, v2, p1, v3, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    invoke-static {p3, v1, p2, v3, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    sub-int/2addr v3, v2

    add-int/lit8 v4, v2, 0x1

    invoke-static {p3, v4, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v4

    aput v4, p1, v0

    add-int/2addr v1, v2

    invoke-static {p3, v1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result p1

    aput p1, p2, v0

    :cond_0
    return-void
.end method

.method private picnic_sign([B[B[B)Z
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v5, v0, 0x2

    const/4 v7, 0x1

    add-int/2addr v5, v7

    div-int/lit8 v0, v0, 0x4

    const/4 v8, 0x0

    invoke-static {p1, v7, v2, v8, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    invoke-static {p1, v1, v3, v8, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    invoke-static {p1, v5, v4, v8, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v6, :cond_0

    mul-int/lit8 v6, v0, 0x4

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    sub-int/2addr v9, v6

    add-int/lit8 v10, v6, 0x1

    invoke-static {p1, v10, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v10

    aput v10, v2, v0

    add-int/2addr v1, v6

    invoke-static {p1, v1, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v1

    aput v1, v3, v0

    add-int/2addr v5, v6

    invoke-static {p1, v5, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result p1

    aput p1, v4, v0

    :cond_0
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->is_picnic3(I)Z

    move-result p1

    const-string v0, "Failed to serialize signature"

    const-string v9, "Failed to create signature"

    if-nez p1, :cond_3

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature;

    invoke-direct {v6, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->sign_picnic1([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature;)I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p1, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8

    :cond_1
    array-length p1, v5

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v6, p3, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->serializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BI)I

    move-result p1

    if-gez p1, :cond_2

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8

    :cond_2
    iput p1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->signatureLength:I

    invoke-static {p1, p3, v8}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return v7

    :cond_3
    move-object v1, p0

    move-object v5, p2

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;

    invoke-direct {v6, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->sign_picnic3([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature2;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p1, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8

    :cond_4
    array-length p1, v5

    add-int/lit8 p1, p1, 0x4

    invoke-direct {p0, v6, p3, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->serializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BI)I

    move-result p1

    if-gez p1, :cond_2

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8
.end method

.method private picnic_verify([B[B[BI)I
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-direct {p0, v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_read_public_key([I[I[B)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->is_picnic3(I)Z

    move-result p1

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    array-length v3, p2

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, p1, p3, p4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->deserializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BII)I

    move-result p3

    if-eqz p3, :cond_0

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Error couldn\'t deserialize signature (2)!"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-direct {p0, p1, v1, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verify_picnic3(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[I[I[B)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    array-length v3, p2

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, p1, p3, p4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->deserializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BII)I

    move-result p3

    if-eqz p3, :cond_2

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Error couldn\'t deserialize signature!"

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v1, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verify(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[I[I[B)I

    move-result p1

    return p1
.end method

.method private picnic_write_private_key([B[B[B[B)I
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v3, p4

    if-ge v3, v1, :cond_0

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Failed writing private key!"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, p4, v4

    invoke-static {p1, v4, p4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v4, p4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 p2, p1, 0x2

    add-int/2addr p2, v2

    invoke-static {p3, v4, p4, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method private picnic_write_public_key([B[B[B)I
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v3, p3

    if-ge v3, v1, :cond_0

    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Failed writing public key!"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, p3, v4

    invoke-static {p1, v4, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v4, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method private serializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BI)I
    .locals 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/16 v1, 0x20

    add-int/2addr v0, v1

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v0, v2

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v3, v4, :cond_2

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v5, v5, v3

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr v0, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v4

    :cond_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v0, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v3, p2

    if-ge v3, v0, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v0, v2, p2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v0, p3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-static {v3, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v3, :cond_6

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr v0, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v4

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v3

    :cond_4
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v0, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v0, p3

    return v0
.end method

.method private setChallenge([BII)V
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    and-int/lit8 v0, p3, 0x1

    int-to-byte v0, v0

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p3, p3, 0x1

    and-int/lit8 p3, p3, 0x1

    int-to-byte p3, p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    return-void
.end method

.method private sign_picnic1([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v9, p5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v8, 0x2

    new-array v2, v8, [I

    const/4 v10, 0x1

    const/4 v3, 0x3

    aput v3, v2, v10

    const/4 v11, 0x0

    aput v1, v2, v11

    const-class v1, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [[Lorg/bouncycastle/pqc/crypto/picnic/View;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v5, v3, [I

    aput v4, v5, v8

    aput v2, v5, v10

    aput v1, v5, v11

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [[[B

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    new-array v4, v3, [I

    aput v2, v4, v8

    aput v3, v4, v10

    aput v1, v4, v11

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [[[B

    invoke-direct/range {p0 .. p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->computeSeeds([I[I[I[B)[B

    move-result-object v2

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v15, v1, v3

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int v1, v1, v15

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/16 v4, 0x20

    invoke-static {v2, v1, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v4, v3, 0x9

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v6, v3, [B

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v4, v5, :cond_5

    aget-object v5, v12, v4

    new-instance v7, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v7, v5, v11

    aget-object v5, v12, v4

    new-instance v7, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v7, v5, v10

    aget-object v5, v12, v4

    new-instance v7, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v7, v5, v8

    const/4 v5, 0x0

    :goto_1
    const-string v7, "createRandomTape failed"

    const/16 v16, -0x1

    if-ge v5, v8, :cond_1

    mul-int v17, v15, v4

    const/16 v18, 0x2

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v8, v8, v5

    add-int v17, v17, v8

    move v8, v3

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/16 v19, 0x1

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v10, v11

    move-object v11, v7

    move v7, v10

    move v10, v8

    move-object v8, v1

    move-object v1, v2

    move/from16 v2, v17

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v2

    move-object v3, v6

    if-nez v2, :cond_0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v16

    :cond_0
    aget-object v2, v12, v4

    aget-object v2, v2, v5

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v6, 0x0

    invoke-static {v3, v6, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v2, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v7, v8, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v7, v7, v5

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v2, v7, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    move-object v2, v1

    move-object v6, v3

    move-object v1, v8

    move v3, v10

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    move-object v8, v1

    move-object v1, v2

    move v10, v3

    move-object v3, v6

    move-object v11, v7

    const/16 v18, 0x2

    const/16 v19, 0x1

    mul-int v2, v15, v4

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    iget-object v7, v8, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v7, v7, v18

    move-object/from16 v17, v6

    move-object v6, v7

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    move/from16 v21, v2

    move v2, v5

    const/4 v5, 0x2

    move/from16 v22, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v12

    move/from16 v12, v21

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v2

    move v6, v4

    if-nez v2, :cond_2

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v16

    :cond_2
    aget-object v2, v17, v6

    aget-object v2, v2, v18

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    aget-object v3, v17, v6

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    aget-object v5, v17, v6

    aget-object v5, v5, v19

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    move-object/from16 v7, p1

    invoke-direct {v0, v2, v7, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    iput v4, v8, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    div-int/lit8 v3, v22, 0x4

    invoke-static {v10, v4, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v2

    aget-object v3, v17, v6

    move-object/from16 v11, p3

    invoke-direct {v0, v8, v3, v11, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_LowMC(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;[I[I)V

    invoke-static {v2, v10, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    const/16 v2, 0x10

    new-array v2, v2, [I

    aget-object v3, v17, v6

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aget-object v4, v17, v6

    aget-object v4, v4, v19

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aget-object v5, v17, v6

    aget-object v5, v5, v18

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object/from16 v4, p2

    invoke-static {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([I[II)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Simulation failed; output does not match public key (round = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v16

    :cond_3
    aget-object v2, v17, v6

    const/16 v20, 0x0

    aget-object v2, v2, v20

    aget-object v3, v13, v6

    aget-object v3, v3, v20

    invoke-direct {v0, v1, v12, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v2, v12

    aget-object v3, v17, v6

    aget-object v3, v3, v19

    aget-object v5, v13, v6

    aget-object v5, v5, v19

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v12

    aget-object v3, v17, v6

    aget-object v3, v3, v18

    aget-object v5, v13, v6

    aget-object v5, v5, v18

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    aget-object v2, v17, v6

    const/16 v20, 0x0

    aget-object v2, v2, v20

    aget-object v5, v14, v6

    aget-object v5, v5, v20

    move-object v4, v2

    move-object v2, v1

    const/4 v1, 0x0

    move v3, v12

    const/16 v19, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    move-object v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int v3, v12, v2

    aget-object v2, v17, v6

    aget-object v4, v2, v19

    aget-object v2, v14, v6

    aget-object v5, v2, v19

    move-object v2, v1

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    move-object v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v12, v2

    aget-object v2, v17, v6

    aget-object v4, v2, v18

    aget-object v2, v14, v6

    aget-object v5, v2, v18

    move-object v2, v1

    const/4 v1, 0x2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    move-object v12, v2

    goto :goto_2

    :cond_4
    move-object v12, v1

    :goto_2
    add-int/lit8 v4, v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v6, v10

    move-object v2, v12

    move-object/from16 v12, v17

    move/from16 v3, v22

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v11, p3

    move-object/from16 v17, v12

    move-object v12, v2

    iget-object v5, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget-object v6, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, p4

    move-object v2, v11

    move-object v4, v13

    move-object v8, v14

    move-object/from16 v3, v17

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->H3([I[I[[Lorg/bouncycastle/pqc/crypto/picnic/View;[[[B[B[B[B[[[B)V

    move-object v10, v8

    move-object v8, v4

    const/4 v11, 0x0

    :goto_3
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v11, v1, :cond_7

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    aget-object v1, v1, v11

    iget-object v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    invoke-virtual {v0, v2, v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v2

    mul-int v4, v15, v11

    aget-object v5, v17, v11

    aget-object v6, v8, v11

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v13, 0x1

    if-eq v3, v13, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    aget-object v3, v10, v11

    :goto_4
    move-object v7, v3

    move-object v3, v12

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->prove(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;I[BI[Lorg/bouncycastle/pqc/crypto/picnic/View;[[B[[B)V

    move-object v1, v3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object v12, v1

    goto :goto_3

    :cond_7
    const/16 v20, 0x0

    return v20
.end method

.method private sign_picnic3([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature2;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/16 v6, 0x20

    add-int/lit8 v7, v1, 0x20

    new-array v1, v7, [B

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->computeSaltAndRootSeed([B[I[I[I[B)V

    invoke-static {v1, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v11, 0x0

    invoke-static {v1, v11, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    new-instance v12, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v12, v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v12, v2, v1, v11}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v6

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v7

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v13, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    new-array v14, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    const/4 v5, 0x0

    :goto_0
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v5, v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v1, v13, v5

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v1, v14, v5

    add-int v2, v5, v7

    aget-object v2, v6, v2

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    aget-object v1, v13, v5

    aget-object v2, v14, v5

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v2

    aget-object v3, v14, v5

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v3

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v2, 0x4

    const/4 v7, 0x2

    new-array v3, v7, [I

    const/4 v15, 0x1

    aput v2, v3, v15

    aput v1, v3, v11

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [[B

    const/16 v1, 0xb0

    new-array v8, v1, [B

    const/4 v1, 0x0

    :goto_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_1

    aget-object v2, v13, v1

    aget-object v3, v16, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->computeAuxTape([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v4, 0x3

    new-array v4, v4, [I

    aput v3, v4, v7

    aput v1, v4, v15

    aput v2, v4, v11

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, [[[B

    const/4 v5, 0x0

    :goto_2
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v5, v1, :cond_3

    const/4 v6, 0x0

    :goto_3
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v2, v1, -0x1

    if-ge v6, v2, :cond_2

    aget-object v1, v17, v5

    aget-object v1, v1, v6

    aget-object v2, v14, v5

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v1, -0x1

    aget-object v1, v13, v5

    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    aget-object v1, v17, v5

    aget-object v1, v1, v6

    aget-object v2, v14, v5

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-array v8, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    new-array v3, v1, [I

    const/4 v9, 0x0

    :goto_4
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v9, v1, :cond_5

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Msg;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v1, v8, v9

    aget-object v1, v16, v9

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v1, v11, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v1, v2, v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    aget-object v2, v13, v9

    aget-object v4, v8, v9

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v2, "MPC simulation failed, aborting signature"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v11

    :cond_4
    aget-object v2, v16, v9

    invoke-static {v1, v2, v11}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v3, v7, [I

    aput v2, v3, v15

    aput v1, v3, v11

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [[B

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v3, v7, [I

    aput v2, v3, v15

    aput v1, v3, v11

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v2, 0x0

    :goto_5
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v2, v3, :cond_6

    aget-object v3, v4, v2

    aget-object v5, v17, v2

    invoke-direct {v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_h([B[[B)V

    aget-object v3, v1, v2

    aget-object v5, v16, v2

    aget-object v6, v8, v2

    invoke-direct {v0, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-direct {v2, v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->buildMerkleTree([[B[B)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    new-array v1, v1, [I

    iput-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    new-array v1, v1, [I

    iput-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v1, v1, [B

    iput-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object v5, v3

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v6, v2, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v6, v6, v11

    move-object v7, v2

    move-object v2, v5

    move-object v5, v6

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v9, p4

    move-object v11, v7

    move-object/from16 v18, v8

    const/16 v19, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->HCP([B[I[I[[B[B[B[I[I[B)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v1, v2

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v2

    new-array v3, v15, [I

    invoke-virtual {v11, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->openMerkleTree([II[I)[B

    move-result-object v1

    iput-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    aget v1, v3, v19

    iput v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v1, v1, v2

    new-array v1, v1, [B

    iput-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v4, v4, v5

    invoke-virtual {v12, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeeds([II[BI)I

    move-result v1

    iput v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    iput-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    const/4 v1, 0x0

    :goto_6
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_9

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v3, v2, v1

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v2

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v3, v3, v2

    filled-new-array {v3}, [I

    move-result-object v3

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v5, v5, v6

    new-array v5, v5, [B

    iput-object v5, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    aget-object v5, v14, v1

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v6, v6, v1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v7, v7, v8

    invoke-virtual {v5, v3, v15, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeeds([II[BI)I

    move-result v3

    iput v3, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    sub-int/2addr v3, v15

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v4, v4, v2

    if-eq v4, v3, :cond_7

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    aget-object v4, v13, v1

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    :cond_7
    aget-object v3, v16, v1

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v18, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v4, v4, v2

    aget-object v3, v3, v4

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v17, v1

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v2, v4, v2

    aget-object v2, v3, v2

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    :goto_7
    add-int/lit8 v1, v1, 0x1

    const/16 v19, 0x0

    goto/16 :goto_6

    :cond_9
    return v15
.end method

.method private simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I
    .locals 6

    const/16 v0, 0x10

    new-array v1, v0, [I

    new-array v0, v0, [I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v1, p1, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-virtual {p0, v0, v1, p5, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    const/4 p5, 0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt p5, v2, :cond_0

    invoke-direct {p0, p3, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->tapesToWords([ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    invoke-direct {p0, v0, p3, p2, p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v4, p5, -0x1

    invoke-virtual {v2, p0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v0, v0, v5, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v0, v0, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, p5}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v1, p1, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-virtual {p0, v0, v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v0, p6, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([I[II)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    return v3
.end method

.method private static subarrayEquals([B[BI)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_3

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private static subarrayEquals([I[II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_3

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget v2, p0, v0

    aget v3, p1, v0

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private substitution([I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v4

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    and-int v6, v4, v5

    xor-int/2addr v6, v2

    invoke-static {p1, v1, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    xor-int v1, v2, v4

    and-int v6, v2, v5

    xor-int/2addr v6, v1

    invoke-static {p1, v3, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    xor-int/2addr v1, v5

    and-int/2addr v2, v4

    xor-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tapesToWords([ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateDigest([I[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    return-void
.end method

.method private verify(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[I[I[B)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v11, 0x3

    new-array v4, v11, [I

    const/4 v12, 0x2

    aput v3, v4, v12

    const/4 v13, 0x1

    aput v2, v4, v13

    const/4 v14, 0x0

    aput v1, v4, v14

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [[[B

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    new-array v3, v11, [I

    aput v2, v3, v12

    aput v11, v3, v13

    aput v1, v3, v14

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [[[B

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    new-array v3, v11, [I

    aput v2, v3, v12

    aput v11, v3, v13

    aput v1, v3, v14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, [[[I

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v4, v3, 0x6

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v7, v3, [B

    new-instance v9, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v4, v3, [Lorg/bouncycastle/pqc/crypto/picnic/View;

    new-array v3, v3, [Lorg/bouncycastle/pqc/crypto/picnic/View;

    const/4 v6, 0x0

    :goto_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v18, -0x1

    const-string v8, "Invalid signature. Did not verify"

    if-ge v6, v5, :cond_3

    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v5, v4, v6

    move-object v5, v3

    new-instance v3, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v3, v5, v6

    move-object/from16 v19, v1

    aget-object v1, v19, v6

    aget-object v20, v4, v6

    move-object/from16 v21, v4

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v4

    move-object/from16 v22, v5

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object v11, v2

    move-object v12, v8

    move-object/from16 v2, v20

    const/16 v20, 0x3

    const/16 v23, 0x2

    move-object/from16 v8, p3

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verifyProof(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;I[BI[B[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v18

    :cond_0
    invoke-virtual {v0, v11, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v1

    aget-object v2, v19, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    aget-object v3, v21, v6

    aget-object v4, v15, v6

    aget-object v4, v4, v1

    invoke-direct {v0, v2, v14, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    aget-object v2, v19, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    aget-object v3, v22, v6

    aget-object v4, v15, v6

    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v8, v5, 0x3

    aget-object v4, v4, v8

    invoke-direct {v0, v2, v14, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    aget-object v2, v19, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    aget-object v3, v15, v6

    add-int/lit8 v4, v1, 0x2

    rem-int/lit8 v12, v4, 0x3

    aget-object v3, v3, v12

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v2, v14, v3, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v2, v13, :cond_2

    aget-object v2, v19, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    aget-object v4, v21, v6

    aget-object v3, v16, v6

    aget-object v5, v3, v1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    move/from16 v18, v1

    aget-object v0, v19, v6

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    aget-object v4, v22, v6

    aget-object v0, v16, v6

    aget-object v5, v0, v8

    move-object/from16 v0, p0

    move v1, v8

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    if-nez v18, :cond_1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_2

    :cond_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    :goto_2
    aget-object v3, v19, v6

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    aget-object v4, v16, v6

    aget-object v4, v4, v12

    invoke-static {v3, v14, v4, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_2
    move/from16 v18, v1

    move v1, v8

    :goto_3
    aget-object v2, v17, v6

    aget-object v3, v21, v6

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aput-object v3, v2, v18

    aget-object v2, v17, v6

    aget-object v3, v22, v6

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aput-object v3, v2, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v1, v1, [I

    aget-object v2, v21, v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aget-object v3, v22, v6

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    aget-object v2, v17, v6

    aput-object v1, v2, v12

    add-int/lit8 v6, v6, 0x1

    move-object v2, v11

    move-object/from16 v1, v19

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    const/4 v11, 0x3

    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_3
    move-object/from16 v4, p2

    move-object v11, v2

    move-object v12, v8

    const/16 v23, 0x2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v1

    new-array v5, v1, [B

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    move-object v1, v4

    move-object v4, v15

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->H3([I[I[[[I[[[B[B[B[B[[[B)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v1

    invoke-static {v11, v5, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([B[BI)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    return v14
.end method

.method private verify_picnic3(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[I[I[B)I
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x1

    aput v2, v4, v3

    const/4 v7, 0x0

    aput v1, v4, v7

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[[B

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v4, v5, [I

    aput v2, v4, v3

    aput v1, v4, v7

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[B

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v4, v5, [I

    aput v2, v4, v3

    aput v1, v4, v7

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [[B

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v12, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    new-instance v13, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-direct {v13, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    const/16 v1, 0x40

    new-array v14, v1, [B

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v15, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    new-array v6, v1, [Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v1, v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    const/16 v23, 0x1

    iget v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    iget-object v7, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v20, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->reconstructSeeds([II[BI[BI)I

    move-result v1

    move-object/from16 v2, v16

    const/16 v16, -0x1

    if-eqz v1, :cond_0

    return v16

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v3, :cond_3

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v3, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v3, v15, v1

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v4

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v3, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    move v3, v1

    goto :goto_3

    :cond_1
    new-instance v3, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v3, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v3, v15, v1

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v3

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v3, v4, v3

    filled-new-array {v3}, [I

    move-result-object v26

    aget-object v25, v15, v1

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v1

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/16 v27, 0x1

    move/from16 v31, v1

    move-object/from16 v28, v3

    move/from16 v29, v4

    move-object/from16 v30, v5

    invoke-virtual/range {v25 .. v31}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->reconstructSeeds([II[BI[BI)I

    move-result v1

    move/from16 v3, v31

    if-eqz v1, :cond_2

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to reconstruct seeds for round "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v16

    :cond_2
    :goto_3
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_3
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v7, v1, -0x1

    const/16 v1, 0xb0

    new-array v1, v1, [B

    const/4 v5, 0x0

    :goto_4
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v3, 0x0

    if-ge v5, v2, :cond_9

    move-object v2, v1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v1, v6, v5

    aget-object v4, v15, v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v4

    aget-object v17, v15, v5

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v17

    move-object/from16 v18, v2

    move-object v2, v4

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v19, v9

    move-object v9, v3

    move/from16 v3, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v1

    if-nez v1, :cond_5

    aget-object v1, v6, v5

    invoke-virtual {v1, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->computeAuxTape([B)V

    move-object v1, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v7, :cond_4

    aget-object v2, v19, v5

    aget-object v2, v2, v6

    aget-object v3, v15, v5

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v3

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    const/4 v3, 0x0

    move-object v9, v4

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v18, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    goto :goto_5

    :cond_4
    move-object/from16 v18, v1

    aget-object v1, v18, v5

    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    aget-object v1, v19, v5

    aget-object v1, v1, v7

    aget-object v2, v15, v5

    invoke-virtual {v2, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move v6, v7

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    goto :goto_8

    :cond_5
    move-object/from16 v18, v6

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v2

    aget v9, v1, v2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v7, :cond_7

    if-eq v6, v9, :cond_6

    aget-object v1, v19, v5

    aget-object v1, v1, v6

    aget-object v2, v15, v5

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_7
    if-eq v7, v9, :cond_8

    aget-object v0, v19, v5

    aget-object v1, v0, v7

    aget-object v0, v15, v5

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v2

    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v0, v0, v5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    :goto_7
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v1, v1, v5

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    aget-object v2, v19, v5

    aget-object v2, v2, v9

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8
    add-int/lit8 v5, v5, 0x1

    move-object v1, v8

    move-object/from16 v9, v17

    move-object/from16 v6, v18

    move-object/from16 v8, v19

    goto/16 :goto_4

    :cond_9
    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v17, v9

    move-object v9, v3

    const/4 v1, 0x0

    :goto_9
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v1, v2, :cond_a

    aget-object v2, v17, v1

    aget-object v3, v19, v1

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_h([B[[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    new-array v3, v1, [I

    const/4 v8, 0x0

    :goto_a
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v8, v1, :cond_e

    new-instance v1, Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Msg;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v1, v12, v8

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {v0, v1, v2, v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v2, v4, v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v7, :cond_b

    aget-object v2, v18, v8

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v8

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->setAuxBits([B)V

    :cond_b
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v2, v2, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    aget-object v4, v12, v8

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v4, v4, v1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, v18, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v1

    invoke-static {v2, v6}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    aget-object v2, v12, v8

    iput v1, v2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v2, v2, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v8

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    array-length v4, v4

    const/4 v6, 0x0

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v4, v2, [I

    invoke-static {v1, v6, v4, v6, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    aget-object v2, v18, v8

    move-object v1, v4

    aget-object v4, v12, v8

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MPC simulation failed for round "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", signature invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    aget-object v1, v11, v8

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v2, v2, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    aget-object v4, v12, v8

    invoke-direct {v0, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    goto :goto_b

    :cond_d
    aput-object v9, v11, v8

    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a

    :cond_e
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v1, v2

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v2

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget v4, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-virtual {v13, v2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->addMerkleNodes([II[BI)I

    move-result v1

    if-eqz v1, :cond_f

    return v16

    :cond_f
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v13, v11, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->verifyMerkleTree([[B[B)I

    move-result v11

    if-eqz v11, :cond_10

    return v16

    :cond_10
    iget-object v1, v13, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    const/16 v24, 0x0

    aget-object v5, v1, v24

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v1, v14

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->HCP([B[I[I[[B[B[B[I[I[B)V

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([B[BI)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Challenge does not match, signature invalid"

    goto/16 :goto_2

    :cond_11
    return v11
.end method

.method private wordToMsgs(ILorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit(II)I

    move-result v1

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v2, v2, v0

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p1, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    return-void
.end method

.method private xor_three([I[I[I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    aget v2, p3, v0

    xor-int/2addr v1, v2

    aget v2, p4, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected aux_mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v4

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    invoke-static {p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v1

    invoke-static {p2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v3

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v6

    xor-int/2addr v6, v2

    xor-int/2addr v6, v4

    xor-int/2addr v6, v5

    xor-int/2addr v1, v2

    xor-int/2addr v3, v2

    xor-int/2addr v3, v4

    invoke-direct {p0, v2, v4, v6, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    invoke-direct {p0, v4, v5, v1, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    invoke-direct {p0, v5, v2, v3, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public crypto_sign([B[B[B)V
    .locals 2

    invoke-direct {p0, p3, p2, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_sign([B[B[B)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x4

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public crypto_sign_keypair([B[BLjava/security/SecureRandom;)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    mul-int/lit8 v2, v0, 0x4

    new-array v2, v2, [B

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p0, v1, v2, v0, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_keygen([B[B[BLjava/security/SecureRandom;)V

    invoke-direct {p0, v2, v1, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_write_public_key([B[B[B)I

    invoke-direct {p0, v0, v2, v1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_write_private_key([B[B[B[B)I

    return-void
.end method

.method public crypto_sign_open([B[B[B)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    array-length v2, p1

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static {p2, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {p0, p3, v2, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_verify([B[B[BI)I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    return v0

    :cond_0
    array-length p3, p1

    invoke-static {p2, v3, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method getChallenge([BI)I
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getCrumbAligned([BI)B

    move-result p1

    return p1
.end method

.method public getPublicKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    return v0
.end method

.method public getSecretKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    return v0
.end method

.method public getSignatureSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getTrueSignatureSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->signatureLength:I

    return v0
.end method

.method protected matrix_mul([I[I[II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    return-void
.end method

.method protected matrix_mul_offset([II[II[II)V
    .locals 10

    const/16 v0, 0x10

    new-array v0, v0, [I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    div-int/lit8 v4, v2, 0x20

    mul-int/lit8 v1, v1, 0x20

    sub-int/2addr v1, v2

    const/4 v2, -0x1

    ushr-int/2addr v2, v1

    const v5, 0x55555555

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v2

    const v5, 0x33333333

    const/4 v6, 0x2

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v2

    const v5, 0xf0f0f0f

    const/4 v6, 0x4

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    if-ge v5, v6, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v8, v8, v5

    add-int/2addr v8, v6

    add-int v9, p4, v6

    aget v9, p3, v9

    add-int v8, p6, v8

    aget v8, p5, v8

    and-int/2addr v8, v9

    xor-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v6, v6, v5

    add-int/2addr v6, v4

    add-int v8, p4, v4

    aget v8, p3, v8

    add-int v6, p6, v6

    aget v6, p5, v6

    and-int/2addr v6, v8

    and-int/2addr v6, v2

    xor-int/2addr v7, v6

    :cond_1
    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity32(I)I

    move-result v6

    invoke-static {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v0, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 6

    iget-object v0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v0

    iget-object v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v4, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v2

    aget v4, p1, v1

    aget p1, p1, v3

    aget v5, p2, v1

    aget p2, p2, v3

    and-int/2addr p2, v4

    and-int/2addr p1, v5

    xor-int/2addr p1, p2

    and-int p2, v4, v5

    xor-int/2addr p1, p2

    xor-int/2addr p1, v0

    xor-int/2addr p1, v2

    aput p1, p3, v1

    iget-object p1, p5, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget p2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget p5, p3, v1

    int-to-byte p5, p5

    invoke-static {p1, p2, p5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    iget-object p1, p6, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget p2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result p1

    aput p1, p3, v3

    iget p1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/2addr p1, v3

    iput p1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    return-void
.end method

.method mpc_LowMC_verify(Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/Tape;[I[II)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    array-length v2, v3

    const/4 v10, 0x0

    invoke-static {v3, v10, v2, v10}, Lorg/bouncycastle/util/Arrays;->fill([IIII)V

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v2, p0

    move-object/from16 v4, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant_verify([I[IIII)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v3, p0, v10}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v9

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    const/4 v11, 0x2

    invoke-direct {p0, v3, v3, v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    const/4 v4, 0x1

    const/4 v12, 0x1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v12, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v4, p0, v12}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v9

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v8

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    move-object/from16 v13, p3

    invoke-virtual {p0, v3, v13, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_substitution_verify([ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v4, p0, v14}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v6, v4

    mul-int/lit8 v4, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v8

    const/4 v9, 0x2

    move v6, v5

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_matrix_mul([II[II[III)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v3, p0, v14}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object/from16 v3, p4

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant_verify([I[IIII)V

    invoke-direct {p0, v3, v3, v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v4, v4, 0x2

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v3, v4, v0, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v3, v0, v1, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method mpc_substitution_verify([ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v8, 0x2

    new-array v1, v8, [I

    new-array v2, v8, [I

    new-array v9, v8, [I

    new-array v3, v8, [I

    new-array v10, v8, [I

    new-array v11, v8, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v4, v4, 0x3

    if-ge v13, v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_0

    add-int/lit8 v5, v4, 0x2

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v5, v5, v6

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v13

    add-int/lit8 v6, v5, 0x2

    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v6

    aput v6, v1, v4

    add-int/lit8 v6, v5, 0x1

    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v6

    aput v6, v2, v4

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    aput v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object/from16 v16, v9

    move-object v9, v1

    move-object v1, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v10

    move-object v10, v3

    move-object/from16 v3, v16

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object/from16 v16, v9

    move-object v9, v1

    move-object v1, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v11

    move-object v11, v3

    move-object/from16 v3, v16

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_1

    add-int/lit8 v5, v4, 0x2

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v5, v5, v6

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v13

    add-int/lit8 v6, v5, 0x2

    aget v14, v1, v4

    aget v15, v11, v4

    xor-int/2addr v14, v15

    invoke-static {v7, v6, v14}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v6, v5, 0x1

    aget v14, v1, v4

    aget v15, v9, v4

    xor-int/2addr v14, v15

    aget v15, v3, v4

    xor-int/2addr v14, v15

    invoke-static {v7, v6, v14}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    aget v6, v1, v4

    aget v14, v9, v4

    xor-int/2addr v6, v14

    aget v14, v2, v4

    xor-int/2addr v6, v14

    aget v14, v10, v4

    xor-int/2addr v6, v14

    invoke-static {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v13, 0x3

    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v11

    move-object v11, v3

    move-object v3, v10

    move-object/from16 v10, v16

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method prove(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;I[BI[Lorg/bouncycastle/pqc/crypto/picnic/View;[[B[[B)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, p4, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr p4, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, p4, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v3, p4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr p4, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, p4, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_6

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, p4, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_3

    :cond_2
    aget-object p3, p5, v1

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget-object p4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {p3, v2, p4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    add-int/lit8 p3, p2, 0x1

    rem-int/lit8 p3, p3, 0x3

    aget-object p3, p5, p3

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget-object p4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {p3, v2, p4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p2, 0x2

    rem-int/lit8 p3, p3, 0x3

    aget-object p4, p6, p3

    iget-object p5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget p6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {p4, v2, p5, v2, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne p4, v0, :cond_5

    if-nez p2, :cond_4

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_1

    :cond_4
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    :goto_1
    aget-object p3, p7, p3

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {p3, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-void

    :cond_6
    sget-object p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Invalid challenge"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "challenge"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method serializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BI)I
    .locals 9

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    const/16 v4, 0x20

    add-int/2addr v2, v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v6, v7

    mul-int v6, v6, v5

    add-int/2addr v2, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    mul-int v6, v6, v5

    add-int/2addr v2, v6

    :cond_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    if-ge v6, v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v1, v5, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    add-int/2addr v2, p3

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    invoke-static {p1, v5, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    const/4 p1, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge p1, v4, :cond_6

    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v4

    aget-object v6, v0, p1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v6, v5, p2, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v2, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto :goto_1

    :cond_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    :goto_1
    aget-object v8, v0, p1

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {v8, v5, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v6

    :cond_3
    aget-object v6, v0, p1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v6, v5, p2, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v6

    aget-object v6, v0, p1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v6, v5, p2, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v2, v6

    aget-object v6, v0, p1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v6, v5, p2, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v2, v6

    if-eq v4, v7, :cond_4

    if-ne v4, v3, :cond_5

    :cond_4
    aget-object v4, v0, p1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v4, v5, v6, p2, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v2, v4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    sub-int/2addr v2, p3

    return v2
.end method

.method verifyProof(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;I[BI[B[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p9

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v13, 0x0

    invoke-static {v1, v13, v2, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v13, v12, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    const/4 v14, 0x1

    if-eqz v11, :cond_7

    if-eq v11, v14, :cond_4

    const/4 v1, 0x2

    if-eq v11, v1, :cond_0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Invalid Challenge!"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object/from16 v6, p7

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget-object v2, v12, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v6, v2, v13

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v2, v13, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_1

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v2, v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v6, p7

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v6, v13, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v3, v12, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v3, v3, v14

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v6, v2, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    :cond_4
    move-object/from16 v6, p7

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v2, v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    move-object v15, v6

    iget-object v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v15, v13, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v3, v12, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v3, v3, v13

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v15, v2, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_5

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget-object v2, v12, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v6, v2, v14

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v2, v13, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    move-object v6, v15

    goto :goto_4

    :cond_7
    move-object/from16 v15, p7

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v2, v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object v6, v15

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    iget-object v2, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v6, v13, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v3, v12, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v3, v3, v13

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v6, v2, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_8

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v7, v2, v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v6, v13, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget-object v3, v12, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v3, v3, v14

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v6, v2, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-nez v1, :cond_a

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Failed to generate random tapes, signature verification will fail (but signature may actually be valid)"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v13

    :cond_a
    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    array-length v1, v6

    div-int/lit8 v1, v1, 0x4

    invoke-static {v6, v13, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v4

    move-object/from16 v5, p8

    move-object v1, v9

    move-object v2, v10

    move v6, v11

    move-object v3, v12

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_LowMC_verify(Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/Tape;[I[II)V

    return v14
.end method

.method protected xor_array([I[I[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    add-int v2, v0, p4

    aget v2, p3, v2

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
