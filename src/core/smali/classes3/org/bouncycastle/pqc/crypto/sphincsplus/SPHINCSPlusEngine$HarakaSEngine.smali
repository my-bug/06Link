.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HarakaSEngine"
.end annotation


# instance fields
.field private harakaS256Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;

.field private harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

.field private harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;-><init>(ZIIIIII)V

    return-void
.end method


# virtual methods
.method public F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 4

    const/16 p1, 0x20

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->update([BII)V

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->robust:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS256Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length p2, p2

    invoke-virtual {v0, v1, v3, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS256Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;

    invoke-virtual {p2, p1, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->doFinal([BI)I

    array-length p2, p3

    invoke-static {p2, p3, p1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    array-length p3, p3

    invoke-virtual {p2, p1, v3, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    array-length v0, p3

    invoke-virtual {p2, p3, v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->update([BII)V

    :goto_0
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    invoke-virtual {p2, p1, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->doFinal([BI)I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->N:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B
    .locals 4

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->N:I

    new-array v0, p1, [B

    array-length v1, p3

    array-length v2, p4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    array-length v2, p4

    invoke-static {p4, v3, v1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->bitmask(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object p3

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length p2, p2

    invoke-virtual {p4, v1, v3, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length p4, p3

    invoke-virtual {p2, p3, v3, p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-virtual {p2, v0, v3, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    return-object v0
.end method

.method H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
    .locals 9

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->A:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->K:I

    mul-int p2, p2, v0

    add-int/lit8 p2, p2, 0x7

    shr-int/lit8 p2, p2, 0x3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->H:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->D:I

    div-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->H:I

    sub-int/2addr v1, v0

    add-int/lit8 v2, v0, 0x7

    shr-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v1, 0x7

    shr-int/lit8 v3, v3, 0x3

    add-int v4, p2, v2

    add-int/2addr v4, v3

    new-array v5, v4, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v7, p1

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v8, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v6, p3

    invoke-virtual {p1, p3, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length p3, p4

    invoke-virtual {p1, p4, v8, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-virtual {p1, v5, v8, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    const/16 p1, 0x8

    new-array p1, p1, [B

    rsub-int/lit8 p3, v3, 0x8

    invoke-static {v5, p2, p1, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v8}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p3

    rsub-int/lit8 p1, v1, 0x40

    const-wide/16 v6, -0x1

    ushr-long/2addr v6, p1

    and-long/2addr p3, v6

    const/4 p1, 0x4

    new-array p1, p1, [B

    add-int/2addr v3, p2

    rsub-int/lit8 v1, v2, 0x4

    invoke-static {v5, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v8}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p1

    rsub-int/lit8 v0, v0, 0x20

    const/4 v1, -0x1

    ushr-int v0, v1, v0

    and-int/2addr p1, v0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    invoke-static {v5, v8, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    invoke-direct {v0, p3, p4, p1, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;-><init>(JI[B)V

    return-object v0
.end method

.method PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 3

    const/16 p1, 0x20

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length p3, p3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    array-length v0, p2

    invoke-virtual {p3, p2, v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    invoke-virtual {p2, p1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->doFinal([BI)I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->N:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public PRF_msg([B[B[B)[B
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->N:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v2, p2

    invoke-virtual {p1, p2, v4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length p2, p3

    invoke-virtual {p1, p3, v4, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-virtual {p1, v1, v4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    return-object v1
.end method

.method public T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 4

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->N:I

    new-array v0, p1, [B

    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->bitmask(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object p3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length p2, p2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v1, p3

    invoke-virtual {p2, p3, v3, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-virtual {p2, v0, v3, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    return-object v0
.end method

.method protected bitmask(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->robust:Z

    if-eqz v0, :cond_0

    array-length v0, p2

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length p1, p1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-virtual {p1, v1, v4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    array-length p1, p2

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    :cond_0
    return-object p2
.end method

.method init([B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS256Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    return-void
.end method
