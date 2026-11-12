.class Lorg/bouncycastle/crypto/signers/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDefaultProperties(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-static {p3}, Lorg/bouncycastle/crypto/signers/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/DSAKeyParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    invoke-static {p2}, Lorg/bouncycastle/crypto/signers/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p2

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECKeyParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    invoke-static {p2}, Lorg/bouncycastle/crypto/signers/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p2

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/GOST3410KeyParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/GOST3410KeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/GOST3410Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    invoke-static {p2}, Lorg/bouncycastle/crypto/signers/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p2

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->SIGNING:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0
.end method
