.class public Lorg/bouncycastle/tls/DefaultTlsKeyExchangeFactory;
.super Lorg/bouncycastle/tls/AbstractTlsKeyExchangeFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/tls/AbstractTlsKeyExchangeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createDHEKeyExchangeClient(ILorg/bouncycastle/tls/TlsDHGroupVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/tls/TlsDHEKeyExchange;-><init>(ILorg/bouncycastle/tls/TlsDHGroupVerifier;)V

    return-object v0
.end method

.method public createDHEKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsDHEKeyExchange;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/tls/TlsDHEKeyExchange;-><init>(ILorg/bouncycastle/tls/crypto/TlsDHConfig;)V

    return-object v0
.end method

.method public createDHKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsDHKeyExchange;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/TlsDHKeyExchange;-><init>(I)V

    return-object v0
.end method

.method public createDHanonKeyExchangeClient(ILorg/bouncycastle/tls/TlsDHGroupVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;-><init>(ILorg/bouncycastle/tls/TlsDHGroupVerifier;)V

    return-object v0
.end method

.method public createDHanonKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/tls/TlsDHanonKeyExchange;-><init>(ILorg/bouncycastle/tls/crypto/TlsDHConfig;)V

    return-object v0
.end method

.method public createECDHEKeyExchangeClient(I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsECDHEKeyExchange;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/TlsECDHEKeyExchange;-><init>(I)V

    return-object v0
.end method

.method public createECDHEKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsECDHEKeyExchange;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/tls/TlsECDHEKeyExchange;-><init>(ILorg/bouncycastle/tls/crypto/TlsECConfig;)V

    return-object v0
.end method

.method public createECDHKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsECDHKeyExchange;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/TlsECDHKeyExchange;-><init>(I)V

    return-object v0
.end method

.method public createECDHanonKeyExchangeClient(I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsECDHanonKeyExchange;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/TlsECDHanonKeyExchange;-><init>(I)V

    return-object v0
.end method

.method public createECDHanonKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsECDHanonKeyExchange;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/tls/TlsECDHanonKeyExchange;-><init>(ILorg/bouncycastle/tls/crypto/TlsECConfig;)V

    return-object v0
.end method

.method public createPSKKeyExchangeClient(ILorg/bouncycastle/tls/TlsPSKIdentity;Lorg/bouncycastle/tls/TlsDHGroupVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsPSKKeyExchange;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/tls/TlsPSKKeyExchange;-><init>(ILorg/bouncycastle/tls/TlsPSKIdentity;Lorg/bouncycastle/tls/TlsDHGroupVerifier;)V

    return-object v0
.end method

.method public createPSKKeyExchangeServer(ILorg/bouncycastle/tls/TlsPSKIdentityManager;Lorg/bouncycastle/tls/crypto/TlsDHConfig;Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsPSKKeyExchange;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/TlsPSKKeyExchange;-><init>(ILorg/bouncycastle/tls/TlsPSKIdentityManager;Lorg/bouncycastle/tls/crypto/TlsDHConfig;Lorg/bouncycastle/tls/crypto/TlsECConfig;)V

    return-object v0
.end method

.method public createRSAKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsRSAKeyExchange;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/TlsRSAKeyExchange;-><init>(I)V

    return-object v0
.end method

.method public createSRPKeyExchangeClient(ILorg/bouncycastle/tls/TlsSRPIdentity;Lorg/bouncycastle/tls/TlsSRPConfigVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/tls/TlsSRPKeyExchange;-><init>(ILorg/bouncycastle/tls/TlsSRPIdentity;Lorg/bouncycastle/tls/TlsSRPConfigVerifier;)V

    return-object v0
.end method

.method public createSRPKeyExchangeServer(ILorg/bouncycastle/tls/TlsSRPLoginParameters;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsSRPKeyExchange;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/tls/TlsSRPKeyExchange;-><init>(ILorg/bouncycastle/tls/TlsSRPLoginParameters;)V

    return-object v0
.end method
