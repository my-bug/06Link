.class public Lorg/bouncycastle/crypto/modes/SICBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/CTRModeCipher;


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private counterOut:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method

.method private adjustCounter(J)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x5

    const-wide/16 v2, 0xff

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, p1, v6

    if-ltz v8, :cond_2

    iget v6, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v6, v6

    add-long/2addr v6, p1

    iget v8, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    cmp-long v8, v6, v2

    move-wide v2, v6

    if-lez v8, :cond_1

    :goto_0
    if-lt v1, v0, :cond_1

    mul-int/lit8 v8, v1, 0x8

    shl-long v8, v4, v8

    :goto_1
    cmp-long v10, v2, v8

    if-ltz v10, :cond_0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    sub-long/2addr v2, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    long-to-int v0, v2

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter(I)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v0, v0

    mul-long v0, v0, v6

    sub-long/2addr p1, v0

    long-to-int p2, p1

    :goto_2
    iput p2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void

    :cond_2
    neg-long v8, p1

    iget v10, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v10, v10

    sub-long/2addr v8, v10

    iget v10, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    cmp-long v10, v8, v2

    move-wide v2, v8

    if-lez v10, :cond_4

    :goto_3
    if-lt v1, v0, :cond_4

    mul-int/lit8 v10, v1, 0x8

    shl-long v10, v4, v10

    :goto_4
    cmp-long v12, v2, v10

    if-lez v12, :cond_3

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    sub-long/2addr v2, v10

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    :goto_5
    const/4 v0, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    add-long/2addr v6, v4

    goto :goto_5

    :cond_5
    iget v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long p1, p1

    mul-long p1, p1, v8

    add-long/2addr v1, p1

    long-to-int p1, v1

    if-ltz p1, :cond_6

    iput v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void

    :cond_6
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    iget p2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int/2addr p2, p1

    goto :goto_2
.end method

.method private checkCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v1, v2, :cond_1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Counter in CTR/SIC mode out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkLastIncrement()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v0, v0, v2

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Counter in CTR/SIC mode out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private decrementCounterAt(I)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    :cond_0
    const/4 p1, -0x1

    add-int/2addr v0, p1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eq v2, p1, :cond_0

    :cond_1
    return-void
.end method

.method private incrementCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eqz v2, :cond_0

    :cond_1
    return-void
.end method

.method private incrementCounter(I)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-byte v4, v0, v3

    int-to-byte v5, p1

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/16 v0, 0xff

    and-int/2addr v1, v0

    add-int/2addr v1, p1

    if-le v1, v0, :cond_0

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    :cond_0
    return-void
.end method

.method private incrementCounterAt(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public static newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->checkLastIncrement()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v2, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    if-ne v3, v0, :cond_1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    :cond_1
    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getPosition()J
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, -0x1

    :goto_0
    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v5, v4

    if-ge v0, v5, :cond_0

    aget-byte v5, v2, v0

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v5, v4

    goto :goto_1

    :cond_0
    aget-byte v4, v2, v0

    and-int/lit16 v5, v4, 0xff

    :goto_1
    if-gez v5, :cond_1

    add-int/lit8 v4, v0, -0x1

    aget-byte v6, v2, v4

    sub-int/2addr v6, v3

    int-to-byte v3, v6

    aput-byte v3, v2, v4

    add-int/lit16 v5, v5, 0x100

    :cond_1
    int-to-byte v3, v5

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x8

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_4

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    array-length v1, p1

    const-string v2, " bytes."

    if-lt v0, v1, :cond_3

    div-int/lit8 v1, v0, 0x2

    const/16 v3, 0x8

    if-le v3, v1, :cond_0

    div-int/lit8 v3, v0, 0x2

    :cond_0
    array-length p1, p1

    sub-int/2addr v0, p1

    if-gt v0, v3, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CTR/SIC mode requires IV of at least: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CTR/SIC mode requires IV no greater than: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CTR/SIC mode requires ParametersWithIV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    if-eqz v0, :cond_0

    iget v4, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    :goto_0
    iget p1, v1, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return p1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    iget p1, v1, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int p2, v3, p1

    array-length p3, v2

    if-gt p2, p3, :cond_3

    add-int p4, v6, p1

    array-length p1, v5

    if-gt p4, p1, :cond_2

    iget-object p1, v1, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object p2, v1, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object p3, v1, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 p4, 0x0

    invoke-interface {p1, p2, p4, p3, p4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_1
    iget p1, v1, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge p4, p1, :cond_1

    add-int p1, v6, p4

    add-int p2, v3, p4

    aget-byte p2, v2, p2

    iget-object p3, v1, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    aget-byte p3, p3, p4

    xor-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, v5, p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too small"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    iget v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    if-nez v2, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->checkLastIncrement()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v2, v3, v0, v4, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    goto :goto_1

    :cond_0
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v2, v4, v2

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    if-ne v5, v3, :cond_1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    :cond_1
    :goto_1
    add-int v3, p5, v1

    aput-byte v2, p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p3

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too small"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    iput v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method

.method public seekTo(J)J
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public skip(J)J
    .locals 4

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->adjustCounter(J)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-wide p1
.end method
