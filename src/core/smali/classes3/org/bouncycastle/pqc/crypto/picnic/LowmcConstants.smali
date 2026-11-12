.class abstract Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;
.super Ljava/lang/Object;


# instance fields
.field protected KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected keyMatrices:[I

.field protected keyMatrices_full:[I

.field protected keyMatrices_inv:[I

.field protected linearMatrices:[I

.field protected linearMatrices_full:[I

.field protected linearMatrices_inv:[I

.field protected roundConstants:[I

.field protected roundConstants_full:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getSize()I

    move-result p1

    mul-int p2, p2, p1

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->setMatrixPointer(I)V

    return-object v0
.end method

.method static ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->removeCommas(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Hex;->decode([B)[B

    move-result-object p0

    new-array p1, p2, [I

    const/4 p2, 0x0

    :goto_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    if-ge p2, v0, :cond_0

    mul-int/lit8 v0, p2, 0x4

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static readArray(Ljava/io/DataInputStream;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static removeCommas(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p1

    return-object p1

    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_2

    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_1

    :cond_2
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_3
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x100

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method protected KMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 3

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0xff

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p1

    return-object p1

    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_2

    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_1

    :cond_2
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_3
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x100

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method protected LMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_0

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0xff

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p1

    return-object p1

    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_2

    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_1

    :cond_2
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_3
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x100

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
