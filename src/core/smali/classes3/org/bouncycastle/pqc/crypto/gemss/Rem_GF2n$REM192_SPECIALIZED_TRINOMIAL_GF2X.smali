.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM192_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final ki_k3:I


# direct methods
.method constructor <init>(IIIIJ)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 14

    const/4 v0, 0x2

    aget-wide v1, p3, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v1, v3

    const/4 v3, 0x3

    aget-wide v4, p3, v3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v1, v4

    aget-wide v3, p3, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v3, v5

    const/4 v5, 0x4

    aget-wide v6, p3, v5

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v3, v6

    aget-wide v5, p3, v5

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, p3, v7

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v5, v7

    add-int/lit8 v7, p2, 0x1

    const/4 v8, 0x1

    aget-wide v8, p3, v8

    xor-long/2addr v8, v3

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v11, v1, v10

    xor-long/2addr v8, v11

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v12, v3, v11

    xor-long/2addr v8, v12

    aput-wide v8, p1, v7

    add-int/lit8 v7, p2, 0x2

    aget-wide v8, p3, v0

    xor-long/2addr v8, v5

    ushr-long/2addr v3, v10

    xor-long/2addr v3, v8

    shl-long v8, v5, v11

    xor-long/2addr v3, v8

    iget-wide v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v3, v8

    aput-wide v3, p1, v7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v3, v5, v0

    xor-long/2addr v1, v3

    const/4 v0, 0x0

    aget-wide v3, p3, v0

    xor-long/2addr v3, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v0, v1, v0

    xor-long/2addr v0, v3

    aput-wide v0, p1, p2

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/4 v4, 0x3

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/4 v6, 0x4

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/4 v8, 0x5

    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    add-int/lit8 v8, p2, 0x1

    aget-wide v9, p1, v8

    const/4 v11, 0x1

    aget-wide v11, p3, v11

    xor-long/2addr v11, v4

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v14, v2, v13

    xor-long/2addr v11, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v15, v4, v14

    xor-long/2addr v11, v15

    xor-long/2addr v9, v11

    aput-wide v9, p1, v8

    add-int/lit8 v8, p2, 0x2

    aget-wide v9, p1, v8

    aget-wide v11, p3, v1

    xor-long/2addr v11, v6

    ushr-long/2addr v4, v13

    xor-long/2addr v4, v11

    shl-long v11, v6, v14

    xor-long/2addr v4, v11

    iget-wide v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v4, v11

    xor-long/2addr v4, v9

    aput-wide v4, p1, v8

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v4, v6, v1

    xor-long/2addr v2, v4

    aget-wide v4, p1, p2

    const/4 v1, 0x0

    aget-wide v6, p3, v1

    xor-long/2addr v6, v2

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v1, v2, v1

    xor-long/2addr v1, v6

    xor-long/2addr v1, v4

    aput-wide v1, p1, p2

    return-void
.end method
