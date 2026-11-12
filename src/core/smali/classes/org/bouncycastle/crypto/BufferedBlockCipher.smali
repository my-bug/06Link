.class public Lorg/bouncycastle/crypto/BufferedBlockCipher;
.super Ljava/lang/Object;


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field protected cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field protected forEncryption:Z

.field protected mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

.field protected partialBlockOkay:Z

.field protected pgpCFB:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v0, p1, Lorg/bouncycastle/crypto/MultiBlockCipher;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/MultiBlockCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lez v2, :cond_1

    const-string v4, "PGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-nez v4, :cond_4

    instance-of p1, p1, Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    if-lez v2, :cond_3

    const-string p1, "OpenPGP"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    return-void

    :cond_4
    :goto_2
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v0, v2, v1, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iput v1, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "data not block size aligned"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    return v1

    :cond_2
    :try_start_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short for doFinal()"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    throw p1
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputSize(I)I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    add-int/2addr p1, v0

    return p1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    :goto_0
    rem-int v0, p1, v0

    :goto_1
    sub-int/2addr p1, v0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processByte(B[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    array-length p1, v0

    const/4 v1, 0x0

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v0, v1, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    iput v1, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    return p1

    :cond_0
    return v1
.end method

.method public processBytes([BII[BI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object v4, p4

    move/from16 v6, p5

    if-ltz p3, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v5

    if-lez v5, :cond_1

    add-int/2addr v5, v6

    array-length v7, v4

    if-gt v5, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v7, v5

    iget v8, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr v7, v8

    const/4 v9, 0x0

    if-le p3, v7, :cond_3

    invoke-static {p1, p2, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v5, v8, v9, p4, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v8

    iput v9, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v10, p3, v7

    add-int v2, p2, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    div-int v3, v10, v0

    if-lez v3, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    add-int v5, v6, v8

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/MultiBlockCipher;->processBlocks([BII[BI)I

    move-result v0

    add-int/2addr v8, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    mul-int v3, v3, v0

    sub-int/2addr v10, v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v0, v0

    if-le v10, v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    add-int v5, v6, v8

    invoke-interface {v0, p1, v2, p4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    add-int/2addr v8, v0

    sub-int/2addr v10, v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_3
    move v2, p2

    move v10, p3

    const/4 v8, 0x0

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, v2, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, v10

    iput v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    add-int v2, v6, v8

    invoke-interface {v0, v1, v9, p4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    add-int/2addr v8, v0

    iput v9, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    :cond_5
    return v8

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
