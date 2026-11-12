.class public interface abstract Lorg/bouncycastle/crypto/MultiBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# virtual methods
.method public abstract getMultiBlockSize()I
.end method

.method public abstract processBlocks([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
