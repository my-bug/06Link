.class public interface abstract Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isVerified()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
