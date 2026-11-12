.class public Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsCipher;


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;

    invoke-direct {v0}, Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;-><init>()V

    sput-object v0, Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;->INSTANCE:Lorg/bouncycastle/tls/crypto/TlsNullNullCipher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeCiphertext(JSLorg/bouncycastle/tls/ProtocolVersion;[BII)Lorg/bouncycastle/tls/crypto/TlsDecodeResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;

    invoke-direct {p1, p5, p6, p7, p3}, Lorg/bouncycastle/tls/crypto/TlsDecodeResult;-><init>([BIIS)V

    return-object p1
.end method

.method public encodePlaintext(JSLorg/bouncycastle/tls/ProtocolVersion;I[BII)Lorg/bouncycastle/tls/crypto/TlsEncodeResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int p1, p5, p8

    new-array p2, p1, [B

    invoke-static {p6, p7, p2, p5, p8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p4, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;

    const/4 p5, 0x0

    invoke-direct {p4, p2, p5, p1, p3}, Lorg/bouncycastle/tls/crypto/TlsEncodeResult;-><init>([BIIS)V

    return-object p4
.end method

.method public getCiphertextDecodeLimit(I)I
    .locals 0

    return p1
.end method

.method public getCiphertextEncodeLimit(I)I
    .locals 0

    return p1
.end method

.method public getPlaintextDecodeLimit(I)I
    .locals 0

    return p1
.end method

.method public getPlaintextEncodeLimit(I)I
    .locals 0

    return p1
.end method

.method public rekeyDecoder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public rekeyEncoder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public usesOpaqueRecordTypeDecode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public usesOpaqueRecordTypeEncode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
