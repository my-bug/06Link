.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;
.super Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;


# instance fields
.field public h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    iget v0, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget p2, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    iget v0, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget p2, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

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
    instance-of v2, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    if-nez v2, :cond_5

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    if-eqz p1, :cond_6

    return v1

    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashCode()I

    move-result v1

    :goto_1
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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
