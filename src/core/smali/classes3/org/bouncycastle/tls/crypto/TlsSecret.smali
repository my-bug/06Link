.class public interface abstract Lorg/bouncycastle/tls/crypto/TlsSecret;
.super Ljava/lang/Object;


# virtual methods
.method public abstract calculateHMAC(I[BII)[B
.end method

.method public abstract deriveUsingPRF(ILjava/lang/String;[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;
.end method

.method public abstract destroy()V
.end method

.method public abstract encrypt(Lorg/bouncycastle/tls/crypto/TlsEncryptor;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extract()[B
.end method

.method public abstract hkdfExpand(I[BI)Lorg/bouncycastle/tls/crypto/TlsSecret;
.end method

.method public abstract hkdfExtract(ILorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;
.end method

.method public abstract isAlive()Z
.end method
