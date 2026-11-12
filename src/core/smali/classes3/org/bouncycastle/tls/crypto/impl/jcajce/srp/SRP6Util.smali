.class Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;
.super Ljava/lang/Object;


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;

.field private static final colon:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x3a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->colon:[B

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateK(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->hashPaddedPair(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static calculateKey(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    const/4 p2, 0x0

    array-length v0, p1

    invoke-interface {p0, p1, p2, v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method public static calculateM1(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->hashPaddedTriplet(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static calculateM2(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->hashPaddedTriplet(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static calculateU(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->hashPaddedPair(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static calculateX(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;
    .locals 1

    array-length p1, p3

    const/4 v0, 0x0

    invoke-interface {p0, p3, v0, p1}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    sget-object p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->colon:[B

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p3}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    array-length p1, p4

    invoke-interface {p0, p4, v0, p1}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p1

    array-length p4, p2

    invoke-interface {p0, p2, v0, p4}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    array-length p2, p1

    invoke-interface {p0, p1, v0, p2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p0

    invoke-direct {p1, p3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method public static generatePrivateValue(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/16 v0, 0x100

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sget-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static getPadded(Ljava/math/BigInteger;I)[B
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    array-length v0, p0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    array-length v1, p0

    sub-int/2addr p1, v1

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private static hashPaddedPair(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object p2

    invoke-static {p3, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    array-length p3, p2

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0, p3}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    array-length p2, p1

    invoke-interface {p0, p1, v0, p2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method private static hashPaddedTriplet(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object p2

    invoke-static {p3, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object p3

    invoke-static {p4, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    array-length p4, p2

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0, p4}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    array-length p2, p3

    invoke-interface {p0, p3, v0, p2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    array-length p2, p1

    invoke-interface {p0, p1, v0, p2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method public static validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid public value: 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
