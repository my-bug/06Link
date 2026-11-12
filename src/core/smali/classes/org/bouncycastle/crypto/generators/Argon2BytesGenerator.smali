.class public Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;,
        Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;,
        Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;
    }
.end annotation


# static fields
.field private static final ARGON2_ADDRESSES_IN_BLOCK:I = 0x80

.field private static final ARGON2_BLOCK_SIZE:I = 0x400

.field private static final ARGON2_PREHASH_DIGEST_LENGTH:I = 0x40

.field private static final ARGON2_PREHASH_SEED_LENGTH:I = 0x48

.field private static final ARGON2_QWORDS_IN_BLOCK:I = 0x80

.field private static final ARGON2_SYNC_POINTS:I = 0x4

.field private static final M32L:J = 0xffffffffL

.field private static final MAX_PARALLELISM:I = 0xffffff

.field private static final MIN_ITERATIONS:I = 0x1

.field private static final MIN_OUTLEN:I = 0x4

.field private static final MIN_PARALLELISM:I = 0x1

.field private static final ZERO_BYTES:[B


# instance fields
.field private laneLength:I

.field private memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

.field private parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

.field private segmentLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->ZERO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static F([JIIII)V
    .locals 1

    const/16 v0, 0x20

    invoke-static {p0, p1, p2, p4, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->quarterRound([JIIII)V

    const/16 v0, 0x18

    invoke-static {p0, p3, p4, p2, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->quarterRound([JIIII)V

    const/16 v0, 0x10

    invoke-static {p0, p1, p2, p4, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->quarterRound([JIIII)V

    const/16 p1, 0x3f

    invoke-static {p0, p3, p4, p2, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->quarterRound([JIIII)V

    return-void
.end method

.method static synthetic access$700(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p16}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->roundFunction(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V

    return-void
.end method

.method private static addByteString([BLorg/bouncycastle/crypto/Digest;[B)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    sget-object p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->ZERO_BYTES:[B

    invoke-interface {p1, p0, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void

    :cond_0
    array-length v2, p2

    invoke-static {v2, p0, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    invoke-interface {p1, p0, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length p0, p2

    invoke-interface {p1, p2, v1, p0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private digest([B[BII)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v4, v1, v3

    sub-int/2addr v3, v2

    add-int/2addr v4, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object v3, v3, v4

    # invokes: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->xorWith(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$600(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->toBytes([B)V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->hash([B[BII)V

    return-void
.end method

.method private fillFirstBlocks([B[B)V
    .locals 7

    const/16 v0, 0x48

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v4

    if-ge v2, v4, :cond_0

    const/16 v4, 0x44

    invoke-static {v2, p2, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    invoke-static {v2, v0, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    const/16 v4, 0x400

    invoke-direct {p0, p2, p1, v1, v4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->hash([B[BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget v6, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v6, v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->fromBytes([B)V

    invoke-direct {p0, v0, p1, v1, v4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->hash([B[BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget v5, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v5, v5, v2

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->fromBytes([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillMemoryBlocks()V
    .locals 7

    new-instance v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$1;)V

    new-instance v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v4

    if-ge v3, v4, :cond_2

    iput v3, v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    iput v4, v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v6

    if-ge v5, v6, :cond_0

    iput v5, v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillSegment(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillSegment(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->isDataIndependentAddressing(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z

    move-result v6

    invoke-static {v7}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getStartingIndex(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)I

    move-result v2

    iget v3, v7, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    iget v4, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v3, v3, v4

    iget v4, v7, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    iget v5, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getPrevOffset(I)I

    move-result v4

    if-eqz v6, :cond_0

    iget-object v5, v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->addressBlock:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->clear()Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    move-result-object v5

    iget-object v8, v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->inputBlock:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->clear()Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    move-result-object v8

    invoke-direct {v0, v1, v7, v8, v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->initAddressBlocks(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move-object v8, v5

    :goto_0
    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->isWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z

    move-result v9

    :goto_1
    move v10, v3

    iget v3, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    if-ge v2, v3, :cond_3

    move-object v3, v5

    move v5, v4

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getPseudoRandom(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;ILorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IZ)J

    move-result-wide v11

    move-object v14, v3

    move-object v15, v4

    move v13, v5

    move v8, v6

    move-object v6, v1

    invoke-direct {v0, v7, v11, v12}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getRefLane(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;J)I

    move-result v1

    iget v3, v7, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    move-object v3, v7

    move v7, v1

    move-object v1, v3

    move-wide v3, v11

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getRefColumn(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;IJZ)I

    move-result v3

    iget-object v1, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object v4, v1, v13

    iget v5, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v5, v5, v7

    add-int/2addr v5, v3

    aget-object v3, v1, v5

    aget-object v1, v1, v10

    if-eqz v9, :cond_2

    # invokes: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->fillBlockWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    invoke-static {v6, v4, v3, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->access$200(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    goto :goto_3

    :cond_2
    # invokes: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    invoke-static {v6, v4, v3, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    :goto_3
    add-int/lit8 v3, v10, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, p2

    move-object v1, v6

    move v6, v8

    move v4, v10

    move-object v5, v14

    move-object v8, v15

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getPrevOffset(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    rem-int v1, p1, v0

    if-nez v1, :cond_0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private getPseudoRandom(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;ILorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IZ)J
    .locals 0

    if-eqz p6, :cond_1

    rem-int/lit16 p2, p2, 0x80

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p4, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->nextAddresses(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    :cond_0
    # getter for: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object p1

    aget-wide p2, p1, p2

    return-wide p2

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object p1, p1, p5

    # getter for: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J
    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object p1

    const/4 p2, 0x0

    aget-wide p2, p1, p2

    return-wide p2
.end method

.method private getRefColumn(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;IJZ)I
    .locals 5

    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-nez v0, :cond_2

    if-eqz p5, :cond_0

    iget p5, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int p1, p1, p5

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_0
    iget p5, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int p1, p1, p5

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p1, v1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int p1, p1, v0

    iget v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    rem-int/2addr p1, v3

    sub-int/2addr v3, v0

    if-eqz p5, :cond_3

    add-int/2addr v3, p2

    add-int/lit8 p2, v3, -0x1

    :goto_1
    move v2, p1

    move p1, p2

    goto :goto_3

    :cond_3
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    add-int p2, v3, v1

    goto :goto_1

    :goto_3
    const-wide v0, 0xffffffffL

    and-long/2addr p3, v0

    mul-long p3, p3, p3

    const/16 p2, 0x20

    ushr-long/2addr p3, p2

    add-int/lit8 p5, p1, -0x1

    int-to-long v0, p5

    int-to-long v3, p1

    mul-long v3, v3, p3

    ushr-long p1, v3, p2

    sub-long/2addr v0, p1

    int-to-long p1, v2

    add-long/2addr p1, v0

    long-to-int p2, p1

    iget p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    rem-int/2addr p2, p1

    return p2
.end method

.method private getRefLane(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v0

    int-to-long v0, v0

    rem-long/2addr p2, v0

    long-to-int p3, p2

    iget p2, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez p2, :cond_0

    iget p2, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-nez p2, :cond_0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    return p1

    :cond_0
    return p3
.end method

.method private static getStartingIndex(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez v0, :cond_0

    iget p0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hash([B[BII)V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p4, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    const/16 v3, 0x40

    if-gt p4, v3, :cond_0

    new-instance v3, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    mul-int/lit8 p4, p4, 0x8

    invoke-direct {v3, p4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    invoke-virtual {v3, v1, v2, v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    array-length p4, p1

    invoke-virtual {v3, p1, v2, p4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    invoke-virtual {v3, p2, p3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    return-void

    :cond_0
    new-instance v4, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    new-array v5, v3, [B

    invoke-virtual {v4, v1, v2, v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    array-length v0, p1

    invoke-virtual {v4, p1, v2, v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    const/16 p1, 0x20

    invoke-static {v5, v2, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p1

    add-int/lit8 v0, p4, 0x1f

    div-int/2addr v0, p1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    :goto_0
    if-gt v1, v0, :cond_1

    invoke-virtual {v4, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    invoke-static {v5, v2, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, 0x20

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x20

    sub-int/2addr p4, v0

    new-instance p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    mul-int/lit8 p4, p4, 0x8

    invoke-direct {p1, p4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    invoke-virtual {p1, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    return-void
.end method

.method private initAddressBlocks(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 4

    # getter for: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget v1, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    # getter for: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget v1, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    # getter for: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget v1, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    # getter for: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    array-length v1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    # getter for: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    # getter for: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x5

    aput-wide v1, v0, v3

    iget v0, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez v0, :cond_0

    iget p2, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->nextAddresses(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    :cond_0
    return-void
.end method

.method private initialize([B[BI)V
    .locals 8

    new-instance v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getMemory()I

    move-result v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getVersion()I

    move-result v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v7

    move v3, p3

    filled-new-array/range {v2 .. v7}, [I

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {p3, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    const/16 p3, 0x18

    invoke-virtual {v0, p1, v1, p3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString([BLorg/bouncycastle/crypto/Digest;[B)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getSalt()[B

    move-result-object p2

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString([BLorg/bouncycastle/crypto/Digest;[B)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getSecret()[B

    move-result-object p2

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString([BLorg/bouncycastle/crypto/Digest;[B)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getAdditional()[B

    move-result-object p2

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString([BLorg/bouncycastle/crypto/Digest;[B)V

    const/16 p2, 0x48

    new-array p2, p2, [B

    invoke-virtual {v0, p2, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillFirstBlocks([B[B)V

    return-void
.end method

.method private intToLong(I)J
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private isDataIndependentAddressing(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez v0, :cond_0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private isWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z
    .locals 1

    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getVersion()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private nextAddresses(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 6

    # getter for: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J
    invoke-static {p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    # invokes: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->access$500(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    # invokes: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    invoke-static {p1, p3, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->access$500(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    return-void
.end method

.method private static quarterRound([JIIII)V
    .locals 12

    aget-wide v0, p0, p1

    aget-wide v2, p0, p2

    aget-wide v4, p0, p3

    const-wide v6, 0xffffffffL

    and-long v8, v0, v6

    const-wide/16 v10, 0x2

    mul-long v8, v8, v10

    and-long/2addr v6, v2

    mul-long v8, v8, v6

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    xor-long v2, v4, v0

    move/from16 p2, p4

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v2

    aput-wide v0, p0, p1

    aput-wide v2, p0, p3

    return-void
.end method

.method private reset()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->clear()Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static roundFunction(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    # getter for: Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J
    invoke-static/range {p0 .. p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v3

    invoke-static {v3, v0, v4, v8, v12}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    invoke-static {v3, v1, v5, v9, v13}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    invoke-static {v3, v2, v6, v10, v14}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    move/from16 v4, p4

    invoke-static {v3, v4, v7, v11, v15}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    invoke-static {v3, v0, v5, v10, v15}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    invoke-static {v3, v1, v6, v11, v12}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    invoke-static {v3, v2, v7, v8, v13}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    move/from16 v0, p5

    invoke-static {v3, v4, v0, v9, v14}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    return-void
.end method


# virtual methods
.method public generateBytes([B[B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->generateBytes([B[BII)I

    move-result p1

    return p1
.end method

.method public generateBytes([B[BII)I
    .locals 1

    const/4 v0, 0x4

    if-lt p4, v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-direct {p0, v0, p1, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->initialize([B[BI)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillMemoryBlocks()V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->digest([B[BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->reset()V

    return p4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "output length less than 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateBytes([C[B)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getCharToByteConverter()Lorg/bouncycastle/crypto/CharToByteConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->generateBytes([B[B)I

    move-result p1

    return p1
.end method

.method public generateBytes([C[BII)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getCharToByteConverter()Lorg/bouncycastle/crypto/CharToByteConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->generateBytes([B[BII)I

    move-result p1

    return p1
.end method

.method public init(Lorg/bouncycastle/crypto/params/Argon2Parameters;)V
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getVersion()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getVersion()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "unknown Argon2 version"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "unknown Argon2 type"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v0

    if-lt v0, v1, :cond_7

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v0

    const v2, 0xffffff

    if-gt v0, v2, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v0

    if-lt v0, v1, :cond_5

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getMemory()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result p1

    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int p1, p1, v0

    new-array p1, p1, [Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    const/4 p1, 0x0

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    array-length v1, v0

    if-ge p1, v1, :cond_4

    new-instance v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$1;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "iterations is less than: 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lanes must be at most 16777215"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lanes must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
