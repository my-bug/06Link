.class public interface abstract Lorg/bouncycastle/tls/TlsPeer;
.super Ljava/lang/Object;


# virtual methods
.method public abstract allowLegacyResumption()Z
.end method

.method public abstract cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCipherSuites()[I
.end method

.method public abstract getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;
.end method

.method public abstract getHandshakeResendTimeMillis()I
.end method

.method public abstract getHandshakeTimeoutMillis()I
.end method

.method public abstract getHeartbeat()Lorg/bouncycastle/tls/TlsHeartbeat;
.end method

.method public abstract getHeartbeatPolicy()S
.end method

.method public abstract getKeyExchangeFactory()Lorg/bouncycastle/tls/TlsKeyExchangeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMaxCertificateChainLength()I
.end method

.method public abstract getMaxHandshakeMessageSize()I
.end method

.method public abstract getProtocolVersions()[Lorg/bouncycastle/tls/ProtocolVersion;
.end method

.method public abstract getPskKeyExchangeModes()[S
.end method

.method public abstract getRenegotiationPolicy()I
.end method

.method public abstract notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract notifyAlertReceived(SS)V
.end method

.method public abstract notifyCloseHandle(Lorg/bouncycastle/tls/TlsCloseable;)V
.end method

.method public abstract notifyConnectionClosed()V
.end method

.method public abstract notifyHandshakeBeginning()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifyHandshakeComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifySecureRenegotiation(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract requiresCloseNotify()Z
.end method

.method public abstract requiresExtendedMasterSecret()Z
.end method

.method public abstract shouldCheckSigAlgOfPeerCerts()Z
.end method

.method public abstract shouldUseExtendedMasterSecret()Z
.end method

.method public abstract shouldUseExtendedPadding()Z
.end method

.method public abstract shouldUseGMTUnixTime()Z
.end method
