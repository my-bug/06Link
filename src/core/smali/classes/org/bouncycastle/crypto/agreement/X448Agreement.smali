.class public final Lorg/bouncycastle/crypto/agreement/X448Agreement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/RawAgreement;


# instance fields
.field private privateKey:Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/X448Agreement;->privateKey:Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    check-cast p1, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->generateSecret(Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;[BI)V

    return-void
.end method

.method public getAgreementSize()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/X448Agreement;->privateKey:Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    const-string v0, "X448"

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/agreement/Utils;->getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method
