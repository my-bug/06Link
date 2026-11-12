.class public Lorg/bouncycastle/tls/ByteQueue;
.super Ljava/lang/Object;


# instance fields
.field private available:I

.field private databuf:[B

.field private readOnlyBuf:Z

.field private skipped:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tls/ByteQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    iput v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    iput-boolean v0, p0, Lorg/bouncycastle/tls/ByteQueue;->readOnlyBuf:Z

    if-nez p1, :cond_0

    sget-object p1, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    goto :goto_0

    :cond_0
    new-array p1, p1, [B

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    iput p2, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    iput p3, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/tls/ByteQueue;->readOnlyBuf:Z

    return-void
.end method

.method public static nextTwoPow(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public addData([BII)V
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/tls/ByteQueue;->readOnlyBuf:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_0

    or-int/lit16 v0, p3, 0x100

    invoke-static {v0}, Lorg/bouncycastle/tls/ByteQueue;->nextTwoPow(I)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    :cond_0
    :goto_0
    iput v1, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    add-int/2addr v2, v0

    add-int/2addr v2, p3

    iget-object v3, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    array-length v3, v3

    if-le v2, v3, :cond_3

    add-int/2addr v0, p3

    invoke-static {v0}, Lorg/bouncycastle/tls/ByteQueue;->nextTwoPow(I)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    array-length v3, v2

    if-le v0, v3, :cond_2

    new-array v0, v0, [B

    iget v3, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    iget v4, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    iget v3, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    iget v2, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add data to read-only buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public available()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    return v0
.end method

.method public copyTo(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot copy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes, only got "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/nio/ByteBuffer;II)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p2, :cond_1

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    add-int/2addr v1, p3

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not enough data to read"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Buffer size of "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is too small for a read of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BIII)V
    .locals 2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    sub-int/2addr v0, p4

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    add-int/2addr v1, p4

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not enough data to read"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Buffer size of "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is too small for a read of "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method readHandshakeMessage(I)Lorg/bouncycastle/tls/HandshakeMessageInput;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    if-gt p1, v0, :cond_0

    iget v1, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    add-int v0, v1, p1

    iput v0, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    new-instance v0, Lorg/bouncycastle/tls/HandshakeMessageInput;

    iget-object v2, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    invoke-direct {v0, v2, v1, p1}, Lorg/bouncycastle/tls/HandshakeMessageInput;-><init>([BII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, only got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readInt32()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->readInt32([BI)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not enough data to read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUint16(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    add-int/lit8 v1, p1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->readUint16([BI)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not enough data to read"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readUint8(I)S
    .locals 2

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    add-int/lit8 v1, p1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/TlsUtils;->readUint8([BI)S

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not enough data to read"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeData(I)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    if-gt p1, v0, :cond_0

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot remove "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, only got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeData(Ljava/nio/ByteBuffer;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/tls/ByteQueue;->read(Ljava/nio/ByteBuffer;II)V

    add-int/2addr p3, p2

    invoke-virtual {p0, p3}, Lorg/bouncycastle/tls/ByteQueue;->removeData(I)V

    return-void
.end method

.method public removeData([BIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/tls/ByteQueue;->read([BIII)V

    add-int/2addr p4, p3

    invoke-virtual {p0, p4}, Lorg/bouncycastle/tls/ByteQueue;->removeData(I)V

    return-void
.end method

.method public removeData(II)[B
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/bouncycastle/tls/ByteQueue;->removeData([BIII)V

    return-object v0
.end method

.method public shrink()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    iput-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    :goto_0
    iput v1, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    return-void

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/tls/ByteQueue;->nextTwoPow(I)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    array-length v3, v2

    if-ge v0, v3, :cond_1

    new-array v0, v0, [B

    iget v3, p0, Lorg/bouncycastle/tls/ByteQueue;->skipped:I

    iget v4, p0, Lorg/bouncycastle/tls/ByteQueue;->available:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/bouncycastle/tls/ByteQueue;->databuf:[B

    goto :goto_0

    :cond_1
    return-void
.end method
