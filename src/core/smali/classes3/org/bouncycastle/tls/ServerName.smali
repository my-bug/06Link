.class public final Lorg/bouncycastle/tls/ServerName;
.super Ljava/lang/Object;


# instance fields
.field private final nameData:[B

.field private final nameType:S


# direct methods
.method public constructor <init>(S[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint8(S)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    array-length v0, p2

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint16(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-short p1, p0, Lorg/bouncycastle/tls/ServerName;->nameType:S

    iput-object p2, p0, Lorg/bouncycastle/tls/ServerName;->nameData:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'nameData\' must have length from 1 to 65535"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'nameData\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'nameType\' must be from 0 to 255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/ServerName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/tls/ServerName;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/tls/ServerName;-><init>(S[B)V

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

    iget-short v0, p0, Lorg/bouncycastle/tls/ServerName;->nameType:S

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/tls/ServerName;->nameData:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method public getNameData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/ServerName;->nameData:[B

    return-object v0
.end method

.method public getNameType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/tls/ServerName;->nameType:S

    return v0
.end method
