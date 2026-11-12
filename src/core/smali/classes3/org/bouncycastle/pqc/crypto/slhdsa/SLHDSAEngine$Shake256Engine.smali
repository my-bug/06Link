.class Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;
.super Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shake256Engine"
.end annotation


# instance fields
.field private final maskDigest:Lorg/bouncycastle/crypto/Xof;

.field private final treeDigest:Lorg/bouncycastle/crypto/Xof;


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;-><init>(IIIIII)V

    move-object p1, p0

    new-instance p2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 p3, 0x100

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    new-instance p2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    return-void
.end method


# virtual methods
.method F([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->N:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    array-length p2, p2

    invoke-interface {p1, v2, v4, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p3

    invoke-interface {p1, p3, v4, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v1
.end method

.method H([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B[B)[B
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->N:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    array-length p2, p2

    invoke-interface {p1, v2, v4, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p3

    invoke-interface {p1, p3, v4, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p4

    invoke-interface {p1, p4, v4, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v1
.end method

.method H_msg([B[B[B[B[B)Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->A:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->K:I

    mul-int v6, v6, v7

    add-int/lit8 v6, v6, 0x7

    const/16 v7, 0x8

    div-int/2addr v6, v7

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->H:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->D:I

    div-int/2addr v8, v9

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->H:I

    sub-int/2addr v9, v8

    add-int/lit8 v10, v8, 0x7

    div-int/2addr v10, v7

    add-int/lit8 v11, v9, 0x7

    div-int/2addr v11, v7

    add-int v12, v6, v10

    add-int/2addr v12, v11

    new-array v13, v12, [B

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v15, v1

    const/4 v7, 0x0

    invoke-interface {v14, v1, v7, v15}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v14, v2

    invoke-interface {v1, v2, v7, v14}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v3

    invoke-interface {v1, v3, v7, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    if-eqz v4, :cond_0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v4

    invoke-interface {v1, v4, v7, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v5

    invoke-interface {v1, v5, v7, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v1, v13, v7, v12}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    const/16 v1, 0x8

    new-array v1, v1, [B

    rsub-int/lit8 v2, v11, 0x8

    invoke-static {v13, v6, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v7}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    rsub-int/lit8 v3, v9, 0x40

    const-wide/16 v4, -0x1

    ushr-long v3, v4, v3

    and-long/2addr v1, v3

    const/4 v3, 0x4

    new-array v3, v3, [B

    add-int/2addr v11, v6

    rsub-int/lit8 v4, v10, 0x4

    invoke-static {v13, v11, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v7}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    rsub-int/lit8 v4, v8, 0x20

    const/4 v5, -0x1

    ushr-int v4, v5, v4

    and-int/2addr v3, v4

    new-instance v4, Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;

    invoke-static {v13, v7, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v4, v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;-><init>(JI[B)V

    return-object v4
.end method

.method PRF([B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v0, p3, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    array-length p3, p3

    invoke-interface {p1, v0, v2, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p3, p2

    invoke-interface {p1, p2, v2, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->N:I

    new-array p1, p1, [B

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->N:I

    invoke-interface {p2, p1, v2, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object p1
.end method

.method public PRF_msg([B[B[B[B)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v0, p2

    invoke-interface {p1, p2, v2, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p3

    invoke-interface {p1, p3, v2, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p4

    invoke-interface {p1, p4, v2, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->N:I

    new-array p2, p1, [B

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p3, p2, v2, p1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object p2
.end method

.method T_l([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->N:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    array-length p2, p2

    invoke-interface {p1, v2, v4, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length p2, p3

    invoke-interface {p1, p3, v4, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v1
.end method

.method protected bitmask([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B
    .locals 5

    array-length v0, p3

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    array-length p2, p2

    invoke-interface {p1, v2, v4, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    array-length p1, p3

    invoke-static {p1, p3, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    return-object v1
.end method

.method protected bitmask([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B[B)[B
    .locals 5

    array-length v0, p3

    array-length v1, p4

    add-int/2addr v0, v1

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    array-length p2, p2

    invoke-interface {p1, v2, v4, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    array-length p1, p3

    invoke-static {p1, p3, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    array-length p1, p4

    array-length p2, p3

    invoke-static {p1, p4, v4, v1, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    return-object v1
.end method

.method init([B)V
    .locals 0

    return-void
.end method
