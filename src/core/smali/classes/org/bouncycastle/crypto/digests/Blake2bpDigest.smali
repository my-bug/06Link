.class public Lorg/bouncycastle/crypto/digests/Blake2bpDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private final BLAKE2B_BLOCKBYTES:I

.field private final BLAKE2B_KEYBYTES:I

.field private final BLAKE2B_OUTBYTES:I

.field private final PARALLELISM_DEGREE:I

.field private S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

.field private buffer:[B

.field private bufferPos:I

.field private depth:I

.field private digestLength:I

.field private fanout:I

.field private innerHashLength:J

.field private key:[B

.field private keyLength:I

.field private nodeOffset:I

.field private param:[B

.field private root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

.field private salt:[B

.field private final singleByte:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->nodeOffset:I

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->salt:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->key:[B

    const/16 v1, 0x80

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->BLAKE2B_BLOCKBYTES:I

    const/16 v1, 0x40

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->BLAKE2B_KEYBYTES:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->BLAKE2B_OUTBYTES:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->PARALLELISM_DEGREE:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->singleByte:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->init([B)V

    return-void
.end method

.method private init([B)V
    .locals 9

    const/16 v0, 0x40

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    if-gt v1, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->key:[B

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Keys > 64 bytes are not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->digestLength:I

    const/4 v2, 0x4

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->fanout:I

    const/4 v3, 0x2

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->depth:I

    const-wide/16 v4, 0x40

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->innerHashLength:J

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    int-to-byte v0, v0

    const/4 v7, 0x1

    aput-byte v0, v6, v7

    int-to-byte v0, v2

    aput-byte v0, v6, v3

    int-to-byte v0, v3

    const/4 v3, 0x3

    aput-byte v0, v6, v3

    const/16 v0, 0x10

    aput-byte v7, v6, v0

    long-to-int v5, v4

    int-to-byte v4, v5

    const/16 v5, 0x11

    aput-byte v4, v6, v5

    new-instance v4, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>([B[B)V

    iput-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->nodeOffset:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    const/16 v7, 0x8

    invoke-static {v4, v5, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    aput-byte v1, v4, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    invoke-static {v0, v4, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    new-instance v5, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    invoke-direct {v5, v6, v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>([B[B)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->setAsLastNode()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->setAsLastNode()V

    if-eqz p1, :cond_3

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    if-lez v0, :cond_3

    const/16 v3, 0x80

    new-array v4, v3, [B

    invoke-static {p1, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4, v1, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v0, v1

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    mul-int/lit16 v6, v4, 0x80

    if-le v5, v6, :cond_1

    sub-int/2addr v5, v6

    const/16 v7, 0x80

    if-le v5, v7, :cond_0

    const/16 v5, 0x80

    :cond_0
    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v7, v7, v4

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    invoke-virtual {v7, v8, v6, v5}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v5, v5, v4

    aget-object v6, v0, v4

    invoke-virtual {v5, v6, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->reset()V

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "BLAKE2bp"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->digestLength:I

    return v0
.end method

.method public reset()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    const/16 v1, 0x40

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->digestLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->reset()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->setAsLastNode()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->setAsLastNode()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->key:[B

    if-eqz v1, :cond_1

    const/16 v3, 0x80

    new-array v4, v3, [B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    invoke-static {v1, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4, v0, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 8

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    rsub-int v1, v0, 0x400

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-eqz v0, :cond_1

    if-lt p3, v1, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    invoke-static {p1, p2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v5, v5, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    mul-int/lit16 v7, v0, 0x80

    invoke-virtual {v5, v6, v7, v4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-ge v3, v2, :cond_3

    mul-int/lit16 v1, v3, 0x80

    add-int/2addr v1, p2

    move v5, p3

    :goto_2
    const/16 v6, 0x200

    if-lt v5, v6, :cond_2

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v7, v7, v3

    invoke-virtual {v7, p1, v1, v4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    add-int/2addr v1, v6

    add-int/lit16 v5, v5, -0x200

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    rem-int/lit16 v1, p3, 0x200

    sub-int/2addr p3, v1

    add-int/2addr p2, p3

    if-lez v1, :cond_4

    iget-object p3, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    invoke-static {p1, p2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    return-void
.end method
