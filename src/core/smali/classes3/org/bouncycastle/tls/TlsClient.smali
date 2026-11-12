.class public interface abstract Lorg/bouncycastle/tls/TlsClient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsPeer;


# virtual methods
.method public abstract getAuthentication()Lorg/bouncycastle/tls/TlsAuthentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getClientExtensions()Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getClientSupplementalData()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDHGroupVerifier()Lorg/bouncycastle/tls/TlsDHGroupVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getEarlyKeyShareGroups()Ljava/util/Vector;
.end method

.method public abstract getExternalPSKs()Ljava/util/Vector;
.end method

.method public abstract getPSKIdentity()Lorg/bouncycastle/tls/TlsPSKIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSRPConfigVerifier()Lorg/bouncycastle/tls/TlsSRPConfigVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSRPIdentity()Lorg/bouncycastle/tls/TlsSRPIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSessionToResume()Lorg/bouncycastle/tls/TlsSession;
.end method

.method public abstract init(Lorg/bouncycastle/tls/TlsClientContext;)V
.end method

.method public abstract isFallback()Z
.end method

.method public abstract notifyNewSessionTicket(Lorg/bouncycastle/tls/NewSessionTicket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifySelectedCipherSuite(I)V
.end method

.method public abstract notifySelectedPSK(Lorg/bouncycastle/tls/TlsPSK;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifyServerVersion(Lorg/bouncycastle/tls/ProtocolVersion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifySessionID([B)V
.end method

.method public abstract notifySessionToResume(Lorg/bouncycastle/tls/TlsSession;)V
.end method

.method public abstract processServerExtensions(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract processServerSupplementalData(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shouldUseCompatibilityMode()Z
.end method
