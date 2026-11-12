.class Lorg/bouncycastle/crypto/agreement/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/DHKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->AGREEMENT:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->AGREEMENT:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const/16 v1, 0x80

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->AGREEMENT:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const/16 v1, 0xe0

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->AGREEMENT:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method
