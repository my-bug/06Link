.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsCredentialedAgreement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;,
        Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;
    }
.end annotation


# instance fields
.field protected agreementCredentials:Lorg/bouncycastle/tls/TlsCredentialedAgreement;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/bouncycastle/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p3, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;

    check-cast p3, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement;->agreementCredentials:Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    return-void

    :cond_0
    instance-of v0, p3, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;

    check-cast p3, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\'privateKey\' type not supported: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' must be private"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'crypto\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public generateAgreement(Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement;->agreementCredentials:Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    invoke-interface {v0, p1}, Lorg/bouncycastle/tls/TlsCredentialedAgreement;->generateAgreement(Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    return-object p1
.end method

.method public getCertificate()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement;->agreementCredentials:Lorg/bouncycastle/tls/TlsCredentialedAgreement;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsCredentialedAgreement;->getCertificate()Lorg/bouncycastle/tls/Certificate;

    move-result-object v0

    return-object v0
.end method
