.class Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsCredentialedAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ECCredentialedAgreement"
.end annotation


# instance fields
.field final certificate:Lorg/bouncycastle/tls/Certificate;

.field final crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

.field final privateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/tls/Certificate;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;->certificate:Lorg/bouncycastle/tls/Certificate;

    iput-object p3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;->privateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-void
.end method


# virtual methods
.method public generateAgreement(Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->convert(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCertificate;->getPubKeyEC()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;->privateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsECDomain;->calculateECDHAgreement(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;

    move-result-object p1

    return-object p1
.end method

.method public getCertificate()Lorg/bouncycastle/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcDefaultTlsCredentialedAgreement$ECCredentialedAgreement;->certificate:Lorg/bouncycastle/tls/Certificate;

    return-object v0
.end method
