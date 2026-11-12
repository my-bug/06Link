.class public Lorg/bouncycastle/tls/TlsECCUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPointEncoding(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isNullOrEmpty([B)Z

    move-result v0

    const/16 v1, 0x2f

    if-nez v0, :cond_2

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    aget-byte p0, p1, p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createNamedECConfig(Lorg/bouncycastle/tls/TlsContext;I)Lorg/bouncycastle/tls/crypto/TlsECConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->getCurveBits(I)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    new-instance p0, Lorg/bouncycastle/tls/crypto/TlsECConfig;

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/crypto/TlsECConfig;-><init>(I)V

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static getMinimumCurveBits(I)I
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result p0

    return p0
.end method

.method public static isECCCipherSuite(I)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result p0

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static receiveECDHConfig(Lorg/bouncycastle/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/tls/crypto/TlsECConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/tls/NamedGroup;->refersToAnECDHCurve(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->getClientSupportedGroups()[I

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/crypto/TlsECConfig;

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/crypto/TlsECConfig;-><init>(I)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x28

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static writeECConfig(Lorg/bouncycastle/tls/crypto/TlsECConfig;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/TlsECConfig;->getNamedGroup()I

    move-result p0

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsECCUtils;->writeNamedECParameters(ILjava/io/OutputStream;)V

    return-void
.end method

.method public static writeNamedECParameters(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/NamedGroup;->refersToASpecificCurve(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->checkUint16(I)V

    invoke-static {p0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method
