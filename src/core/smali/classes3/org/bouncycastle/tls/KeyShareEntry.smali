.class public Lorg/bouncycastle/tls/KeyShareEntry;
.super Ljava/lang/Object;


# instance fields
.field protected final keyExchange:[B

.field protected final namedGroup:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint16(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-static {v0}, Lorg/bouncycastle/tls/KeyShareEntry;->checkKeyExchangeLength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/tls/KeyShareEntry;->namedGroup:I

    iput-object p2, p0, Lorg/bouncycastle/tls/KeyShareEntry;->keyExchange:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'keyExchange\' must have length from 1 to (2^16 - 1)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'keyExchange\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'namedGroup\' should be a uint16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkKeyExchangeLength(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/KeyShareEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/tls/KeyShareEntry;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/tls/KeyShareEntry;-><init>(I[B)V

    return-object v1
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/tls/KeyShareEntry;->getNamedGroup()I

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/KeyShareEntry;->getKeyExchange()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method public getKeyExchange()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/KeyShareEntry;->keyExchange:[B

    return-object v0
.end method

.method public getNamedGroup()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/KeyShareEntry;->namedGroup:I

    return v0
.end method
