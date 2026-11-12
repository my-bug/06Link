.class Lorg/bouncycastle/crypto/digests/Utils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;,
        Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0, p2}, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;-><init>(IILjava/lang/String;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static getDefaultProperties(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;-><init>(ILjava/lang/String;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method
