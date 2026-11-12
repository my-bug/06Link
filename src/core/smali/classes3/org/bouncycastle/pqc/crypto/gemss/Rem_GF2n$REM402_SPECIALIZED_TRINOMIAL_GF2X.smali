.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM402_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 24

    move-object/from16 v0, p0

    const/16 v1, 0x9

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xa

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xc

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0x27

    ushr-long v11, v2, v10

    const/16 v13, 0x19

    shl-long v14, v4, v13

    xor-long/2addr v11, v14

    const/4 v14, 0x6

    aget-wide v15, p3, v14

    const/16 v17, 0x9

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v15, v1

    xor-long/2addr v11, v15

    const/4 v1, 0x7

    aget-wide v15, p3, v1

    const/16 v18, 0x7

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v15, v1

    xor-long/2addr v11, v15

    ushr-long v15, v4, v10

    shl-long v19, v6, v13

    xor-long v15, v15, v19

    aget-wide v18, p3, v18

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long v18, v18, v1

    xor-long v15, v15, v18

    const/16 v1, 0x8

    aget-wide v18, p3, v1

    const/16 v20, 0x8

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long v18, v18, v1

    xor-long v15, v15, v18

    ushr-long v18, v6, v10

    shl-long v21, v8, v13

    xor-long v18, v18, v21

    aget-wide v20, p3, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long v20, v20, v1

    xor-long v18, v18, v20

    aget-wide v20, p3, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long v20, v20, v1

    xor-long v18, v18, v20

    const/4 v1, 0x0

    aget-wide v20, p3, v1

    xor-long v20, v20, v11

    aput-wide v20, p1, p2

    add-int/lit8 v1, p2, 0x1

    const/4 v10, 0x1

    aget-wide v20, p3, v10

    xor-long v20, v20, v15

    aput-wide v20, p1, v1

    add-int/lit8 v1, p2, 0x2

    const/4 v10, 0x2

    aget-wide v20, p3, v10

    xor-long v20, v20, v18

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v22, v11, v10

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    add-int/lit8 v1, p2, 0x3

    const/4 v13, 0x3

    aget-wide v20, p3, v13

    xor-long v20, v20, v2

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v11, v13

    xor-long v11, v20, v11

    shl-long v20, v15, v10

    xor-long v11, v11, v20

    aput-wide v11, p1, v1

    add-int/lit8 v1, p2, 0x4

    const/4 v11, 0x4

    aget-wide v11, p3, v11

    xor-long/2addr v4, v11

    ushr-long v11, v15, v13

    xor-long/2addr v4, v11

    shl-long v11, v18, v10

    xor-long/2addr v4, v11

    aput-wide v4, p1, v1

    add-int/lit8 v1, p2, 0x5

    const/4 v4, 0x5

    aget-wide v4, p3, v4

    xor-long/2addr v4, v6

    ushr-long v6, v18, v13

    xor-long/2addr v4, v6

    shl-long v6, v2, v10

    xor-long/2addr v4, v6

    aput-wide v4, p1, v1

    add-int/lit8 v1, p2, 0x6

    aget-wide v4, p3, v14

    xor-long/2addr v4, v8

    ushr-long/2addr v2, v13

    xor-long/2addr v2, v4

    iget-wide v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 26

    move-object/from16 v0, p0

    const/16 v1, 0x9

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xa

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xc

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0x27

    ushr-long v11, v2, v10

    const/16 v13, 0x19

    shl-long v14, v4, v13

    xor-long/2addr v11, v14

    const/4 v14, 0x6

    aget-wide v15, p3, v14

    const/16 v17, 0x9

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v15, v1

    xor-long/2addr v11, v15

    const/4 v1, 0x7

    aget-wide v15, p3, v1

    const/16 v18, 0x7

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v15, v1

    xor-long/2addr v11, v15

    ushr-long v15, v4, v10

    shl-long v19, v6, v13

    xor-long v15, v15, v19

    aget-wide v18, p3, v18

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long v18, v18, v1

    xor-long v15, v15, v18

    const/16 v1, 0x8

    aget-wide v18, p3, v1

    const/16 v20, 0x8

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long v18, v18, v1

    xor-long v15, v15, v18

    ushr-long v18, v6, v10

    shl-long v21, v8, v13

    xor-long v18, v18, v21

    aget-wide v20, p3, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long v20, v20, v1

    xor-long v18, v18, v20

    aget-wide v20, p3, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long v20, v20, v1

    xor-long v18, v18, v20

    aget-wide v20, p1, p2

    const/4 v1, 0x0

    aget-wide v22, p3, v1

    xor-long v22, v22, v11

    xor-long v20, v20, v22

    aput-wide v20, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-wide v20, p1, v1

    const/4 v10, 0x1

    aget-wide v22, p3, v10

    xor-long v22, v22, v15

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    add-int/lit8 v1, p2, 0x2

    aget-wide v20, p1, v1

    const/4 v10, 0x2

    aget-wide v22, p3, v10

    xor-long v22, v22, v18

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v24, v11, v10

    xor-long v22, v22, v24

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    add-int/lit8 v1, p2, 0x3

    aget-wide v20, p1, v1

    const/4 v13, 0x3

    aget-wide v22, p3, v13

    xor-long v22, v22, v2

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v11, v13

    xor-long v11, v22, v11

    shl-long v22, v15, v10

    xor-long v11, v11, v22

    xor-long v11, v20, v11

    aput-wide v11, p1, v1

    add-int/lit8 v1, p2, 0x4

    aget-wide v11, p1, v1

    const/16 v17, 0x4

    aget-wide v20, p3, v17

    xor-long v4, v20, v4

    ushr-long/2addr v15, v13

    xor-long/2addr v4, v15

    shl-long v15, v18, v10

    xor-long/2addr v4, v15

    xor-long/2addr v4, v11

    aput-wide v4, p1, v1

    add-int/lit8 v1, p2, 0x5

    aget-wide v4, p1, v1

    const/4 v11, 0x5

    aget-wide v11, p3, v11

    xor-long/2addr v6, v11

    ushr-long v11, v18, v13

    xor-long/2addr v6, v11

    shl-long v10, v2, v10

    xor-long/2addr v6, v10

    xor-long/2addr v4, v6

    aput-wide v4, p1, v1

    add-int/lit8 v1, p2, 0x6

    aget-wide v4, p1, v1

    aget-wide v6, p3, v14

    xor-long/2addr v6, v8

    ushr-long/2addr v2, v13

    xor-long/2addr v2, v6

    iget-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v2, v6

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-void
.end method
