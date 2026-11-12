.class public Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;
.super Ljava/lang/Object;


# instance fields
.field private privParams:Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)[B
    .locals 4

    check-cast p1, Lorg/bouncycastle/crypto/params/ECDHUPublicParameters;

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;->privParams:Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDHUPublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;->privParams:Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;->getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDHUPublicParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;->getFieldSize()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;[BII)V

    invoke-static {v0, v2, v1, v1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;[BII)V

    return-object v2
.end method

.method public getFieldSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;->privParams:Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldElementEncodingLength()I

    move-result v0

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;->privParams:Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;

    const-string v0, "ECCDHU"

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/agreement/Utils;->getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method
