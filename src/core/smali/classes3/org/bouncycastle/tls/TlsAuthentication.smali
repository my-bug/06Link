.class public interface abstract Lorg/bouncycastle/tls/TlsAuthentication;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getClientCredentials(Lorg/bouncycastle/tls/CertificateRequest;)Lorg/bouncycastle/tls/TlsCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifyServerCertificate(Lorg/bouncycastle/tls/TlsServerCertificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
