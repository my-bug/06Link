.class public interface abstract Lorg/bouncycastle/tls/crypto/TlsAgreement;
.super Ljava/lang/Object;


# virtual methods
.method public abstract calculateSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generateEphemeral()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract receivePeerValue([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
