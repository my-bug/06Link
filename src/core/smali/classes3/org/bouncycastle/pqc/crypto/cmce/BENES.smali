.class abstract Lorg/bouncycastle/pqc/crypto/cmce/BENES;
.super Ljava/lang/Object;


# static fields
.field private static final TRANSPOSE_MASKS:[J


# instance fields
.field protected final GFBITS:I

.field protected final SYS_N:I

.field protected final SYS_T:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->TRANSPOSE_MASKS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x5555555555555555L    # 1.1945305291614955E103
        0x3333333333333333L    # 4.667261458395856E-62
        0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236
        0xff00ff00ff00ffL
        0xffff0000ffffL
        0xffffffffL
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_N:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_T:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    return-void
.end method

.method static transpose_64x64([J[J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[JI)V

    return-void
.end method

.method static transpose_64x64([J[JI)V
    .locals 42

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x40

    move-object/from16 v3, p1

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x5

    :cond_0
    sget-object v3, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->TRANSPOSE_MASKS:[J

    aget-wide v4, v3, v2

    const/4 v3, 0x1

    shl-int v6, v3, v2

    move v7, v1

    :goto_0
    add-int/lit8 v8, v1, 0x40

    if-ge v7, v8, :cond_2

    move v8, v7

    :goto_1
    add-int v9, v7, v6

    if-ge v8, v9, :cond_1

    aget-wide v9, v0, v8

    add-int/lit8 v11, v8, 0x1

    aget-wide v12, v0, v11

    add-int/lit8 v14, v8, 0x2

    aget-wide v15, v0, v14

    add-int/lit8 v17, v8, 0x3

    aget-wide v18, v0, v17

    add-int v20, v8, v6

    aget-wide v21, v0, v20

    add-int/lit8 v23, v20, 0x1

    aget-wide v24, v0, v23

    add-int/lit8 v26, v20, 0x2

    aget-wide v27, v0, v26

    add-int/lit8 v29, v20, 0x3

    aget-wide v30, v0, v29

    ushr-long v32, v9, v6

    xor-long v32, v32, v21

    and-long v32, v32, v4

    ushr-long v34, v12, v6

    xor-long v34, v34, v24

    and-long v34, v34, v4

    ushr-long v36, v15, v6

    xor-long v36, v36, v27

    and-long v36, v36, v4

    ushr-long v38, v18, v6

    xor-long v38, v38, v30

    and-long v38, v38, v4

    shl-long v40, v32, v6

    xor-long v9, v9, v40

    aput-wide v9, v0, v8

    shl-long v9, v34, v6

    xor-long/2addr v9, v12

    aput-wide v9, v0, v11

    shl-long v9, v36, v6

    xor-long/2addr v9, v15

    aput-wide v9, v0, v14

    shl-long v9, v38, v6

    xor-long v9, v18, v9

    aput-wide v9, v0, v17

    xor-long v9, v21, v32

    aput-wide v9, v0, v20

    xor-long v9, v24, v34

    aput-wide v9, v0, v23

    xor-long v9, v27, v36

    aput-wide v9, v0, v26

    xor-long v9, v30, v38

    aput-wide v9, v0, v29

    add-int/lit8 v8, v8, 0x4

    goto :goto_1

    :cond_1
    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    :cond_3
    sget-object v4, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->TRANSPOSE_MASKS:[J

    aget-wide v5, v4, v2

    shl-int v4, v3, v2

    move v7, v1

    :goto_2
    if-ge v7, v8, :cond_5

    move v9, v7

    :goto_3
    add-int v10, v7, v4

    if-ge v9, v10, :cond_4

    aget-wide v10, v0, v9

    add-int v12, v9, v4

    aget-wide v13, v0, v12

    ushr-long v15, v10, v4

    xor-long/2addr v15, v13

    and-long/2addr v15, v5

    shl-long v17, v15, v4

    xor-long v10, v10, v17

    aput-wide v10, v0, v9

    xor-long v10, v13, v15

    aput-wide v10, v0, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v7, v9

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    return-void
.end method


# virtual methods
.method protected abstract support_gen([S[B)V
.end method
