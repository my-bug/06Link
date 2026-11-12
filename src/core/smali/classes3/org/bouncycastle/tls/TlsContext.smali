.class public interface abstract Lorg/bouncycastle/tls/TlsContext;
.super Ljava/lang/Object;


# virtual methods
.method public abstract exportChannelBinding(I)[B
.end method

.method public abstract exportEarlyKeyingMaterial(Ljava/lang/String;[BI)[B
.end method

.method public abstract exportKeyingMaterial(Ljava/lang/String;[BI)[B
.end method

.method public abstract getClientSupportedVersions()[Lorg/bouncycastle/tls/ProtocolVersion;
.end method

.method public abstract getClientVersion()Lorg/bouncycastle/tls/ProtocolVersion;
.end method

.method public abstract getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;
.end method

.method public abstract getNonceGenerator()Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;
.end method

.method public abstract getRSAPreMasterSecretVersion()Lorg/bouncycastle/tls/ProtocolVersion;
.end method

.method public abstract getResumableSession()Lorg/bouncycastle/tls/TlsSession;
.end method

.method public abstract getSecurityParameters()Lorg/bouncycastle/tls/SecurityParameters;
.end method

.method public abstract getSecurityParametersConnection()Lorg/bouncycastle/tls/SecurityParameters;
.end method

.method public abstract getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;
.end method

.method public abstract getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;
.end method

.method public abstract getSession()Lorg/bouncycastle/tls/TlsSession;
.end method

.method public abstract getUserObject()Ljava/lang/Object;
.end method

.method public abstract isServer()Z
.end method

.method public abstract setUserObject(Ljava/lang/Object;)V
.end method
