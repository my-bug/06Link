.class public interface abstract Lorg/bouncycastle/jsse/BCSSLSocket;
.super Ljava/lang/Object;


# virtual methods
.method public abstract connect(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getApplicationProtocol()Ljava/lang/String;
.end method

.method public abstract getBCHandshakeApplicationProtocolSelector()Lorg/bouncycastle/jsse/BCApplicationProtocolSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/jsse/BCApplicationProtocolSelector<",
            "Ljavax/net/ssl/SSLSocket;",
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
            "Ljavax/net/ssl/SSLSocket;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBCSessionToResume(Lorg/bouncycastle/jsse/BCExtendedSSLSession;)V
.end method

.method public abstract setHost(Ljava/lang/String;)V
.end method

.method public abstract setParameters(Lorg/bouncycastle/jsse/BCSSLParameters;)V
.end method
