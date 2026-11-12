.class public interface abstract Lorg/bouncycastle/tls/TlsCredentialedDecryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsCredentials;


# virtual methods
.method public abstract decrypt(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;[B)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
