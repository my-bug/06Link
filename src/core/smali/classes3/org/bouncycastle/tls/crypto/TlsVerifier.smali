.class public interface abstract Lorg/bouncycastle/tls/crypto/TlsVerifier;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getStreamVerifier(Lorg/bouncycastle/tls/DigitallySigned;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract verifyRawSignature(Lorg/bouncycastle/tls/DigitallySigned;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
