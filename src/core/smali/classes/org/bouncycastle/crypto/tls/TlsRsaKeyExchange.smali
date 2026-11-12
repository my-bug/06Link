.class public abstract Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;
.super Ljava/lang/Object;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field public static final PRE_MASTER_SECRET_LENGTH:I = 0x30


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static caddTo(II[B[B)I
    .locals 3

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz p0, :cond_0

    aget-byte v1, p3, p0

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p2, p0

    and-int/2addr v2, p1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-byte v1, v0

    aput-byte v1, p3, p0

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static checkPkcs1Encoding2([BII)I
    .locals 3

    sub-int v0, p1, p2

    add-int/lit8 v0, v0, -0xa

    array-length v1, p0

    sub-int/2addr v1, p1

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_0

    aget-byte v2, p0, p2

    and-int/lit16 v2, v2, 0xff

    neg-int v2, v2

    or-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    aget-byte p2, p0, v1

    and-int/lit16 p2, p2, 0xff

    xor-int/lit8 p2, p2, 0x2

    neg-int p2, p2

    or-int/2addr p2, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_1

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x1

    or-int/2addr p2, v0

    goto :goto_1

    :cond_1
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    neg-int p0, p0

    or-int/2addr p0, p2

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private static convertInput(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input too large for RSA cipher."

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decryptPreMasterSecret([BIILorg/bouncycastle/crypto/params/RSAKeyParameters;ILjava/security/SecureRandom;)[B
    .locals 7

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    invoke-static {p3}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->getInputLimit(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)I

    move-result v1

    if-gt p2, v1, :cond_4

    if-ltz p1, :cond_4

    array-length v1, p0

    sub-int/2addr v1, p2

    if-gt p1, v1, :cond_4

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x200

    if-lt v2, v3, :cond_2

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v3

    new-instance v4, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const-string v5, "RSA"

    sget-object v6, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v4, v5, v3, p3, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    const v3, 0xffff

    and-int v4, p4, v3

    if-ne v4, p4, :cond_1

    invoke-static {p5}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p5

    const/16 v4, 0x30

    new-array v5, v4, [B

    invoke-virtual {p5, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    invoke-static {v1, p0, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->convertInput(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p3, p0, p5}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->rsaBlinded(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;Ljava/security/SecureRandom;)[B

    move-result-object p0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x8

    array-length p1, p0

    sub-int/2addr p1, v4

    invoke-static {p0, v2, v4}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->checkPkcs1Encoding2([BII)I

    move-result p2

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->bigEndianToShort([BI)S

    move-result p3

    xor-int/2addr p3, p4

    and-int/2addr p3, v3

    neg-int p3, p3

    shr-int/lit8 p3, p3, 0x1f

    or-int/2addr p2, p3

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, v4, :cond_0

    aget-byte p5, v5, p4

    and-int/2addr p5, p2

    add-int v0, p1, p4

    aget-byte v0, p0, v0

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    or-int/2addr p5, v0

    int-to-byte p5, p5

    aput-byte p5, v5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v5

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'protocolVersion\' must be a 16 bit value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'privateKey\' must be at least 512 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'privateKey\' must be an RSA private key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input not a valid EncryptedPreMasterSecret"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static getInputLimit(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)I
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private static rsa(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static rsaBlinded(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;Ljava/security/SecureRandom;)[B
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    instance-of v2, p0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object p0, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, p2}, Lorg/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->rsaCrt(Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object p1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object p2

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object p0

    invoke-static {v1, p1, p0}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->subFrom(I[B[B)I

    move-result p1

    invoke-static {v1, p1, p2, p0}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->caddTo(II[B[B)I

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->rsa(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static rsaCrt(Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RSA engine faulty decryption/signing detected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static subFrom(I[B[B)I
    .locals 3

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz p0, :cond_0

    aget-byte v1, p2, p0

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p1, p0

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-byte v1, v0

    aput-byte v1, p2, p0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static toBytes(Ljava/math/BigInteger;I)[B
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, p1, [B

    array-length v1, p0

    sub-int/2addr p1, v1

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
