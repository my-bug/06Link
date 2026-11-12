.class public abstract Lorg/bouncycastle/tls/AbstractTlsPeer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsPeer;


# instance fields
.field private volatile closeHandle:Lorg/bouncycastle/tls/TlsCloseable;

.field private final crypto:Lorg/bouncycastle/tls/crypto/TlsCrypto;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/AbstractTlsPeer;->crypto:Lorg/bouncycastle/tls/crypto/TlsCrypto;

    return-void
.end method


# virtual methods
.method public allowLegacyResumption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsPeer;->closeHandle:Lorg/bouncycastle/tls/TlsCloseable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsCloseable;->close()V

    :cond_0
    return-void
.end method

.method public getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/AbstractTlsPeer;->crypto:Lorg/bouncycastle/tls/crypto/TlsCrypto;

    return-object v0
.end method

.method public getHandshakeResendTimeMillis()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getHandshakeTimeoutMillis()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeartbeat()Lorg/bouncycastle/tls/TlsHeartbeat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeartbeatPolicy()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getKeyExchangeFactory()Lorg/bouncycastle/tls/TlsKeyExchangeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/DefaultTlsKeyExchangeFactory;

    invoke-direct {v0}, Lorg/bouncycastle/tls/DefaultTlsKeyExchangeFactory;-><init>()V

    return-object v0
.end method

.method public getMaxCertificateChainLength()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getMaxHandshakeMessageSize()I
    .locals 1

    const v0, 0x8000

    return v0
.end method

.method public getPskKeyExchangeModes()[S
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [S

    const/4 v2, 0x0

    aput-short v0, v1, v2

    return-object v1
.end method

.method public getRenegotiationPolicy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getSupportedCipherSuites()[I
.end method

.method protected getSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;
    .locals 2

    sget-object v0, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    sget-object v1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tls/ProtocolVersion;->downTo(Lorg/bouncycastle/tls/ProtocolVersion;)[Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public notifyAlertReceived(SS)V
    .locals 0

    return-void
.end method

.method public notifyCloseHandle(Lorg/bouncycastle/tls/TlsCloseable;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tls/AbstractTlsPeer;->closeHandle:Lorg/bouncycastle/tls/TlsCloseable;

    return-void
.end method

.method public notifyConnectionClosed()V
    .locals 0

    return-void
.end method

.method public notifyHandshakeBeginning()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public notifyHandshakeComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public notifySecureRenegotiation(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public requiresCloseNotify()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requiresExtendedMasterSecret()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldCheckSigAlgOfPeerCerts()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldUseExtendedMasterSecret()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldUseExtendedPadding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseGMTUnixTime()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
