.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v2, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v8, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v5, v5, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v9, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dg:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget-boolean v10, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget-boolean v11, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    const/4 v6, 0x0

    move-object v12, v6

    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x1

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v6, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-eqz v10, :cond_1

    if-nez v6, :cond_0

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-static {v2, v8, v8, v11, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v6

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    move v6, v5

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    iget-object v15, v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v16, v15, v13

    add-int/lit8 v16, v16, 0x1

    aput v16, v15, v13

    goto :goto_3

    :cond_1
    if-nez v6, :cond_2

    add-int/lit8 v6, v8, -0x1

    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static {v2, v8, v6, v11, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v6

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v5, -0x1

    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertF3()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {v7, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v10, :cond_5

    new-instance v12, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v12, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    iget-object v3, v12, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aput v14, v3, v13

    :cond_5
    add-int/lit8 v3, v9, -0x1

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-static {v2, v9, v3, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v7, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult3(I)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->clear()V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clear()V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v3

    invoke-direct {v1, v2, v6, v12, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    return-void
.end method
