.class Lorg/bouncycastle/tls/RecordStream$Record;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tls/RecordStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field volatile buf:[B

.field private final header:[B

.field volatile pos:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream$Record;->header:[B

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/tls/RecordStream$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/tls/RecordStream$Record;-><init>()V

    return-void
.end method

.method private resize(I)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B

    iget v1, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B

    :cond_0
    return-void
.end method


# virtual methods
.method fillTo(Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    if-ge v0, p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B

    iget v1, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    iget v2, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    sub-int v2, p2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget p2, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    iget v0, p1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    const/4 p2, 0x0

    iput p2, p1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method readFragment(Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p2, p2, 0x5

    invoke-direct {p0, p2}, Lorg/bouncycastle/tls/RecordStream$Record;->resize(I)V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/RecordStream$Record;->fillTo(Ljava/io/InputStream;I)V

    iget p1, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method readHeader(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tls/RecordStream$Record;->fillTo(Ljava/io/InputStream;I)V

    iget p1, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/RecordStream$Record;->header:[B

    iput-object v0, p0, Lorg/bouncycastle/tls/RecordStream$Record;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/tls/RecordStream$Record;->pos:I

    return-void
.end method
