.class Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    }
.end annotation


# instance fields
.field final ACCESS_last_equations8:I

.field Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

.field Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

.field final ENABLED_REMOVE_ODD_DEGREE:Z

.field final HFEDELTA:I

.field final HFEDeg:I

.field final HFEDegI:I

.field final HFEDegJ:I

.field final HFENr8:I

.field final HFENr8c:I

.field HFE_odd_degree:I

.field final HFEm:I

.field final HFEmq:I

.field final HFEmq8:I

.field final HFEmr:I

.field final HFEmr8:I

.field final HFEn:I

.field HFEn1h_rightmost:I

.field HFEn_1rightmost:I

.field final HFEnq:I

.field final HFEnr:I

.field final HFEnv:I

.field final HFEnvq:I

.field final HFEnvr:I

.field final HFEnvr8:I

.field final HFEv:I

.field final HFEvq:I

.field final HFEvr:I

.field II:I

.field KP:I

.field KX:I

.field final LEN_UNROLLED_64:I

.field final LOST_BITS:I

.field LTRIANGULAR_NV_SIZE:I

.field final LTRIANGULAR_N_SIZE:I

.field final MASK_GF2m:J

.field final MASK_GF2n:J

.field final MATRIXn_SIZE:I

.field final MATRIXnv_SIZE:I

.field final MLv_GFqn_SIZE:I

.field MQv_GFqn_SIZE:I

.field final NB_BITS_UINT:I

.field final NB_BYTES_EQUATION:I

.field final NB_BYTES_GFqm:I

.field final NB_BYTES_GFqn:I

.field final NB_BYTES_GFqnv:I

.field NB_COEFS_HFEPOLY:I

.field final NB_ITE:I

.field NB_MONOMIAL_PK:I

.field NB_MONOMIAL_VINEGAR:I

.field NB_UINT_HFEVPOLY:I

.field NB_WORD_GF2m:I

.field NB_WORD_GF2nv:I

.field final NB_WORD_GF2nvm:I

.field NB_WORD_GFqn:I

.field final NB_WORD_GFqv:I

.field NB_WORD_MMUL:I

.field final NB_WORD_MUL:I

.field final NB_WORD_UNCOMP_EQ:I

.field POW_II:I

.field final SIZE_DIGEST:I

.field final SIZE_DIGEST_UINT:I

.field final SIZE_ROW:I

.field final SIZE_SEED_SK:I

.field final SIZE_SIGN_UNCOMPRESSED:I

.field final Sha3BitStrength:I

.field final ShakeBitStrength:I

.field final VAL_BITS_M:I

.field private buffer:I

.field mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

.field private random:Ljava/security/SecureRandom;

.field rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

