.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsAgreement;


# instance fields
.field protected final domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;

.field protected privateKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

.field protected publicKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

.field protected secret:Lorg/bouncycastle/tls/crypto/TlsSecret;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;

    return-void
.end method


# virtual methods
.method public calculateSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->secret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->secret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    return-object v0
.end method

.method public generateEphemeral()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->publicKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;->encapsulate(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->publicKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->secret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->privateKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;->encodePublicKey(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;)[B

    move-result-object v0

    return-object v0
.end method

.method public receivePeerValue([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;->decodePublicKey([B)Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->publicKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->domain:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->privateKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKemDomain;->decapsulate(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;[B)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->secret:Lorg/bouncycastle/tls/crypto/TlsSecret;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsMLKem;->privateKey:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    return-void
.end method
