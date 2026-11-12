.class public Lorg/bouncycastle/crypto/params/RSAKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# static fields
.field private static final SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

.field private static final validated:Lorg/bouncycastle/util/BigIntegers$Cache;


# instance fields
.field private exponent:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/util/BigIntegers$Cache;

    invoke-direct {v0}, Lorg/bouncycastle/util/BigIntegers$Cache;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lorg/bouncycastle/util/BigIntegers$Cache;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-void
.end method

.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    if-nez p1, :cond_1

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RSA publicExponent is even"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object p1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lorg/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/util/BigIntegers$Cache;->contains(Ljava/math/BigInteger;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2, p4}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->validate(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    return-void
.end method

.method private static getMRIterations(I)I
    .locals 1

    const/16 v0, 0x600

    if-lt p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/16 v0, 0x400

    if-lt p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/16 v0, 0x200

    if-lt p0, v0, :cond_2

    const/4 p0, 0x7

    return p0

    :cond_2
    const/16 p0, 0x32

    return p0
.end method

.method private static hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 4

    sget-object v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :cond_0
    invoke-static {p0, v0}, Lorg/bouncycastle/util/BigIntegers;->modOddIsCoprimeVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static validate(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    sget-object p1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lorg/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/util/BigIntegers$Cache;->add(Ljava/math/BigInteger;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_6

    const-string p1, "org.bouncycastle.rsa.allow_unsafe_mod"

    invoke-static {p1}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    const-string p1, "org.bouncycastle.rsa.max_size"

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-lt p1, v0, :cond_5

    invoke-static {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const-string v0, "org.bouncycastle.rsa.max_mr_tests"

    invoke-static {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getMRIterations(I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/Primes;->enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/Primes$MROutput;->isProvablyComposite()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus is not composite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus has a small prime factor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus is even"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method
