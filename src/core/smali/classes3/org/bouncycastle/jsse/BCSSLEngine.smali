.class public interface abstract Lorg/bouncycastle/jsse/BCSSLEngine;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getApplicationProtocol()Ljava/lang/String;
.end method

.method public abstract getBCHandshakeApplicationProtocolSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLEngine;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBCHandshakeSession()Lorg/bouncycastle/jsse/BCExtendedSSLSession;
.end method

.method public abstract getBCSession()Lorg/bouncycastle/jsse/BCExtendedSSLSession;
.end method

.method public abstract getConnection()Lorg/bouncycastle/jsse/BCSSLConnection;
.end method

.method public abstract getHandshakeApplicationProtocol()Ljava/lang/String;
.end method

.method public abstract getParameters()Lorg/bouncycastle/jsse/BCSSLParameters;
.end method

.method public abstract setBCHandshakeApplicationProtocolSelector(Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLEngine;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBCSessionToResume(Lorg/bouncycastle/jsse/BCExtendedSSLSession;)V
.end method

.method public abstract setParameters(Lorg/bouncycastle/jsse/BCSSLParameters;)V
.end method
