.class public Lorg/bouncycastle/crypto/digests/Blake2bDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final BLOCK_LENGTH_BYTES:I = 0x80

.field private static ROUNDS:I

.field private static final blake2b_IV:[J

.field private static final blake2b_sigma:[[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private chainValue:[J

.field private depth:I

.field private digestLength:I

.field private f0:J

.field private f1:J

.field private fanout:I

.field private innerHashLength:I

.field private internalState:[J

.field private isLastNode:Z

.field private key:[B

.field private keyLength:I

.field private leafLength:I

.field private nodeDepth:I

.field private nodeOffset:J

.field private personalization:[B

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field private salt:[B

.field private t0:J

.field private t1:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x8

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    new-array v3, v1, [B

    fill-array-data v3, :array_2

    new-array v4, v1, [B

    fill-array-data v4, :array_3

    new-array v5, v1, [B

    fill-array-data v5, :array_4

    new-array v6, v1, [B

    fill-array-data v6, :array_5

    new-array v7, v1, [B

    fill-array-data v7, :array_6

    new-array v8, v1, [B

    fill-array-data v8, :array_7

    new-array v9, v1, [B

    fill-array-data v9, :array_8

    new-array v10, v1, [B

    fill-array-data v10, :array_9

    new-array v11, v1, [B

    fill-array-data v11, :array_a

    new-array v12, v1, [B

    fill-array-data v12, :array_b

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    const/16 v13, 0xc

    new-array v14, v13, [[B

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v2, 0x1

    aput-object v3, v14, v2

    const/4 v2, 0x2

    aput-object v4, v14, v2

    const/4 v2, 0x3

    aput-object v5, v14, v2

    const/4 v2, 0x4

    aput-object v6, v14, v2

    const/4 v2, 0x5

    aput-object v7, v14, v2

    const/4 v2, 0x6

    aput-object v8, v14, v2

    const/4 v2, 0x7

    aput-object v9, v14, v2

    aput-object v10, v14, v0

    const/16 v0, 0x9

    aput-object v11, v14, v0

    const/16 v0, 0xa

    aput-object v12, v14, v0

    const/16 v0, 0xb

    aput-object v1, v14, v0

    sput-object v14, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    sput v13, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->ROUNDS:I

    return-void

    :array_0
    .array-data 8
        0x6a09e667f3bcc908L    # 6.344059688352415E202
        -0x4498517a7b3558c5L    # -1.5671250923562117E-22
        0x3c6ef372fe94f82bL    # 1.342284505169847E-17
        -0x5ab00ac5a0e2c90fL
        0x510e527fade682d1L    # 2.876275032471325E82
        -0x64fa9773d4c193e1L
        0x1f83d9abfb41bd6bL    # 7.229011495228878E-157
        0x5be0cd19137e2179L    # 3.816167663240759E134
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_2
    .array-data 1
        0xet
        0xat
        0x4t
        0x8t
        0x9t
        0xft
        0xdt
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xbt
        0x7t
        0x5t
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0xbt
        0x8t
        0xct
        0x0t
        0x5t
        0x2t
        0xft
        0xdt
        0xat
        0xet
        0x3t
        0x6t
        0x7t
        0x1t
        0x9t
        0x4t
    .end array-data

    :array_4
    .array-data 1
        0x7t
        0x9t
        0x3t
        0x1t
        0xdt
        0xct
        0xbt
        0xet
        0x2t
        0x6t
        0x5t
        0xat
        0x4t
        0x0t
        0xft
        0x8t
    .end array-data

    :array_5
    .array-data 1
        0x9t
        0x0t
        0x5t
        0x7t
        0x2t
        0x4t
        0xat
        0xft
        0xet
        0x1t
        0xbt
        0xct
        0x6t
        0x8t
        0x3t
        0xdt
    .end array-data

    :array_6
    .array-data 1
        0x2t
        0xct
        0x6t
        0xat
        0x0t
        0xbt
        0x8t
        0x3t
        0x4t
        0xdt
        0x7t
        0x5t
        0xft
        0xet
        0x1t
        0x9t
    .end array-data

    :array_7
    .array-data 1
        0xct
        0x5t
        0x1t
        0xft
        0xet
        0xdt
        0x4t
        0xat
        0x0t
        0x7t
        0x6t
        0x3t
        0x9t
        0x2t
        0x8t
        0xbt
    .end array-data

    :array_8
    .array-data 1
        0xdt
        0xbt
        0x7t
        0xet
        0xct
        0x1t
        0x3t
        0x9t
        0x5t
        0x0t
        0xft
        0x4t
        0x8t
        0x6t
        0x2t
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x6t
        0xft
        0xet
        0x9t
        0xbt
        0x3t
        0x0t
        0x8t
        0xct
        0x2t
        0xdt
        0x7t
        0x1t
        0x4t
        0xat
        0x5t
    .end array-data

    :array_a
    .array-data 1
        0xat
        0x2t
        0x8t
        0x4t
        0x7t
        0x6t
        0x1t
        0x5t
        0xft
        0xbt
        0x9t
        0xet
        0x3t
        0xct
        0xdt
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_c
    .array-data 1
        0xet
        0xat
        0x4t
        0x8t
        0x9t
        0xft
        0xdt
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xbt
        0x7t
        0x5t
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x200

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const/16 v4, 0x10

    new-array v4, v4, [J

    iput-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/16 v1, 0x8

    if-lt p1, v1, :cond_0

    const/16 v1, 0x200

    if-gt p1, v1, :cond_0

    rem-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_0

    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BLAKE2b digest bit length must be a multiple of 8 and not greater than 512"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Blake2bDigest;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iget-object p1, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>([BI[B[B)V
    .locals 6

    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>([BI[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>([BI[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    const/4 v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const/16 v6, 0x10

    new-array v7, v6, [J

    iput-object v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    iput-object p5, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/16 v2, 0x80

    new-array v4, v2, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    if-lt p2, v3, :cond_6

    if-gt p2, v0, :cond_6

    iput p2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    if-eqz p3, :cond_1

    array-length v3, p3

    if-ne v3, v6, :cond_0

    new-array v3, v6, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    array-length v4, p3

    invoke-static {p3, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "salt length must be exactly 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    array-length p3, p4

    if-ne p3, v6, :cond_2

    new-array p3, v6, [B

    iput-object p3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    array-length v3, p4

    invoke-static {p4, v1, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "personalization length must be exactly 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    array-length p3, p1

    new-array p3, p3, [B

    iput-object p3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    array-length p4, p1

    invoke-static {p1, v1, p3, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p1

    if-gt p3, v0, :cond_4

    array-length p3, p1

    iput p3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iget-object p3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    array-length p4, p1

    invoke-static {p1, v1, p3, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Keys > 64 are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    mul-int/lit8 p2, p2, 0x8

    invoke-static {p0, p2, p5}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid digest length (required: 1 - 64)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    const/4 v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const/16 v5, 0x10

    new-array v5, v5, [J

    iput-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    const/16 v2, 0x80

    new-array v3, v2, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    if-eqz p1, :cond_1

    array-length v3, p1

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    if-gt v3, v0, :cond_0

    array-length v3, p1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Keys > 64 are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    mul-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x40

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    const/4 v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const/16 v4, 0x10

    new-array v5, v4, [J

    iput-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    aget-byte p1, p2, p1

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    aget-byte p1, p2, v1

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    const/4 p1, 0x2

    aget-byte p1, p2, p1

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    const/4 p1, 0x3

    aget-byte p1, p2, p1

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    const/4 p1, 0x4

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    const/16 p1, 0x8

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    aget-byte p1, p2, v4

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    const/16 p1, 0x11

    aget-byte p1, p2, p1

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    return-void
.end method

.method private G(JJIIII)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v1, v0, p5

    aget-wide v3, v0, p6

    add-long/2addr v1, v3

    add-long/2addr v1, p1

    aput-wide v1, v0, p5

    aget-wide p1, v0, p8

    xor-long/2addr p1, v1

    const/16 v1, 0x20

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide p1

    aput-wide p1, v0, p8

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v0, p1, p7

    aget-wide v2, p1, p8

    add-long/2addr v0, v2

    aput-wide v0, p1, p7

    aget-wide v2, p1, p6

    xor-long/2addr v0, v2

    const/16 p2, 0x18

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v0

    aput-wide v0, p1, p6

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v0, p1, p5

    aget-wide v2, p1, p6

    add-long/2addr v0, v2

    add-long/2addr v0, p3

    aput-wide v0, p1, p5

    aget-wide p2, p1, p8

    xor-long/2addr p2, v0

    const/16 p4, 0x10

    invoke-static {p2, p3, p4}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide p2

    aput-wide p2, p1, p8

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide p2, p1, p7

    aget-wide p4, p1, p8

    add-long/2addr p2, p4

    aput-wide p2, p1, p7

    aget-wide p4, p1, p6

    xor-long/2addr p2, p4

    const/16 p4, 0x3f

    invoke-static {p2, p3, p4}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide p2

    aput-wide p2, p1, p6

    return-void
.end method

.method private compress([BI)V
    .locals 13

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->initializeInternalState()V

    const/16 v0, 0x10

    new-array v9, v0, [J

    invoke-static {p1, p2, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    sget v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->ROUNDS:I

    if-ge v11, v0, :cond_0

    sget-object v12, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v12, v11

    aget-byte v1, v0, v10

    aget-wide v1, v9, v1

    const/4 v3, 0x1

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0x8

    const/16 v8, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    aget-object v0, v12, v11

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    aget-wide v1, v9, v1

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0x9

    const/16 v8, 0xd

    const/4 v5, 0x1

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    aget-object v0, v12, v11

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    aget-wide v1, v9, v1

    const/4 v3, 0x5

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0xa

    const/16 v8, 0xe

    const/4 v5, 0x2

    const/4 v6, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    aget-object v0, v12, v11

    const/4 v1, 0x6

    aget-byte v1, v0, v1

    aget-wide v1, v9, v1

    const/4 v3, 0x7

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0xb

    const/16 v8, 0xf

    const/4 v5, 0x3

    const/4 v6, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    aget-object v0, v12, v11

    const/16 v1, 0x8

    aget-byte v1, v0, v1

    aget-wide v1, v9, v1

    const/16 v3, 0x9

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    aget-object v0, v12, v11

    const/16 v1, 0xa

    aget-byte v1, v0, v1

    aget-wide v1, v9, v1

    const/16 v3, 0xb

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0xb

    const/16 v8, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    aget-object v0, v12, v11

    const/16 v1, 0xc

    aget-byte v1, v0, v1

    aget-wide v1, v9, v1

    const/16 v3, 0xd

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0x8

    const/16 v8, 0xd

    const/4 v5, 0x2

    const/4 v6, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    aget-object v0, v12, v11

    const/16 v1, 0xe

    aget-byte v1, v0, v1

    aget-wide v1, v9, v1

    const/16 v3, 0xf

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0x9

    const/16 v8, 0xe

    const/4 v5, 0x3

    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    array-length v2, v1

    if-ge v10, v2, :cond_1

    aget-wide v2, v1, v10

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v5, v4, v10

    xor-long/2addr v2, v5

    add-int/lit8 v5, v10, 0x8

    aget-wide v5, v4, v5

    xor-long/2addr v2, v5

    aput-wide v2, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private init()V
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iget v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    shl-int/2addr v7, v0

    or-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    iget v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    shl-int/lit8 v8, v8, 0x20

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-long v6, v6

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    const/4 v4, 0x1

    aget-wide v5, v2, v4

    iget-wide v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    xor-long/2addr v5, v7

    aput-wide v5, v1, v4

    const/4 v4, 0x2

    aget-wide v5, v2, v4

    iget v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    iget v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    shl-int/2addr v8, v0

    or-int/2addr v7, v8

    int-to-long v7, v7

    xor-long/2addr v5, v7

    aput-wide v5, v1, v4

    const/4 v4, 0x3

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    const/4 v4, 0x4

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    const/4 v7, 0x5

    aget-wide v8, v2, v7

    aput-wide v8, v1, v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    if-eqz v8, :cond_0

    invoke-static {v8, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v8

    xor-long/2addr v5, v8

    aput-wide v5, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v4, v1, v7

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    invoke-static {v6, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v8

    xor-long/2addr v4, v8

    aput-wide v4, v1, v7

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    const/4 v4, 0x6

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    const/4 v7, 0x7

    aget-wide v8, v2, v7

    aput-wide v8, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    if-eqz v2, :cond_1

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v2, v5

    aput-wide v2, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v2, v1, v7

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    invoke-static {v4, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, v1, v7

    :cond_1
    return-void
.end method

.method private initializeInternalState()V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    array-length v2, v2

    const/4 v4, 0x4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    aget-wide v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xc

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    const/4 v4, 0x5

    aget-wide v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xd

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    const/4 v4, 0x6

    aget-wide v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xe

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    const/4 v4, 0x7

    aget-wide v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v0, 0xf

    aput-wide v2, v1, v0

    return-void
.end method


# virtual methods
.method public clearKey()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public clearSalt()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public doFinal([BI)I
    .locals 9

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    const-wide/16 v3, 0x0

    if-lez v2, :cond_1

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    ushr-int/lit8 v2, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    invoke-static {v5, v1, v2, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    if-lez v0, :cond_2

    const/16 v5, 0x8

    new-array v5, v5, [B

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v7, v6, v2

    invoke-static {v7, v8, v5, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    add-int/2addr p2, v2

    sub-int/2addr p2, v0

    invoke-static {v5, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    invoke-static {p1, v3, v4}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->reset()V

    iget p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    return p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "BLAKE2b"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    return v0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    return-void
.end method

.method protected setAsLastNode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    return-void
.end method

.method public update(B)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    rsub-int v1, v0, 0x80

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    const-wide/16 v3, 0x80

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    aput-byte p1, v0, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    return-void

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    aput-byte p1, v1, v0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    return-void
.end method

.method public update([BII)V
    .locals 11

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x80

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    rsub-int v8, v0, 0x80

    if-ge v8, p3, :cond_2

    iget-object v9, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {p1, p2, v9, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v9, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    add-long/2addr v9, v5

    iput-wide v9, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    cmp-long v0, v9, v3

    if-nez v0, :cond_1

    iget-wide v9, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    iput v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0, v7}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    return-void

    :cond_3
    const/4 v8, 0x0

    :goto_1
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x80

    add-int/2addr p2, v8

    :goto_2
    if-ge p2, v0, :cond_5

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    add-long/2addr v8, v5

    iput-wide v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    cmp-long v10, v8, v3

    if-nez v10, :cond_4

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    add-long/2addr v8, v1

    iput-wide v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    add-int/lit16 p2, p2, 0x80

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    sub-int/2addr p3, p2

    invoke-static {p1, p2, v0, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method
