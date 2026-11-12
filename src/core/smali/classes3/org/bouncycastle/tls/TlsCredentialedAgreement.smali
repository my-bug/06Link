.class public interface abstract Lorg/bouncycastle/tls/TlsCredentialedAgreement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsCredentials;


# virtual methods
.method public abstract generateAgreement(Lorg/bouncycastle/tls/crypto/TlsCertificate;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
