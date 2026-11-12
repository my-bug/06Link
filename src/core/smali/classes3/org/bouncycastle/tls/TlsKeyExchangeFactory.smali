.class public interface abstract Lorg/bouncycastle/tls/TlsKeyExchangeFactory;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createDHEKeyExchangeClient(ILorg/bouncycastle/tls/TlsDHGroupVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createDHEKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createDHKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createDHanonKeyExchangeClient(ILorg/bouncycastle/tls/TlsDHGroupVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createDHanonKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createECDHEKeyExchangeClient(I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createECDHEKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createECDHKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createECDHanonKeyExchangeClient(I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createECDHanonKeyExchangeServer(ILorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createPSKKeyExchangeClient(ILorg/bouncycastle/tls/TlsPSKIdentity;Lorg/bouncycastle/tls/TlsDHGroupVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createPSKKeyExchangeServer(ILorg/bouncycastle/tls/TlsPSKIdentityManager;Lorg/bouncycastle/tls/crypto/TlsDHConfig;Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createRSAKeyExchange(I)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSRPKeyExchangeClient(ILorg/bouncycastle/tls/TlsSRPIdentity;Lorg/bouncycastle/tls/TlsSRPConfigVerifier;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSRPKeyExchangeServer(ILorg/bouncycastle/tls/TlsSRPLoginParameters;)Lorg/bouncycastle/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
