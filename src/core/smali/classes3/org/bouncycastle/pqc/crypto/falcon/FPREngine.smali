.class Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;
.super Ljava/lang/Object;


# static fields
.field private static final gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field private static final inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field private static final p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field private static final sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;


# instance fields
.field final fpr_bnorm_max:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_inv_2sqrsigma0:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_inv_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_inverse_of_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_mtwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_mtwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_one:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_onehalf:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_ptwo31:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_ptwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_ptwo63:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_ptwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_two:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/16 v0, 0xb

    new-array v1, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v6, 0x3f7c48eb7e24169aL    # 0.006905479329594089

    invoke-direct {v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/4 v6, 0x1

    aput-object v2, v1, v6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3f7be50a548caed9L    # 0.006810226776717798

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/4 v7, 0x2

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v8, 0x3f7b852ee09e762cL    # 0.006718810191072271

    invoke-direct {v2, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/4 v8, 0x3

    aput-object v2, v1, v8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v9, 0x3f7afc5ed3cada36L    # 0.006588335437007367

    invoke-direct {v2, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/4 v9, 0x4

    aput-object v2, v1, v9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v10, 0x3f7a7b3b0976b3edL    # 0.00646517812076029

    invoke-direct {v2, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/4 v10, 0x5

    aput-object v2, v1, v10

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v11, 0x3f7a011282ca9c98L    # 0.0063486788828079

    invoke-direct {v2, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/4 v11, 0x6

    aput-object v2, v1, v11

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v12, 0x3f798d49ce5f2736L    # 0.006238258652908437

    invoke-direct {v2, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/4 v12, 0x7

    aput-object v2, v1, v12

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v13, 0x3f791f57c56ed9eeL    # 0.006133406502093026

    invoke-direct {v2, v13, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v13, 0x8

    aput-object v2, v1, v13

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v14, 0x3f78b6c2de64c7caL    # 0.006033669668157724

    invoke-direct {v2, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v14, 0x9

    aput-object v2, v1, v14

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-wide v5, 0x3f78531ef6311ae3L    # 0.005938645309533116

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v5, 0xa

    aput-object v2, v1, v5

    sput-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-array v1, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v15

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/16 v17, 0xa

    const-wide v5, 0x3ff1dd380644568bL    # 1.1165085072329102

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v16

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3ff21d2edcad8626L    # 1.1321247692325271

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3ff25c46e1aa7c7aL    # 1.1475285353733669

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3ff2b95c574afb25L    # 1.170254078853483

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3ff314abc7fe22b6L    # 1.1925466358390344

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v10

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3ff36e4e3475d7c3L    # 1.214430050776614

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v11

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3ff3c65a66a1c224L    # 1.235926056771981

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v12

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3ff41ce5358cb3a0L    # 1.2570545284063215

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v13

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3ff47201bf1f7a75L    # 1.2778336969128337

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v14

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3ff4c5c19990c764L    # 1.298280334344292

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v17

    sput-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/16 v1, 0x800

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v15

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v16

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v10

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, -0x40195f619980c433L    # -0.7071067811865476

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v11

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v12

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed906bcf328d46L    # 0.9238795325112867

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v13

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3fd87de2a6aea963L    # 0.3826834323650898

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v14

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/16 v18, 0x2

    const/16 v19, 0x3

    const-wide v7, -0x4027821d5951569dL    # -0.3826834323650898

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v17

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v1, v0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0xc

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40126f9430cd72baL    # -0.9238795325112867

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef6297cff75cb0L    # 0.9807852804032304

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v5, 0x10

    aput-object v2, v1, v5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3fc8f8b83c69a60bL    # 0.19509032201612828

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x11

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, -0x40370747c39659f5L    # -0.19509032201612828

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x12

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x13

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fe1c73b39ae68c8L    # 0.5555702330196022

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v20, 0x14

    aput-object v2, v1, v20

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/16 v20, 0x4

    const/16 v21, 0x5

    const-wide v9, 0x3fea9b66290ea1a3L    # 0.8314696123025452

    invoke-direct {v2, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v22, 0x15

    aput-object v2, v1, v22

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/16 v22, 0x6

    const/16 v23, 0x7

    const-wide v11, -0x40156499d6f15e5dL    # -0.8314696123025452

    invoke-direct {v2, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v11, 0x16

    aput-object v2, v1, v11

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v11, 0x17

    aput-object v2, v1, v11

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v11, 0x18

    aput-object v2, v1, v11

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x19

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, -0x401e38c4c6519738L    # -0.5555702330196022

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x1a

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x1b

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x1c

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40109d683008a350L    # -0.9807852804032304

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefd88da3d12526L    # 0.9951847266721969

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v5, 0x20

    aput-object v2, v1, v5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v5, 0x3fb917a6bc29b42cL    # 0.0980171403295606

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x21

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, -0x4046e85943d64bd4L    # -0.0980171403295606

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x22

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x23

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fe44cf325091dd6L    # 0.6343932841636455

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x24

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fe8bc806b151741L    # 0.773010453362737

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x25

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, -0x4017437f94eae8bfL    # -0.773010453362737

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x26

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fe44cf325091dd6L    # 0.6343932841636455

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x27

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fec38b2f180bdb1L    # 0.881921264348355

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x28

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fde2b5d3806f63bL    # 0.47139673682599764

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x29

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, -0x4021d4a2c7f909c5L    # -0.47139673682599764

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x2a

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fec38b2f180bdb1L    # 0.881921264348355

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x2b

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fd294062ed59f06L    # 0.2902846772544624

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x2c

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fee9f4156c62ddaL    # 0.9569403357322088

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x2d

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, -0x401160bea939d226L    # -0.9569403357322088

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x2e

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fd294062ed59f06L    # 0.2902846772544624

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x2f

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fee9f4156c62ddaL    # 0.9569403357322088

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x30

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fd294062ed59f06L    # 0.2902846772544624

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x31

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, -0x402d6bf9d12a60faL    # -0.2902846772544624

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x32

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fee9f4156c62ddaL    # 0.9569403357322088

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x33

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fde2b5d3806f63bL    # 0.47139673682599764

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x34

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fec38b2f180bdb1L    # 0.881921264348355

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x35

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, -0x4013c74d0e7f424fL    # -0.881921264348355

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x36

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fde2b5d3806f63bL    # 0.47139673682599764

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x37

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fe8bc806b151741L    # 0.773010453362737

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x38

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fe44cf325091dd6L    # 0.6343932841636455

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x39

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, -0x401bb30cdaf6e22aL    # -0.6343932841636455

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x3a

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v7, 0x3fe8bc806b151741L    # 0.773010453362737

    invoke-direct {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x3b

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v7, 0x3c

    aput-object v2, v1, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401027725c2edadaL    # -0.9951847266721969

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff621e3796d7eL    # 0.9987954562051724

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x40

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa91f65f10dd814L    # 0.049067674327418015

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x41

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4056e09a0ef227ecL    # -0.049067674327418015

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x42

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff621e3796d7eL    # 0.9987954562051724

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x43

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe57d69348ceca0L    # 0.6715589548470184

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x44

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7b5df226aafafL    # 0.7409511253549591

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x45

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40184a20dd955051L    # -0.7409511253549591

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x46

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe57d69348ceca0L    # 0.6715589548470184

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x47

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feced7af43cc773L    # 0.9039892931234433

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x48

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb5d1009e15cc0L    # 0.4275550934302821

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x49

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4024a2eff61ea340L    # -0.4275550934302821

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feced7af43cc773L    # 0.9039892931234433

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd58f9a75ab1fddL    # 0.33688985339222005

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee212104f686e5L    # 0.9415440651830208

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011dedefb09791bL    # -0.9415440651830208

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd58f9a75ab1fddL    # 0.33688985339222005

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef0a7efb9230d7L    # 0.970031253194544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x50

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcf19f97b215f1bL    # 0.2429801799032639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x51

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4030e60684dea0e5L    # -0.2429801799032639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x52

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef0a7efb9230d7L    # 0.970031253194544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x53

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe073879922ffeeL    # 0.5141027441932218

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x54

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb728345196e3eL    # 0.8577286100002721

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x55

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40148d7cbae691c2L    # -0.8577286100002721

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x56

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe073879922ffeeL    # 0.5141027441932218

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x57

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9b3e047f38741L    # 0.8032075314806449

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x58

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe30ff7fce17035L    # 0.5956993044924334

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x59

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401cf008031e8fcbL    # -0.5956993044924334

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9b3e047f38741L    # 0.8032075314806449

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc2c8106e8e613aL    # 0.14673047445536175

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefa7557f08a517L    # 0.989176509964781

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401058aa80f75ae9L    # -0.989176509964781

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc2c8106e8e613aL    # 0.14673047445536175

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefa7557f08a517L    # 0.989176509964781

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x60

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc2c8106e8e613aL    # 0.14673047445536175

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x61

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403d37ef91719ec6L    # -0.14673047445536175

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x62

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefa7557f08a517L    # 0.989176509964781

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x63

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe30ff7fce17035L    # 0.5956993044924334

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x64

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9b3e047f38741L    # 0.8032075314806449

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x65

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40164c1fb80c78bfL    # -0.8032075314806449

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x66

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe30ff7fce17035L    # 0.5956993044924334

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x67

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb728345196e3eL    # 0.8577286100002721

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x68

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe073879922ffeeL    # 0.5141027441932218

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x69

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401f8c7866dd0012L    # -0.5141027441932218

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb728345196e3eL    # 0.8577286100002721

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcf19f97b215f1bL    # 0.2429801799032639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef0a7efb9230d7L    # 0.970031253194544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010f581046dcf29L    # -0.970031253194544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcf19f97b215f1bL    # 0.2429801799032639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee212104f686e5L    # 0.9415440651830208

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x70

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd58f9a75ab1fddL    # 0.33688985339222005

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x71

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402a70658a54e023L    # -0.33688985339222005

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x72

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee212104f686e5L    # 0.9415440651830208

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x73

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb5d1009e15cc0L    # 0.4275550934302821

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x74

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feced7af43cc773L    # 0.9039892931234433

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x75

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401312850bc3388dL    # -0.9039892931234433

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x76

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb5d1009e15cc0L    # 0.4275550934302821

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x77

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7b5df226aafafL    # 0.7409511253549591

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x78

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe57d69348ceca0L    # 0.6715589548470184

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x79

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401a8296cb731360L    # -0.6715589548470184

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7b5df226aafafL    # 0.7409511253549591

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa91f65f10dd814L    # 0.049067674327418015

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff621e3796d7eL    # 0.9987954562051724

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401009de1c869282L    # -0.9987954562051724

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa91f65f10dd814L    # 0.049067674327418015

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffd886084cd0dL    # 0.9996988186962042

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x80

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f992155f7a3667eL    # 0.024541228522912288

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x81

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4066deaa085c9982L    # -0.024541228522912288

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x82

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffd886084cd0dL    # 0.9996988186962042

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x83

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe610b7551d2cdfL    # 0.6895405447370669

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x84

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe72d0837efff96L    # 0.7242470829514669

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x85

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4018d2f7c810006aL    # -0.7242470829514669

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x86

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe610b7551d2cdfL    # 0.6895405447370669

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x87

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed4134d14dc93aL    # 0.9142097557035307

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x88

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd9ef7943a8ed8aL    # 0.40524131400498986

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x89

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40261086bc571276L    # -0.40524131400498986

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x8a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed4134d14dc93aL    # 0.9142097557035307

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x8b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd7088530fa459fL    # 0.35989503653498817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x8c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feddb13b6ccc23cL    # 0.9329927988347388

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x8d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401224ec49333dc4L    # -0.9329927988347388

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x8e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd7088530fa459fL    # 0.35989503653498817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x8f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef38f3ac64e589L    # 0.9757021300385286

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x90

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcc0b826a7e4f63L    # 0.2191012401568698

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x91

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4033f47d9581b09dL    # -0.2191012401568698

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x92

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef38f3ac64e589L    # 0.9757021300385286

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x93

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe11eb3541b4b23L    # 0.5349976198870973

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x94

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb090a58150200L    # 0.8448535652497071

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x95

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4014f6f5a7eafe00L    # -0.8448535652497071

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x96

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe11eb3541b4b23L    # 0.5349976198870973

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x97

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea29a7a0462782L    # 0.8175848131515837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x98

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe26d054cdd12dfL    # 0.5758081914178453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x99

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401d92fab322ed21L    # -0.5758081914178453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x9a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea29a7a0462782L    # 0.8175848131515837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x9b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc5e214448b3fc6L    # 0.17096188876030122

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x9c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef8764fa714ba9L    # 0.9852776423889412

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x9d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010789b058eb457L    # -0.9852776423889412

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x9e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc5e214448b3fc6L    # 0.17096188876030122

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x9f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefc26470e19fd3L    # 0.99247953459871

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xa0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbf564e56a9730eL    # 0.1224106751992162

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xa1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4040a9b1a9568cf2L    # -0.1224106751992162

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xa2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefc26470e19fd3L    # 0.99247953459871

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xa3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3affa292050b9L    # 0.6152315905806268

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xa4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe93a22499263fbL    # 0.7883464276266062

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xa5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4016c5ddb66d9c05L    # -0.7883464276266062

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xa6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3affa292050b9L    # 0.6152315905806268

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xa7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febd7c0ac6f952aL    # 0.8700869911087115

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xa8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf8ba4dbf89abaL    # 0.49289819222978404

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xa9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4020745b24076546L    # -0.49289819222978404

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xaa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febd7c0ac6f952aL    # 0.8700869911087115

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xab

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd111d262b1f677L    # 0.26671275747489837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xac

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feed740e7684963L    # 0.9637760657954398

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xad

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401128bf1897b69dL    # -0.9637760657954398

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xae

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd111d262b1f677L    # 0.26671275747489837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xaf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee6288ec48e112L    # 0.9495281805930367

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xb0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd4135c94176601L    # 0.31368174039889146

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xb1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402beca36be899ffL    # -0.31368174039889146

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xb2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee6288ec48e112L    # 0.9495281805930367

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xb3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdcc66e9931c45eL    # 0.4496113296546066

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xb4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec954b213411f5L    # 0.8932243011955153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xb5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40136ab4decbee0bL    # -0.8932243011955153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xb6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdcc66e9931c45eL    # 0.4496113296546066

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xb7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe83b0e0bff976eL    # 0.7572088465064846

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xb8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4e6cabbe3e5e9L    # 0.6531728429537768

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xb9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401b1935441c1a17L    # -0.6531728429537768

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xba

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe83b0e0bff976eL    # 0.7572088465064846

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xbb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb2d52092ce19f6L    # 0.07356456359966743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xbc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe9cdad01883aL    # 0.9972904566786902

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xbd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010163252fe77c6L    # -0.9972904566786902

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xbe

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb2d52092ce19f6L    # 0.07356456359966743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xbf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe9cdad01883aL    # 0.9972904566786902

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xc0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb2d52092ce19f6L    # 0.07356456359966743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xc1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404d2adf6d31e60aL    # -0.07356456359966743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xc2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe9cdad01883aL    # 0.9972904566786902

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xc3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4e6cabbe3e5e9L    # 0.6531728429537768

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xc4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe83b0e0bff976eL    # 0.7572088465064846

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xc5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4017c4f1f4006892L    # -0.7572088465064846

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xc6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4e6cabbe3e5e9L    # 0.6531728429537768

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xc7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec954b213411f5L    # 0.8932243011955153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xc8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdcc66e9931c45eL    # 0.4496113296546066

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xc9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4023399166ce3ba2L    # -0.4496113296546066

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xca

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec954b213411f5L    # 0.8932243011955153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xcb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd4135c94176601L    # 0.31368174039889146

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xcc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee6288ec48e112L    # 0.9495281805930367

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xcd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40119d7713b71eeeL    # -0.9495281805930367

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xce

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd4135c94176601L    # 0.31368174039889146

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xcf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feed740e7684963L    # 0.9637760657954398

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd111d262b1f677L    # 0.26671275747489837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402eee2d9d4e0989L    # -0.26671275747489837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feed740e7684963L    # 0.9637760657954398

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf8ba4dbf89abaL    # 0.49289819222978404

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febd7c0ac6f952aL    # 0.8700869911087115

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4014283f53906ad6L    # -0.8700869911087115

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf8ba4dbf89abaL    # 0.49289819222978404

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe93a22499263fbL    # 0.7883464276266062

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3affa292050b9L    # 0.6152315905806268

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xd9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401c5005d6dfaf47L    # -0.6152315905806268

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xda

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe93a22499263fbL    # 0.7883464276266062

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xdb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbf564e56a9730eL    # 0.1224106751992162

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xdc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefc26470e19fd3L    # 0.99247953459871

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xdd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40103d9b8f1e602dL    # -0.99247953459871

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xde

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbf564e56a9730eL    # 0.1224106751992162

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xdf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef8764fa714ba9L    # 0.9852776423889412

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc5e214448b3fc6L    # 0.17096188876030122

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403a1debbb74c03aL    # -0.17096188876030122

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef8764fa714ba9L    # 0.9852776423889412

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe26d054cdd12dfL    # 0.5758081914178453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea29a7a0462782L    # 0.8175848131515837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4015d6585fb9d87eL    # -0.8175848131515837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe26d054cdd12dfL    # 0.5758081914178453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb090a58150200L    # 0.8448535652497071

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe11eb3541b4b23L    # 0.5349976198870973

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xe9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401ee14cabe4b4ddL    # -0.5349976198870973

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xea

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb090a58150200L    # 0.8448535652497071

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xeb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcc0b826a7e4f63L    # 0.2191012401568698

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xec

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef38f3ac64e589L    # 0.9757021300385286

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xed

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010c70c539b1a77L    # -0.9757021300385286

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xee

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcc0b826a7e4f63L    # 0.2191012401568698

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xef

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feddb13b6ccc23cL    # 0.9329927988347388

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd7088530fa459fL    # 0.35989503653498817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4028f77acf05ba61L    # -0.35989503653498817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feddb13b6ccc23cL    # 0.9329927988347388

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd9ef7943a8ed8aL    # 0.40524131400498986

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed4134d14dc93aL    # 0.9142097557035307

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012becb2eb236c6L    # -0.9142097557035307

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd9ef7943a8ed8aL    # 0.40524131400498986

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe72d0837efff96L    # 0.7242470829514669

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe610b7551d2cdfL    # 0.6895405447370669

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xf9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4019ef48aae2d321L    # -0.6895405447370669

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xfa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe72d0837efff96L    # 0.7242470829514669

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xfb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f992155f7a3667eL    # 0.024541228522912288

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xfc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffd886084cd0dL    # 0.9996988186962042

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xfd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401002779f7b32f3L    # -0.9996988186962042

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xfe

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f992155f7a3667eL    # 0.024541228522912288

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0xff

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefff62169b92dbL    # 0.9999247018391445

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x100

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f8921d1fcdec784L    # 0.012271538285719925

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x101

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4076de2e0321387cL    # -0.012271538285719925

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x102

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefff62169b92dbL    # 0.9999247018391445

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x103

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6591925f0783dL    # 0.6983762494089728

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x104

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6e74454eaa8afL    # 0.7157308252838187

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x105

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401918bbab155751L    # -0.7157308252838187

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x106

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6591925f0783dL    # 0.6983762494089728

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x107

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed696173c9e68bL    # 0.9191138516900578

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x108

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd9372a63bc93d7L    # 0.3939920400610481

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x109

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4026c8d59c436c29L    # -0.3939920400610481

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x10a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed696173c9e68bL    # 0.9191138516900578

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x10b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd7c3a9311dcce7L    # 0.37131719395183754

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x10c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedb6526238a09bL    # 0.9285060804732156

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x10d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401249ad9dc75f65L    # -0.9285060804732156

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x10e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd7c3a9311dcce7L    # 0.37131719395183754

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x10f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef4e603b0b2f2dL    # 0.9783173707196277

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x110

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fca82a025b00451L    # 0.20711137619221856

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x111

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40357d5fda4ffbafL    # -0.20711137619221856

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x112

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef4e603b0b2f2dL    # 0.9783173707196277

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x113

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1734d63dedb49L    # 0.5453249884220465

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x114

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fead2bc9e21d511L    # 0.8382247055548381

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x115

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40152d4361de2aefL    # -0.8382247055548381

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x116

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1734d63dedb49L    # 0.5453249884220465

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x117

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea63091b02fae2L    # 0.8245893027850253

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x118

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe21a799933eb59L    # 0.5657318107836132

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x119

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401de58666cc14a7L    # -0.5657318107836132

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x11a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea63091b02fae2L    # 0.8245893027850253

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x11b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc76dd9de50bf31L    # 0.18303988795514095

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x11c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef7599a3a12077L    # 0.9831054874312163

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x11d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40108a665c5edf89L    # -0.9831054874312163

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x11e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc76dd9de50bf31L    # 0.18303988795514095

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x11f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefce15fd6da67bL    # 0.9939069700023561

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x120

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbc3785c79ec2d5L    # 0.11022220729388306

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x121

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4043c87a38613d2bL    # -0.11022220729388306

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x122

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefce15fd6da67bL    # 0.9939069700023561

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x123

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3fed9534556d4L    # 0.6248594881423863

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x124

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8fbcca3ef940dL    # 0.7807372285720945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x125

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401704335c106bf3L    # -0.7807372285720945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x126

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3fed9534556d4L    # 0.6248594881423863

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x127

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec08c426725549L    # 0.8760700941954066

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x128

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdedc1952ef78d6L    # 0.4821837720791228

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x129

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402123e6ad10872aL    # -0.4821837720791228

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x12a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec08c426725549L    # 0.8760700941954066

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x12b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd1d3443f4cdb3eL    # 0.2785196893850531

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x12c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feebbd8c8df0b74L    # 0.9604305194155658

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x12d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401144273720f48cL    # -0.9604305194155658

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x12e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd1d3443f4cdb3eL    # 0.2785196893850531

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x12f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee817bab4cd10dL    # 0.9533060403541939

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x130

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd35410c2e18152L    # 0.3020059493192281

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x131

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402cabef3d1e7eaeL    # -0.3020059493192281

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x132

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee817bab4cd10dL    # 0.9533060403541939

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x133

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdd79775b86e389L    # 0.46053871095824

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x134

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec678b3488739bL    # 0.8876396204028539

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x135

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40139874cb778c65L    # -0.8876396204028539

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x136

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdd79775b86e389L    # 0.46053871095824

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x137

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe87c400fba2ebfL    # 0.765167265622459

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x138

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe49a449b9b0939L    # 0.6438315428897915

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x139

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401b65bb6464f6c7L    # -0.6438315428897915

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x13a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe87c400fba2ebfL    # 0.765167265622459

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x13b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb5f6d00a9aa419L    # 0.0857973123444399

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x13c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe1cafcbd5b09L    # 0.996312612182778

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x13d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40101e350342a4f7L    # -0.996312612182778

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x13e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb5f6d00a9aa419L    # 0.0857973123444399

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x13f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff095658e71adL    # 0.9981181129001492

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x140

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3faf656e79f820e0L    # 0.06132073630220858

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x141

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40509a918607df20L    # -0.06132073630220858

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x142

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff095658e71adL    # 0.9981181129001492

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x143

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5328292a35596L    # 0.6624157775901718

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x144

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7f8ece3571771L    # 0.7491363945234594

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x145

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401807131ca8e88fL    # -0.7491363945234594

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x146

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5328292a35596L    # 0.6624157775901718

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x147

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecc1f0f3fcfc5cL    # 0.8986744656939538

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x148

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc1249d8011ee7L    # 0.43861623853852766

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x149

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4023edb627fee119L    # -0.43861623853852766

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x14a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecc1f0f3fcfc5cL    # 0.8986744656939538

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x14b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd4d1e24278e76aL    # 0.3253102921622629

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x14c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee426a4b2bc17eL    # 0.9456073253805213

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x14d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011bd95b4d43e82L    # -0.9456073253805213

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x14e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd4d1e24278e76aL    # 0.3253102921622629

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x14f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feef178a3e473c2L    # 0.9669764710448521

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x150

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd04fb80e37fdaeL    # 0.25486565960451457

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x151

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402fb047f1c80252L    # -0.25486565960451457

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x152

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feef178a3e473c2L    # 0.9669764710448521

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x153

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe01cfc874c3eb7L    # 0.5035383837257176

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x154

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feba5aa673590d2L    # 0.8639728561215867

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x155

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40145a5598ca6f2eL    # -0.8639728561215867

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x156

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe01cfc874c3eb7L    # 0.5035383837257176

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x157

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9777ef4c7d742L    # 0.7958369046088836

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x158

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe36058b10659f3L    # 0.6055110414043255

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x159

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401c9fa74ef9a60dL    # -0.6055110414043255

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x15a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9777ef4c7d742L    # 0.7958369046088836

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x15b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc139f0cedaf577L    # 0.1345807085071262

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x15c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefb5797195d741L    # 0.99090263542778

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x15d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40104a868e6a28bfL    # -0.99090263542778

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x15e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc139f0cedaf577L    # 0.1345807085071262

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x15f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef97f924c9099bL    # 0.9873014181578584

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x160

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc45576b1293e5aL    # 0.15885814333386145

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x161

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403baa894ed6c1a6L    # -0.15885814333386145

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x162

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef97f924c9099bL    # 0.9873014181578584

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x163

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2bedb25faf3eaL    # 0.5857978574564389

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x164

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9ef43ef29af94L    # 0.8104571982525948

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x165

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401610bc10d6506cL    # -0.8104571982525948

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x166

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2bedb25faf3eaL    # 0.5857978574564389

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x167

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb3e4d3ef55712L    # 0.8513551931052652

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x168

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0c9704d5d898fL    # 0.524589682678469

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x169

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401f368fb2a27671L    # -0.524589682678469

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x16a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb3e4d3ef55712L    # 0.8513551931052652

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x16b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcd934fe5454311L    # 0.2310581082806711

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x16c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef2252f7763adaL    # 0.9729399522055602

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x16d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010ddad0889c526L    # -0.9729399522055602

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x16e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcd934fe5454311L    # 0.2310581082806711

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x16f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedfeae622dbe2bL    # 0.937339011912575

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x170

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd64c7ddd3f27c6L    # 0.34841868024943456

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x171

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4029b38222c0d83aL    # -0.34841868024943456

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x172

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedfeae622dbe2bL    # 0.937339011912575

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x173

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdaa6c82b6d3fcaL    # 0.4164295600976372

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x174

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed17e7743e35dcL    # 0.9091679830905224

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x175

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012e8188bc1ca24L    # -0.9091679830905224

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x176

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdaa6c82b6d3fcaL    # 0.4164295600976372

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x177

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe771e75f037261L    # 0.7326542716724128

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x178

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5c77bbe65018cL    # 0.680600997795453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x179

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401a3884419afe74L    # -0.680600997795453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x17a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe771e75f037261L    # 0.7326542716724128

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x17b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa2d865759455cdL    # 0.03680722294135883

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x17c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffa72effef75dL    # 0.9993223845883495

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x17d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010058d100108a3L    # -0.9993223845883495

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x17e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa2d865759455cdL    # 0.03680722294135883

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x17f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffa72effef75dL    # 0.9993223845883495

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x180

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa2d865759455cdL    # 0.03680722294135883

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x181

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x405d279a8a6baa33L    # -0.03680722294135883

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x182

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffa72effef75dL    # 0.9993223845883495

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x183

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5c77bbe65018cL    # 0.680600997795453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x184

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe771e75f037261L    # 0.7326542716724128

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x185

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40188e18a0fc8d9fL    # -0.7326542716724128

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x186

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5c77bbe65018cL    # 0.680600997795453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x187

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed17e7743e35dcL    # 0.9091679830905224

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x188

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdaa6c82b6d3fcaL    # 0.4164295600976372

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x189

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40255937d492c036L    # -0.4164295600976372

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x18a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed17e7743e35dcL    # 0.9091679830905224

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x18b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd64c7ddd3f27c6L    # 0.34841868024943456

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x18c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedfeae622dbe2bL    # 0.937339011912575

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x18d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401201519dd241d5L    # -0.937339011912575

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x18e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd64c7ddd3f27c6L    # 0.34841868024943456

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x18f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef2252f7763adaL    # 0.9729399522055602

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x190

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcd934fe5454311L    # 0.2310581082806711

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x191

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40326cb01ababcefL    # -0.2310581082806711

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x192

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef2252f7763adaL    # 0.9729399522055602

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x193

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0c9704d5d898fL    # 0.524589682678469

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x194

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb3e4d3ef55712L    # 0.8513551931052652

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x195

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4014c1b2c10aa8eeL    # -0.8513551931052652

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x196

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0c9704d5d898fL    # 0.524589682678469

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x197

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9ef43ef29af94L    # 0.8104571982525948

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x198

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2bedb25faf3eaL    # 0.5857978574564389

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x199

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401d4124da050c16L    # -0.5857978574564389

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x19a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9ef43ef29af94L    # 0.8104571982525948

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x19b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc45576b1293e5aL    # 0.15885814333386145

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x19c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef97f924c9099bL    # 0.9873014181578584

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x19d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40106806db36f665L    # -0.9873014181578584

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x19e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc45576b1293e5aL    # 0.15885814333386145

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x19f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefb5797195d741L    # 0.99090263542778

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1a0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc139f0cedaf577L    # 0.1345807085071262

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1a1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403ec60f31250a89L    # -0.1345807085071262

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1a2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefb5797195d741L    # 0.99090263542778

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1a3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe36058b10659f3L    # 0.6055110414043255

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1a4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9777ef4c7d742L    # 0.7958369046088836

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1a5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401688810b3828beL    # -0.7958369046088836

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1a6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe36058b10659f3L    # 0.6055110414043255

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1a7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feba5aa673590d2L    # 0.8639728561215867

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1a8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe01cfc874c3eb7L    # 0.5035383837257176

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1a9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401fe30378b3c149L    # -0.5035383837257176

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1aa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feba5aa673590d2L    # 0.8639728561215867

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ab

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd04fb80e37fdaeL    # 0.25486565960451457

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ac

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feef178a3e473c2L    # 0.9669764710448521

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ad

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40110e875c1b8c3eL    # -0.9669764710448521

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ae

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd04fb80e37fdaeL    # 0.25486565960451457

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1af

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee426a4b2bc17eL    # 0.9456073253805213

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1b0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd4d1e24278e76aL    # 0.3253102921622629

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1b1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402b2e1dbd871896L    # -0.3253102921622629

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1b2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee426a4b2bc17eL    # 0.9456073253805213

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1b3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc1249d8011ee7L    # 0.43861623853852766

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1b4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecc1f0f3fcfc5cL    # 0.8986744656939538

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1b5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40133e0f0c0303a4L    # -0.8986744656939538

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1b6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc1249d8011ee7L    # 0.43861623853852766

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1b7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7f8ece3571771L    # 0.7491363945234594

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1b8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5328292a35596L    # 0.6624157775901718

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1b9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401acd7d6d5caa6aL    # -0.6624157775901718

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ba

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7f8ece3571771L    # 0.7491363945234594

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1bb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3faf656e79f820e0L    # 0.06132073630220858

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1bc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff095658e71adL    # 0.9981181129001492

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1bd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40100f6a9a718e53L    # -0.9981181129001492

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1be

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3faf656e79f820e0L    # 0.06132073630220858

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1bf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe1cafcbd5b09L    # 0.996312612182778

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1c0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb5f6d00a9aa419L    # 0.0857973123444399

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1c1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404a092ff5655be7L    # -0.0857973123444399

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1c2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe1cafcbd5b09L    # 0.996312612182778

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1c3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe49a449b9b0939L    # 0.6438315428897915

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1c4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe87c400fba2ebfL    # 0.765167265622459

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1c5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401783bff045d141L    # -0.765167265622459

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1c6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe49a449b9b0939L    # 0.6438315428897915

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1c7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec678b3488739bL    # 0.8876396204028539

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1c8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdd79775b86e389L    # 0.46053871095824

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1c9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40228688a4791c77L    # -0.46053871095824

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ca

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec678b3488739bL    # 0.8876396204028539

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1cb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd35410c2e18152L    # 0.3020059493192281

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1cc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee817bab4cd10dL    # 0.9533060403541939

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1cd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40117e8454b32ef3L    # -0.9533060403541939

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ce

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd35410c2e18152L    # 0.3020059493192281

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1cf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feebbd8c8df0b74L    # 0.9604305194155658

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd1d3443f4cdb3eL    # 0.2785196893850531

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402e2cbbc0b324c2L    # -0.2785196893850531

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feebbd8c8df0b74L    # 0.9604305194155658

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdedc1952ef78d6L    # 0.4821837720791228

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec08c426725549L    # 0.8760700941954066

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4013f73bd98daab7L    # -0.8760700941954066

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdedc1952ef78d6L    # 0.4821837720791228

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8fbcca3ef940dL    # 0.7807372285720945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3fed9534556d4L    # 0.6248594881423863

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1d9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401c0126acbaa92cL    # -0.6248594881423863

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1da

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8fbcca3ef940dL    # 0.7807372285720945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1db

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbc3785c79ec2d5L    # 0.11022220729388306

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1dc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefce15fd6da67bL    # 0.9939069700023561

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1dd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401031ea02925985L    # -0.9939069700023561

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1de

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbc3785c79ec2d5L    # 0.11022220729388306

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1df

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef7599a3a12077L    # 0.9831054874312163

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc76dd9de50bf31L    # 0.18303988795514095

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4038922621af40cfL    # -0.18303988795514095

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef7599a3a12077L    # 0.9831054874312163

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe21a799933eb59L    # 0.5657318107836132

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea63091b02fae2L    # 0.8245893027850253

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40159cf6e4fd051eL    # -0.8245893027850253

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe21a799933eb59L    # 0.5657318107836132

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fead2bc9e21d511L    # 0.8382247055548381

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1734d63dedb49L    # 0.5453249884220465

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1e9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401e8cb29c2124b7L    # -0.5453249884220465

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ea

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fead2bc9e21d511L    # 0.8382247055548381

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1eb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fca82a025b00451L    # 0.20711137619221856

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ec

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef4e603b0b2f2dL    # 0.9783173707196277

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ed

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010b19fc4f4d0d3L    # -0.9783173707196277

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ee

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fca82a025b00451L    # 0.20711137619221856

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ef

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedb6526238a09bL    # 0.9285060804732156

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd7c3a9311dcce7L    # 0.37131719395183754

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40283c56cee23319L    # -0.37131719395183754

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedb6526238a09bL    # 0.9285060804732156

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd9372a63bc93d7L    # 0.3939920400610481

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed696173c9e68bL    # 0.9191138516900578

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012969e8c361975L    # -0.9191138516900578

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd9372a63bc93d7L    # 0.3939920400610481

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6e74454eaa8afL    # 0.7157308252838187

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6591925f0783dL    # 0.6983762494089728

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1f9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4019a6e6da0f87c3L    # -0.6983762494089728

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1fa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6e74454eaa8afL    # 0.7157308252838187

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1fb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f8921d1fcdec784L    # 0.012271538285719925

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1fc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefff62169b92dbL    # 0.9999247018391445

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1fd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010009de9646d25L    # -0.9999247018391445

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1fe

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f8921d1fcdec784L    # 0.012271538285719925

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x1ff

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefffd8858e8a92L    # 0.9999811752826011

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x200

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f7921f0fe670071L    # 0.006135884649154475

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x201

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4086de0f0198ff8fL    # -0.006135884649154475

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x202

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefffd8858e8a92L    # 0.9999811752826011

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x203

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe67cf78491af10L    # 0.7027547444572253

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x204

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6c40d73c18275L    # 0.7114321957452164

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x205

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40193bf28c3e7d8bL    # -0.7114321957452164

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x206

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe67cf78491af10L    # 0.7027547444572253

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x207

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed7d0b02b8ecf9L    # 0.9215140393420419

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x208

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd8daa52ec8a4b0L    # 0.3883450466988263

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x209

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4027255ad1375b50L    # -0.3883450466988263

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x20a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed7d0b02b8ecf9L    # 0.9215140393420419

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x20b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd820e3b04eaac4L    # 0.37700741021641826

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x20c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feda383a9668988L    # 0.9262102421383114

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x20d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40125c7c56997678L    # -0.9262102421383114

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x20e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd820e3b04eaac4L    # 0.37700741021641826

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x20f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef58a2b1789e84L    # 0.9795697656854405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x210

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc9bdcbf2dc4366L    # 0.2011046348420919

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x211

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403642340d23bc9aL    # -0.2011046348420919

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x212

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef58a2b1789e84L    # 0.9795697656854405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x213

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe19d5a09f2b9b8L    # 0.5504579729366048

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x214

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feab7325916c0d4L    # 0.83486287498638

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x215

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401548cda6e93f2cL    # -0.83486287498638

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x216

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe19d5a09f2b9b8L    # 0.5504579729366048

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x217

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea7f58529fe69dL    # 0.8280450452577558

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x218

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1f0f08bbc861bL    # 0.560661576197336

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x219

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401e0f0f744379e5L    # -0.560661576197336

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x21a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea7f58529fe69dL    # 0.8280450452577558

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x21b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc83366e89c64c6L    # 0.18906866414980622

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x21c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef6c3f7df5bbb7L    # 0.9819638691095552

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x21d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401093c0820a4449L    # -0.9819638691095552

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x21e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc83366e89c64c6L    # 0.18906866414980622

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x21f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefd37914220b84L    # 0.9945645707342554

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x220

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbaa7b724495c03L    # 0.10412163387205457

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x221

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40455848dbb6a3fdL    # -0.10412163387205457

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x222

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefd37914220b84L    # 0.9945645707342554

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x223

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe425ff178e6bb1L    # 0.629638238914927

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x224

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8dc45331698ccL    # 0.7768884656732324

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x225

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401723bacce96734L    # -0.7768884656732324

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x226

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe425ff178e6bb1L    # 0.629638238914927

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x227

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec20de3fa971b0L    # 0.8790122264286335

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x228

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fde83e0eaf85114L    # 0.47679923006332214

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x229

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40217c1f1507aeecL    # -0.47679923006332214

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x22a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec20de3fa971b0L    # 0.8790122264286335

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x22b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd233bbabc3bb71L    # 0.2844075372112718

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x22c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeadb2e8e7a88eL    # 0.9587034748958716

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x22d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011524d17185772L    # -0.9587034748958716

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x22e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd233bbabc3bb71L    # 0.2844075372112718

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x22f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee9084361df7f2L    # 0.9551411683057707

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x230

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd2f422daec0387L    # 0.29615088824362384

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x231

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402d0bdd2513fc79L    # -0.29615088824362384

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x232

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee9084361df7f2L    # 0.9551411683057707

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x233

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fddd28f1481cc58L    # 0.4659764957679662

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x234

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec5042012b6907L    # 0.8847970984309378

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x235

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4013afbdfed496f9L    # -0.8847970984309378

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x236

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fddd28f1481cc58L    # 0.4659764957679662

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x237

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe89c7e9a4dd4aaL    # 0.7691033376455796

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x238

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe473b51b987347L    # 0.6391244448637757

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x239

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401b8c4ae4678cb9L    # -0.6391244448637757

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x23a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe89c7e9a4dd4aaL    # 0.7691033376455796

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x23b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb787586a5d5b21L    # 0.09190895649713272

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x23c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefdd539ff1f456L    # 0.9957674144676598

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x23d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401022ac600e0baaL    # -0.9957674144676598

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x23e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb787586a5d5b21L    # 0.09190895649713272

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x23f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff3830f8d575cL    # 0.9984755805732948

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x240

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fac428d12c0d7e3L    # 0.05519524434968994

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x241

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4053bd72ed3f281dL    # -0.05519524434968994

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x242

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff3830f8d575cL    # 0.9984755805732948

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x243

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5581038975137L    # 0.6669999223036375

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x244

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7d7836cc33db2L    # 0.745057785441466

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x245

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4018287c933cc24eL    # -0.745057785441466

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x246

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5581038975137L    # 0.6669999223036375

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x247

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecd7d9898b32f6L    # 0.901348847046022

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x248

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdbb7cf2304bd01L    # 0.43309381885315196

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x249

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40244830dcfb42ffL    # -0.43309381885315196

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x24a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecd7d9898b32f6L    # 0.901348847046022

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x24b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd530d880af3c24L    # 0.33110630575987643

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x24c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee31eae870ce25L    # 0.9435934581619604

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x24d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011ce15178f31dbL    # -0.9435934581619604

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x24e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd530d880af3c24L    # 0.33110630575987643

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x24f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feefe220c0b95ecL    # 0.9685220942744173

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x250

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcfdcdc1adfedf9L    # 0.24892760574572018

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x251

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40302323e5201207L    # -0.24892760574572018

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x252

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feefe220c0b95ecL    # 0.9685220942744173

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x253

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0485626ae221aL    # 0.508830142543107

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x254

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb8c38d27504e9L    # 0.8608669386377673

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x255

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401473c72d8afb17L    # -0.8608669386377673

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x256

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0485626ae221aL    # 0.508830142543107

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x257

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe995cf2ed80d22L    # 0.799537269107905

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x258

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe338400d0c8e57L    # 0.600616479383869

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x259

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401cc7bff2f371a9L    # -0.600616479383869

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x25a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe995cf2ed80d22L    # 0.799537269107905

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x25b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc20116d4ec7bcfL    # 0.14065823933284924

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x25c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefae8e8e46cfbbL    # 0.9900582102622971

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x25d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010517171b93045L    # -0.9900582102622971

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x25e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc20116d4ec7bcfL    # 0.14065823933284924

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x25f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef9fce55adb2c8L    # 0.9882575677307495

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x260

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc38edbb0cd8d14L    # 0.15279718525844344

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x261

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403c71244f3272ecL    # -0.15279718525844344

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x262

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef9fce55adb2c8L    # 0.9882575677307495

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x263

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2e780e3e8ea17L    # 0.5907597018588743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x264

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9d1b1f5ea80d5L    # 0.8068475535437992

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x265

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40162e4e0a157f2bL    # -0.8068475535437992

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x266

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2e780e3e8ea17L    # 0.5907597018588743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x267

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb5889fe921405L    # 0.8545579883654005

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x268

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe09e907417c5e1L    # 0.5193559901655896

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x269

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401f616f8be83a1fL    # -0.5193559901655896

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x26a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb5889fe921405L    # 0.8545579883654005

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x26b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fce56ca1e101a1bL    # 0.2370236059943672

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x26c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef168f53f7205dL    # 0.9715038909862518

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x26d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010e970ac08dfa3L    # -0.9715038909862518

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x26e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fce56ca1e101a1bL    # 0.2370236059943672

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x26f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee100cca2980acL    # 0.9394592236021899

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x270

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd5ee27379ea693L    # 0.3426607173119944

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x271

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402a11d8c861596dL    # -0.3426607173119944

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x272

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee100cca2980acL    # 0.9394592236021899

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x273

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb020d6c7f4009L    # 0.4220002707997997

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x274

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed02d4feb2bd92L    # 0.9065957045149153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x275

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012fd2b014d426eL    # -0.9065957045149153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x276

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb020d6c7f4009L    # 0.4220002707997997

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x277

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe79400574f55e5L    # 0.7368165688773699

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x278

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5a28d2a5d7250L    # 0.6760927035753159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x279

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401a5d72d5a28db0L    # -0.6760927035753159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x27a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe79400574f55e5L    # 0.7368165688773699

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x27b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa5fc00d290cd43L    # 0.04293825693494082

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x27c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff871dadb81dfL    # 0.9990777277526454

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x27d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010078e25247e21L    # -0.9990777277526454

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x27e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa5fc00d290cd43L    # 0.04293825693494082

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x27f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffc251df1d3f8L    # 0.9995294175010931

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x280

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f9f693731d1cf01L    # 0.030674803176636626

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x281

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x406096c8ce2e30ffL    # -0.030674803176636626

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x282

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffc251df1d3f8L    # 0.9995294175010931

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x283

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5ec3495837074L    # 0.6850836677727004

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x284

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe74f948da8d28dL    # 0.7284643904482252

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x285

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4018b06b72572d73L    # -0.7284643904482252

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x286

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5ec3495837074L    # 0.6850836677727004

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x287

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed2cb220e0ef9fL    # 0.9117060320054299

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x288

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fda4b4127dea1e5L    # 0.41084317105790397

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x289

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4025b4bed8215e1bL    # -0.41084317105790397

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x28a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed2cb220e0ef9fL    # 0.9117060320054299

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x28b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd6aa9d7dc77e17L    # 0.3541635254204904

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x28c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feded05f7de47daL    # 0.9351835099389476

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x28d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401212fa0821b826L    # -0.9351835099389476

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x28e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd6aa9d7dc77e17L    # 0.3541635254204904

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x28f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef2dc9c9089a9dL    # 0.9743393827855759

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x290

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcccf8cb312b286L    # 0.22508391135979283

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x291

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403330734ced4d7aL    # -0.22508391135979283

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x292

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef2dc9c9089a9dL    # 0.9743393827855759

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x293

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0f426bb2a8e7eL    # 0.5298036246862947

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x294

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb23cd470013b4L    # 0.8481203448032972

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x295

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4014dc32b8ffec4cL    # -0.8481203448032972

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x296

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0f426bb2a8e7eL    # 0.5298036246862947

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x297

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea0c95eabaf937L    # 0.8140363297059484

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x298

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2960727629ca8L    # 0.5808139580957645

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x299

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401d69f8d89d6358L    # -0.5808139580957645

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x29a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea0c95eabaf937L    # 0.8140363297059484

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x29b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc51bdf8597c5f2L    # 0.16491312048996992

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x29c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef8fd5ffae41dbL    # 0.9863080972445987

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x29d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010702a0051be25L    # -0.9863080972445987

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x29e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc51bdf8597c5f2L    # 0.16491312048996992

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x29f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefbc1617e44186L    # 0.9917097536690995

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2a0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc072a047ba831dL    # 0.12849811079379317

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2a1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403f8d5fb8457ce3L    # -0.12849811079379317

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2a2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefbc1617e44186L    # 0.9917097536690995

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2a3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3884185dfeb22L    # 0.6103828062763095

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2a4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe958efe48e6dd7L    # 0.7921065773002124

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2a5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4016a7101b719229L    # -0.7921065773002124

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2a6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3884185dfeb22L    # 0.6103828062763095

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2a7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febbed7c49380eaL    # 0.8670462455156926

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2a8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdfe2f64be71210L    # 0.49822766697278187

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2a9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40201d09b418edf0L    # -0.49822766697278187

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2aa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febbed7c49380eaL    # 0.8670462455156926

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ab

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd0b0d9cfdbdb90L    # 0.2607941179152755

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ac

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feee482e25a9dbcL    # 0.9653944416976894

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ad

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40111b7d1da56244L    # -0.9653944416976894

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ae

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd0b0d9cfdbdb90L    # 0.2607941179152755

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2af

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee529f04729ffcL    # 0.9475855910177411

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2b0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd472b8a5571054L    # 0.3195020308160157

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2b1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402b8d475aa8efacL    # -0.3195020308160157

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2b2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee529f04729ffcL    # 0.9475855910177411

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2b3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc6c7f4997000bL    # 0.44412214457042926

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2b4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecabc169a0b900L    # 0.8959662497561851

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2b5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4013543e965f4700L    # -0.8959662497561851

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2b6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc6c7f4997000bL    # 0.44412214457042926

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2b7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe81a1b33b57accL    # 0.7531867990436125

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2b8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe50cc09f59a09bL    # 0.6578066932970786

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2b9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401af33f60a65f65L    # -0.6578066932970786

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ba

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe81a1b33b57accL    # 0.7531867990436125

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2bb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb1440134d709b3L    # 0.06744391956366406

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2bc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefed58ecb673c4L    # 0.9977230666441916

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2bd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401012a713498c3cL    # -0.9977230666441916

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2be

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb1440134d709b3L    # 0.06744391956366406

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2bf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe5f3af2e3940L    # 0.9968202992911657

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2c0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb4661179272096L    # 0.07968243797143013

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2c1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404b99ee86d8df6aL    # -0.07968243797143013

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2c2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe5f3af2e3940L    # 0.9968202992911657

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2c3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4c0a145ec0004L    # 0.6485144010221124

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2c4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe85bc51ae958ccL    # 0.7612023854842618

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2c5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4017a43ae516a734L    # -0.7612023854842618

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2c6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4c0a145ec0004L    # 0.6485144010221124

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2c7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec7e8e52233cf3L    # 0.8904487232447579

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2c8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdd2016e8e9db5bL    # 0.45508358712634384

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2c9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4022dfe9171624a5L    # -0.45508358712634384

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ca

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec7e8e52233cf3L    # 0.8904487232447579

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2cb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd3b3cefa0414b7L    # 0.30784964004153487

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2cc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee7227db6a9744L    # 0.9514350209690083

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2cd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40118dd8249568bcL    # -0.9514350209690083

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ce

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd3b3cefa0414b7L    # 0.30784964004153487

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2cf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feec9b2d3c3bf84L    # 0.9621214042690416

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2d0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd172a0d7765177L    # 0.272621355449949

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2d1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402e8d5f2889ae89L    # -0.272621355449949

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2d2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feec9b2d3c3bf84L    # 0.9621214042690416

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2d3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf3405963fd067L    # 0.48755016014843594

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2d4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febf064e15377ddL    # 0.8730949784182901

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2d5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40140f9b1eac8823L    # -0.8730949784182901

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2d6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf3405963fd067L    # 0.48755016014843594

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2d7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe91b166fd49da2L    # 0.7845565971555752

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2d8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3d78238c58344L    # 0.6200572117632892

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2d9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401c287dc73a7cbcL    # -0.6200572117632892

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2da

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe91b166fd49da2L    # 0.7845565971555752

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2db

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbdc70ecbae9fc9L    # 0.11631863091190477

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2dc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefc8646cfeb721L    # 0.9932119492347945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2dd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010379b930148dfL    # -0.9932119492347945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2de

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbdc70ecbae9fc9L    # 0.11631863091190477

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2df

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef7ea629e63d6eL    # 0.984210092386929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2e0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc6a81304f64ab2L    # 0.17700422041214875

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2e1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403957ecfb09b54eL    # -0.17700422041214875

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2e2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef7ea629e63d6eL    # 0.984210092386929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2e3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe243d5fb98ac1fL    # 0.5707807458869673

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2e4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea4678c8119ac8L    # 0.8211025149911046

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2e5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4015b98737ee6538L    # -0.8211025149911046

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2e6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe243d5fb98ac1fL    # 0.5707807458869673

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2e7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feaee04b43c1474L    # 0.8415549774368984

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2e8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe14915af336cebL    # 0.5401714727298929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2e9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401eb6ea50cc9315L    # -0.5401714727298929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ea

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feaee04b43c1474L    # 0.8415549774368984

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2eb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcb4732ef3d6722L    # 0.21311031991609136

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ec

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef43d085ff92ddL    # 0.9770281426577544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ed

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010bc2f7a006d23L    # -0.9770281426577544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ee

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcb4732ef3d6722L    # 0.21311031991609136

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ef

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedc8d7cb410260L    # 0.9307669610789837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2f0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd766340f2418f6L    # 0.36561299780477385

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2f1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402899cbf0dbe70aL    # -0.36561299780477385

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2f2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedc8d7cb410260L    # 0.9307669610789837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2f3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd993716141bdffL    # 0.39962419984564684

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2f4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed556f52e93eb1L    # 0.9166790599210427

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2f5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012aa90ad16c14fL    # -0.9166790599210427

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2f6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd993716141bdffL    # 0.39962419984564684

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2f7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe70a42b3176d7aL    # 0.7200025079613817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2f8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe63503a31c1be9L    # 0.693971460889654

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2f9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4019cafc5ce3e417L    # -0.693971460889654

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2fa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe70a42b3176d7aL    # 0.7200025079613817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2fb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f92d936bbe30efdL    # 0.01840672990580482

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2fc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffe9cb44b51a1L    # 0.9998305817958234

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2fd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401001634bb4ae5fL    # -0.9998305817958234

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2fe

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f92d936bbe30efdL    # 0.01840672990580482

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x2ff

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffe9cb44b51a1L    # 0.9998305817958234

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x300

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f92d936bbe30efdL    # 0.01840672990580482

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x301

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x406d26c9441cf103L    # -0.01840672990580482

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x302

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffe9cb44b51a1L    # 0.9998305817958234

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x303

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe63503a31c1be9L    # 0.693971460889654

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x304

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe70a42b3176d7aL    # 0.7200025079613817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x305

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4018f5bd4ce89286L    # -0.7200025079613817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x306

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe63503a31c1be9L    # 0.693971460889654

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x307

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed556f52e93eb1L    # 0.9166790599210427

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x308

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd993716141bdffL    # 0.39962419984564684

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x309

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40266c8e9ebe4201L    # -0.39962419984564684

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x30a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed556f52e93eb1L    # 0.9166790599210427

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x30b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd766340f2418f6L    # 0.36561299780477385

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x30c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedc8d7cb410260L    # 0.9307669610789837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x30d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012372834befda0L    # -0.9307669610789837

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x30e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd766340f2418f6L    # 0.36561299780477385

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x30f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef43d085ff92ddL    # 0.9770281426577544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x310

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcb4732ef3d6722L    # 0.21311031991609136

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x311

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4034b8cd10c298deL    # -0.21311031991609136

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x312

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef43d085ff92ddL    # 0.9770281426577544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x313

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe14915af336cebL    # 0.5401714727298929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x314

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feaee04b43c1474L    # 0.8415549774368984

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x315

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401511fb4bc3eb8cL    # -0.8415549774368984

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x316

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe14915af336cebL    # 0.5401714727298929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x317

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea4678c8119ac8L    # 0.8211025149911046

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x318

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe243d5fb98ac1fL    # 0.5707807458869673

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x319

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401dbc2a046753e1L    # -0.5707807458869673

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x31a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea4678c8119ac8L    # 0.8211025149911046

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x31b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc6a81304f64ab2L    # 0.17700422041214875

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x31c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef7ea629e63d6eL    # 0.984210092386929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x31d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40108159d619c292L    # -0.984210092386929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x31e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc6a81304f64ab2L    # 0.17700422041214875

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x31f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefc8646cfeb721L    # 0.9932119492347945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x320

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbdc70ecbae9fc9L    # 0.11631863091190477

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x321

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404238f134516037L    # -0.11631863091190477

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x322

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefc8646cfeb721L    # 0.9932119492347945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x323

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3d78238c58344L    # 0.6200572117632892

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x324

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe91b166fd49da2L    # 0.7845565971555752

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x325

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4016e4e9902b625eL    # -0.7845565971555752

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x326

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3d78238c58344L    # 0.6200572117632892

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x327

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febf064e15377ddL    # 0.8730949784182901

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x328

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf3405963fd067L    # 0.48755016014843594

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x329

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4020cbfa69c02f99L    # -0.48755016014843594

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x32a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febf064e15377ddL    # 0.8730949784182901

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x32b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd172a0d7765177L    # 0.272621355449949

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x32c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feec9b2d3c3bf84L    # 0.9621214042690416

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x32d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011364d2c3c407cL    # -0.9621214042690416

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x32e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd172a0d7765177L    # 0.272621355449949

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x32f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee7227db6a9744L    # 0.9514350209690083

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x330

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd3b3cefa0414b7L    # 0.30784964004153487

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x331

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402c4c3105fbeb49L    # -0.30784964004153487

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x332

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee7227db6a9744L    # 0.9514350209690083

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x333

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdd2016e8e9db5bL    # 0.45508358712634384

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x334

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec7e8e52233cf3L    # 0.8904487232447579

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x335

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40138171addcc30dL    # -0.8904487232447579

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x336

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdd2016e8e9db5bL    # 0.45508358712634384

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x337

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe85bc51ae958ccL    # 0.7612023854842618

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x338

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4c0a145ec0004L    # 0.6485144010221124

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x339

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401b3f5eba13fffcL    # -0.6485144010221124

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x33a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe85bc51ae958ccL    # 0.7612023854842618

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x33b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb4661179272096L    # 0.07968243797143013

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x33c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe5f3af2e3940L    # 0.9968202992911657

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x33d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40101a0c50d1c6c0L    # -0.9968202992911657

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x33e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb4661179272096L    # 0.07968243797143013

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x33f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefed58ecb673c4L    # 0.9977230666441916

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x340

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb1440134d709b3L    # 0.06744391956366406

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x341

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404ebbfecb28f64dL    # -0.06744391956366406

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x342

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefed58ecb673c4L    # 0.9977230666441916

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x343

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe50cc09f59a09bL    # 0.6578066932970786

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x344

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe81a1b33b57accL    # 0.7531867990436125

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x345

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4017e5e4cc4a8534L    # -0.7531867990436125

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x346

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe50cc09f59a09bL    # 0.6578066932970786

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x347

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecabc169a0b900L    # 0.8959662497561851

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x348

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc6c7f4997000bL    # 0.44412214457042926

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x349

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40239380b668fff5L    # -0.44412214457042926

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x34a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecabc169a0b900L    # 0.8959662497561851

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x34b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd472b8a5571054L    # 0.3195020308160157

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x34c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee529f04729ffcL    # 0.9475855910177411

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x34d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011ad60fb8d6004L    # -0.9475855910177411

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x34e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd472b8a5571054L    # 0.3195020308160157

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x34f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feee482e25a9dbcL    # 0.9653944416976894

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x350

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd0b0d9cfdbdb90L    # 0.2607941179152755

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x351

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402f4f2630242470L    # -0.2607941179152755

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x352

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feee482e25a9dbcL    # 0.9653944416976894

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x353

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdfe2f64be71210L    # 0.49822766697278187

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x354

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febbed7c49380eaL    # 0.8670462455156926

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x355

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401441283b6c7f16L    # -0.8670462455156926

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x356

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdfe2f64be71210L    # 0.49822766697278187

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x357

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe958efe48e6dd7L    # 0.7921065773002124

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x358

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3884185dfeb22L    # 0.6103828062763095

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x359

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401c77be7a2014deL    # -0.6103828062763095

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x35a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe958efe48e6dd7L    # 0.7921065773002124

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x35b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc072a047ba831dL    # 0.12849811079379317

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x35c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefbc1617e44186L    # 0.9917097536690995

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x35d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401043e9e81bbe7aL    # -0.9917097536690995

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x35e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc072a047ba831dL    # 0.12849811079379317

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x35f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef8fd5ffae41dbL    # 0.9863080972445987

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x360

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc51bdf8597c5f2L    # 0.16491312048996992

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x361

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403ae4207a683a0eL    # -0.16491312048996992

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x362

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef8fd5ffae41dbL    # 0.9863080972445987

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x363

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2960727629ca8L    # 0.5808139580957645

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x364

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea0c95eabaf937L    # 0.8140363297059484

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x365

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4015f36a154506c9L    # -0.8140363297059484

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x366

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2960727629ca8L    # 0.5808139580957645

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x367

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb23cd470013b4L    # 0.8481203448032972

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x368

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0f426bb2a8e7eL    # 0.5298036246862947

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x369

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401f0bd944d57182L    # -0.5298036246862947

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x36a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb23cd470013b4L    # 0.8481203448032972

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x36b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcccf8cb312b286L    # 0.22508391135979283

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x36c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef2dc9c9089a9dL    # 0.9743393827855759

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x36d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010d23636f76563L    # -0.9743393827855759

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x36e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcccf8cb312b286L    # 0.22508391135979283

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x36f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feded05f7de47daL    # 0.9351835099389476

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x370

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd6aa9d7dc77e17L    # 0.3541635254204904

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x371

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40295562823881e9L    # -0.3541635254204904

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x372

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feded05f7de47daL    # 0.9351835099389476

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x373

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fda4b4127dea1e5L    # 0.41084317105790397

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x374

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed2cb220e0ef9fL    # 0.9117060320054299

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x375

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012d34ddf1f1061L    # -0.9117060320054299

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x376

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fda4b4127dea1e5L    # 0.41084317105790397

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x377

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe74f948da8d28dL    # 0.7284643904482252

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x378

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5ec3495837074L    # 0.6850836677727004

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x379

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401a13cb6a7c8f8cL    # -0.6850836677727004

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x37a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe74f948da8d28dL    # 0.7284643904482252

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x37b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f9f693731d1cf01L    # 0.030674803176636626

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x37c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffc251df1d3f8L    # 0.9995294175010931

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x37d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401003dae20e2c08L    # -0.9995294175010931

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x37e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f9f693731d1cf01L    # 0.030674803176636626

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x37f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff871dadb81dfL    # 0.9990777277526454

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x380

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa5fc00d290cd43L    # 0.04293825693494082

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x381

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x405a03ff2d6f32bdL    # -0.04293825693494082

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x382

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff871dadb81dfL    # 0.9990777277526454

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x383

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5a28d2a5d7250L    # 0.6760927035753159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x384

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe79400574f55e5L    # 0.7368165688773699

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x385

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40186bffa8b0aa1bL    # -0.7368165688773699

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x386

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5a28d2a5d7250L    # 0.6760927035753159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x387

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed02d4feb2bd92L    # 0.9065957045149153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x388

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb020d6c7f4009L    # 0.4220002707997997

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x389

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4024fdf29380bff7L    # -0.4220002707997997

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x38a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed02d4feb2bd92L    # 0.9065957045149153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x38b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd5ee27379ea693L    # 0.3426607173119944

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x38c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee100cca2980acL    # 0.9394592236021899

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x38d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011eff335d67f54L    # -0.9394592236021899

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x38e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd5ee27379ea693L    # 0.3426607173119944

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x38f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef168f53f7205dL    # 0.9715038909862518

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x390

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fce56ca1e101a1bL    # 0.2370236059943672

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x391

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4031a935e1efe5e5L    # -0.2370236059943672

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x392

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef168f53f7205dL    # 0.9715038909862518

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x393

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe09e907417c5e1L    # 0.5193559901655896

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x394

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb5889fe921405L    # 0.8545579883654005

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x395

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4014a776016debfbL    # -0.8545579883654005

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x396

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe09e907417c5e1L    # 0.5193559901655896

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x397

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9d1b1f5ea80d5L    # 0.8068475535437992

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x398

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2e780e3e8ea17L    # 0.5907597018588743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x399

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401d187f1c1715e9L    # -0.5907597018588743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x39a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9d1b1f5ea80d5L    # 0.8068475535437992

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x39b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc38edbb0cd8d14L    # 0.15279718525844344

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x39c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef9fce55adb2c8L    # 0.9882575677307495

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x39d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40106031aa524d38L    # -0.9882575677307495

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x39e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc38edbb0cd8d14L    # 0.15279718525844344

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x39f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefae8e8e46cfbbL    # 0.9900582102622971

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3a0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc20116d4ec7bcfL    # 0.14065823933284924

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3a1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403dfee92b138431L    # -0.14065823933284924

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3a2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefae8e8e46cfbbL    # 0.9900582102622971

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3a3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe338400d0c8e57L    # 0.600616479383869

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3a4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe995cf2ed80d22L    # 0.799537269107905

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3a5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40166a30d127f2deL    # -0.799537269107905

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3a6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe338400d0c8e57L    # 0.600616479383869

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3a7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb8c38d27504e9L    # 0.8608669386377673

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3a8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0485626ae221aL    # 0.508830142543107

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3a9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401fb7a9d951dde6L    # -0.508830142543107

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3aa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb8c38d27504e9L    # 0.8608669386377673

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ab

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcfdcdc1adfedf9L    # 0.24892760574572018

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ac

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feefe220c0b95ecL    # 0.9685220942744173

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ad

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401101ddf3f46a14L    # -0.9685220942744173

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ae

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcfdcdc1adfedf9L    # 0.24892760574572018

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3af

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee31eae870ce25L    # 0.9435934581619604

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3b0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd530d880af3c24L    # 0.33110630575987643

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3b1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402acf277f50c3dcL    # -0.33110630575987643

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3b2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee31eae870ce25L    # 0.9435934581619604

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3b3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdbb7cf2304bd01L    # 0.43309381885315196

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3b4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecd7d9898b32f6L    # 0.901348847046022

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3b5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401328267674cd0aL    # -0.901348847046022

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3b6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdbb7cf2304bd01L    # 0.43309381885315196

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3b7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7d7836cc33db2L    # 0.745057785441466

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3b8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5581038975137L    # 0.6669999223036375

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3b9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401aa7efc768aec9L    # -0.6669999223036375

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ba

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7d7836cc33db2L    # 0.745057785441466

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3bb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fac428d12c0d7e3L    # 0.05519524434968994

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3bc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff3830f8d575cL    # 0.9984755805732948

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3bd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40100c7cf072a8a4L    # -0.9984755805732948

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3be

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fac428d12c0d7e3L    # 0.05519524434968994

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3bf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefdd539ff1f456L    # 0.9957674144676598

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3c0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb787586a5d5b21L    # 0.09190895649713272

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3c1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404878a795a2a4dfL    # -0.09190895649713272

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3c2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefdd539ff1f456L    # 0.9957674144676598

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3c3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe473b51b987347L    # 0.6391244448637757

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3c4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe89c7e9a4dd4aaL    # 0.7691033376455796

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3c5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4017638165b22b56L    # -0.7691033376455796

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3c6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe473b51b987347L    # 0.6391244448637757

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3c7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec5042012b6907L    # 0.8847970984309378

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3c8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fddd28f1481cc58L    # 0.4659764957679662

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3c9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40222d70eb7e33a8L    # -0.4659764957679662

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ca

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec5042012b6907L    # 0.8847970984309378

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3cb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd2f422daec0387L    # 0.29615088824362384

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3cc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee9084361df7f2L    # 0.9551411683057707

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3cd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40116f7bc9e2080eL    # -0.9551411683057707

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ce

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd2f422daec0387L    # 0.29615088824362384

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3cf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeadb2e8e7a88eL    # 0.9587034748958716

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd233bbabc3bb71L    # 0.2844075372112718

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402dcc44543c448fL    # -0.2844075372112718

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeadb2e8e7a88eL    # 0.9587034748958716

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fde83e0eaf85114L    # 0.47679923006332214

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec20de3fa971b0L    # 0.8790122264286335

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4013df21c0568e50L    # -0.8790122264286335

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fde83e0eaf85114L    # 0.47679923006332214

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8dc45331698ccL    # 0.7768884656732324

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe425ff178e6bb1L    # 0.629638238914927

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3d9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401bda00e871944fL    # -0.629638238914927

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3da

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8dc45331698ccL    # 0.7768884656732324

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3db

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbaa7b724495c03L    # 0.10412163387205457

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3dc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefd37914220b84L    # 0.9945645707342554

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3dd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40102c86ebddf47cL    # -0.9945645707342554

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3de

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbaa7b724495c03L    # 0.10412163387205457

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3df

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef6c3f7df5bbb7L    # 0.9819638691095552

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc83366e89c64c6L    # 0.18906866414980622

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4037cc9917639b3aL    # -0.18906866414980622

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef6c3f7df5bbb7L    # 0.9819638691095552

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1f0f08bbc861bL    # 0.560661576197336

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea7f58529fe69dL    # 0.8280450452577558

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401580a7ad601963L    # -0.8280450452577558

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1f0f08bbc861bL    # 0.560661576197336

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feab7325916c0d4L    # 0.83486287498638

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe19d5a09f2b9b8L    # 0.5504579729366048

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3e9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401e62a5f60d4648L    # -0.5504579729366048

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ea

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feab7325916c0d4L    # 0.83486287498638

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3eb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc9bdcbf2dc4366L    # 0.2011046348420919

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ec

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef58a2b1789e84L    # 0.9795697656854405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ed

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010a75d4e87617cL    # -0.9795697656854405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ee

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc9bdcbf2dc4366L    # 0.2011046348420919

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ef

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feda383a9668988L    # 0.9262102421383114

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd820e3b04eaac4L    # 0.37700741021641826

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4027df1c4fb1553cL    # -0.37700741021641826

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feda383a9668988L    # 0.9262102421383114

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd8daa52ec8a4b0L    # 0.3883450466988263

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed7d0b02b8ecf9L    # 0.9215140393420419

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401282f4fd471307L    # -0.9215140393420419

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd8daa52ec8a4b0L    # 0.3883450466988263

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6c40d73c18275L    # 0.7114321957452164

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe67cf78491af10L    # 0.7027547444572253

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3f9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401983087b6e50f0L    # -0.7027547444572253

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3fa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6c40d73c18275L    # 0.7114321957452164

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3fb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f7921f0fe670071L    # 0.006135884649154475

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3fc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefffd8858e8a92L    # 0.9999811752826011

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3fd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401000277a71756eL    # -0.9999811752826011

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3fe

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f7921f0fe670071L    # 0.006135884649154475

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x3ff

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffff621621d02L    # 0.9999952938095762

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x400

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f6921f8becca4baL    # 0.003067956762965976

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x401

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4096de0741335b46L    # -0.003067956762965976

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x402

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffff621621d02L    # 0.9999952938095762

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x403

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe68ed1eaa19c71L    # 0.7049340803759049

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x404

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6b25ced2fe29cL    # 0.7092728264388657

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x405

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40194da312d01d64L    # -0.7092728264388657

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x406

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe68ed1eaa19c71L    # 0.7049340803759049

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x407

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed86c48445a44fL    # 0.9227011283338785

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x408

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd8ac4b86d5ed44L    # 0.38551605384391885

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x409

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402753b4792a12bcL    # -0.38551605384391885

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x40a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed86c48445a44fL    # 0.9227011283338785

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x40b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd84f6aaaf3903fL    # 0.37984720892405116

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x40c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed9a00dd8b3d46L    # 0.9250492407826776

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x40d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401265ff2274c2baL    # -0.9250492407826776

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x40e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd84f6aaaf3903fL    # 0.37984720892405116

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x40f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef5da6ed43685dL    # 0.9801821359681174

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x410

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc95b49e9b62afaL    # 0.1980984107179536

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x411

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4036a4b61649d506L    # -0.1980984107179536

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x412

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef5da6ed43685dL    # 0.9801821359681174

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x413

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1b250171373bfL    # 0.5530167055800276

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x414

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feaa9547a2cb98eL    # 0.8331701647019132

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x415

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401556ab85d34672L    # -0.8331701647019132

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x416

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1b250171373bfL    # 0.5530167055800276

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x417

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea8d676e545ad2L    # 0.829761233794523

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x418

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1dc1b64dc4872L    # 0.5581185312205561

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x419

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401e23e49b23b78eL    # -0.5581185312205561

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x41a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea8d676e545ad2L    # 0.829761233794523

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x41b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc8961727c41804L    # 0.19208039704989244

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x41c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef677556883ceeL    # 0.9813791933137546

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x41d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010988aa977c312L    # -0.9813791933137546

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x41e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc8961727c41804L    # 0.19208039704989244

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x41f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefd60d2da75c9eL    # 0.9948793307948056

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x420

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb9dfb6eb24a85cL    # 0.10106986275482782

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x421

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4046204914db57a4L    # -0.10106986275482782

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x422

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefd60d2da75c9eL    # 0.9948793307948056

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x423

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4397f5b2a4380L    # 0.6320187359398091

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x424

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8cc6a75184655L    # 0.7749531065948739

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x425

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401733958ae7b9abL    # -0.7749531065948739

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x426

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4397f5b2a4380L    # 0.6320187359398091

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x427

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec2cd14931e3f1L    # 0.8804708890521608

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x428

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fde57a86d3cd825L    # 0.47410021465055

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x429

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4021a85792c327dbL    # -0.47410021465055

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x42a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec2cd14931e3f1L    # 0.8804708890521608

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x42b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd263e6995554baL    # 0.2873474595447295

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x42c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feea68393e65800L    # 0.9578264130275329

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x42d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011597c6c19a800L    # -0.9578264130275329

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x42e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd263e6995554baL    # 0.2873474595447295

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x42f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee97ec36016b30L    # 0.9560452513499964

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x430

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd2c41a4e954520L    # 0.29321916269425863

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x431

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402d3be5b16abae0L    # -0.29321916269425863

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x432

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee97ec36016b30L    # 0.9560452513499964

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x433

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fddfeff66a941deL    # 0.46868882203582796

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x434

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec44833141c004L    # 0.8833633386657316

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x435

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4013bb7ccebe3ffcL    # -0.8833633386657316

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x436

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fddfeff66a941deL    # 0.46868882203582796

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x437

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8ac871ede1d88L    # 0.7710605242618138

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x438

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4605a692b32a2L    # 0.6367618612362842

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x439

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401b9fa596d4cd5eL    # -0.6367618612362842

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x43a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8ac871ede1d88L    # 0.7710605242618138

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x43b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb84f8712c130a1L    # 0.094963495329639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x43c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefdafa7514538cL    # 0.9954807554919269

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x43d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401025058aebac74L    # -0.9954807554919269

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x43e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb84f8712c130a1L    # 0.094963495329639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x43f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff4dc54b1bed3L    # 0.9986402181802653

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x440

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3faab101bd5f8317L    # 0.052131704680283324

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x441

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40554efe42a07ce9L    # -0.052131704680283324

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x442

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff4dc54b1bed3L    # 0.9986402181802653

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x443

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe56ac35197649fL    # 0.6692825883466361

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x444

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7c6b89ce2d333L    # 0.7430079521351217

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x445

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40183947631d2ccdL    # -0.7430079521351217

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x446

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe56ac35197649fL    # 0.6692825883466361

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x447

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fece2b32799a060L    # 0.9026733182372588

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x448

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb8a7814fd5693L    # 0.4303264813400826

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x449

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40247587eb02a96dL    # -0.4303264813400826

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x44a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fece2b32799a060L    # 0.9026733182372588

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x44b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd5604012f467b4L    # 0.3339996514420094

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x44c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee298f4439197aL    # 0.9425731976014469

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x44d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011d670bbc6e686L    # -0.9425731976014469

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x44e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd5604012f467b4L    # 0.3339996514420094

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x44f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef045a14cf738cL    # 0.9692812353565485

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x450

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcf7b7480bd3802L    # 0.24595505033579462

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x451

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4030848b7f42c7feL    # -0.24595505033579462

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x452

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef045a14cf738cL    # 0.9692812353565485

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x453

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe05df3ec31b8b7L    # 0.5114688504379704

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x454

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb7f6686e792e9L    # 0.8593018183570084

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x455

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4014809979186d17L    # -0.8593018183570084

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x456

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe05df3ec31b8b7L    # 0.5114688504379704

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x457

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9a4dfa42b06b2L    # 0.8013761717231402

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x458

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe32421ec49a61fL    # 0.5981607069963423

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x459

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401cdbde13b659e1L    # -0.5981607069963423

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x45a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9a4dfa42b06b2L    # 0.8013761717231402

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x45b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc264994dfd3409L    # 0.14369503315029444

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x45c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefaafbcb0cfddcL    # 0.9896220174632009

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x45d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010550434f30224L    # -0.9896220174632009

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x45e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc264994dfd3409L    # 0.14369503315029444

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x45f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefa39bac7a1791L    # 0.9887216919603238

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x460

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc32b7bf94516a7L    # 0.1497645346773215

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x461

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403cd48406bae959L    # -0.1497645346773215

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x462

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefa39bac7a1791L    # 0.9887216919603238

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x463

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2fbc24b441015L    # 0.5932322950397998

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x464

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9c2d110f075c2L    # 0.8050313311429635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x465

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40163d2eef0f8a3eL    # -0.8050313311429635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x466

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2fbc24b441015L    # 0.5932322950397998

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x467

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb658f14fdbc47L    # 0.8561473283751945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x468

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe089112032b08cL    # 0.5167317990176499

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x469

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401f76eedfcd4f74L    # -0.5167317990176499

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x46a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb658f14fdbc47L    # 0.8561473283751945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x46b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fceb86b462de348L    # 0.2400030224487415

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x46c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef1090bc898f5fL    # 0.9707721407289504

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x46d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010ef6f437670a1L    # -0.9707721407289504

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x46e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fceb86b462de348L    # 0.2400030224487415

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x46f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee18a02fdc66d9L    # 0.9405060705932683

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x470

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd5bee78b9db3b6L    # 0.33977688440682685

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x471

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402a411874624c4aL    # -0.33977688440682685

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x472

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee18a02fdc66d9L    # 0.9405060705932683

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x473

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb2f971db31972L    # 0.4247796812091088

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x474

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecf830e8ce467bL    # 0.9052967593181188

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x475

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401307cf1731b985L    # -0.9052967593181188

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x476

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb2f971db31972L    # 0.4247796812091088

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x477

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7a4f707bf97d2L    # 0.7388873244606151

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x478

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe59001d5f723dfL    # 0.673829000378756

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x479

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401a6ffe2a08dc21L    # -0.673829000378756

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x47a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7a4f707bf97d2L    # 0.7388873244606151

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x47b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa78dbaa5874686L    # 0.04600318213091463

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x47c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff753bb1b9164L    # 0.9989412931868569

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x47d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401008ac44e46e9cL    # -0.9989412931868569

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x47e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa78dbaa5874686L    # 0.04600318213091463

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x47f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffce09ce2a679L    # 0.9996188224951786

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x480

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f9c454f4ce53b1dL    # 0.027608145778965743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x481

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4063bab0b31ac4e3L    # -0.027608145778965743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x482

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffce09ce2a679L    # 0.9996188224951786

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x483

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5fe7cbde56a10L    # 0.6873153408917592

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x484

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe73e558e079942L    # 0.726359155084346

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x485

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4018c1aa71f866beL    # -0.726359155084346

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x486

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5fe7cbde56a10L    # 0.6873153408917592

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x487

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed36fc7bcbfbdcL    # 0.9129621904283982

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x488

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fda1d6543b50ac0L    # 0.4080441628649787

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x489

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4025e29abc4af540L    # -0.4080441628649787

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x48a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed36fc7bcbfbdcL    # 0.9129621904283982

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x48b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd6d998638a0cb6L    # 0.35703096123343003

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x48c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fede4160f6d8d81L    # 0.9340925504042589

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x48d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40121be9f092727fL    # -0.9340925504042589

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x48e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd6d998638a0cb6L    # 0.35703096123343003

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x48f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef33685a3aaef0L    # 0.9750253450669941

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x490

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcc6d90535d74ddL    # 0.22209362097320354

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x491

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4033926faca28b23L    # -0.22209362097320354

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x492

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef33685a3aaef0L    # 0.9750253450669941

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x493

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1097248d0a957L    # 0.532403127877198

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x494

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb16742a4ca2f5L    # 0.8464909387740521

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x495

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4014e98bd5b35d0bL    # -0.8464909387740521

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x496

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1097248d0a957L    # 0.532403127877198

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x497

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea1b26d2c0a75eL    # 0.8158144108067338

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x498

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2818bef4d3cbaL    # 0.5783137964116556

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x499

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401d7e7410b2c346L    # -0.5783137964116556

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x49a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea1b26d2c0a75eL    # 0.8158144108067338

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x49b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc57f008654cbdeL    # 0.16793829497473117

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x49c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef8ba737cb4b78L    # 0.9857975091675675

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x49d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40107458c834b488L    # -0.9857975091675675

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x49e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc57f008654cbdeL    # 0.16793829497473117

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x49f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefbf470f0a8d88L    # 0.9920993131421918

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc00ee8ad6fb85bL    # 0.12545498341154623

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403ff117529047a5L    # -0.12545498341154623

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefbf470f0a8d88L    # 0.9920993131421918

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe39c23e3d63029L    # 0.6128100824294097

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe94990e3ac4a6cL    # 0.79023022143731

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4016b66f1c53b594L    # -0.79023022143731

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe39c23e3d63029L    # 0.6128100824294097

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febcb54cb0d2327L    # 0.8685707059713409

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdfb7575c24d2deL    # 0.49556526182577254

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4a9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402048a8a3db2d22L    # -0.49556526182577254

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4aa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febcb54cb0d2327L    # 0.8685707059713409

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ab

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd0e15b4e1749ceL    # 0.2637546789748314

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ac

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeddeb6a078651L    # 0.9645897932898128

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ad

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011221495f879afL    # -0.9645897932898128

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ae

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd0e15b4e1749ceL    # 0.2637546789748314

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4af

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee5a9d550467d3L    # 0.9485613499157303

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd44310dc8936f0L    # 0.31659337555616585

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402bbcef2376c910L    # -0.31659337555616585

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee5a9d550467d3L    # 0.9485613499157303

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc997fc3865389L    # 0.4468688401623742

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feca08f19b9c449L    # 0.8945994856313827

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40135f70e6463bb7L    # -0.8945994856313827

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc997fc3865389L    # 0.4468688401623742

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe82a9c13f545ffL    # 0.7552013768965365

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4f9cc25cca486L    # 0.6554928529996153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4b9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401b0633da335b7aL    # -0.6554928529996153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ba

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe82a9c13f545ffL    # 0.7552013768965365

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4bb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb20c9674ed444dL    # 0.07050457338961387

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4bc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefeb9d2530410fL    # 0.9975114561403035

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4bd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40101462dacfbef1L    # -0.9975114561403035

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4be

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb20c9674ed444dL    # 0.07050457338961387

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4bf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe7ea85482d60L    # 0.997060070339483

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb39d9f12c5a299L    # 0.07662386139203149

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404c6260ed3a5d67L    # -0.07662386139203149

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe7ea85482d60L    # 0.997060070339483

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4d3bc6d589f7fL    # 0.6508466849963809

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe84b7111af83faL    # 0.7592091889783881

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4017b48eee507c06L    # -0.7592091889783881

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4d3bc6d589f7fL    # 0.6508466849963809

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec89f587029c13L    # 0.8918407093923427

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdcf34baee1cd21L    # 0.4523495872337709

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4c9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40230cb4511e32dfL    # -0.4523495872337709

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ca

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec89f587029c13L    # 0.8918407093923427

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4cb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd3e39be96ec271L    # 0.3107671527496115

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4cc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee6a61c55d53a7L    # 0.9504860739494817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4cd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011959e3aa2ac59L    # -0.9504860739494817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ce

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd3e39be96ec271L    # 0.3107671527496115

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4cf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feed0835e999009L    # 0.9629532668736839

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd1423eefc69378L    # 0.2696683255729151

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402ebdc110396c88L    # -0.2696683255729151

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feed0835e999009L    # 0.9629532668736839

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf5fdee656cda3L    # 0.49022648328829116

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febe41b611154c1L    # 0.8715950866559511

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40141be49eeeab3fL    # -0.8715950866559511

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf5fdee656cda3L    # 0.49022648328829116

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe92aa41fc5a815L    # 0.7864552135990858

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3c3c44981c518L    # 0.617647307937804

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4d9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401c3c3bb67e3ae8L    # -0.617647307937804

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4da

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe92aa41fc5a815L    # 0.7864552135990858

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4db

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbe8eb7fde4aa3fL    # 0.11936521481099137

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4dc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefc56e3b7d9af6L    # 0.9928504144598651

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4dd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40103a91c482650aL    # -0.9928504144598651

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4de

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbe8eb7fde4aa3fL    # 0.11936521481099137

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4df

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef830f4a40c60cL    # 0.9847485018019042

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc6451a831d830dL    # 0.17398387338746382

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4039bae57ce27cf3L    # -0.17398387338746382

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef830f4a40c60cL    # 0.9847485018019042

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe258734cbb7110L    # 0.5732971666980422

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea38184a593bc6L    # 0.819347520076797

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4015c7e7b5a6c43aL    # -0.819347520076797

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe258734cbb7110L    # 0.5732971666980422

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feafb8fd89f57b6L    # 0.8432082396418454

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe133e9cfee254fL    # 0.5375870762956455

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4e9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401ecc163011dab1L    # -0.5375870762956455

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ea

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feafb8fd89f57b6L    # 0.8432082396418454

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4eb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcba96334f15dadL    # 0.21610679707621952

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ec

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef3e6bbc1bbc65L    # 0.9763697313300211

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ed

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010c19443e4439bL    # -0.9763697313300211

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ee

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcba96334f15dadL    # 0.21610679707621952

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ef

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedd1fef38a915aL    # 0.9318842655816681

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd73763c9261092L    # 0.3627557243673972

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4028c89c36d9ef6eL    # -0.3627557243673972

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedd1fef38a915aL    # 0.9318842655816681

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd9c17d440df9f2L    # 0.40243465085941843

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed4b5b1b187524L    # 0.9154487160882678

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012b4a4e4e78adcL    # -0.9154487160882678

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd9c17d440df9f2L    # 0.40243465085941843

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe71bac960e41bfL    # 0.7221281939292153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe622e44fec22ffL    # 0.6917592583641577

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4f9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4019dd1bb013dd01L    # -0.6917592583641577

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4fa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe71bac960e41bfL    # 0.7221281939292153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4fb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f95fd4d21fab226L    # 0.021474080275469508

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4fc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffe1c6870cb77L    # 0.9997694053512153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4fd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401001e3978f3489L    # -0.9997694053512153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4fe

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f95fd4d21fab226L    # 0.021474080275469508

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x4ff

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefff0943c53bd1L    # 0.9998823474542126

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x500

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f8f6a296ab997cbL    # 0.015339206284988102

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x501

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x407095d695466835L    # -0.015339206284988102

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x502

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefff0943c53bd1L    # 0.9998823474542126

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x503

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe64715437f535bL    # 0.696177131491463

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x504

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6f8ca99c95b75L    # 0.7178700450557317

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x505

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401907356636a48bL    # -0.7178700450557317

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x506

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe64715437f535bL    # 0.696177131491463

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x507

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed5f7172888a7fL    # 0.9179007756213905

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x508

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd96555b7ab948fL    # 0.3968099874167103

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x509

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40269aaa48546b71L    # -0.3968099874167103

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x50a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed5f7172888a7fL    # 0.9179007756213905

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x50b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd794f5e613dfaeL    # 0.3684668299533723

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x50c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedbf9e4395759aL    # 0.9296408958431812

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x50d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40124061bc6a8a66L    # -0.9296408958431812

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x50e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd794f5e613dfaeL    # 0.3684668299533723

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x50f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef492206bcabb4L    # 0.9776773578245099

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x510

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcae4f1d5f3b9abL    # 0.2101118368804696

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x511

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40351b0e2a0c4655L    # -0.2101118368804696

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x512

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef492206bcabb4L    # 0.9776773578245099

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x513

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe15e36e4dbe2bcL    # 0.5427507848645159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x514

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feae068f345ecefL    # 0.8398937941959995

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x515

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40151f970cba1311L    # -0.8398937941959995

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x516

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe15e36e4dbe2bcL    # 0.5427507848645159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x517

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea54c91090f523L    # 0.8228497813758263

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x518

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe22f2d662c13e2L    # 0.5682589526701316

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x519

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401dd0d299d3ec1eL    # -0.5682589526701316

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x51a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea54c91090f523L    # 0.8228497813758263

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x51b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc70afd8d08c4ffL    # 0.18002290140569951

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x51c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef7a299c1a322aL    # 0.9836624192117303

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x51d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401085d663e5cdd6L    # -0.9836624192117303

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x51e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc70afd8d08c4ffL    # 0.18002290140569951

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x51f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefcb4703914354L    # 0.9935641355205953

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x520

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbcff533b307dc1L    # 0.11327095217756435

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x521

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404300acc4cf823fL    # -0.11327095217756435

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x522

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefcb4703914354L    # 0.9935641355205953

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x523

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3eb33eabe0680L    # 0.62246127937415

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x524

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe90b7943575efeL    # 0.7826505961665757

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x525

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4016f486bca8a102L    # -0.7826505961665757

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x526

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3eb33eabe0680L    # 0.62246127937415

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x527

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febfc9d25a1b147L    # 0.8745866522781761

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x528

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf081906bff7feL    # 0.4848692480007911

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x529

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4020f7e6f9400802L    # -0.4848692480007911

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x52a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febfc9d25a1b147L    # 0.8745866522781761

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x52b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd1a2f7fbe8f243L    # 0.27557181931095814

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x52c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feec2cf4b1af6b2L    # 0.9612804858113206

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x52d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40113d30b4e5094eL    # -0.9612804858113206

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x52e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd1a2f7fbe8f243L    # 0.27557181931095814

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x52f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee79db29a5165aL    # 0.9523750127197659

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x530

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd383f5e353b6abL    # 0.30492922973540243

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x531

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402c7c0a1cac4955L    # -0.30492922973540243

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x532

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee79db29a5165aL    # 0.9523750127197659

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x533

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdd4cd02ba8609dL    # 0.45781330359887723

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x534

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec7315899eaad7L    # 0.8890483558546646

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x535

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40138cea76615529L    # -0.8890483558546646

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x536

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdd4cd02ba8609dL    # 0.45781330359887723

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x537

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe86c0a1d9aa195L    # 0.7631884172633813

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x538

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4ad79516722f1L    # 0.6461760129833164

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x539

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401b5286ae98dd0fL    # -0.6461760129833164

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x53a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe86c0a1d9aa195L    # 0.7631884172633813

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x53b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb52e774a4d4d0aL    # 0.08274026454937569

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x53c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe3e92be9d886L    # 0.9965711457905548

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x53d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40101c16d416277aL    # -0.9965711457905548

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x53e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb52e774a4d4d0aL    # 0.08274026454937569

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x53f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefef0102826191L    # 0.997925286198596

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x540

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb07b614e463064L    # 0.06438263092985747

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x541

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404f849eb1b9cf9cL    # -0.06438263092985747

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x542

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefef0102826191L    # 0.997925286198596

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x543

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe51fa81cd99aa6L    # 0.6601143420674205

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x544

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8098b756e52faL    # 0.7511651319096864

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x545

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4017f6748a91ad06L    # -0.7511651319096864

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x546

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe51fa81cd99aa6L    # 0.6601143420674205

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x547

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecb6e20a00da99L    # 0.8973245807054183

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x548

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc3f6d47263129L    # 0.44137126873171667

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x549

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4023c092b8d9ced7L    # -0.44137126873171667

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x54a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecb6e20a00da99L    # 0.8973245807054183

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x54b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd4a253d11b82f3L    # 0.32240767880106985

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x54c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee4a8dff81ce5eL    # 0.9466009130832835

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x54d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011b572007e31a2L    # -0.9466009130832835

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x54e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd4a253d11b82f3L    # 0.32240767880106985

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x54f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeeb074c50a544L    # 0.9661900034454125

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x550

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd0804e05eb661eL    # 0.257831102162159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x551

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402f7fb1fa1499e2L    # -0.257831102162159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x552

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeeb074c50a544L    # 0.9661900034454125

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x553

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe00740c82b82e1L    # 0.5008853826112408

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x554

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febb249a0b6c40dL    # 0.8655136240905691

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x555

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40144db65f493bf3L    # -0.8655136240905691

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x556

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe00740c82b82e1L    # 0.5008853826112408

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x557

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9683f42bd7fe1L    # 0.7939754775543372

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x558

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe374531b817f8dL    # 0.6079497849677736

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x559

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401c8bace47e8073L    # -0.6079497849677736

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x55a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9683f42bd7fe1L    # 0.7939754775543372

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x55b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc0d64dbcb26786L    # 0.13154002870288312

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x55c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefb8d18d66adb7L    # 0.9913108598461154

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x55d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010472e72995249L    # -0.9913108598461154

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x55e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc0d64dbcb26786L    # 0.13154002870288312

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x55f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef93f14f85ac08L    # 0.9868094018141855

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x560

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc4b8b17f79fa88L    # 0.16188639378011183

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x561

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403b474e80860578L    # -0.16188639378011183

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x562

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef93f14f85ac08L    # 0.9868094018141855

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x563

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2aa76e87aeb58L    # 0.5833086529376983

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x564

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9fdf4f13149deL    # 0.8122505865852039

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x565

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4016020b0eceb622L    # -0.8122505865852039

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x566

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2aa76e87aeb58L    # 0.5833086529376983

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x567

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb3115a5f37bf3L    # 0.8497417680008524

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x568

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0ded0b84bc4b6L    # 0.5271991347819014

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x569

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401f212f47b43b4aL    # -0.5271991347819014

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x56a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb3115a5f37bf3L    # 0.8497417680008524

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x56b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcd31774d2cbdeeL    # 0.22807208317088573

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x56c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef2817fc4609ceL    # 0.973644249650812

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x56d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010d7e803b9f632L    # -0.973644249650812

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x56e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcd31774d2cbdeeL    # 0.22807208317088573

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x56f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedf5e36a9ba59cL    # 0.9362656671702783

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x570

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd67b949cad63cbL    # 0.35129275608556715

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x571

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4029846b63529c35L    # -0.35129275608556715

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x572

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedf5e36a9ba59cL    # 0.9362656671702783

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x573

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fda790cd3dbf31bL    # 0.41363831223843456

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x574

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed2255c6e5a4e1L    # 0.9104412922580672

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x575

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012ddaa391a5b1fL    # -0.9104412922580672

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x576

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fda790cd3dbf31bL    # 0.41363831223843456

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x577

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe760c52c304764L    # 0.7305627692278276

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x578

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5d9dee73e345cL    # 0.6828455463852481

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x579

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401a262118c1cba4L    # -0.6828455463852481

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x57a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe760c52c304764L    # 0.7305627692278276

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x57b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa14685db42c17fL    # 0.03374117185137759

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x57c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffb55e425fdaeL    # 0.9994306045554617

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x57d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401004aa1bda0252L    # -0.9994306045554617

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x57e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa14685db42c17fL    # 0.03374117185137759

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x57f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff97c4208c014L    # 0.9992047586183639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x580

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa46a396ff86179L    # 0.03987292758773981

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x581

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x405b95c690079e87L    # -0.03987292758773981

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x582

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff97c4208c014L    # 0.9992047586183639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x583

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5b50b264f7448L    # 0.6783500431298615

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x584

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe782fb1b90b35bL    # 0.7347388780959635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x585

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40187d04e46f4ca5L    # -0.7347388780959635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x586

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5b50b264f7448L    # 0.6783500431298615

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x587

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed0d672f59d2b9L    # 0.9078861164876663

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x588

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdad473125cdc09L    # 0.41921688836322396

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x589

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40252b8ceda323f7L    # -0.41921688836322396

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x58a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed0d672f59d2b9L    # 0.9078861164876663

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x58b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd61d595c88c202L    # 0.34554132496398904

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x58c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee0766d9280f54L    # 0.9384035340631081

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x58d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011f89926d7f0acL    # -0.9384035340631081

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x58e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd61d595c88c202L    # 0.34554132496398904

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x58f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef1c7abe284708L    # 0.9722264970789363

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x590

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcdf5163f01099aL    # 0.23404195858354343

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x591

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40320ae9c0fef666L    # -0.23404195858354343

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x592

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef1c7abe284708L    # 0.9722264970789363

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x593    # 2.0E-42f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0b405878f85ecL    # 0.5219752929371544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x594

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb4b7409de7925L    # 0.8529606049303636

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x595

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4014b48bf62186dbL    # -0.8529606049303636

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x596

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0b405878f85ecL    # 0.5219752929371544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x597

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9e082edb42472L    # 0.808656181588175

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x598

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2d333d34e9bb8L    # 0.5882815482226453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x599

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401d2ccc2cb16448L    # -0.5882815482226453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x59a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9e082edb42472L    # 0.808656181588175

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x59b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc3f22f57db4893L    # 0.15582839765426523

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x59c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef9bed7cfbde29L    # 0.9877841416445722

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x59d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40106412830421d7L    # -0.9877841416445722

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x59e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc3f22f57db4893L    # 0.15582839765426523

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x59f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefb20dc681d54dL    # 0.9904850842564571

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc19d8940be24e7L    # 0.13762012158648604

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403e6276bf41db19L    # -0.13762012158648604

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefb20dc681d54dL    # 0.9904850842564571

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe34c5252c14de1L    # 0.6030665985403482

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe986aef1457594L    # 0.7976908409433912

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401679510eba8a6cL    # -0.7976908409433912

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe34c5252c14de1L    # 0.6030665985403482

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb98fa1fd9155eL    # 0.8624239561110405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe032ae55edbd96L    # 0.5061866453451553

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5a9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401fcd51aa12426aL    # -0.5061866453451553

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5aa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb98fa1fd9155eL    # 0.8624239561110405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ab

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd01f1806b9fdd2L    # 0.25189781815421697

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ac

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feef7d6e51ca3c0L    # 0.9677538370934755

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ad

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401108291ae35c40L    # -0.9677538370934755

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ae

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd01f1806b9fdd2L    # 0.25189781815421697

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5af

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee3a33ec75ce85L    # 0.9446048372614803

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd50163dc197048L    # 0.32820984357909255

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402afe9c23e68fb8L    # -0.32820984357909255

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee3a33ec75ce85L    # 0.9446048372614803

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdbe51517ffc0d9L    # 0.4358570799222555

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecccee20c2dea0L    # 0.9000158920161603

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40133311df3d2160L    # -0.9000158920161603

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdbe51517ffc0d9L    # 0.4358570799222555

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7e83f87b03686L    # 0.7471006059801801

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5454ff5159dfcL    # 0.6647109782033449

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5b9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401abab00aea6204L    # -0.6647109782033449

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ba

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7e83f87b03686L    # 0.7471006059801801

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5bb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fadd406f9808ec9L    # 0.05825826450043576

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5bc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff21614e131edL    # 0.9983015449338929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5bd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40100de9eb1ece13L    # -0.9983015449338929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5be

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fadd406f9808ec9L    # 0.05825826450043576

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5bf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefdf9922f73307L    # 0.996044700901252

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb6bf1b3e79b129L    # 0.0888535525825246

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404940e4c1864ed7L    # -0.0888535525825246

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefdf9922f73307L    # 0.996044700901252

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe48703306091ffL    # 0.6414810128085832

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe88c66e7481ba1L    # 0.7671389119358204

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4017739918b7e45fL    # -0.7671389119358204

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe48703306091ffL    # 0.6414810128085832

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec5bef59fef85aL    # 0.8862225301488806

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdda60c5cfa10d9L    # 0.4632597835518602

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5c9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402259f3a305ef27L    # -0.4632597835518602

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ca

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec5bef59fef85aL    # 0.8862225301488806

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5cb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd3241fb638baafL    # 0.2990798263080405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5cc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee89095bad6025L    # 0.9542280951091057

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5cd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401176f6a4529fdbL    # -0.9542280951091057

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ce

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd3241fb638baafL    # 0.2990798263080405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5cf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeb4cf515b8811L    # 0.9595715130819845

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd2038583d727beL    # 0.281464937925758

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402dfc7a7c28d842L    # -0.281464937925758

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeb4cf515b8811L    # 0.9595715130819845

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdeb00695f25620L    # 0.479493757660153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec14d9dc465e57L    # 0.8775452902072612

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4013eb2623b9a1a9L    # -0.8775452902072612

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdeb00695f25620L    # 0.479493757660153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8ec109b486c49L    # 0.778816512381476

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe41272663d108cL    # 0.6272518154951441

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5d9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401bed8d99c2ef74L    # -0.6272518154951441

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5da

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8ec109b486c49L    # 0.778816512381476

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5db

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbb6fa6ec38f64cL    # 0.10717242495680884

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5dc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefd0d158d86087L    # 0.9942404494531879

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5dd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40102f2ea7279f79L    # -0.9942404494531879

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5de

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbb6fa6ec38f64cL    # 0.10717242495680884

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5df

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef70f6434b7eb7L    # 0.9825393022874412

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc7d0a7bbd2cb1cL

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40382f58442d34e4L    # -0.18605515166344666

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef70f6434b7eb7L    # 0.9825393022874412

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe205baa17560d6L    # 0.5631993440138341

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea7138de9d60f5L    # 0.8263210628456635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40158ec721629f0bL    # -0.8263210628456635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe205baa17560d6L    # 0.5631993440138341

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feac4ffbd3efac8L    # 0.836547727223512

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe188591f3a46e5L    # 0.5478940591731002

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5e9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401e77a6e0c5b91bL    # -0.5478940591731002

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ea

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feac4ffbd3efac8L    # 0.836547727223512

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5eb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fca203e1b1831daL    # 0.20410896609281687

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ec

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef538b1faf2d07L    # 0.9789481753190622

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ed

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010ac74e050d2f9L    # -0.9789481753190622

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ee

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fca203e1b1831daL    # 0.20410896609281687

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ef

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedacf42ce68ab9L    # 0.9273625256504011

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd7f24dd37341e4L    # 0.374164062971458

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40280db22c8cbe1cL    # -0.374164062971458

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedacf42ce68ab9L    # 0.9273625256504011

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd908ef81ef7bd1L    # 0.39117038430225387

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed733f508c0dffL    # 0.9203182767091106

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40128cc0af73f201L    # -0.9203182767091106

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd908ef81ef7bd1L    # 0.39117038430225387

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6d5afef4aafcdL    # 0.7135848687807936

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe66b0f3f52b386L    # 0.7005687939432483

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5f9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401994f0c0ad4c7aL    # -0.7005687939432483

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5fa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6d5afef4aafcdL    # 0.7135848687807936

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5fb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f82d96b0e509703L    # 0.00920375478205982

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5fc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefffa72c978c4fL    # 0.9999576445519639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5fd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40100058d36873b1L    # -0.9999576445519639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5fe

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f82d96b0e509703L    # 0.00920375478205982

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x5ff

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefffa72c978c4fL    # 0.9999576445519639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x600

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f82d96b0e509703L    # 0.00920375478205982

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x601

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x407d2694f1af68fdL    # -0.00920375478205982

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x602

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefffa72c978c4fL    # 0.9999576445519639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x603

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe66b0f3f52b386L    # 0.7005687939432483

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x604

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6d5afef4aafcdL    # 0.7135848687807936

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x605

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40192a5010b55033L    # -0.7135848687807936

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x606

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe66b0f3f52b386L    # 0.7005687939432483

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x607

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed733f508c0dffL    # 0.9203182767091106

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x608

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd908ef81ef7bd1L    # 0.39117038430225387

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x609

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4026f7107e10842fL    # -0.39117038430225387

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x60a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed733f508c0dffL    # 0.9203182767091106

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x60b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd7f24dd37341e4L    # 0.374164062971458

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x60c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedacf42ce68ab9L    # 0.9273625256504011

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x60d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012530bd3197547L    # -0.9273625256504011

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x60e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd7f24dd37341e4L    # 0.374164062971458

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x60f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef538b1faf2d07L    # 0.9789481753190622

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x610

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fca203e1b1831daL    # 0.20410896609281687

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x611

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4035dfc1e4e7ce26L    # -0.20410896609281687

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x612

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef538b1faf2d07L    # 0.9789481753190622

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x613

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe188591f3a46e5L    # 0.5478940591731002

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x614

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feac4ffbd3efac8L    # 0.836547727223512

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x615

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40153b0042c10538L    # -0.836547727223512

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x616

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe188591f3a46e5L    # 0.5478940591731002

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x617

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea7138de9d60f5L    # 0.8263210628456635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x618

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe205baa17560d6L    # 0.5631993440138341

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x619

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401dfa455e8a9f2aL    # -0.5631993440138341

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x61a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea7138de9d60f5L    # 0.8263210628456635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x61b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc7d0a7bbd2cb1cL

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x61c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef70f6434b7eb7L    # 0.9825393022874412

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x61d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40108f09bcb48149L    # -0.9825393022874412

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x61e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc7d0a7bbd2cb1cL

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x61f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefd0d158d86087L    # 0.9942404494531879

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x620

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbb6fa6ec38f64cL    # 0.10717242495680884

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x621

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4044905913c709b4L    # -0.10717242495680884

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x622

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefd0d158d86087L    # 0.9942404494531879

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x623

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe41272663d108cL    # 0.6272518154951441

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x624

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8ec109b486c49L    # 0.778816512381476

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x625

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401713ef64b793b7L    # -0.778816512381476

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x626

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe41272663d108cL    # 0.6272518154951441

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x627

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec14d9dc465e57L    # 0.8775452902072612

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x628

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdeb00695f25620L    # 0.479493757660153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x629

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40214ff96a0da9e0L    # -0.479493757660153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x62a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec14d9dc465e57L    # 0.8775452902072612

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x62b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd2038583d727beL    # 0.281464937925758

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x62c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeb4cf515b8811L    # 0.9595715130819845

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x62d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40114b30aea477efL    # -0.9595715130819845

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x62e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd2038583d727beL    # 0.281464937925758

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x62f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee89095bad6025L    # 0.9542280951091057

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x630

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd3241fb638baafL    # 0.2990798263080405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x631

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402cdbe049c74551L    # -0.2990798263080405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x632

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee89095bad6025L    # 0.9542280951091057

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x633

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdda60c5cfa10d9L    # 0.4632597835518602

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x634

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec5bef59fef85aL    # 0.8862225301488806

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x635

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4013a410a60107a6L    # -0.8862225301488806

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x636

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdda60c5cfa10d9L    # 0.4632597835518602

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x637

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe88c66e7481ba1L    # 0.7671389119358204

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x638

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe48703306091ffL    # 0.6414810128085832

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x639

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401b78fccf9f6e01L    # -0.6414810128085832

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x63a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe88c66e7481ba1L    # 0.7671389119358204

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x63b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb6bf1b3e79b129L    # 0.0888535525825246

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x63c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefdf9922f73307L    # 0.996044700901252

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x63d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40102066dd08ccf9L    # -0.996044700901252

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x63e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb6bf1b3e79b129L    # 0.0888535525825246

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x63f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff21614e131edL    # 0.9983015449338929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x640

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fadd406f9808ec9L    # 0.05825826450043576

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x641

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40522bf9067f7137L    # -0.05825826450043576

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x642

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff21614e131edL    # 0.9983015449338929

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x643

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5454ff5159dfcL    # 0.6647109782033449

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x644

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7e83f87b03686L    # 0.7471006059801801

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x645

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401817c0784fc97aL    # -0.7471006059801801

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x646

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5454ff5159dfcL    # 0.6647109782033449

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x647

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecccee20c2dea0L    # 0.9000158920161603

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x648

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdbe51517ffc0d9L    # 0.4358570799222555

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x649

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40241aeae8003f27L    # -0.4358570799222555

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x64a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecccee20c2dea0L    # 0.9000158920161603

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x64b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd50163dc197048L    # 0.32820984357909255

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x64c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee3a33ec75ce85L    # 0.9446048372614803

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x64d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011c5cc138a317bL    # -0.9446048372614803

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x64e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd50163dc197048L    # 0.32820984357909255

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x64f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feef7d6e51ca3c0L    # 0.9677538370934755

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x650

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd01f1806b9fdd2L    # 0.25189781815421697

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x651

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402fe0e7f946022eL    # -0.25189781815421697

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x652

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feef7d6e51ca3c0L    # 0.9677538370934755

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x653

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe032ae55edbd96L    # 0.5061866453451553

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x654

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb98fa1fd9155eL    # 0.8624239561110405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x655

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40146705e026eaa2L    # -0.8624239561110405

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x656

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe032ae55edbd96L    # 0.5061866453451553

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x657

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe986aef1457594L    # 0.7976908409433912

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x658

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe34c5252c14de1L    # 0.6030665985403482

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x659

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401cb3adad3eb21fL    # -0.6030665985403482

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x65a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe986aef1457594L    # 0.7976908409433912

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x65b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc19d8940be24e7L    # 0.13762012158648604

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x65c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefb20dc681d54dL    # 0.9904850842564571

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x65d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40104df2397e2ab3L    # -0.9904850842564571

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x65e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc19d8940be24e7L    # 0.13762012158648604

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x65f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef9bed7cfbde29L    # 0.9877841416445722

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x660

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc3f22f57db4893L    # 0.15582839765426523

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x661

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403c0dd0a824b76dL    # -0.15582839765426523

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x662

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef9bed7cfbde29L    # 0.9877841416445722

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x663

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2d333d34e9bb8L    # 0.5882815482226453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x664

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9e082edb42472L    # 0.808656181588175

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x665

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40161f7d124bdb8eL    # -0.808656181588175

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x666

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2d333d34e9bb8L    # 0.5882815482226453

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x667

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb4b7409de7925L    # 0.8529606049303636

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x668

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0b405878f85ecL    # 0.5219752929371544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x669

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401f4bfa78707a14L    # -0.5219752929371544

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x66a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb4b7409de7925L    # 0.8529606049303636

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x66b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcdf5163f01099aL    # 0.23404195858354343

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x66c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef1c7abe284708L    # 0.9722264970789363

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x66d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010e38541d7b8f8L    # -0.9722264970789363

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x66e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcdf5163f01099aL    # 0.23404195858354343

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x66f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee0766d9280f54L    # 0.9384035340631081

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x670

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd61d595c88c202L    # 0.34554132496398904

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x671

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4029e2a6a3773dfeL    # -0.34554132496398904

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x672

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee0766d9280f54L    # 0.9384035340631081

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x673

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdad473125cdc09L    # 0.41921688836322396

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x674

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed0d672f59d2b9L    # 0.9078861164876663

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x675

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012f298d0a62d47L    # -0.9078861164876663

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x676

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdad473125cdc09L    # 0.41921688836322396

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x677

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe782fb1b90b35bL    # 0.7347388780959635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x678

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5b50b264f7448L    # 0.6783500431298615

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x679

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401a4af4d9b08bb8L    # -0.6783500431298615

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x67a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe782fb1b90b35bL    # 0.7347388780959635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x67b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa46a396ff86179L    # 0.03987292758773981

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x67c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff97c4208c014L    # 0.9992047586183639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x67d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40100683bdf73fecL    # -0.9992047586183639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x67e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa46a396ff86179L    # 0.03987292758773981

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x67f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffb55e425fdaeL    # 0.9994306045554617

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x680

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa14685db42c17fL    # 0.03374117185137759

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x681

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x405eb97a24bd3e81L    # -0.03374117185137759

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x682

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffb55e425fdaeL    # 0.9994306045554617

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x683

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5d9dee73e345cL    # 0.6828455463852481

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x684

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe760c52c304764L    # 0.7305627692278276

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x685

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40189f3ad3cfb89cL    # -0.7305627692278276

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x686

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5d9dee73e345cL    # 0.6828455463852481

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x687

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed2255c6e5a4e1L    # 0.9104412922580672

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x688

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fda790cd3dbf31bL    # 0.41363831223843456

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x689

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402586f32c240ce5L    # -0.41363831223843456

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x68a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed2255c6e5a4e1L    # 0.9104412922580672

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x68b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd67b949cad63cbL    # 0.35129275608556715

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x68c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedf5e36a9ba59cL    # 0.9362656671702783

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x68d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40120a1c95645a64L    # -0.9362656671702783

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x68e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd67b949cad63cbL    # 0.35129275608556715

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x68f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef2817fc4609ceL    # 0.973644249650812

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x690

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcd31774d2cbdeeL    # 0.22807208317088573

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x691

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4032ce88b2d34212L    # -0.22807208317088573

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x692

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef2817fc4609ceL    # 0.973644249650812

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x693

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0ded0b84bc4b6L    # 0.5271991347819014

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x694

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb3115a5f37bf3L    # 0.8497417680008524

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x695

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4014ceea5a0c840dL    # -0.8497417680008524

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x696

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe0ded0b84bc4b6L    # 0.5271991347819014

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x697

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9fdf4f13149deL    # 0.8122505865852039

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x698

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2aa76e87aeb58L    # 0.5833086529376983

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x699

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401d5589178514a8L    # -0.5833086529376983

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x69a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9fdf4f13149deL    # 0.8122505865852039

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x69b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc4b8b17f79fa88L    # 0.16188639378011183

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x69c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef93f14f85ac08L    # 0.9868094018141855

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x69d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40106c0eb07a53f8L    # -0.9868094018141855

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x69e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc4b8b17f79fa88L    # 0.16188639378011183

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x69f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefb8d18d66adb7L    # 0.9913108598461154

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc0d64dbcb26786L    # 0.13154002870288312

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403f29b2434d987aL    # -0.13154002870288312

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefb8d18d66adb7L    # 0.9913108598461154

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe374531b817f8dL    # 0.6079497849677736

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9683f42bd7fe1L    # 0.7939754775543372

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401697c0bd42801fL    # -0.7939754775543372

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe374531b817f8dL    # 0.6079497849677736

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febb249a0b6c40dL    # 0.8655136240905691

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe00740c82b82e1L    # 0.5008853826112408

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6a9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401ff8bf37d47d1fL    # -0.5008853826112408

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6aa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febb249a0b6c40dL    # 0.8655136240905691

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ab

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd0804e05eb661eL    # 0.257831102162159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ac

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeeb074c50a544L    # 0.9661900034454125

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ad

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401114f8b3af5abcL    # -0.9661900034454125

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ae

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd0804e05eb661eL    # 0.257831102162159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6af

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee4a8dff81ce5eL    # 0.9466009130832835

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd4a253d11b82f3L    # 0.32240767880106985

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402b5dac2ee47d0dL    # -0.32240767880106985

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee4a8dff81ce5eL    # 0.9466009130832835

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc3f6d47263129L    # 0.44137126873171667

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecb6e20a00da99L    # 0.8973245807054183

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4013491df5ff2567L    # -0.8973245807054183

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc3f6d47263129L    # 0.44137126873171667

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8098b756e52faL    # 0.7511651319096864

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe51fa81cd99aa6L    # 0.6601143420674205

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6b9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401ae057e326655aL    # -0.6601143420674205

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ba

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8098b756e52faL    # 0.7511651319096864

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6bb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb07b614e463064L    # 0.06438263092985747

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6bc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefef0102826191L    # 0.997925286198596

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6bd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401010fefd7d9e6fL    # -0.997925286198596

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6be

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb07b614e463064L    # 0.06438263092985747

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6bf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe3e92be9d886L    # 0.9965711457905548

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb52e774a4d4d0aL    # 0.08274026454937569

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404ad188b5b2b2f6L    # -0.08274026454937569

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe3e92be9d886L    # 0.9965711457905548

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4ad79516722f1L    # 0.6461760129833164

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe86c0a1d9aa195L    # 0.7631884172633813

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401793f5e2655e6bL    # -0.7631884172633813

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4ad79516722f1L    # 0.6461760129833164

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec7315899eaad7L    # 0.8890483558546646

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdd4cd02ba8609dL    # 0.45781330359887723

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6c9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4022b32fd4579f63L    # -0.45781330359887723

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ca

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec7315899eaad7L    # 0.8890483558546646

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6cb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd383f5e353b6abL    # 0.30492922973540243

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6cc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee79db29a5165aL    # 0.9523750127197659

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6cd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40118624d65ae9a6L    # -0.9523750127197659

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ce

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd383f5e353b6abL    # 0.30492922973540243

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6cf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feec2cf4b1af6b2L    # 0.9612804858113206

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd1a2f7fbe8f243L    # 0.27557181931095814

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402e5d0804170dbdL    # -0.27557181931095814

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feec2cf4b1af6b2L    # 0.9612804858113206

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf081906bff7feL    # 0.4848692480007911

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febfc9d25a1b147L    # 0.8745866522781761

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40140362da5e4eb9L    # -0.8745866522781761

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf081906bff7feL    # 0.4848692480007911

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe90b7943575efeL    # 0.7826505961665757

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3eb33eabe0680L    # 0.62246127937415

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6d9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401c14cc1541f980L    # -0.62246127937415

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6da

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe90b7943575efeL    # 0.7826505961665757

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6db

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbcff533b307dc1L    # 0.11327095217756435

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6dc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefcb4703914354L    # 0.9935641355205953

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6dd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401034b8fc6ebcacL    # -0.9935641355205953

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6de

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbcff533b307dc1L    # 0.11327095217756435

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6df

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef7a299c1a322aL    # 0.9836624192117303

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc70afd8d08c4ffL    # 0.18002290140569951

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4038f50272f73b01L    # -0.18002290140569951

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef7a299c1a322aL    # 0.9836624192117303

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe22f2d662c13e2L    # 0.5682589526701316

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea54c91090f523L    # 0.8228497813758263

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4015ab36ef6f0addL    # -0.8228497813758263

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe22f2d662c13e2L    # 0.5682589526701316

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feae068f345ecefL    # 0.8398937941959995

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe15e36e4dbe2bcL    # 0.5427507848645159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6e9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401ea1c91b241d44L    # -0.5427507848645159

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ea

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feae068f345ecefL    # 0.8398937941959995

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6eb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcae4f1d5f3b9abL    # 0.2101118368804696

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ec

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef492206bcabb4L    # 0.9776773578245099

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ed

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010b6ddf943544cL    # -0.9776773578245099

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ee

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcae4f1d5f3b9abL    # 0.2101118368804696

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ef

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedbf9e4395759aL    # 0.9296408958431812

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd794f5e613dfaeL    # 0.3684668299533723

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40286b0a19ec2052L    # -0.3684668299533723

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedbf9e4395759aL    # 0.9296408958431812

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd96555b7ab948fL    # 0.3968099874167103

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed5f7172888a7fL    # 0.9179007756213905

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012a08e8d777581L    # -0.9179007756213905

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd96555b7ab948fL    # 0.3968099874167103

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6f8ca99c95b75L    # 0.7178700450557317

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe64715437f535bL    # 0.696177131491463

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6f9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4019b8eabc80aca5L    # -0.696177131491463

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6fa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6f8ca99c95b75L    # 0.7178700450557317

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6fb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f8f6a296ab997cbL    # 0.015339206284988102

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6fc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefff0943c53bd1L    # 0.9998823474542126

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6fd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401000f6bc3ac42fL    # -0.9998823474542126

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6fe

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f8f6a296ab997cbL    # 0.015339206284988102

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x6ff

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffe1c6870cb77L    # 0.9997694053512153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x700

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f95fd4d21fab226L    # 0.021474080275469508

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x701

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x406a02b2de054ddaL    # -0.021474080275469508

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x702

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffe1c6870cb77L    # 0.9997694053512153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x703

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe622e44fec22ffL    # 0.6917592583641577

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x704

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe71bac960e41bfL    # 0.7221281939292153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x705

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4018e45369f1be41L    # -0.7221281939292153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x706

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe622e44fec22ffL    # 0.6917592583641577

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x707

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed4b5b1b187524L    # 0.9154487160882678

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x708

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd9c17d440df9f2L    # 0.40243465085941843

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x709

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40263e82bbf2060eL    # -0.40243465085941843

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x70a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed4b5b1b187524L    # 0.9154487160882678

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x70b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd73763c9261092L    # 0.3627557243673972

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x70c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fedd1fef38a915aL    # 0.9318842655816681

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x70d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40122e010c756ea6L    # -0.9318842655816681

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x70e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd73763c9261092L    # 0.3627557243673972

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x70f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef3e6bbc1bbc65L    # 0.9763697313300211

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x710

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcba96334f15dadL    # 0.21610679707621952

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x711

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4034569ccb0ea253L    # -0.21610679707621952

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x712

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef3e6bbc1bbc65L    # 0.9763697313300211

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x713

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe133e9cfee254fL    # 0.5375870762956455

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x714

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feafb8fd89f57b6L    # 0.8432082396418454

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x715

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401504702760a84aL    # -0.8432082396418454

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x716

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe133e9cfee254fL    # 0.5375870762956455

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x717

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea38184a593bc6L    # 0.819347520076797

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x718

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe258734cbb7110L    # 0.5732971666980422

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x719

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401da78cb3448ef0L    # -0.5732971666980422

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x71a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea38184a593bc6L    # 0.819347520076797

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x71b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc6451a831d830dL    # 0.17398387338746382

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x71c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef830f4a40c60cL    # 0.9847485018019042

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x71d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40107cf0b5bf39f4L    # -0.9847485018019042

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x71e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc6451a831d830dL    # 0.17398387338746382

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x71f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefc56e3b7d9af6L    # 0.9928504144598651

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x720

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fbe8eb7fde4aa3fL    # 0.11936521481099137

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x721

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40417148021b55c1L    # -0.11936521481099137

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x722

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefc56e3b7d9af6L    # 0.9928504144598651

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x723

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3c3c44981c518L    # 0.617647307937804

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x724

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe92aa41fc5a815L    # 0.7864552135990858

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x725

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4016d55be03a57ebL    # -0.7864552135990858

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x726

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe3c3c44981c518L    # 0.617647307937804

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x727

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febe41b611154c1L    # 0.8715950866559511

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x728

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdf5fdee656cda3L    # 0.49022648328829116

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x729

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4020a02119a9325dL    # -0.49022648328829116

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x72a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febe41b611154c1L    # 0.8715950866559511

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x72b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd1423eefc69378L    # 0.2696683255729151

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x72c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feed0835e999009L    # 0.9629532668736839

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x72d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40112f7ca1666ff7L    # -0.9629532668736839

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x72e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd1423eefc69378L    # 0.2696683255729151

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x72f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee6a61c55d53a7L    # 0.9504860739494817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x730

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd3e39be96ec271L    # 0.3107671527496115

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x731

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402c1c6416913d8fL    # -0.3107671527496115

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x732

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee6a61c55d53a7L    # 0.9504860739494817

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x733

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdcf34baee1cd21L    # 0.4523495872337709

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x734

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec89f587029c13L    # 0.8918407093923427

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x735

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4013760a78fd63edL    # -0.8918407093923427

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x736

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdcf34baee1cd21L    # 0.4523495872337709

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x737

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe84b7111af83faL    # 0.7592091889783881

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x738

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4d3bc6d589f7fL    # 0.6508466849963809

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x739

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401b2c4392a76081L    # -0.6508466849963809

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x73a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe84b7111af83faL    # 0.7592091889783881

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x73b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb39d9f12c5a299L    # 0.07662386139203149

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x73c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefe7ea85482d60L    # 0.997060070339483

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x73d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401018157ab7d2a0L    # -0.997060070339483

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x73e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb39d9f12c5a299L    # 0.07662386139203149

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x73f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefeb9d2530410fL    # 0.9975114561403035

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x740

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb20c9674ed444dL    # 0.07050457338961387

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x741

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x404df3698b12bbb3L    # -0.07050457338961387

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x742

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefeb9d2530410fL    # 0.9975114561403035

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x743

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4f9cc25cca486L    # 0.6554928529996153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x744

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe82a9c13f545ffL    # 0.7552013768965365

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x745

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4017d563ec0aba01L    # -0.7552013768965365

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x746

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4f9cc25cca486L    # 0.6554928529996153

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x747

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feca08f19b9c449L    # 0.8945994856313827

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x748

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdc997fc3865389L    # 0.4468688401623742

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x749

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402366803c79ac77L    # -0.4468688401623742

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x74a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feca08f19b9c449L    # 0.8945994856313827

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x74b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd44310dc8936f0L    # 0.31659337555616585

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x74c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee5a9d550467d3L    # 0.9485613499157303

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x74d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011a562aafb982dL    # -0.9485613499157303

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x74e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd44310dc8936f0L    # 0.31659337555616585

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x74f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeddeb6a078651L    # 0.9645897932898128

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x750

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd0e15b4e1749ceL    # 0.2637546789748314

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x751

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402f1ea4b1e8b632L    # -0.2637546789748314

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x752

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feeddeb6a078651L    # 0.9645897932898128

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x753

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdfb7575c24d2deL    # 0.49556526182577254

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x754

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3febcb54cb0d2327L    # 0.8685707059713409

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x755

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401434ab34f2dcd9L    # -0.8685707059713409

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x756

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdfb7575c24d2deL    # 0.49556526182577254

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x757

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe94990e3ac4a6cL    # 0.79023022143731

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x758

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe39c23e3d63029L    # 0.6128100824294097

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x759

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401c63dc1c29cfd7L    # -0.6128100824294097

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x75a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe94990e3ac4a6cL    # 0.79023022143731

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x75b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc00ee8ad6fb85bL    # 0.12545498341154623

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x75c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefbf470f0a8d88L    # 0.9920993131421918

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x75d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401040b8f0f57278L    # -0.9920993131421918

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x75e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc00ee8ad6fb85bL    # 0.12545498341154623

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x75f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef8ba737cb4b78L    # 0.9857975091675675

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x760

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc57f008654cbdeL    # 0.16793829497473117

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x761

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403a80ff79ab3422L    # -0.16793829497473117

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x762

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef8ba737cb4b78L    # 0.9857975091675675

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x763

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2818bef4d3cbaL    # 0.5783137964116556

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x764

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea1b26d2c0a75eL    # 0.8158144108067338

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x765

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4015e4d92d3f58a2L    # -0.8158144108067338

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x766

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2818bef4d3cbaL    # 0.5783137964116556

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x767

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb16742a4ca2f5L    # 0.8464909387740521

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x768

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1097248d0a957L    # 0.532403127877198

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x769

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401ef68db72f56a9L    # -0.532403127877198

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x76a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb16742a4ca2f5L    # 0.8464909387740521

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x76b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcc6d90535d74ddL    # 0.22209362097320354

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x76c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef33685a3aaef0L    # 0.9750253450669941

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x76d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010cc97a5c55110L    # -0.9750253450669941

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x76e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcc6d90535d74ddL    # 0.22209362097320354

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x76f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fede4160f6d8d81L    # 0.9340925504042589

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x770

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd6d998638a0cb6L    # 0.35703096123343003

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x771

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402926679c75f34aL    # -0.35703096123343003

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x772

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fede4160f6d8d81L    # 0.9340925504042589

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x773

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fda1d6543b50ac0L    # 0.4080441628649787

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x774

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed36fc7bcbfbdcL    # 0.9129621904283982

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x775

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012c90384340424L    # -0.9129621904283982

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x776

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fda1d6543b50ac0L    # 0.4080441628649787

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x777

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe73e558e079942L    # 0.726359155084346

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x778

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe5fe7cbde56a10L    # 0.6873153408917592

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x779

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401a0183421a95f0L    # -0.6873153408917592

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x77a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe73e558e079942L    # 0.726359155084346

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x77b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f9c454f4ce53b1dL    # 0.027608145778965743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x77c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffce09ce2a679L    # 0.9996188224951786

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x77d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010031f631d5987L    # -0.9996188224951786

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x77e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f9c454f4ce53b1dL    # 0.027608145778965743

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x77f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff753bb1b9164L    # 0.9989412931868569

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x780

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fa78dbaa5874686L    # 0.04600318213091463

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x781

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x405872455a78b97aL    # -0.04600318213091463

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x782

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff753bb1b9164L    # 0.9989412931868569

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x783

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe59001d5f723dfL    # 0.673829000378756

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x784

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7a4f707bf97d2L    # 0.7388873244606151

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x785

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40185b08f840682eL    # -0.7388873244606151

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x786

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe59001d5f723dfL    # 0.673829000378756

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x787

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecf830e8ce467bL    # 0.9052967593181188

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x788

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb2f971db31972L    # 0.4247796812091088

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x789

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4024d068e24ce68eL    # -0.4247796812091088

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x78a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fecf830e8ce467bL    # 0.9052967593181188

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x78b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd5bee78b9db3b6L    # 0.33977688440682685

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x78c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee18a02fdc66d9L    # 0.9405060705932683

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x78d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4011e75fd0239927L    # -0.9405060705932683

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x78e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd5bee78b9db3b6L    # 0.33977688440682685

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x78f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef1090bc898f5fL    # 0.9707721407289504

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x790

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fceb86b462de348L    # 0.2400030224487415

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x791

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40314794b9d21cb8L    # -0.2400030224487415

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x792

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef1090bc898f5fL    # 0.9707721407289504

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x793

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe089112032b08cL    # 0.5167317990176499

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x794

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb658f14fdbc47L    # 0.8561473283751945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x795

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40149a70eb0243b9L    # -0.8561473283751945

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x796

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe089112032b08cL    # 0.5167317990176499

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x797

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9c2d110f075c2L    # 0.8050313311429635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x798

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe2fbc24b441015L    # 0.5932322950397998

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x799

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401d043db4bbefebL    # -0.5932322950397998

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x79a

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9c2d110f075c2L    # 0.8050313311429635

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x79b

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc32b7bf94516a7L    # 0.1497645346773215

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x79c

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefa39bac7a1791L    # 0.9887216919603238

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x79d

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40105c645385e86fL    # -0.9887216919603238

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x79e

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc32b7bf94516a7L    # 0.1497645346773215

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x79f

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefaafbcb0cfddcL    # 0.9896220174632009

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc264994dfd3409L    # 0.14369503315029444

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403d9b66b202cbf7L    # -0.14369503315029444

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefaafbcb0cfddcL    # 0.9896220174632009

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe32421ec49a61fL    # 0.5981607069963423

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe9a4dfa42b06b2L    # 0.8013761717231402

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40165b205bd4f94eL    # -0.8013761717231402

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe32421ec49a61fL    # 0.5981607069963423

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb7f6686e792e9L    # 0.8593018183570084

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe05df3ec31b8b7L    # 0.5114688504379704

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7a9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401fa20c13ce4749L    # -0.5114688504379704

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7aa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feb7f6686e792e9L    # 0.8593018183570084

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ab

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcf7b7480bd3802L    # 0.24595505033579462

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ac

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef045a14cf738cL    # 0.9692812353565485

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ad

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010fba5eb308c74L    # -0.9692812353565485

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ae

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fcf7b7480bd3802L    # 0.24595505033579462

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7af

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee298f4439197aL    # 0.9425731976014469

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd5604012f467b4L    # 0.3339996514420094

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402a9fbfed0b984cL    # -0.3339996514420094

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee298f4439197aL    # 0.9425731976014469

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb8a7814fd5693L    # 0.4303264813400826

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fece2b32799a060L    # 0.9026733182372588

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40131d4cd8665fa0L    # -0.9026733182372588

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fdb8a7814fd5693L    # 0.4303264813400826

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7c6b89ce2d333L    # 0.7430079521351217

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe56ac35197649fL    # 0.6692825883466361

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7b9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401a953cae689b61L    # -0.6692825883466361

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ba

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe7c6b89ce2d333L    # 0.7430079521351217

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7bb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3faab101bd5f8317L    # 0.052131704680283324

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7bc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feff4dc54b1bed3L    # 0.9986402181802653

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7bd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40100b23ab4e412dL    # -0.9986402181802653

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7be

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3faab101bd5f8317L    # 0.052131704680283324

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7bf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefdafa7514538cL    # 0.9954807554919269

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb84f8712c130a1L    # 0.094963495329639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4047b078ed3ecf5fL    # -0.094963495329639

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefdafa7514538cL    # 0.9954807554919269

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4605a692b32a2L    # 0.6367618612362842

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8ac871ede1d88L    # 0.7710605242618138

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40175378e121e278L    # -0.7710605242618138

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4605a692b32a2L    # 0.6367618612362842

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec44833141c004L    # 0.8833633386657316

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fddfeff66a941deL    # 0.46868882203582796

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7c9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402201009956be22L    # -0.46868882203582796

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ca

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec44833141c004L    # 0.8833633386657316

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7cb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd2c41a4e954520L    # 0.29321916269425863

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7cc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fee97ec36016b30L    # 0.9560452513499964

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7cd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40116813c9fe94d0L    # -0.9560452513499964

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ce

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd2c41a4e954520L    # 0.29321916269425863

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7cf

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feea68393e65800L    # 0.9578264130275329

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd263e6995554baL    # 0.2873474595447295

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x402d9c1966aaab46L    # -0.2873474595447295

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feea68393e65800L    # 0.9578264130275329

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fde57a86d3cd825L    # 0.47410021465055

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fec2cd14931e3f1L    # 0.8804708890521608

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4013d32eb6ce1c0fL    # -0.8804708890521608

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fde57a86d3cd825L    # 0.47410021465055

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8cc6a75184655L    # 0.7749531065948739

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe4397f5b2a4380L    # 0.6320187359398091

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7d9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401bc680a4d5bc80L

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7da

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe8cc6a75184655L    # 0.7749531065948739

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7db

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb9dfb6eb24a85cL    # 0.10106986275482782

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7dc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fefd60d2da75c9eL    # 0.9948793307948056

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7dd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401029f2d258a362L    # -0.9948793307948056

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7de

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fb9dfb6eb24a85cL    # 0.10106986275482782

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7df

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef677556883ceeL    # 0.9813791933137546

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc8961727c41804L    # 0.19208039704989244

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x403769e8d83be7fcL    # -0.19208039704989244

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef677556883ceeL    # 0.9813791933137546

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1dc1b64dc4872L    # 0.5581185312205561

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fea8d676e545ad2L    # 0.829761233794523

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4015729891aba52eL    # -0.829761233794523

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1dc1b64dc4872L    # 0.5581185312205561

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feaa9547a2cb98eL    # 0.8331701647019132

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe1b250171373bfL    # 0.5530167055800276

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7e9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x401e4dafe8ec8c41L    # -0.5530167055800276

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ea

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feaa9547a2cb98eL    # 0.8331701647019132

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7eb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc95b49e9b62afaL    # 0.1980984107179536

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ec

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fef5da6ed43685dL    # 0.9801821359681174

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ed

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4010a25912bc97a3L    # -0.9801821359681174

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ee

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fc95b49e9b62afaL    # 0.1980984107179536

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ef

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed9a00dd8b3d46L    # 0.9250492407826776

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd84f6aaaf3903fL    # 0.37984720892405116

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4027b095550c6fc1L    # -0.37984720892405116

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed9a00dd8b3d46L    # 0.9250492407826776

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f3

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd8ac4b86d5ed44L    # 0.38551605384391885

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f4

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fed86c48445a44fL    # 0.9227011283338785

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f5

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4012793b7bba5bb1L    # -0.9227011283338785

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f6

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fd8ac4b86d5ed44L    # 0.38551605384391885

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f7

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6b25ced2fe29cL    # 0.7092728264388657

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f8

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe68ed1eaa19c71L    # 0.7049340803759049

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7f9

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x4019712e155e638fL    # -0.7049340803759049

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7fa

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3fe6b25ced2fe29cL    # 0.7092728264388657

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7fb

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f6921f8becca4baL    # 0.003067956762965976

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7fc

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3feffff621621d02L    # 0.9999952938095762

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7fd

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, -0x40100009de9de2feL    # -0.9999952938095762

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7fe

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v3, 0x3f6921f8becca4baL    # 0.003067956762965976

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    const/16 v3, 0x7ff

    aput-object v2, v1, v3

    sput-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v15

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v16

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v18

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v19

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3fc0000000000000L    # 0.125

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v20

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3fb0000000000000L    # 0.0625

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v21

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3fa0000000000000L    # 0.03125

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v22

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3f90000000000000L    # 0.015625

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v23

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3f80000000000000L    # 0.0078125

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v13

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3f70000000000000L    # 0.00390625

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v14

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3f60000000000000L    # 0.001953125

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v17

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v1, 0x40c8008000000000L    # 12289.0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v1, 0x3f1554e39097a782L    # 8.137358613394092E-5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inverse_of_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v1, 0x3fc34f8bc183bbc2L    # 0.15086504887537272

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_2sqrsigma0:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v1, 0x3fe62e42fefa39efL    # 0.6931471805599453

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v1, 0x3ff71547652b82feL    # 1.4426950408889634

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v1, 0x40d06d9a5fd8adacL    # 16822.4121

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_bnorm_max:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_one:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_two:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_onehalf:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v1, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v1, 0x3fd6a09e667f3bcdL    # 0.3535533905932738

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v1, 0x41e0000000000000L    # 2.147483648E9

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo31:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v1, -0x3e20000000400000L    # -2.147483647E9

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mtwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v1, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mtwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo63:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    return-void
.end method


# virtual methods
.method FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    return-object v0
.end method

.method fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 2

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide p1, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    add-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_div(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 2

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide p1, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    div-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_double(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide v2, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_expm_p63(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J
    .locals 6

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    const-wide v2, 0x3e5b2a467e033000L    # 2.529950637944207E-8

    const-wide v4, 0x3e21d0460e8dcd27L    # 2.073772366009083E-9

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    const-wide v4, 0x3e927ee5f8a05035L    # 2.756073561604778E-7

    mul-double v2, v2, v0

    sub-double/2addr v4, v2

    const-wide v2, 0x3ec71d939de045c4L    # 2.7555863502191225E-6

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    const-wide v4, 0x3efa019eb1edf088L    # 2.480156683358538E-5

    mul-double v2, v2, v0

    sub-double/2addr v4, v2

    const-wide v2, 0x3f2a01a073de5b8fL    # 1.984127392773119E-4

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    const-wide v4, 0x3f56c16c182d87f5L    # 0.001388888894063187

    mul-double v2, v2, v0

    sub-double/2addr v4, v2

    const-wide v2, 0x3f81111110e066fdL    # 0.008333333327800835

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    const-wide v4, 0x3fa5555555541c3cL    # 0.04166666666611049

    mul-double v2, v2, v0

    sub-double/2addr v4, v2

    const-wide v2, 0x3fc55555555581ffL    # 0.16666666666698401

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    const-wide v4, 0x3fe00000000000adL    # 0.5000000000000192

    mul-double v2, v2, v0

    sub-double/2addr v4, v2

    const-wide v2, 0x3fefffffffffffd2L    # 0.9999999999999949

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v0

    sub-double/2addr v4, v2

    iget-wide p1, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    mul-double v4, v4, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo63:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-wide p1, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    mul-double v4, v4, p1

    double-to-long p1, v4

    return-wide p1
.end method

.method fpr_floor(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J
    .locals 6

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    double-to-long v0, v0

    iget-wide v2, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    long-to-double v4, v0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z
    .locals 3

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide p1, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 2

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide p1, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    mul-double v0, v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 2

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 0

    long-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J
    .locals 12

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    double-to-long v0, v0

    iget-wide v2, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    double-to-long v2, v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    const-wide/high16 v6, 0x4330000000000000L    # 4.503599627370496E15

    add-double/2addr v4, v6

    double-to-long v4, v4

    const-wide/high16 v8, 0x10000000000000L

    sub-long/2addr v4, v8

    iget-wide v10, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    sub-double/2addr v10, v6

    double-to-long v6, v10

    add-long/2addr v6, v8

    const/16 p1, 0x3f

    shr-long/2addr v0, p1

    and-long/2addr v6, v0

    const-wide/16 v8, -0x1

    xor-long/2addr v0, v8

    and-long/2addr v0, v4

    const/16 p1, 0x34

    ushr-long v4, v2, p1

    long-to-int p1, v4

    add-int/lit8 p1, p1, 0x1

    and-int/lit16 p1, p1, 0xfff

    add-int/lit8 p1, p1, -0x2

    ushr-int/lit8 p1, p1, 0x1f

    int-to-long v4, p1

    neg-long v4, v4

    and-long/2addr v0, v4

    and-long/2addr v6, v4

    xor-long/2addr v4, v8

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide v2, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    mul-double v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_sqrt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 2

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 2

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide p1, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    sub-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object p1

    return-object p1
.end method

.method fpr_trunc(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J
    .locals 2

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    double-to-long v0, v0

    return-wide v0
.end method
