.class public Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;,
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;,
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;,
        Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
    }
.end annotation


# static fields
.field public static final BLOCKSIZE_1024:I = 0x400

.field public static final BLOCKSIZE_256:I = 0x100

.field public static final BLOCKSIZE_512:I = 0x200

.field private static final C_240:J = 0x1bd11bdaa9fc1a22L

.field private static final MAX_ROUNDS:I = 0x50

.field private static MOD17:[I = null

.field private static MOD3:[I = null

.field private static MOD5:[I = null

.field private static MOD9:[I = null

.field private static final ROUNDS_1024:I = 0x50

.field private static final ROUNDS_256:I = 0x48

.field private static final ROUNDS_512:I = 0x48

.field private static final TWEAK_SIZE_BYTES:I = 0x10

.field private static final TWEAK_SIZE_WORDS:I = 0x2


# instance fields
.field private blocksizeBytes:I

.field private blocksizeWords:I

.field private cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

.field private currentBlock:[J

.field private forEncryption:Z

.field private kw:[J

.field private t:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x50

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v1, v0

    new-array v1, v1, [I

    sput-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    array-length v1, v0

    new-array v1, v1, [I

    sput-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    rem-int/lit8 v3, v0, 0x11

    aput v3, v2, v0

    rem-int/lit8 v2, v0, 0x9

    aput v2, v1, v0

    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    rem-int/lit8 v2, v0, 0x5

    aput v2, v1, v0

    sget-object v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    rem-int/lit8 v2, v0, 0x3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    const/16 v0, 0x100

    if-eq p1, v0, :cond_2

    const/16 v0, 0x200

    if-eq p1, v0, :cond_1

    const/16 v0, 0x400

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;-><init>([J[J)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;-><init>([J[J)V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;-><init>([J[J)V

    goto :goto_0
.end method

.method static synthetic access$000()[I
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD5:[I

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD3:[I

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD9:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->MOD17:[I

    return-object v0
.end method

.method public static bytesToWord([BI)J
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method static rotlXor(JIJ)J
    .locals 2

    shl-long v0, p0, p2

    neg-int p2, p2

    ushr-long/2addr p0, p2

    or-long/2addr p0, v0

    xor-long/2addr p0, p3

    return-wide p0
.end method

.method private setKey([J)V
    .locals 7

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const-wide v1, 0x1bd11bdaa9fc1a22L    # 1.080841987832705E-174

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    aget-wide v5, p1, v3

    aput-wide v5, v4, v3

    xor-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    aput-wide v1, p1, v4

    add-int/lit8 v1, v4, 0x1

    invoke-static {p1, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Threefish key must be same size as block ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " words)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private setTweak([J)V
    .locals 9

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->t:[J

    const/4 v2, 0x0

    aget-wide v3, p1, v2

    aput-wide v3, v0, v2

    const/4 v2, 0x1

    aget-wide v5, p1, v2

    aput-wide v5, v0, v2

    xor-long v7, v3, v5

    aput-wide v7, v0, v1

    const/4 p1, 0x3

    aput-wide v3, v0, p1

    const/4 p1, 0x4

    aput-wide v5, v0, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tweak must be 2 words."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static wordToBytes(J[BI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    return-void
.end method

.method static xorRotr(JIJ)J
    .locals 0

    xor-long/2addr p0, p3

    ushr-long p3, p0, p2

    neg-int p2, p2

    shl-long/2addr p0, p2

    or-long/2addr p0, p3

    return-wide p0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Threefish-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/TweakableBlockCipherParameters;->getTweak()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    move-object v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    array-length v4, v2

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    new-array v4, v4, [J

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Threefish key must be same size as block ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v4, v1

    :goto_1
    if-eqz v0, :cond_4

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [J

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Threefish tweak must be 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v4, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->init(Z[J[J)V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v0, v1, v2, p2, p1}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid parameter passed to Threefish init - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(Z[J[J)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->forEncryption:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->setKey([J)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->setTweak([J)V

    :cond_1
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->processBlock([J[J)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->currentBlock:[J

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeBytes:I

    return p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([J[J)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->kw:[J

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    array-length v0, p1

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->encryptBlock([J[J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->cipher:Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->decryptBlock([J[J)V

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->blocksizeWords:I

    return p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Threefish engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
