.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM384_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final ki_k3:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->mask:J

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0x8

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0x9

    aget-wide v11, p3, v10

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v11, v13

    xor-long/2addr v8, v11

    aget-wide v10, p3, v10

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0xa

    aget-wide v13, p3, v12

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v13, v15

    xor-long/2addr v10, v13

    aget-wide v12, p3, v12

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v12, v14

    const/16 v14, 0xb

    aget-wide v14, p3, v14

    const/16 v16, 0x5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long/2addr v12, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v14, v12, v1

    xor-long/2addr v14, v2

    const/4 v1, 0x0

    aget-wide v17, p3, v1

    xor-long v17, v17, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long/2addr v14, v1

    xor-long v14, v17, v14

    aput-wide v14, p1, p2

    add-int/lit8 v14, p2, 0x1

    const/4 v15, 0x1

    aget-wide v17, p3, v15

    xor-long v17, v17, v4

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v15

    xor-long v2, v17, v2

    shl-long v17, v4, v1

    xor-long v2, v2, v17

    aput-wide v2, p1, v14

    add-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    aget-wide v17, p3, v3

    xor-long v17, v17, v6

    ushr-long v3, v4, v15

    xor-long v3, v17, v3

    shl-long v17, v6, v1

    xor-long v3, v3, v17

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0x3

    const/4 v3, 0x3

    aget-wide v3, p3, v3

    xor-long/2addr v3, v8

    ushr-long v5, v6, v15

    xor-long/2addr v3, v5

    shl-long v5, v8, v1

    xor-long/2addr v3, v5

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    aget-wide v3, p3, v3

    xor-long/2addr v3, v10

    ushr-long v5, v8, v15

    xor-long/2addr v3, v5

    shl-long v5, v10, v1

    xor-long/2addr v3, v5

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0x5

    aget-wide v3, p3, v16

    xor-long/2addr v3, v12

    ushr-long v5, v10, v15

    xor-long/2addr v3, v5

    shl-long v5, v12, v1

    xor-long/2addr v3, v5

    iget-wide v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v3, v5

    aput-wide v3, p1, v2

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0x8

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0x9

    aget-wide v11, p3, v10

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v11, v13

    xor-long/2addr v8, v11

    aget-wide v10, p3, v10

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0xa

    aget-wide v13, p3, v12

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v13, v15

    xor-long/2addr v10, v13

    aget-wide v12, p3, v12

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v12, v14

    const/16 v14, 0xb

    aget-wide v14, p3, v14

    const/16 v16, 0x5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long/2addr v12, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v14, v12, v1

    xor-long/2addr v14, v2

    aget-wide v17, p1, p2

    const/4 v1, 0x0

    aget-wide v19, p3, v1

    xor-long v19, v19, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long/2addr v14, v1

    xor-long v14, v19, v14

    xor-long v14, v17, v14

    aput-wide v14, p1, p2

    add-int/lit8 v14, p2, 0x1

    aget-wide v17, p1, v14

    const/4 v15, 0x1

    aget-wide v19, p3, v15

    xor-long v19, v19, v4

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v15

    xor-long v2, v19, v2

    shl-long v19, v4, v1

    xor-long v2, v2, v19

    xor-long v2, v17, v2

    aput-wide v2, p1, v14

    add-int/lit8 v2, p2, 0x2

    aget-wide v17, p1, v2

    const/4 v3, 0x2

    aget-wide v19, p3, v3

    xor-long v19, v19, v6

    ushr-long v3, v4, v15

    xor-long v3, v19, v3

    shl-long v19, v6, v1

    xor-long v3, v3, v19

    xor-long v3, v17, v3

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0x3

    aget-wide v3, p1, v2

    const/4 v5, 0x3

    aget-wide v17, p3, v5

    xor-long v17, v17, v8

    ushr-long v5, v6, v15

    xor-long v5, v17, v5

    shl-long v17, v8, v1

    xor-long v5, v5, v17

    xor-long/2addr v3, v5

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0x4

    aget-wide v3, p1, v2

    const/4 v5, 0x4

    aget-wide v5, p3, v5

    xor-long/2addr v5, v10

    ushr-long v7, v8, v15

    xor-long/2addr v5, v7

    shl-long v7, v10, v1

    xor-long/2addr v5, v7

    xor-long/2addr v3, v5

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0x5

    aget-wide v3, p1, v2

    aget-wide v5, p3, v16

    xor-long/2addr v5, v12

    ushr-long v7, v10, v15

    xor-long/2addr v5, v7

    shl-long v7, v12, v1

    xor-long/2addr v5, v7

    iget-wide v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v5, v7

    xor-long/2addr v3, v5

    aput-wide v3, p1, v2

    return-void
.end method
