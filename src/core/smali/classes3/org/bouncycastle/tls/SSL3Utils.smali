.class Lorg/bouncycastle/tls/SSL3Utils;
.super Ljava/lang/Object;


# static fields
.field private static final IPAD:[B

.field private static final IPAD_BYTE:B = 0x36t

.field private static final OPAD:[B

.field private static final OPAD_BYTE:B = 0x5ct

.field private static final SSL_CLIENT:[B

.field private static final SSL_SERVER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/tls/SSL3Utils;->SSL_CLIENT:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/tls/SSL3Utils;->SSL_SERVER:[B

    const/16 v0, 0x36

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/SSL3Utils;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SSL3Utils;->IPAD:[B

    const/16 v0, 0x5c

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/SSL3Utils;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/SSL3Utils;->OPAD:[B

    return-void

    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateVerifyData(Lorg/bouncycastle/tls/TlsHandshakeHash;Z)[B
    .locals 2

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsHandshakeHash;->forkPRFHash()Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/bouncycastle/tls/SSL3Utils;->SSL_SERVER:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/bouncycastle/tls/SSL3Utils;->SSL_CLIENT:[B

    :goto_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p0

    return-object p0
.end method

.method static completeCombinedHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsHash;Lorg/bouncycastle/tls/crypto/TlsHash;)V
    .locals 1

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getMasterSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object v0

    invoke-interface {p0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->adoptSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/tls/crypto/TlsSecret;->extract()[B

    move-result-object p0

    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/tls/SSL3Utils;->completeHash([BLorg/bouncycastle/tls/crypto/TlsHash;I)V

    const/16 p1, 0x28

    invoke-static {p0, p2, p1}, Lorg/bouncycastle/tls/SSL3Utils;->completeHash([BLorg/bouncycastle/tls/crypto/TlsHash;I)V

    return-void
.end method

.method private static completeHash([BLorg/bouncycastle/tls/crypto/TlsHash;I)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    sget-object v0, Lorg/bouncycastle/tls/SSL3Utils;->IPAD:[B

    invoke-interface {p1, v0, v1, p2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object v0

    array-length v2, p0

    invoke-interface {p1, p0, v1, v2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    sget-object p0, Lorg/bouncycastle/tls/SSL3Utils;->OPAD:[B

    invoke-interface {p1, p0, v1, p2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    array-length p0, v0

    invoke-interface {p1, v0, v1, p0}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    return-void
.end method

.method private static genPad(BI)[B
    .locals 0

    new-array p1, p1, [B

    invoke-static {p1, p0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object p1
.end method

.method static readEncryptedPMS(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static writeEncryptedPMS([BLjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
