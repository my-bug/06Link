.class Lorg/bouncycastle/tls/HeartbeatMessage$PayloadBuffer;
.super Ljava/io/ByteArrayOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tls/HeartbeatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PayloadBuffer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method getPadding(I)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/HeartbeatMessage$PayloadBuffer;->buf:[B

    iget v1, p0, Lorg/bouncycastle/tls/HeartbeatMessage$PayloadBuffer;->count:I

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/tls/TlsUtils;->copyOfRangeExact([BII)[B

    move-result-object p1

    return-object p1
.end method

.method getPayload(I)[B
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/HeartbeatMessage$PayloadBuffer;->count:I

    add-int/lit8 v0, v0, -0x10

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/HeartbeatMessage$PayloadBuffer;->buf:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method
