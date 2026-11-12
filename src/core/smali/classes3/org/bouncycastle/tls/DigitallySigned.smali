.class public final Lorg/bouncycastle/tls/DigitallySigned;
.super Ljava/lang/Object;


# instance fields
.field private final algorithm:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

.field private final signature:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/DigitallySigned;->algorithm:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    iput-object p2, p0, Lorg/bouncycastle/tls/DigitallySigned;->signature:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'signature\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/DigitallySigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/tls/DigitallySigned;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/tls/DigitallySigned;-><init>(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/DigitallySigned;->algorithm:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->encode(Ljava/io/OutputStream;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/DigitallySigned;->signature:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method public getAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DigitallySigned;->algorithm:Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DigitallySigned;->signature:[B

    return-object v0
.end method
