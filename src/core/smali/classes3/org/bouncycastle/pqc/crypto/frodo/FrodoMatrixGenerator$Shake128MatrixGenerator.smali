.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shake128MatrixGenerator"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;-><init>(II)V

    return-void
.end method


# virtual methods
.method genMatrix([B)[S
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    mul-int v0, v0, v1

    new-array v0, v0, [S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x8

    new-array v2, v1, [B

    array-length v3, p1

    const/4 v4, 0x2

    add-int/2addr v3, v4

    new-array v5, v3, [B

    array-length v6, p1

    const/4 v7, 0x0

    invoke-static {p1, v7, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x80

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    if-ge v4, v6, :cond_1

    invoke-static {v4, v5, v7}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    invoke-interface {p1, v5, v7, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {p1, v2, v7, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    const/4 v6, 0x0

    :goto_1
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    if-ge v6, v8, :cond_0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    mul-int v8, v8, v4

    add-int/2addr v8, v6

    mul-int/lit8 v9, v6, 0x2

    invoke-static {v2, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v9

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->q:I

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v0, v8

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method