.field sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v9, 0x40

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BITS_UINT:I

    const/4 v10, 0x4

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LEN_UNROLLED_64:I

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    ushr-int/lit8 v11, v2, 0x3

    and-int/lit8 v12, v2, 0x7

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    add-int/2addr v11, v12

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int v12, v2, v3

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    ushr-int/lit8 v15, v2, 0x6

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    const/16 v16, 0x40

    and-int/lit8 v9, v2, 0x3f

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    ushr-int/lit8 v10, v12, 0x6

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    and-int/lit8 v13, v12, 0x3f

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    const/16 v27, 0x1

    ushr-int/lit8 v14, v1, 0x3

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    add-int/lit8 v14, v2, -0x1

    shl-int/lit8 v19, v14, 0x1

    const/4 v3, 0x6

    ushr-int/lit8 v19, v19, 0x6

    add-int/lit8 v3, v19, 0x1

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    const/16 v4, 0x9

    const/4 v5, 0x6

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_4

    const/16 v5, 0x11

    if-eq v3, v5, :cond_3

    const/16 v5, 0xc

    if-eq v3, v5, :cond_2

    const/16 v5, 0xd

    if-eq v3, v5, :cond_1

    goto :goto_2

    :cond_1
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;-><init>()V

    goto :goto_1

    :cond_5
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;-><init>()V

    :goto_1
    iput-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    :goto_2
    rsub-int/lit8 v5, v9, 0x40

    sub-int v4, v2, p4

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    move/from16 v24, v4

    ushr-int/lit8 v4, v24, 0x6

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    move/from16 v25, v4

    and-int/lit8 v4, v24, 0x3f

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    move/from16 v26, v4

    ushr-int/lit8 v4, p3, 0x6

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    move/from16 v28, v4

    and-int/lit8 v4, p3, 0x3f

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    if-eqz v4, :cond_6

    add-int/lit8 v4, v28, 0x1

    goto :goto_3

    :cond_6
    move/from16 v4, v28

    :goto_3
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    ushr-int/lit8 v4, v24, 0x3

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    move/from16 v28, v4

    and-int/lit8 v4, v24, 0x7

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v4, :cond_7

    const/16 v24, 0x1

    goto :goto_4

    :cond_7
    const/16 v24, 0x0

    :goto_4
    move/from16 v29, v4

    add-int v4, v28, v24

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    add-int/lit8 v4, v10, 0x1

    mul-int v4, v4, v10

    ushr-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x40

    add-int/lit8 v24, v10, 0x1

    mul-int v24, v24, v13

    add-int v4, v4, v24

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    and-int/lit8 v4, v12, 0x7

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    ushr-int/lit8 v24, v12, 0x3

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    add-int v4, v24, v4

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    add-int v4, p4, p3

    move/from16 v24, v5

    rsub-int/lit8 v5, v29, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    invoke-static/range {v26 .. v26}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->maskUINT(I)J

    move-result-wide v4

    iput-wide v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->maskUINT(I)J

    move-result-wide v4

    iput-wide v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    if-eqz v9, :cond_9

    const/16 v30, 0x1

    goto :goto_6

    :cond_9
    const/16 v30, 0x0

    :goto_6
    move-wide/from16 v31, v4

    add-int v4, v15, v30

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v5, v15, 0x1

    mul-int v15, v15, v5

    ushr-int/lit8 v5, v15, 0x1

    mul-int/lit8 v5, v5, 0x40

    mul-int v15, v4, v9

    add-int/2addr v5, v15

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    mul-int v5, v2, v4

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXn_SIZE:I

    if-eqz v13, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    add-int/2addr v5, v10

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    mul-int v15, v12, v5

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    add-int/lit8 v15, v10, 0x1

    mul-int v10, v10, v15

    ushr-int/lit8 v10, v10, 0x1

    mul-int/lit8 v10, v10, 0x40

    mul-int v13, v13, v5

    add-int/2addr v10, v13

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    add-int/lit8 v10, p3, 0x1

    mul-int v13, p3, v10

    ushr-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    add-int/lit8 v15, v12, 0x1

    mul-int v12, v12, v15

    ushr-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v12, 0x1

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    mul-int v13, v13, v4

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    mul-int v4, v15, v28

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    const/16 v4, 0x8

    add-int/2addr v12, v4

    const/4 v13, 0x3

    ushr-int/2addr v12, v13

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    and-int/lit8 v12, v15, 0x7

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    rsub-int/lit8 v12, v12, 0x8

    and-int/lit8 v12, v12, 0x7

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8c:I

    add-int/lit8 v15, v29, -0x1

    mul-int v15, v15, v12

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MMUL:I

    const/16 v12, 0xae

    const/16 v4, 0x166

    const/16 v15, 0x162

    const/16 v30, 0x2

    const/16 v13, 0x80

    if-eq v2, v12, :cond_1a

    const/16 v12, 0xaf

    if-eq v2, v12, :cond_19

    const/16 v12, 0xb1

    if-eq v2, v12, :cond_18

    const/16 v12, 0xb2

    if-eq v2, v12, :cond_17

    const/16 v12, 0x109

    if-eq v2, v12, :cond_16

    const/16 v12, 0x10a

    if-eq v2, v12, :cond_15

    const/16 v12, 0x10c

    if-eq v2, v12, :cond_14

    if-eq v2, v15, :cond_13

    if-eq v2, v4, :cond_12

    const/16 v12, 0x16c

    if-eq v2, v12, :cond_11

    const/16 v12, 0x16e

    if-eq v2, v12, :cond_10

    const/16 v12, 0x192

    if-eq v2, v12, :cond_f

    const/16 v12, 0x219

    if-eq v2, v12, :cond_e

    const/16 v12, 0x220

    if-eq v2, v12, :cond_d

    const/16 v12, 0x10e

    if-eq v2, v12, :cond_c

    const/16 v12, 0x10f

    if-ne v2, v12, :cond_b

    const/16 v12, 0x3a

    goto :goto_9

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: need to add support for HFEn="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    const/16 v12, 0x35

    goto :goto_9

    :cond_d
    const/16 v12, 0x80

    const/16 v18, 0x3

    goto :goto_8

    :cond_e
    const/16 v12, 0xa

    const/16 v18, 0x2

    :goto_8
    const/16 v19, 0x1

    goto :goto_a

    :cond_f
    const/16 v12, 0xab

    goto :goto_9

    :cond_10
    const/16 v12, 0x1d

    goto :goto_9

    :cond_11
    const/16 v12, 0x9

    goto :goto_9

    :cond_12
    const/16 v12, 0x39

    goto :goto_9

    :cond_13
    const/16 v12, 0x63

    goto :goto_9

    :cond_14
    const/16 v12, 0x19

    goto :goto_9

    :cond_15
    const/16 v12, 0x2f

    goto :goto_9

    :cond_16
    const/16 v12, 0x2a

    goto :goto_9

    :cond_17
    const/16 v12, 0x1f

    goto :goto_9

    :cond_18
    const/16 v12, 0x8

    goto :goto_9

    :cond_19
    const/16 v12, 0x10

    goto :goto_9

    :cond_1a
    const/16 v12, 0xd

    :goto_9
    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_a
    const/16 v33, 0x0

    if-eqz v18, :cond_1b

    rsub-int/lit8 v34, v19, 0x40

    rsub-int/lit8 v35, v18, 0x40

    goto :goto_b

    :cond_1b
    const/16 v34, 0x0

    const/16 v35, 0x0

    :goto_b
    and-int/lit8 v36, v12, 0x3f

    rsub-int/lit8 v36, v36, 0x40

    and-int/lit8 v37, v6, 0x1

    if-nez v37, :cond_1f

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    shl-int v27, v4, v7

    add-int/lit8 v15, v27, 0x1

    iput v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-nez v37, :cond_1e

    if-gt v15, v6, :cond_1d

    if-le v15, v4, :cond_1c

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v15, v7, -0x1

    mul-int v15, v15, v7

    ushr-int/2addr v15, v4

    add-int/2addr v8, v15

    add-int/2addr v8, v7

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    const/4 v4, 0x0

    goto :goto_c

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The case where the term X^3 is removing is not implemented."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "It is useless to remove 0 term."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HFEDeg is odd, so to remove the leading term would decrease the degree."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    const/4 v4, 0x0

    iput-boolean v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    add-int/lit8 v8, v8, 0x2

    mul-int v7, v7, v11

    const/16 v27, 0x1

    ushr-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v7

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    :goto_c
    if-eqz v26, :cond_20

    const/4 v7, 0x1

    goto :goto_d

    :cond_20
    const/4 v7, 0x0

    :goto_d
    add-int v7, v25, v7

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int v7, v5, v7

    if-eqz v26, :cond_21

    const/4 v8, 0x1

    goto :goto_e

    :cond_21
    const/4 v8, 0x0

    :goto_e
    add-int/2addr v7, v8

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    const/16 v27, 0x1

    add-int/lit8 v8, p5, -0x1

    mul-int v8, v8, v7

    add-int/2addr v5, v8

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    const/16 v5, 0x20

    const/16 v7, 0x100

    if-gt v1, v13, :cond_22

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    const/4 v1, 0x4

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    goto :goto_10

    :cond_22
    const/16 v8, 0xc0

    if-gt v1, v8, :cond_23

    const/16 v1, 0x30

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    const/4 v1, 0x6

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    const/16 v1, 0x180

    goto :goto_f

    :cond_23
    const/16 v1, 0x40

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    const/16 v1, 0x8

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    const/16 v1, 0x200

    :goto_f
    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    :goto_10
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    invoke-direct {v1, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    const/16 v27, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v1, v8

    mul-int v11, v11, p3

    add-int/2addr v1, v11

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v8

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    mul-int v10, v10, v8

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    const/16 v1, 0x22

    if-le v6, v1, :cond_24

    const/16 v1, 0xc4

    if-le v2, v1, :cond_27

    if-ge v6, v7, :cond_27

    :cond_24
    const/16 v1, 0x11

    if-ne v6, v1, :cond_25

    const/4 v1, 0x4

    goto :goto_11

    :cond_25
    const/4 v1, 0x6

    :goto_11
    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    const/16 v27, 0x1

    shl-int v8, v27, v1

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    ushr-int v1, v6, v1

    rem-int v8, v6, v8

    if-eqz v8, :cond_26

    const/4 v4, 0x1

    :cond_26
    add-int/2addr v1, v4

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    sub-int v1, v6, v1

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KX:I

    :cond_27
    if-eqz v18, :cond_29

    const/16 v1, 0x220

    if-ne v2, v1, :cond_28

    if-ne v12, v13, :cond_28

    new-instance v16, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;

    move/from16 v17, v19

    move/from16 v20, v24

    move-wide/from16 v23, v31

    move/from16 v21, v34

    move/from16 v22, v35

    move/from16 v19, v9

    invoke-direct/range {v16 .. v24}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;-><init>(IIIIIIJ)V

    goto :goto_12

    :cond_28
    move/from16 v30, v18

    move/from16 v17, v19

    move/from16 v19, v24

    move-wide/from16 v21, v31

    move/from16 v33, v34

    move/from16 v23, v35

    move/from16 v18, v9

    new-instance v16, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;

    move/from16 v20, v18

    move-wide/from16 v25, v21

    move/from16 v18, v30

    move/from16 v22, v33

    move/from16 v24, v36

    move/from16 v21, v19

    move/from16 v19, v12

    invoke-direct/range {v16 .. v26}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;-><init>(IIIIIIIIJ)V

    :goto_12
    move-object/from16 v1, v16

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    goto/16 :goto_13

    :cond_29
    move/from16 v18, v9

    move/from16 v19, v24

    move-wide/from16 v25, v31

    move/from16 v24, v36

    if-le v2, v7, :cond_2a

    const/16 v1, 0x121

    if-ge v2, v1, :cond_2a

    if-le v12, v5, :cond_2a

    const/16 v1, 0x40

    if-ge v12, v1, :cond_2a

    new-instance v16, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;

    move/from16 v17, v12

    move/from16 v20, v24

    move-wide/from16 v21, v25

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_12

    :cond_2a
    move/from16 v17, v12

    const/16 v1, 0x162

    if-ne v2, v1, :cond_2b

    new-instance v16, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;

    move/from16 v20, v24

    move-wide/from16 v21, v25

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_12

    :cond_2b
    const/16 v1, 0x166

    if-ne v2, v1, :cond_2c

    new-instance v16, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;

    move/from16 v20, v24

    move-wide/from16 v21, v25

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_12

    :cond_2c
    const/16 v12, 0x192

    if-ne v2, v12, :cond_2d

    new-instance v16, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;

    move/from16 v20, v24

    move-wide/from16 v21, v25

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_12

    :cond_2d
    move/from16 v20, v24

    const/4 v1, 0x6

    if-eq v3, v1, :cond_30

    const/16 v1, 0x9

    if-eq v3, v1, :cond_2f

    const/16 v5, 0xc

    if-eq v3, v5, :cond_2e

    goto :goto_13

    :cond_2e
    new-instance v16, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;

    move-wide/from16 v21, v25

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_12

    :cond_2f
    move-wide/from16 v21, v25

    new-instance v16, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_12

    :cond_30
    move-wide/from16 v21, v25

    new-instance v16, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    goto :goto_12

    :goto_13
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/16 v1, 0x1f

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    :goto_14
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    ushr-int v4, v14, v3

    if-nez v4, :cond_31

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    goto :goto_14

    :cond_31
    const/16 v27, 0x1

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    :goto_15
    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    ushr-int v3, v2, v1

    if-nez v3, :cond_32

    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_32
    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    return-void
.end method

.method private CMP_AND_SWAP_CST_TIME(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 13

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    xor-long/2addr v7, v9

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->ORBITS_UINT(J)J

    move-result-wide v7

    or-long/2addr v3, v7

    add-long/2addr v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v12, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    if-ge v0, v12, :cond_1

    int-to-long v3, v0

    xor-long/2addr v3, v5

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->NORBITS_UINT(J)J

    move-result-wide v3

    neg-long v3, v3

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->CMP_LT_UINT(JJ)J

    move-result-wide v7

    and-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    neg-long v10, v1

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v7 .. v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXorAndMask_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JI)V

    return-void
.end method

.method private LOOPIR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIIZ)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v4, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v1, 0x1

    const/4 v7, 0x1

    :goto_1
    if-gt v7, p5, :cond_0

    const/16 v5, 0x40

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p7

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    if-eqz p8, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    :cond_1
    invoke-virtual {p2, p7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 8

    :goto_0
    if-ge p5, p6, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p4

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget p1, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v4, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p5, p5, 0x1

    move-object p1, v3

    goto :goto_0

    :cond_0
    move-object v2, p0

    return-void
.end method

.method private LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 6

    :goto_0
    if-ge p4, p5, :cond_0

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V
    .locals 4

    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p5

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    invoke-virtual {p2, v0, p3, v0, p5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getDotProduct(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->XORBITS_UINT(J)J

    move-result-wide v2

    shl-long/2addr v2, v1

    invoke-virtual {p1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(J)V

    invoke-virtual {p3, p6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    return-void
.end method

.method private LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J
    .locals 5

    :goto_0
    if-ge p3, p4, :cond_1

    const-wide/16 v0, 0x1

    and-long/2addr v0, p5

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, p8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    :cond_0
    invoke-virtual {p2, p7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    const/4 v0, 0x1

    ushr-long/2addr p5, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-wide p5
.end method

.method private LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V
    .locals 13

    move/from16 v3, p3

    move-wide/from16 v9, p5

    :goto_0
    add-int/lit8 v0, p4, -0x3

    if-ge v3, v0, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v4 .. v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J

    move-result-wide v9

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide v5, v9

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J

    return-void
.end method

.method private LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V
    .locals 3

    :goto_0
    if-ge p5, p6, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const-wide/16 v1, 0x1

    and-long/2addr v1, p3

    neg-long v1, v1

    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    const/4 v0, 0x1

    ushr-long/2addr p3, v0

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 8

    move v7, p4

    :goto_0
    if-ge v7, p5, :cond_0

    invoke-virtual {p2, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v3

    const/4 v5, 0x0

    const/16 v6, 0x40

    move-object v0, p0

    move-object v2, p1

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v1, :cond_1

    invoke-virtual {p2, p5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v3

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object v0, p0

    move-object v2, p1

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    return-void
.end method

.method private chooseRootHFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I
    .locals 12

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/4 v9, 0x1

    shl-int/2addr v0, v9

    sub-int/2addr v0, v9

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v2

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/2addr v2, v9

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v4

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v7, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v7, v2, p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/16 v4, 0x22

    const-wide/16 v10, 0x1

    if-le v2, v4, :cond_1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    const/16 v5, 0xc4

    if-le v4, v5, :cond_0

    const/16 v4, 0x100

    if-ge v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    shl-int v4, v2, v4

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v4

    invoke-virtual {v3, v2, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    move v5, v4

    move-object v2, p0

    move-object v8, v7

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v6, v7

    move-object v7, v8

    iget p2, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v4, p2, 0x1

    iget v5, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_sqr_divsqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p0

    move-object v6, p2

    invoke-direct {p0, v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->frobeniusMap_multisqr_HFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :goto_1
    iget p2, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, p2, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result p2

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, v0, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_copy_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    iget p2, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iget v4, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int p2, p2, v4

    invoke-virtual {v0, p2, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    iget p2, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v0, p3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget p2, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    sub-int/2addr v4, v9

    invoke-virtual {v3, p2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getD_for_not0_or_plus(II)I

    move-result p2

    iget v4, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    invoke-direct {p0, v0, v4, v3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->gcd_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result p2

    iget v4, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :cond_2
    iget v4, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->is0_gf2n(II)I

    move-result v3

    if-nez v3, :cond_3

    return v8

    :cond_3
    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMonic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, p2

    invoke-direct {v10, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-direct {p0, v10, v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    if-ne p2, v9, :cond_4

    iget p3, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v10, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    return p2

    :cond_4
    invoke-virtual {p0, v10, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->fast_sort_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v0, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    ushr-int/lit8 v3, v0, 0x3

    iget v0, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    invoke-virtual {p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object v4

    iget v6, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    iget p3, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    ushr-int/lit8 p3, p3, 0x3

    new-array v7, p3, [B

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    move-object v2, v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v0

    int-to-long v3, p2

    invoke-static {v0, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->remainderUnsigned(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    iget v0, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int p3, p3, v0

    invoke-virtual {p1, v8, v10, p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    return p2
.end method

.method private choose_LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IJII)V
    .locals 9

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    const/16 v0, 0x8

    if-ge v4, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V

    return-void
.end method

.method private convMQ_last_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J
    .locals 11

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v2, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    invoke-direct {p0, p1, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setpk2_end_move_plus(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)I

    move-result v3

    if-eqz v0, :cond_0

    add-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I

    move-result v3

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    :goto_0
    iget p1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int v5, p1, v4

    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v7, 0x40

    if-eqz v5, :cond_5

    and-int/lit8 v8, v3, 0x3f

    if-eqz v8, :cond_3

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    sub-int v10, v9, v4

    add-int/lit8 v10, v10, 0x7

    ushr-int/lit8 v10, v10, 0x3

    and-int/lit8 v10, v10, 0x7

    if-eqz v10, :cond_2

    sub-int/2addr v9, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    sub-int/2addr v9, v4

    and-int/lit8 v4, v9, 0x3f

    rsub-int/lit8 v4, v4, 0x40

    and-int/lit8 v4, v4, 0x3f

    sub-int/2addr p1, v4

    ushr-int/lit8 p1, p1, 0x6

    invoke-virtual {v1, v2, p1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion_Check(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v3

    ushr-long/2addr v3, v8

    invoke-virtual {v1, p1, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    if-ge p1, v6, :cond_1

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v4

    rsub-int/lit8 v2, v8, 0x40

    shl-long v6, v4, v2

    invoke-virtual {v1, p1, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    ushr-long/2addr v4, v8

    invoke-virtual {v1, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto/16 :goto_2

    :cond_1
    add-int/2addr v5, v8

    if-le v5, v7, :cond_8

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v2

    sub-int/2addr v7, v8

    shl-long/2addr v2, v7

    invoke-virtual {v1, p1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2, v6, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v3

    ushr-long/2addr v3, v8

    invoke-virtual {v1, v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    add-int/2addr v5, v8

    if-le v5, v7, :cond_8

    add-int/lit8 p1, v6, 0x1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v2

    sub-int/2addr v7, v8

    shl-long/2addr v2, v7

    invoke-virtual {v1, v6, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_2

    :cond_3
    iget p1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    sub-int/2addr p1, v4

    add-int/lit8 p1, p1, 0x7

    ushr-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_4

    invoke-virtual {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v2

    invoke-virtual {v1, v6, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_8

    and-int/lit8 p1, v3, 0x3f

    if-eqz p1, :cond_7

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x7

    ushr-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_6

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {v1, v2, v3, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v4

    ushr-long/2addr v4, p1

    invoke-virtual {v1, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v4

    sub-int/2addr v7, p1

    shl-long/2addr v4, v7

    invoke-virtual {v1, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v2, v6, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    :cond_8
    :goto_2
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get()J

    move-result-wide p1

    const-wide/16 v1, 0x1

    and-long/2addr p1, v1

    return-wide p1
.end method

.method private convMQ_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J
    .locals 6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v2, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    invoke-direct {p0, p1, v2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setpk2_end_move_plus(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)I

    move-result v3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v0, :cond_0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    add-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    and-long/2addr p1, v0

    return-wide p1
.end method

.method private convMonic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, p2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    add-int/lit8 p2, p2, -0x1

    :goto_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v2, v2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {p0, p1, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private copy_for_casct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :goto_0
    const/4 p2, 0x1

    if-le p6, p2, :cond_0

    add-int p2, p7, p6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int p2, p2, v0

    invoke-virtual {p4, p3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->CMP_AND_SWAP_CST_TIME(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    ushr-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copy_move_matrix_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v0, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 p3, p3, 0x1

    mul-int p1, p1, p3

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    return-void
.end method

.method private div_q_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    :goto_0
    if-lt p2, p4, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    if-ge p2, p4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p2

    invoke-virtual {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    shl-int/lit8 v0, p4, 0x1

    sub-int/2addr v0, p2

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v0, p2, p4

    add-int/2addr v0, v4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v3

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move-object v0, p0

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private div_r_monic_cst_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 7

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :goto_0
    if-lt p2, p4, :cond_0

    neg-int v0, p4

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v2

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget p1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int p1, p1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p2, p2, -0x1

    move-object p1, v2

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v2, p1

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private div_r_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .locals 6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    :goto_0
    if-lt p2, p4, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    if-ge p2, p4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p2

    invoke-virtual {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    neg-int v0, p4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v0, p0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    iget p3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p1

    return p1
.end method

.method private divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int p2, p2, v1

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    :goto_0
    if-lt p3, p4, :cond_1

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    neg-int p2, p2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int p2, p2, v1

    invoke-virtual {p1, v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {p0, p1, v0, p6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 p2, 0x1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    if-ge p2, v1, :cond_0

    iget-object v1, p5, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->L:[I

    aget v1, v1, p2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget-object v1, p5, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int p2, p2

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v2

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private dotproduct_move_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 0

    invoke-direct {p0, p1, p3, p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr p4, p1

    add-int/lit8 p4, p4, 0x1

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int p4, p4, p1

    invoke-virtual {p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    return-void
.end method

.method private evalMQShybrid8_uncomp_nocst_gf2_m(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, p4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSnocst8_quo_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    const/16 p4, 0x8

    if-ge p3, p4, :cond_0

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p3, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    :cond_0
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr p3, p4

    :goto_0
    iget p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-ge p3, p4, :cond_1

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQnocst_unrolled_no_simd_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J

    move-result-wide v1

    shl-long/2addr v1, p3

    invoke-virtual {p1, p4, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    invoke-virtual {v0, p4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private evalMQSnocst8_quo_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    ushr-int/lit8 v4, v3, 0x3

    if-eqz v4, :cond_0

    ushr-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    :cond_0
    move v10, v3

    and-int/lit8 v3, v10, 0x7

    const/4 v11, 0x1

    if-eqz v3, :cond_1

    ushr-int/lit8 v3, v10, 0x3

    add-int/2addr v3, v11

    goto :goto_0

    :cond_1
    ushr-int/lit8 v3, v10, 0x3

    :goto_0
    move v6, v3

    ushr-int/lit8 v3, v6, 0x3

    and-int/lit8 v4, v6, 0x7

    const/4 v12, 0x0

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-int v7, v3, v4

    move v3, v2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    move-object/from16 v4, p3

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getArray()[J

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getArray()[J

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v8

    invoke-static {v4, v12, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    const/4 v13, 0x0

    :goto_2
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x1

    if-ge v13, v4, :cond_7

    invoke-virtual {v9, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    move/from16 v18, v3

    move-wide/from16 v19, v4

    const/4 v3, 0x0

    :goto_3
    const/16 v4, 0x40

    if-ge v3, v4, :cond_6

    and-long v4, v19, v16

    cmp-long v8, v4, v14

    if-eqz v8, :cond_5

    invoke-virtual {v1, v12, v2, v12, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    move v8, v7

    move v7, v6

    ushr-long v5, v19, v11

    move v4, v3

    add-int/lit8 v3, v4, 0x1

    move/from16 v21, v4

    const/16 v4, 0x40

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V

    add-int/lit8 v1, v13, 0x1

    :goto_4
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v1, v3, :cond_3

    invoke-virtual {v9, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v5

    const/4 v3, 0x0

    const/16 v4, 0x40

    move/from16 v22, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V

    add-int/lit8 v1, v22, 0x1

    goto :goto_4

    :cond_3
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v9, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    move-object/from16 v1, p1

    move v6, v7

    move v7, v8

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->choose_LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IJII)V

    move v7, v6

    goto :goto_5

    :cond_4
    move-object/from16 v1, p1

    goto :goto_5

    :cond_5
    move/from16 v21, v3

    move v8, v7

    move v7, v6

    mul-int v6, v18, v7

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    :goto_5
    ushr-long v19, v19, v11

    add-int/lit8 v3, v21, 0x1

    add-int/lit8 v18, v18, -0x1

    move v6, v7

    move v7, v8

    goto :goto_3

    :cond_6
    move v8, v7

    move v7, v6

    add-int/lit8 v13, v13, 0x1

    move v7, v8

    move/from16 v3, v18

    goto :goto_2

    :cond_7
    move v8, v7

    move v7, v6

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v5, :cond_9

    invoke-virtual {v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    move v9, v3

    move-wide/from16 v18, v4

    const/4 v13, 0x0

    :goto_6
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-ge v13, v3, :cond_9

    and-long v3, v18, v16

    cmp-long v5, v3, v14

    if-eqz v5, :cond_8

    invoke-virtual {v1, v12, v2, v12, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    add-int/lit8 v3, v13, 0x1

    ushr-long v4, v18, v11

    move v6, v7

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->choose_LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IJII)V

    move v7, v6

    goto :goto_7

    :cond_8
    mul-int v6, v9, v7

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    :goto_7
    ushr-long v18, v18, v11

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_9
    and-int/lit8 v0, v10, 0x3f

    if-eqz v0, :cond_a

    add-int/lit8 v7, v8, -0x1

    shl-long v2, v16, v0

    sub-long v2, v2, v16

    invoke-virtual {v1, v7, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    :cond_a
    return-void
.end method

.method private evalMQnocst_unrolled_no_simd_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-wide v9, v5

    const/4 v8, 0x0

    :goto_0
    const-wide/16 v11, 0x1

    const/16 v13, 0x40

    if-ge v8, v13, :cond_1

    ushr-long v13, v3, v8

    and-long/2addr v11, v13

    cmp-long v13, v11, v5

    if-eqz v13, :cond_0

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v11

    and-long/2addr v11, v3

    xor-long/2addr v9, v11

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v13}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    const/4 v3, 0x1

    :goto_1
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-ge v3, v4, :cond_5

    add-int/lit8 v8, v3, 0x1

    if-ne v4, v8, :cond_2

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0x40

    :goto_2
    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v14

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_4

    ushr-long v16, v14, v3

    and-long v16, v16, v11

    cmp-long v18, v16, v5

    if-eqz v18, :cond_3

    invoke-virtual {v2, v7, v1, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getDotProduct(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)J

    move-result-wide v16

    xor-long v9, v9, v16

    :cond_3
    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v8

    goto :goto_1

    :cond_5
    invoke-static {v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->XORBITS_UINT(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 10

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    return-void

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit2_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void

    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    shl-int/lit8 v2, p3, 0x1

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v2

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, p3

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    add-int/lit8 v5, p3, 0x1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v6, v6, v5

    invoke-direct {v4, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    :cond_2
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v7, v7, v2

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v7, v7, p3

    invoke-virtual {v3, v8, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    :cond_3
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->random:Ljava/security/SecureRandom;

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    invoke-virtual {v3, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fillRandom(ILjava/security/SecureRandom;I)V

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v7, v0

    sub-int/2addr v7, v0

    iget-wide v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {v3, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v7, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->is0_gf2n(II)I

    move-result v7

    if-nez v7, :cond_3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v7, v7, v5

    invoke-virtual {v4, p2, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, v3, v1, v4, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->traceMap_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v7, p3, -0x1

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v7, v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result v7

    invoke-direct {p0, v4, p3, v3, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->gcd_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result v7

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    if-eqz v7, :cond_2

    if-eq v7, p3, :cond_2

    if-eqz v8, :cond_4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :cond_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v7

    invoke-direct {p0, v6, v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v7, v0

    invoke-virtual {v4, v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    add-int/lit8 v0, v7, -0x1

    invoke-direct {p0, v4, v6, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p2, p3, v4, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_q_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p1, v4, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v7

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v7

    invoke-direct {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sub-int/2addr p3, v7

    invoke-direct {p0, v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    return-void
.end method

.method private for_and_xor_shift_incre_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(J)V

    const-wide/16 v3, 0x1

    shl-long v5, v3, v2

    invoke-virtual {p1, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(J)V

    const/4 v5, 0x1

    shl-long/2addr v0, v5

    add-long/2addr v0, v3

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->CMP_AND_SWAP_CST_TIME(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/2addr v1, p5

    goto :goto_0

    :cond_0
    return-void
.end method

.method private for_copy_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;)V
    .locals 5

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    if-ge v0, v1, :cond_0

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->L:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private for_mul(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, p3

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :goto_0
    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    invoke-virtual {p0, v0, v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p4

    :goto_0
    if-ge p4, p5, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p4, p4, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private for_setPK([B[BIII)I
    .locals 10

    aget-byte v0, p2, p4

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    const/4 v0, 0x2

    const/4 v4, 0x2

    const/4 v7, 0x2

    :goto_0
    if-ge v4, p5, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v8, v0, -0x1

    sub-int v9, v0, v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPK([B[BIIIIII)I

    move-result v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return v7
.end method

.method private for_setpk2_end_move_plus(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p3, :cond_0

    const/16 v7, 0x40

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I

    move-result p1

    invoke-direct {p0, v3, v4, p1, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2_endValue(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    shl-int/lit8 p2, v6, 0x6

    add-int v5, p1, p2

    move-object p1, v3

    move-object p2, v4

    goto :goto_0

    :cond_0
    move-object v2, p0

    return v5
.end method

.method private for_sqr_divsqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 8

    :goto_0
    if-ge p2, p3, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/lit8 v0, v5, -0x1

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v5, -0x1

    shl-int/lit8 v4, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private frobeniusMap_multisqr_HFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 13

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v2

    invoke-direct {v8, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KX:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    mul-int v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    mul-int v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    sub-int/2addr v2, v3

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v2

    invoke-direct {v10, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    move-object/from16 v6, p3

    invoke-virtual {v10, v6, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move-object v5, p2

    invoke-direct {p0, v10, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_copy_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;)V

    const/4 v11, 0x1

    add-int/lit8 v3, v2, -0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/2addr v2, v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    add-int/2addr v2, v11

    move v12, v2

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/4 v3, 0x0

    if-ge v12, v2, :cond_0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v4

    invoke-virtual {v10, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v4

    invoke-virtual {v10, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    mul-int v5, v5, v4

    invoke-virtual {v10, v2, v1, v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    invoke-virtual {v1, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    add-int/lit8 v3, v2, -0x1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v11

    const/4 v4, 0x0

    move v0, v3

    move v3, v2

    move v2, v0

    move-object v0, p0

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    shl-int v2, v11, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    mul-int v2, v2, v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v5

    mul-int v4, v4, v5

    invoke-virtual {p1, v3, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    sub-int v6, v4, v5

    iget v12, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    sub-int/2addr v6, v12

    div-int/2addr v6, v12

    if-ge v2, v6, :cond_6

    invoke-direct {p0, v8, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_sqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v4, 0x1

    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    if-ge v4, v5, :cond_1

    invoke-direct {p0, v8, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_sqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v5

    invoke-virtual {v9, v8, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v10, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v7, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v4, 0x0

    :goto_3
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v7, v10, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v7, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v10, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    add-int/2addr v4, v11

    :goto_4
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v4, v5, :cond_4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v7, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v5, 0x0

    :goto_5
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, v7, v10, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v10, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_6
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    if-ge v4, v5, :cond_5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    mul-int v5, v5, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v6

    mul-int v12, v4, v6

    invoke-virtual {p1, v5, v8, v12, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v4, v5

    rem-int v3, v4, v12

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_sqr_divsqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method private gcd_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    move v3, p2

    move-object p2, p1

    move-object p1, p3

    :goto_0
    move p3, v3

    if-eqz p4, :cond_1

    shl-int/lit8 v1, p4, 0x1

    if-le v1, p3, :cond_0

    invoke-virtual {p0, p2, p3, p1, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result p3

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, p4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, p4, v1

    invoke-virtual {p1, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    add-int/lit8 v1, p4, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p2, p3, p1, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result p3

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    rsub-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    move v3, p4

    move p4, p3

    goto :goto_0

    :cond_1
    return p3
.end method

.method private getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {v0, p4, p5, p6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/4 p5, 0x0

    invoke-virtual {p4, p7, p5}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    invoke-virtual {p1, p2, p7, p5, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    return-void
.end method

.method private initListDifferences_gf2nx([I)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v1, 0x1

    aput v0, p1, v1

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-ge v3, v4, :cond_2

    iget-boolean v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v4, :cond_1

    shl-int v4, v1, v3

    add-int/2addr v4, v1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-le v4, v5, :cond_1

    if-eqz v3, :cond_0

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v5, v1

    aput v5, p1, v0

    move v0, v4

    :cond_0
    invoke-direct {p0, p1, v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    aput v5, p1, v0

    invoke-direct {p0, p1, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    move-result v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-eqz v4, :cond_4

    iget-boolean v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v5, :cond_3

    shl-int v3, v1, v3

    add-int/2addr v3, v1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-le v3, v5, :cond_3

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v3, v1

    aput v3, p1, v0

    sub-int/2addr v4, v1

    invoke-direct {p0, p1, v2, v1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    return-void

    :cond_3
    add-int/lit8 v3, v0, 0x1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    aput v5, p1, v0

    sub-int/2addr v4, v1

    invoke-direct {p0, p1, v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    :cond_4
    return-void
.end method

.method private inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 5

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    new-instance p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    sub-int/2addr v3, v2

    add-int/lit8 v4, v1, 0x1

    ushr-int/2addr v3, v4

    invoke-direct {p0, p3, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v3, :cond_0

    invoke-direct {p0, p3, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    sub-int/2addr v3, v2

    ushr-int/2addr v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    invoke-direct {p0, p3, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private loop_sqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v0, v1

    mul-int v1, v1, v0

    invoke-direct {p0, p1, v2, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loop_xor_loop_move_xorandmask_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIII)I
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    move/from16 v3, p9

    const/4 v4, 0x0

    move/from16 v4, p5

    move/from16 v6, p7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    const-wide/16 v7, 0x1

    shl-long v9, v7, v5

    invoke-virtual {v0, v2, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual/range {p3 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move/from16 v9, p8

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_0

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    ushr-int/lit8 v11, v10, 0x6

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, p3

    invoke-virtual {v12, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v13

    ushr-long/2addr v13, v5

    and-long/2addr v13, v7

    neg-long v13, v13

    invoke-virtual {v1, v0, v11, v13, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v12, p3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v7, v2, 0x1

    move-object/from16 v8, p4

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private mulMatricesLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .locals 10

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v9

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    const/4 v8, 0x1

    move v5, v1

    move v4, v3

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid parameter for MULMATRICESLU_GF2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v8, v4

    move v5, v1

    const/4 v1, 0x1

    move v4, v3

    :goto_1
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v7, 0x1

    :goto_2
    move v6, v4

    if-gt v7, v5, :cond_3

    const/16 v4, 0x40

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIIZ)V

    add-int/lit8 v7, v7, 0x1

    move v4, v6

    goto :goto_2

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIIZ)V

    invoke-virtual {p1, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private precSignHFE(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V
    .locals 7

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->precSignHFESeed(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[B)V

    iget-object p3, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->L:[I

    invoke-direct {p0, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->initListDifferences_gf2nx([I)V

    new-instance p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-direct {v0, p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v2, 0x0

    aput-object v0, p2, v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    invoke-virtual {p3, v0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    shl-int v4, v5, v3

    add-int/2addr v4, v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-le v4, v6, :cond_0

    iget-boolean v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    sub-int v4, v3, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v4

    invoke-virtual {v0, p3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v4

    invoke-virtual {p3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v5

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v4, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    aput-object v4, p2, v3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-eqz p2, :cond_3

    shl-int v3, v5, v3

    add-int/2addr v3, v5

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-gt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    sub-int/2addr p2, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int p2, p2, v2

    invoke-virtual {v0, p3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :cond_3
    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    new-instance p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    return-void
.end method

.method private precSignHFESeed(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[B)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXn_SIZE:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    shl-int/lit8 p2, v0, 0x3

    new-array v2, p2, [B

    invoke-virtual {v1, v2, v3, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v1, v3, v2, v3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    new-instance p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    new-instance p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    invoke-direct {p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->T:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    new-instance p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanMonicHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    invoke-direct {p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-direct {p0, v1, p2, v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mulMatricesLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    invoke-virtual {v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->T:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mulMatricesLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    return-void
.end method

.method private rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n([JI[J)V

    return-void
.end method

.method private static remainderUnsigned(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    rem-long/2addr p0, p2

    return-wide p0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {v0, p1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-static {p2, p3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private setArrayL([IIII)I
    .locals 2

    :goto_0
    if-ge p3, p4, :cond_0

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v1, p3

    aput v1, p1, p2

    add-int/lit8 p3, p3, 0x1

    move p2, v0

    goto :goto_0

    :cond_0
    return p2
.end method

.method private setPK([B[BIIIIII)I
    .locals 4

    :goto_0
    if-lt p7, p8, :cond_0

    ushr-int/lit8 v0, p6, 0x3

    add-int/2addr v0, p4

    aget-byte v1, p1, v0

    ushr-int/lit8 v2, p3, 0x3

    add-int/2addr v2, p5

    aget-byte v2, p2, v2

    and-int/lit8 v3, p3, 0x7

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, p6, 0x7

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/2addr p3, p7

    add-int/lit8 p7, p7, -0x1

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    return p6
.end method

.method private setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I
    .locals 6

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p5, :cond_3

    and-int/lit8 v1, p3, 0x3f

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2, p4, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    invoke-virtual {p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v2

    ushr-long/2addr v2, v1

    invoke-virtual {p1, p4, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    add-int v2, v1, v0

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {p2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v4

    rsub-int/lit8 v1, v1, 0x40

    shl-long/2addr v4, v1

    invoke-virtual {p1, p4, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    :cond_0
    if-lt v2, v3, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveIncremental()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    :cond_2
    :goto_1
    invoke-virtual {p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    invoke-virtual {p1, p4, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    shl-int/lit8 v1, p4, 0x6

    add-int/2addr v1, v0

    add-int/2addr p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method

.method private setPk2_endValue(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x3f

    add-int/lit8 p4, p4, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p4, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    return-void
.end method

.method private special_buffer(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 6

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    mul-int v2, v2, v3

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v2, 0x2

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-direct {p0, p1, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_move_matrix_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v3, :cond_1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    invoke-direct {p0, p1, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_move_matrix_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    invoke-virtual {p1, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_6

    invoke-virtual {p0, p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v5, v4

    mul-int v2, v2, v5

    invoke-virtual {v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v2, 0x2

    :goto_3
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-ge v2, v5, :cond_2

    invoke-direct {p0, p1, v1, p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotproduct_move_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    iget-boolean v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :goto_4
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_3

    add-int/lit8 v5, v2, -0x1

    invoke-direct {p0, p1, v1, p3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotproduct_move_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v2, v2

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :cond_4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-nez v2, :cond_5

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    goto :goto_5

    :cond_5
    invoke-direct {p0, p1, p3, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v5

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange_SelfMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    sub-int/2addr v2, v5

    :goto_5
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v5

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    return-void
.end method

.method private sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 2

    iget v0, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p4, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {v0, v1, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->sqr_gf2x([J[JI)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method private sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    invoke-virtual {v0, v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->sqr_gf2x([J[JI)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {p2, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n([JI[J)V

    return-void
.end method

.method private sqr_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v4, v4

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method private traceMap_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    shl-int v2, v0, v1

    if-ge v2, p4, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int v3, v2, v1

    add-int/lit8 v4, v1, -0x1

    shl-int/2addr v2, v4

    invoke-direct {p0, p1, v3, p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v1, v3, :cond_1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int v4, v3, v1

    add-int/lit8 v5, v1, -0x1

    shl-int/2addr v3, v5

    invoke-direct {p0, p2, v4, p1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p2, v2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_monic_cst_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, p4

    invoke-virtual {p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/2addr v1, v0

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, p4, -0x1

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    shl-int/2addr v2, v0

    invoke-direct {p0, p2, v2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_monic_cst_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, p4

    invoke-virtual {p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private uncompress_signHFE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V
    .locals 10

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillBytes(I[BII)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    sub-int/2addr v2, v1

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setAndByte(IJ)V

    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    shl-int/lit8 v4, v4, 0x3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-ge v4, v5, :cond_9

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v5, v6

    and-int/lit8 v6, v2, 0x7

    rsub-int/lit8 v7, v6, 0x8

    and-int/lit8 v7, v7, 0x7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v6, :cond_3

    ushr-int/lit8 v7, v2, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int v6, v7, v6

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    shl-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    sub-int v6, v5, v6

    if-ltz v6, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    :cond_1
    if-lez v6, :cond_2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    add-int/2addr v2, v7

    ushr-int/lit8 v7, v2, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v2, 0x7

    ushr-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    add-int/2addr v2, v6

    goto :goto_1

    :cond_2
    add-int/2addr v2, v5

    :cond_3
    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    add-int/2addr v7, v5

    and-int/lit8 v5, v7, 0x7

    if-eqz v5, :cond_6

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v8, v6, -0x1

    ushr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_4

    ushr-int/lit8 v8, v2, 0x3

    aget-byte v9, p2, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v5

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    rsub-int/lit8 v9, v5, 0x8

    ushr-int/2addr v8, v9

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    ushr-int/lit8 v7, v2, 0x3

    aget-byte v8, p2, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v5

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    add-int/lit8 v6, v6, 0x7

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v1

    rsub-int/lit8 v5, v5, 0x8

    if-le v6, v5, :cond_5

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int v5, v7, v5

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByte(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    :cond_5
    add-int/2addr v2, v6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_3
    add-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v7, v7, 0x3

    if-ge v5, v7, :cond_7

    ushr-int/lit8 v7, v2, 0x3

    aget-byte v7, p2, v7

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByte(I)V

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    and-int/lit8 v5, v6, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    sub-int/2addr v2, v5

    :goto_4
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    if-eqz v5, :cond_8

    const/4 v5, -0x1

    int-to-long v6, p1

    invoke-virtual {v0, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setAndByte(IJ)V

    :cond_8
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    and-int/lit8 v5, v5, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    invoke-virtual {p3, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    return-void
.end method


# virtual methods
.method changeVariablesMQS64_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    mul-int v1, v1, v1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v2

    invoke-direct {v9, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v10, v7, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v11, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    const/16 v14, 0x40

    if-ge v13, v2, :cond_4

    invoke-virtual {v3, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v15, 0x0

    :goto_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v15, v2, :cond_1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v14, :cond_0

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v16

    ushr-long v16, v16, v5

    const/16 v6, 0x40

    move-object v2, v1

    move-object v1, v3

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    move-object v3, v1

    move-object v1, v2

    move v6, v5

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    sub-int v5, v2, v15

    const/4 v4, 0x1

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v5, v6, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    :goto_3
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-ge v5, v2, :cond_2

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v14

    ushr-long/2addr v14, v5

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object v2, v1

    move-object v1, v3

    move-wide v3, v14

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    move-object v3, v1

    move-object v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v10, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v7, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v13, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v15, 0x0

    :goto_4
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v15, v2, :cond_8

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v14, :cond_7

    invoke-virtual {v11, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/16 v6, 0x40

    move-object v2, v3

    move-object v3, v10

    move-object v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object v10, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v10

    move v10, v5

    add-int/lit8 v5, v15, 0x1

    move v11, v5

    :goto_6
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v11, v5, :cond_5

    const/4 v5, 0x0

    const/16 v6, 0x40

    move-object/from16 v18, v3

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v18

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, v18

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_5
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    move-object/from16 v18, v3

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v18

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, v18

    :cond_6
    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v13, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v5, v10, 0x1

    move-object v10, v1

    move-object v1, v2

    move-object v11, v4

    goto :goto_5

    :cond_7
    move-object v2, v1

    move-object v1, v10

    move-object v4, v11

    add-int/lit8 v15, v15, 0x1

    move-object v1, v2

    goto :goto_4

    :cond_8
    move-object v2, v1

    move-object v1, v10

    move-object v4, v11

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    :goto_7
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-ge v5, v6, :cond_9

    invoke-virtual {v4, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object/from16 v18, v3

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v18

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object v6, v3

    move-object v3, v2

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v13, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v5, v5, 0x1

    move-object v2, v1

    move-object v1, v6

    goto :goto_7

    :cond_9
    move-object v6, v1

    move-object v1, v2

    invoke-virtual {v6, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v7, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v4, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v9, 0x0

    :goto_8
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v9, v2, :cond_d

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v14, :cond_c

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v10

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x40

    move-object/from16 v18, v4

    move v4, v2

    move-object/from16 v2, v18

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move v10, v4

    move-object v4, v2

    add-int/lit8 v2, v9, 0x1

    move v11, v2

    :goto_a
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v11, v2, :cond_a

    move-object v2, v4

    const/4 v4, 0x0

    const/16 v5, 0x40

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object v4, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_a
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v5, :cond_b

    move-object v2, v4

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object v4, v2

    :cond_b
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move v2, v10

    goto :goto_9

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v2, :cond_e

    :goto_b
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_e

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v5

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v12, v12, 0x1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object v2, v4

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move-object v4, v2

    goto :goto_b

    :cond_e
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    return-void
.end method

.method cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .locals 3

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->ordinal()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    :goto_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 p1, 0x1

    :goto_1
    if-gt p1, p2, :cond_2

    const/16 v2, 0x40

    invoke-direct {p0, v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_and_xor_shift_incre_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_and_xor_shift_incre_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    return-void
.end method

.method cleanMonicHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    if-ge v0, v1, :cond_0

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compress_signHFE([BLorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 12

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getLength()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object p2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-ge v4, v5, :cond_8

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v5, v6

    and-int/lit8 v6, v0, 0x7

    rsub-int/lit8 v7, v6, 0x8

    and-int/lit8 v7, v7, 0x7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v6, :cond_3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v7, :cond_1

    ushr-int/lit8 v8, v0, 0x3

    aget-byte v9, p1, v8

    aget-byte v10, p2, v2

    and-int/lit16 v10, v10, 0xff

    ushr-int v7, v10, v7

    shl-int v6, v7, v6

    xor-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, p1, v8

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    sub-int v7, v5, v6

    if-ltz v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    if-lez v7, :cond_2

    add-int/2addr v0, v6

    ushr-int/lit8 v6, v0, 0x3

    aget-byte v8, p1, v6

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    and-int/lit8 v10, v0, 0x7

    shl-int/2addr v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v6

    add-int/2addr v0, v7

    goto :goto_1

    :cond_1
    ushr-int/lit8 v7, v0, 0x3

    aget-byte v8, p1, v7

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    shl-int v6, v9, v6

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p1, v7

    :cond_2
    add-int/2addr v0, v5

    :cond_3
    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    add-int/2addr v7, v5

    and-int/lit8 v5, v7, 0x7

    if-eqz v5, :cond_6

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v8, v6, -0x1

    ushr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_4

    ushr-int/lit8 v8, v0, 0x3

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v5

    add-int/lit8 v2, v2, 0x1

    aget-byte v10, p2, v2

    and-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v11, v5, 0x8

    shl-int/2addr v10, v11

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    ushr-int/lit8 v7, v0, 0x3

    add-int/lit8 v8, v2, 0x1

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, p1, v7

    add-int/lit8 v6, v6, 0x7

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v3

    rsub-int/lit8 v5, v5, 0x8

    if-le v6, v5, :cond_5

    add-int/lit8 v2, v2, 0x2

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int v5, v8, v5

    int-to-byte v5, v5

    xor-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, p1, v7

    move v8, v2

    :cond_5
    add-int/2addr v0, v6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_3
    add-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v7, v7, 0x3

    if-ge v5, v7, :cond_7

    ushr-int/lit8 v7, v0, 0x3

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p2, v2

    aput-byte v2, p1, v7

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v5, 0x1

    move v2, v8

    goto :goto_3

    :cond_7
    and-int/lit8 v5, v6, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    sub-int/2addr v0, v5

    move v8, v2

    :goto_4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0x7

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v5, v5, 0x7

    add-int/2addr v2, v5

    add-int/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method convMQS_one_eq_to_hybrid_rep8_comp_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;[B)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    invoke-virtual {p0, p1, p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_UL_gf2([B[BI)V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    if-ge p3, v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {p2, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->toBytesMove([BII)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method convMQS_one_eq_to_hybrid_rep8_uncomp_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;[B)V
    .locals 10

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, p1, p3, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_UL_gf2([B[BI)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v6, v3, v5

    add-int/2addr v4, v6

    mul-int v5, v5, v3

    move v3, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    move v0, v4

    move v4, v3

    move v3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setPK([B[BIII)I

    move-result v6

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v7, v1, -0x1

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    move v5, v4

    move v4, v3

    move v3, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPK([B[BIIIIII)I

    move v4, v5

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    const-wide/16 v5, 0x0

    :goto_0
    if-ltz v2, :cond_0

    ushr-int/lit8 v7, v3, 0x3

    add-int/2addr v7, v4

    aget-byte v7, p3, v7

    and-int/lit8 v8, v3, 0x7

    ushr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v2

    shl-long/2addr v7, v9

    xor-long/2addr v5, v7

    add-int/2addr v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_1

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    add-int/2addr v2, v7

    aget-byte v7, p1, v2

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8c:I

    mul-int v8, v8, v4

    ushr-long v8, v5, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    shl-int/2addr v8, v9

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->indexReset()V

    const/4 v2, 0x0

    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    if-ge v3, v4, :cond_2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {p2, p1, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->toBytesMove([BII)I

    move-result v2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method convMQS_one_to_last_mr8_equations_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .locals 13

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    ushr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-ge v3, v5, :cond_4

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte()B

    move-result v7

    ushr-int/2addr v7, v3

    and-int/2addr v7, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    const/4 v8, 0x1

    :goto_2
    const/16 v9, 0x8

    if-ge v8, v9, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte()B

    move-result v9

    ushr-int/2addr v9, v3

    and-int/2addr v9, v6

    shl-int/2addr v9, v8

    xor-int/2addr v7, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v4, 0x1

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    :cond_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck()J

    move-result-wide v7

    ushr-long/2addr v7, v3

    const-wide/16 v9, 0x1

    and-long/2addr v7, v9

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    :goto_3
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-ge v6, v5, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck()J

    move-result-wide v11

    ushr-long/2addr v11, v3

    and-long/2addr v11, v9

    shl-long/2addr v11, v6

    xor-long/2addr v7, v11

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v4, 0x1

    long-to-int v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v4

    move v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method convMQ_UL_gf2([B[BI)V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v3, v0, v2

    add-int v7, v1, v3

    mul-int v8, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v9, v1, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setPK([B[BIII)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public crypto_sign_open([B[B[B)I
    .locals 12

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v4, p1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>([B)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-le p1, v1, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {p1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    sub-int/2addr v5, v1

    invoke-virtual {p1, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    move-wide v6, v2

    const/4 v5, 0x0

    :goto_0
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v8, v1

    if-ge v5, v8, :cond_1

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    invoke-virtual {p1, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte()B

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    ushr-long/2addr v8, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8c:I

    mul-int v10, v10, v5

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-wide v6, v2

    :cond_1
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    const/16 v5, 0x40

    if-eqz p1, :cond_7

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    mul-int v8, v8, v9

    add-int/2addr v8, v1

    invoke-direct {p1, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v8, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    :goto_1
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v9, v1

    if-ge v0, v9, :cond_2

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v10, v10, v0

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByteIndex(I)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v10, v10, v0

    add-int/2addr v10, v1

    invoke-direct {v9, p1, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, v9, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J

    move-result-wide v9

    shl-long/2addr v9, v0

    xor-long/2addr v2, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v10, v10, v0

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByteIndex(I)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v10, v10, v0

    add-int/2addr v10, v1

    invoke-direct {v9, p1, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, v9, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_last_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J

    move-result-wide v8

    shl-long/2addr v8, v0

    xor-long/2addr v2, v8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-eqz v8, :cond_6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-nez v8, :cond_3

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int/2addr v5, v1

    shl-long v5, v6, v5

    :goto_2
    invoke-virtual {p1, v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_3

    :cond_3
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    add-int/2addr v0, v1

    if-le v8, v9, :cond_4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v0, v0, v1

    sub-int/2addr v8, v9

    shl-long v5, v6, v8

    goto :goto_2

    :cond_4
    if-ne v8, v9, :cond_5

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v0, v0, v1

    invoke-virtual {p1, v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto :goto_3

    :cond_5
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v10, v10, v0

    sub-int/2addr v10, v1

    sub-int/2addr v9, v8

    sub-int/2addr v5, v9

    shl-long v8, v6, v5

    invoke-virtual {p1, v10, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    sub-int/2addr v1, v5

    ushr-long v5, v6, v1

    invoke-virtual {p1, v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    :cond_6
    :goto_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v0, v1

    shl-long v0, v2, v0

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(J)V

    array-length v2, p2

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v5, p1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sign_openHFE_huncomp_pk([BI[BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)I

    move-result p1

    move-object p2, v0

    return p1

    :cond_7
    move-object v1, p2

    move-object v3, p3

    move-object p1, v4

    move-object p2, p0

    new-instance p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    invoke-direct {p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, p2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v8, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v4, v1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    invoke-virtual {p3, v0, v3, v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    new-array v7, v5, [B

    const/4 v5, 0x0

    array-length v6, v4

    const/4 v2, 0x0

    const/16 v3, 0x40

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    invoke-direct {p0, v8, p3, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSnocst8_quo_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget p1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v8, v1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->isEqual_nocst_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result p1

    return p1
.end method

.method div_r_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .locals 7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v6, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p4

    invoke-direct {p0, v6, p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :goto_0
    if-lt p2, p4, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    if-ge p2, p4, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p2, p4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v3

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p2

    invoke-virtual {p0, v2, p1, v0, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v0, p0

    const/4 p3, 0x1

    iget p4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p1

    return p1
.end method

.method evalHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v8, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v9, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v11, 0x1

    add-int/2addr v2, v11

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v3

    invoke-direct {v10, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v13

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v14, v10, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v10, v4, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    sub-int/2addr v3, v11

    iget-wide v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {v10, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    const/4 v3, 0x1

    :goto_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v15, 0x0

    if-gt v3, v5, :cond_0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v5, v5

    invoke-direct {v0, v14, v15, v14, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v14, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int v6, v3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    :goto_1
    move v6, v5

    add-int/lit8 v5, v3, -0x1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    rsub-int/lit8 v7, v3, 0x40

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeRotate(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/2addr v5, v3

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-eq v5, v7, :cond_2

    sub-int/2addr v3, v11

    add-int/2addr v3, v6

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v3

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    ushr-long/2addr v3, v5

    invoke-virtual {v2, v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    :cond_2
    invoke-virtual {v0, v8, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSv_unrolled_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-direct {v0, v9, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v14, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v0, v8, v14, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :goto_2
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-direct {v0, v9, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    if-ge v11, v3, :cond_3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MMUL:I

    sub-int/2addr v4, v3

    invoke-virtual {v9, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    invoke-virtual {v12, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v0, v9, v1, v12, v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {v0, v9, v15, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v0, v8, v12, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v12, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-eqz v2, :cond_4

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MMUL:I

    sub-int/2addr v3, v2

    invoke-virtual {v9, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    invoke-virtual {v0, v9, v1, v12, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v9, v12, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {v0, v9, v15, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    goto :goto_3

    :cond_4
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v9, v9, v12, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :goto_3
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v3

    invoke-virtual {v14, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v0, v8, v14, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v15, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v1, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method evalMQSv_unrolled_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 12

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    ushr-int/lit8 v2, v1, 0x6

    and-int/lit8 v1, v1, 0x3f

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    ushr-int/lit8 v4, v3, 0x6

    and-int/lit8 v3, v3, 0x3f

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v4, v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v3

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v2, :cond_1

    invoke-virtual {p2, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    const/16 v11, 0x40

    invoke-virtual {v0, v9, v10, v8, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRange_xi(JII)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p2, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v8, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRange_xi(JII)I

    :cond_2
    invoke-virtual {p1, p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :goto_2
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    if-ge v5, p2, :cond_5

    invoke-virtual {v6, p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 p2, v5, 0x1

    move v1, p2

    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 v2, v2, -0x3

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_3

    :cond_3
    :goto_4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v1

    invoke-virtual {p1, v6, v4, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    move v5, p2

    goto :goto_2

    :cond_5
    invoke-virtual {p3, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method fast_sort_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 15

    move-object/from16 v6, p1

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v7, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    add-int/lit8 v8, p2, -0x1

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->Highest_One(I)I

    move-result v9

    move v4, v9

    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-le v4, v11, :cond_4

    shl-int/lit8 v5, v4, 0x1

    div-int v11, p2, v5

    mul-int v5, v5, v11

    sub-int v5, p2, v5

    sub-int/2addr v5, v4

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v4

    invoke-virtual {v2, v6, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move v14, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v14

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v14

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v13, v13, 0x1

    move v4, v14

    goto :goto_1

    :cond_0
    move v14, v4

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move v4, v9

    :goto_2
    if-le v4, v14, :cond_3

    :goto_3
    sub-int v5, p2, v4

    if-ge v10, v5, :cond_2

    and-int v5, v10, v14

    if-nez v5, :cond_1

    add-int v5, v10, v14

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v11

    invoke-virtual {v2, v6, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move-object v0, p0

    move-object v5, v3

    move-object v3, v6

    move v6, v4

    move-object v4, v1

    move-object v1, v7

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_for_casct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object v12, v1

    move-object v1, v4

    move v4, v6

    move-object v6, v3

    move-object v3, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v12, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    goto :goto_4

    :cond_1
    move-object v12, v7

    move v7, v10

    :goto_4
    add-int/lit8 v10, v7, 0x1

    move-object v7, v12

    goto :goto_3

    :cond_2
    move-object v12, v7

    move v7, v10

    ushr-int/lit8 v4, v4, 0x1

    move-object v7, v12

    goto :goto_2

    :cond_3
    move-object v12, v7

    ushr-int/lit8 v4, v14, 0x1

    goto :goto_0

    :cond_4
    move-object v12, v7

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v5, 0x2

    move-object v0, p0

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :goto_5
    if-le v9, v11, :cond_6

    move v7, v10

    :goto_6
    sub-int v4, p2, v9

    if-ge v7, v4, :cond_5

    move-object v0, p0

    move-object v4, v1

    move-object v5, v3

    move-object v3, v6

    move v6, v9

    move-object v1, v12

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_for_casct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object v3, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v1, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v5, v11

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v7, v7, 0x2

    move-object v1, v4

    move-object/from16 v6, p1

    goto :goto_6

    :cond_5
    move-object v4, v1

    move v6, v9

    move-object v1, v12

    ushr-int/lit8 v9, v6, 0x1

    move-object/from16 v6, p1

    move-object v1, v4

    move v10, v7

    goto :goto_5

    :cond_6
    return-void
.end method

.method findRootsSplit2_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 10

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, p2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {p0, p1, v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {p0, v0, p2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_x2_x_c_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {p0, p1, v1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move v9, v4

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method findRootsSplit_x2_x_c_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 6

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    ushr-int/2addr v1, v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    const/4 v4, 0x1

    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    shl-int/2addr v4, v2

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v5, 0x1

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    ushr-int v4, v1, v3

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    invoke-virtual {v1, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method genSecretMQS_gf2_opt(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v10, 0x1

    add-int/2addr v4, v10

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v5, v10

    mul-int v4, v4, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v5

    invoke-direct {v7, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-direct {v11, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v12, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-gt v4, v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    if-gt v5, v6, :cond_0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/2addr v6, v10

    mul-int v6, v6, v5

    add-int/2addr v6, v4

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v6, v6, v8

    invoke-virtual {v7, v6, v11, v12, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v11, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v4

    invoke-virtual {v11, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    sub-int/2addr v6, v10

    mul-int v5, v5, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v6

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    const/4 v5, 0x1

    :goto_2
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v5, v6, :cond_3

    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v8, v5, 0x3f

    const-wide/16 v13, 0x1

    shl-long v8, v13, v8

    invoke-virtual {v4, v6, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    const/4 v6, 0x0

    :goto_3
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-ge v6, v8, :cond_2

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v4, v8, v4, v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v4, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    mul-int v6, v6, v8

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v6, v6, v8

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-direct {v0, v5, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->special_buffer(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v13, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v6, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    sub-int/2addr v8, v10

    invoke-virtual {v1, v6, v5, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix_NoMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    invoke-virtual {v11, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/2addr v8, v10

    invoke-virtual {v1, v11, v5, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v14, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v5, 0x1

    :goto_4
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v5, v8, :cond_4

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-direct {v0, v1, v14, v13, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v8, v8, v9

    invoke-virtual {v14, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-virtual {v1, v6, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v5, v8, :cond_5

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v11, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v11, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-virtual {v1, v11, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v15, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    const/4 v5, 0x1

    :goto_6
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v5, v8, :cond_9

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v8, v8, v9

    invoke-virtual {v13, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v6, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/16 v16, 0x1

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v12, v12

    invoke-direct {v10, v14, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v8, v9, v7, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v10, 0x1

    :goto_7
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-gt v10, v8, :cond_6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v8, v10, v9

    move-object v12, v4

    const/4 v4, 0x0

    move/from16 v17, v5

    move-object v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v0, v4, v3, v14}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v14, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v10, v10, 0x1

    move-object v6, v5

    move-object v4, v12

    move/from16 v5, v17

    goto :goto_7

    :cond_6
    move-object v12, v4

    move/from16 v17, v5

    move-object v5, v6

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v14, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v4, v17, 0x1

    move v6, v4

    :goto_8
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v6, v8, :cond_7

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v8

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v9

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v10

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v17

    invoke-virtual {v0, v12, v14, v13}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object/from16 v18, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v12, v14, v13, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-virtual {v0, v12, v15, v5, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    move/from16 v19, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v19

    add-int/2addr v8, v3

    invoke-virtual {v14, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    invoke-virtual {v13, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    invoke-virtual {v15, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v8

    add-int v3, v17, v3

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v18

    goto :goto_8

    :cond_7
    move-object/from16 v18, v3

    invoke-virtual {v11, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v3, v3

    invoke-virtual {v15, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :goto_9
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v6, v3, :cond_8

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v3, v3, 0x1

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v8

    invoke-virtual {v11, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v15, v11, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_8
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    mul-int v6, v6, v3

    add-int/2addr v3, v6

    invoke-virtual {v15, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move-object v6, v5

    move-object/from16 v3, v18

    const/4 v10, 0x1

    move v5, v4

    move-object v4, v12

    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_9
    const/16 v16, 0x1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    add-int/lit8 v4, v4, -0x1

    mul-int v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    return-void
.end method

.method interpolateHFE_FS_ref(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I
    .locals 12

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v4

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v9, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v4, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v3, v5, :cond_0

    invoke-virtual {p0, v4, p2, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v9, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 p3, 0x0

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge p3, v2, :cond_2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v4, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v4, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {v1, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 p3, p3, 0x1

    move v11, p3

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v11, v2, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v0, v9, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v7, 0x0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    move-object v2, p1

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v4, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v9, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move-object p1, v2

    goto :goto_1

    :cond_2
    move-object v2, p1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    return v10
.end method

.method invMatrixLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v4, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v1, p3

    invoke-direct {v11, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->ordinal()I

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXn_SIZE:I

    invoke-virtual {v10, v12, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    sub-int/2addr v2, v13

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Input"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    sub-int/2addr v2, v13

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    :goto_0
    move v14, v1

    move v8, v2

    move v9, v5

    move v15, v6

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v14, :cond_2

    move/from16 v16, v7

    const/16 v7, 0x40

    move/from16 v12, v16

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_xor_loop_move_xorandmask_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIII)I

    move-result v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move v7, v12

    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    move v12, v7

    move-object/from16 v16, v11

    const-wide/16 v10, 0x1

    if-le v15, v13, :cond_3

    add-int/lit8 v7, v15, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_xor_loop_move_xorandmask_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIII)I

    shl-long v3, v10, v7

    invoke-virtual {v1, v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    :goto_2
    invoke-virtual {v1, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    goto :goto_3

    :cond_3
    if-ne v15, v13, :cond_4

    invoke-virtual {v1, v6, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto :goto_2

    :cond_4
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    :goto_4
    if-lez v8, :cond_6

    ushr-int/lit8 v3, v8, 0x6

    rsub-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    neg-int v3, v9

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v8, :cond_5

    ushr-int/lit8 v5, v4, 0x6

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v5

    and-int/lit8 v7, v4, 0x3f

    ushr-long/2addr v5, v7

    and-long/2addr v5, v10

    neg-long v5, v5

    invoke-virtual {v2, v1, v9, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    invoke-virtual {v2, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {p3, v1, p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method mul_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p3, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    return-void
.end method

.method public mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object p3, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {p2, p3, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n_xor([JI[J)V

    return-void
.end method

.method public mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 2

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    invoke-virtual {p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {p4, v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object p4, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {p2, p4, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n_xor([JI[J)V

    invoke-virtual {p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    return-void
.end method

.method public mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method public signHFE_FeistelPatarin(Ljava/security/SecureRandom;[B[BII[B)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iput-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->random:Ljava/security/SecureRandom;

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v10, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v11, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    and-int/lit8 v12, v2, 0x7

    ushr-int/lit8 v2, v2, 0x3

    const/4 v14, 0x1

    if-eqz v12, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int v15, v2, v3

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->maskUINT(I)J

    move-result-wide v2

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/2addr v6, v14

    new-array v6, v6, [Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v7, p6

    invoke-direct {v0, v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->precSignHFE(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/16 v23, 0x1

    iget-object v14, v4, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v7, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v14, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    ushr-int/lit8 v1, v1, 0x3

    move-object/from16 v16, v7

    new-array v7, v1, [B

    move-wide/from16 v17, v2

    const/4 v2, 0x0

    move v3, v1

    move-object/from16 v27, v6

    move-object/from16 v26, v11

    move-object v1, v14

    move-object/from16 v28, v16

    move-wide/from16 v24, v17

    move/from16 v6, p5

    move-object v14, v4

    move-object v11, v5

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v4, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    :goto_1
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-gt v7, v13, :cond_a

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v3, v2, v1, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v13, :cond_1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    add-int/lit8 v5, v5, -0x1

    move/from16 v29, v12

    iget-wide v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v3, v5, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte(I)B

    move-result v5

    int-to-long v5, v5

    goto :goto_2

    :cond_1
    move/from16 v29, v12

    :goto_2
    move-wide/from16 v20, v5

    :goto_3
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v5, :cond_2

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    sub-int/2addr v6, v12

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v8, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillRandomBytes(ILjava/security/SecureRandom;I)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    const-wide/16 v12, 0x1

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    shl-long/2addr v12, v6

    neg-long v12, v12

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setAndThenXorByte(IJJ)V

    move-wide/from16 v12, v20

    goto :goto_4

    :cond_2
    move-wide/from16 v12, v20

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    sub-int/2addr v6, v5

    invoke-virtual {v4, v5, v8, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillRandomBytes(ILjava/security/SecureRandom;I)V

    :goto_4
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    and-int/lit8 v5, v5, 0x7

    if-eqz v5, :cond_3

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v5, v5, -0x1

    move-wide/from16 p3, v12

    iget-wide v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {v3, v5, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    goto :goto_5

    :cond_3
    move-wide/from16 p3, v12

    :goto_5
    iget-object v5, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->T:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v0, v10, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v8, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fillRandom(ILjava/security/SecureRandom;I)V

    if-eqz v29, :cond_4

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v12, v24

    invoke-virtual {v11, v5, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    goto :goto_6

    :cond_4
    move-wide/from16 v12, v24

    :goto_6
    iget-object v5, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v6, v28

    invoke-virtual {v0, v6, v11, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSv_unrolled_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object/from16 v24, v4

    const/4 v5, 0x0

    :goto_7
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-gt v5, v4, :cond_5

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move/from16 v16, v5

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v28, v6

    aget-object v6, v27, v16

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v5, v6, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v0, v4, v11, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v5, v16, 0x1

    mul-int v6, v16, v5

    ushr-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    mul-int v17, v4, v6

    aget-object v18, v27, v16

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/16 v21, 0x0

    const/16 v19, 0x0

    move/from16 v22, v4

    move-object/from16 v20, v6

    move-object/from16 v16, v28

    invoke-virtual/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object/from16 v8, p1

    move-object/from16 v6, v16

    goto :goto_7

    :cond_5
    move-object/from16 v28, v6

    iget-object v4, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    invoke-direct {v0, v3, v4, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->chooseRootHFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v5

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    shl-long/2addr v5, v8

    invoke-virtual {v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/lit8 v20, v5, -0x1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    rsub-int/lit8 v21, v5, 0x40

    const/16 v19, 0x0

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v11

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeRotate(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    move-object/from16 v8, v16

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int v5, v3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-ne v5, v6, :cond_6

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v11, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    rsub-int/lit8 v6, v6, 0x40

    ushr-long/2addr v4, v6

    invoke-virtual {v8, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    :cond_6
    iget-object v3, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v0, v2, v8, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-eq v7, v3, :cond_8

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v7

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    mul-int v3, v3, v5

    add-int/2addr v3, v4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-eqz v4, :cond_7

    iget-wide v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    const-wide/16 v16, -0x1

    xor-long v4, v4, v16

    invoke-virtual {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    :cond_7
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object v4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    const/4 v5, 0x0

    array-length v6, v4

    move-object/from16 v16, v2

    const/4 v2, 0x0

    move/from16 v17, v7

    move-object v7, v4

    move-object/from16 v18, v8

    move-object v8, v1

    move-object/from16 v1, v26

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    invoke-virtual {v1, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    goto :goto_8

    :cond_8
    move-object/from16 v16, v2

    move/from16 v17, v7

    move-object/from16 v18, v8

    move-object v8, v1

    move-object/from16 v1, v26

    :goto_8
    add-int/lit8 v7, v17, 0x1

    move-wide/from16 v5, p3

    move-object/from16 v26, v1

    move-object v1, v8

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    move-object/from16 v4, v24

    move-object/from16 v8, p1

    move-wide/from16 v24, v12

    move/from16 v12, v29

    goto/16 :goto_1

    :cond_9
    move-object/from16 v8, p1

    move-wide/from16 v20, p3

    move-object/from16 v4, v24

    move-wide/from16 v24, v12

    goto/16 :goto_3

    :cond_a
    move-object/from16 v16, v2

    const/4 v4, 0x1

    if-ne v13, v4, :cond_b

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getLength()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object v1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v9, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_b
    move-object/from16 v2, v16

    invoke-virtual {v0, v9, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->compress_signHFE([BLorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    return-void
.end method

.method public sign_openHFE_huncomp_pk([BI[BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    invoke-direct {v10, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v11, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v12, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/16 v1, 0x40

    new-array v4, v1, [B

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    mul-int v2, v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get()J

    move-result-wide v13

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    move-object/from16 v2, p3

    invoke-direct {v0, v10, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->uncompress_signHFE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/4 v5, 0x0

    move/from16 v6, p2

    move-object v7, v4

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    move-object v4, v7

    const/4 v2, 0x1

    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-ge v2, v3, :cond_0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    mul-int v3, v3, v2

    const/4 v5, 0x0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    move v7, v2

    move v2, v3

    const/16 v3, 0x40

    move/from16 v16, v7

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    add-int/lit8 v3, v16, -0x1

    mul-int v2, v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v15

    iget-wide v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v1, v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    add-int/lit8 v2, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v16, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    add-int/lit8 v3, v16, -0x1

    mul-int v2, v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v15

    iget-wide v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    invoke-direct {v0, v11, v10, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQShybrid8_uncomp_nocst_gf2_m(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    invoke-virtual {v11, v2, v13, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    sub-int/2addr v2, v15

    :goto_1
    if-lez v2, :cond_2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    mul-int v3, v3, v2

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v11, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    sub-int/2addr v4, v15

    sub-int/2addr v4, v2

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v4, v15

    iget-wide v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v11, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v4, v15

    invoke-virtual {v10, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v5

    invoke-virtual {v11, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    if-eq v4, v15, :cond_1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v11, v5, v10, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    :cond_1
    invoke-direct {v0, v12, v11, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQShybrid8_uncomp_nocst_gf2_m(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    invoke-virtual {v12, v3, v13, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    invoke-virtual {v12, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v11, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->isEqual_nocst_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result v1

    return v1
.end method

.method vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->ordinal()I

    move-result v4

    const-string v5, "Invalid input for vecMatProduct"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v1, v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    goto :goto_0

    :cond_2
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    goto :goto_0

    :cond_3
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v1, v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    :goto_0
    move v11, v10

    :goto_1
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v4, :cond_5

    invoke-virtual {v2, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v15

    const-wide/16 v17, 0x1

    :goto_3
    const/16 v13, 0x40

    if-ge v9, v13, :cond_4

    and-long v13, v15, v17

    neg-long v13, v13

    invoke-virtual {v1, v3, v10, v13, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    ushr-long/2addr v15, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    const-wide/16 v17, 0x1

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->ordinal()I

    move-result v4

    if-eqz v4, :cond_a

    if-eq v4, v8, :cond_8

    if-eq v4, v7, :cond_7

    if-ne v4, v6, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_4
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    :goto_5
    const/4 v9, 0x0

    goto :goto_6

    :cond_8
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    goto :goto_5

    :cond_a
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    goto :goto_5

    :goto_6
    if-ge v9, v2, :cond_c

    and-long v6, v4, v17

    neg-long v6, v6

    invoke-virtual {v1, v3, v10, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    invoke-virtual {v3, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    ushr-long/2addr v4, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_c
    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    move-object/from16 v3, p4

    if-ne v3, v2, :cond_d

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-eqz v2, :cond_d

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v2, v8

    iget-wide v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    :cond_d
    :goto_7
    return-void
.end method
