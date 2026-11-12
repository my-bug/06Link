.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;


# instance fields
.field public fp:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

.field public h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

.field public t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    iget v1, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    if-ne v1, v0, :cond_1

    iget v3, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v4, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    iget v5, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    iget v6, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    iget-boolean v1, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v1, :cond_0

    iget v0, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    goto :goto_0

    :cond_0
    iget v1, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    move v7, v0

    iget v0, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget p2, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->fromBinary(Ljava/io/InputStream;IIIII)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    goto :goto_2

    :cond_1
    move-object v2, p1

    iget p1, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v0, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-static {v2, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget p1, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    invoke-static {v2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Tight(Ljava/io/InputStream;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    iget-boolean p2, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    if-eqz p2, :cond_2

    new-instance p2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    :goto_1
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    :goto_2
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v0, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertF3()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    if-nez v2, :cond_5

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getEncoded()[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    instance-of v2, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->toBinary()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary3Tight()[B

    move-result-object v1

    :goto_0
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
