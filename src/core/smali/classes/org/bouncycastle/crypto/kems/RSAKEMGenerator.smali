.class public Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private final keyLen:I

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->keyLen:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->rnd:Ljava/security/SecureRandom;

    return-void
.end method

.method static generateKey(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/math/BigInteger;Ljava/math/BigInteger;I)[B
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/crypto/params/KDFParameters;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {p0, p2}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    new-array p1, p3, [B

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    return-object p1
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 5

    check-cast p1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "RSAKem"

    invoke-direct {v0, v3, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v1, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->ZERO:Ljava/math/BigInteger;

    sget-object v2, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->rnd:Ljava/security/SecureRandom;

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-static {v2, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget v4, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->keyLen:I

    invoke-static {v3, v0, v1, v4}, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->generateKey(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "public key required for encryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
