.class Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsCredentialedAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DHCredentialedAgreement"
.end annotation


# instance fields
.field final certificate:Lorg/bouncycastle/tls/Certificate;

.field final crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

.field final privateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;->certificate:Lorg/bouncycastle/tls/Certificate;

    iput-object p3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;->privateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    return-void
.end method


# virtual methods
.method public generateAgreement(Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->convert(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->getPubKeyDH()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;->privateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsDHDomain;->calculateDHAgreement(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Z)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;

    move-result-object p1

    return-object p1
.end method

.method public getCertificate()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$DHCredentialedAgreement;->certificate:Lorg/bouncycastle/tls/Certificate;

    return-object v0
.end method
