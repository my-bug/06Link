.class interface abstract Lorg/bouncycastle/jsse/provider/ProvTlsManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract chooseClientKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;
.end method

.method public abstract chooseServerKey([Ljava/lang/String;[Ljava/security/Principal;)Lorg/bouncycastle/jsse/BCX509Key;
.end method

.method public abstract getContextData()Lorg/bouncycastle/jsse/provider/ContextData;
.end method

.method public abstract getEnableSessionCreation()Z
.end method

.method public abstract getPeerHost()Ljava/lang/String;
.end method

.method public abstract getPeerHostSNI()Ljava/lang/String;
.end method

.method public abstract getPeerPort()I
.end method

.method public abstract getTransportID()I
.end method

.method public abstract notifyHandshakeComplete(Lorg/bouncycastle/jsse/provider/ProvSSLConnection;)V
.end method

.method public abstract notifyHandshakeSession(Lorg/bouncycastle/jsse/provider/ProvSSLSessionContext;Lorg/bouncycastle/tls/SecurityParameters;Lorg/bouncycastle/jsse/provider/JsseSecurityParameters;Lorg/bouncycastle/jsse/provider/ProvSSLSession;)V
.end method

.method public abstract selectApplicationProtocol(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
