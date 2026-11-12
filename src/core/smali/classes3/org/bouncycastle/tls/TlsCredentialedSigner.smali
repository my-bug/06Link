.class public interface abstract Lorg/bouncycastle/tls/TlsCredentialedSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsCredentials;


# virtual methods
.method public abstract generateRawSignature([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSignatureAndHashAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
.end method

.method public abstract getStreamSigner()Lorg/bouncycastle/tls/crypto/TlsStreamSigner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
