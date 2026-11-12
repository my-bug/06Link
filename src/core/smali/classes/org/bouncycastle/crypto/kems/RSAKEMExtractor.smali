.class public Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private final keyLen:I

.field private final privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/RSAKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput p2, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->keyLen:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    new-instance p2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result p3

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "RSAKem"

    invoke-direct {p2, v1, p3, p1, v0}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "private key required for encryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget v2, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->keyLen:I

    invoke-static {v1, v0, p1, v2}, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->generateKey(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object p1

    return-object p1
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
