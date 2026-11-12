.class public interface abstract Lorg/bouncycastle/tls/crypto/TlsCipher;
.super Ljava/lang/Object;


# virtual methods
.method public abstract decodeCiphertext(JSLorg/bouncycastle/tls/ProtocolVersion;[BII)Lorg/bouncycastle/tls/crypto/TlsDecodeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encodePlaintext(JSLorg/bouncycastle/tls/ProtocolVersion;I[BII)Lorg/bouncycastle/tls/crypto/TlsEncodeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCiphertextDecodeLimit(I)I
.end method

.method public abstract getCiphertextEncodeLimit(I)I
.end method

.method public abstract getPlaintextDecodeLimit(I)I
.end method

.method public abstract getPlaintextEncodeLimit(I)I
.end method

.method public abstract rekeyDecoder()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract rekeyEncoder()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract usesOpaqueRecordTypeDecode()Z
.end method

.method public abstract usesOpaqueRecordTypeEncode()Z
.end method
