.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Aes128MatrixGenerator"
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

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    mul-int v0, v0, v1

    new-array v0, v0, [S

    const/16 v1, 0x10

    new-array v2, v1, [B

    new-array v1, v1, [B

    new-instance v3, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 p1, 0x1

    invoke-interface {v3, p1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    if-ge v5, v6, :cond_2

    int-to-short v6, v5

    invoke-static {v6, v2, v4}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    if-ge v6, v7, :cond_1

    int-to-short v7, v6

    const/4 v8, 0x2

    invoke-static {v7, v2, v8}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    invoke-interface {v3, v2, v4, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 v7, 0x0

    :goto_2
    const/16 v8, 0x8

    if-ge v7, v8, :cond_0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    mul-int v8, v8, v5

    add-int/2addr v8, v6

    add-int/2addr v8, v7

    mul-int/lit8 v9, v7, 0x2

    invoke-static {v1, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v9

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->q:I

    sub-int/2addr v10, p1

    and-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x8

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
