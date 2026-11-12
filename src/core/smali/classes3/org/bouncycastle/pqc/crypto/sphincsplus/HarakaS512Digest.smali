.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;-><init>()V

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512_rc:[[J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->haraka512_rc:[[J

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8

    const/16 v0, 0x40

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->haraka512Perm([B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    const/16 v4, 0x8

    const/16 v7, 0x8

    const/16 v2, 0x8

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->xor([BI[BI[BII)V

    move p1, v6

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    add-int/lit8 v6, p1, 0x8

    const/16 v7, 0x10

    const/16 v2, 0x18

    const/16 v4, 0x18

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->xor([BI[BI[BII)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    add-int/lit8 v6, p1, 0x18

    const/16 v7, 0x8

    const/16 v2, 0x30

    const/16 v4, 0x30

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->xor([BI[BI[BII)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->reset()V

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "HarakaS-512"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    aput-byte p1, v0, v1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "total input cannot be more than 64 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    rsub-int/lit8 v1, p3, 0x40

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "total input cannot be more than 64 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
