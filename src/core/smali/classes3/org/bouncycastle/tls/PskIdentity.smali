.class public Lorg/bouncycastle/tls/PskIdentity;
.super Ljava/lang/Object;


# instance fields
.field protected identity:[B

.field protected obfuscatedTicketAge:J


# direct methods
.method public constructor <init>([BJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    array-length v0, p1

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint16(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Lorg/bouncycastle/tls/TlsUtils;->isValidUint32(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/PskIdentity;->identity:[B

    iput-wide p2, p0, Lorg/bouncycastle/tls/PskIdentity;->obfuscatedTicketAge:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'obfuscatedTicketAge\' should be a uint32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'identity\' should have length from 1 to 65535"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'identity\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/tls/PskIdentity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/tls/TlsUtils;->readUint32(Ljava/io/InputStream;)J

    move-result-wide v1

    new-instance p0, Lorg/bouncycastle/tls/PskIdentity;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/tls/PskIdentity;-><init>([BJ)V

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/PskIdentity;->identity:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    iget-wide v0, p0, Lorg/bouncycastle/tls/PskIdentity;->obfuscatedTicketAge:J

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/tls/TlsUtils;->writeUint32(JLjava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/bouncycastle/tls/PskIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/tls/PskIdentity;

    iget-wide v2, p0, Lorg/bouncycastle/tls/PskIdentity;->obfuscatedTicketAge:J

    iget-wide v4, p1, Lorg/bouncycastle/tls/PskIdentity;->obfuscatedTicketAge:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/PskIdentity;->identity:[B

    iget-object p1, p1, Lorg/bouncycastle/tls/PskIdentity;->identity:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getEncodedLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/PskIdentity;->identity:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/PskIdentity;->identity:[B

    return-object v0
.end method

.method public getObfuscatedTicketAge()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/tls/PskIdentity;->obfuscatedTicketAge:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tls/PskIdentity;->identity:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    iget-wide v1, p0, Lorg/bouncycastle/tls/PskIdentity;->obfuscatedTicketAge:J

    long-to-int v3, v1

    xor-int/2addr v0, v3

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method
