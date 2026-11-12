.class public Lorg/bouncycastle/crypto/digests/AsconXof;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Xof;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;
    }
.end annotation


# instance fields
.field private final ASCON_PB_ROUNDS:I

.field private final CRYPTO_BYTES:I

.field private final algorithmName:Ljava/lang/String;

.field asconParameters:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private x0:J

.field private x1:J

.field private x2:J

.field private x3:J

.field private x4:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->buffer:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->CRYPTO_BYTES:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->asconParameters:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->ASCON_PB_ROUNDS:I

    const-string p1, "Ascon-XofA"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter settings for Ascon Hash"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0xc

    iput p1, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->ASCON_PB_ROUNDS:I

    const-string p1, "Ascon-Xof"

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->algorithmName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconXof;->reset()V

    return-void
.end method

.method private LOADBYTES([BII)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v3, v2, p2

    aget-byte v3, p1, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    rsub-int/lit8 v5, v2, 0x7

    shl-int/lit8 v5, v5, 0x3

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private P(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    :cond_1
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROUND(J)V

    return-void
.end method

.method private PAD(I)J
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    rsub-int/lit8 p1, p1, 0x38

    const-wide/16 v0, 0x80

    shl-long/2addr v0, p1

    return-wide v0
.end method

.method private ROR(JI)J
    .locals 2

    ushr-long v0, p1, p3

    rsub-int/lit8 p3, p3, 0x40

    shl-long/2addr p1, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private ROUND(J)V
    .locals 23

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->x0:J

    iget-wide v3, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->x1:J

    xor-long v5, v1, v3

    iget-wide v7, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->x2:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->x3:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->x4:J

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long/2addr v11, v3

    xor-long/2addr v5, v11

    xor-long v11, v1, v7

    xor-long/2addr v11, v9

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    xor-long v15, v3, v7

    xor-long v15, v15, p1

    xor-long v17, v3, v9

    and-long v15, v15, v17

    xor-long/2addr v11, v15

    xor-long v15, v3, v7

    xor-long/2addr v15, v13

    xor-long v15, v15, p1

    and-long v17, v9, v13

    move-wide/from16 v19, v1

    xor-long v1, v15, v17

    xor-long v15, v19, v3

    xor-long/2addr v7, v15

    xor-long v7, v7, p1

    const-wide/16 v15, -0x1

    xor-long v17, v19, v15

    xor-long v21, v9, v13

    and-long v17, v17, v21

    xor-long v7, v7, v17

    xor-long/2addr v9, v3

    xor-long/2addr v9, v13

    xor-long v13, v19, v13

    and-long/2addr v3, v13

    xor-long/2addr v3, v9

    const/16 v9, 0x13

    invoke-direct {v0, v5, v6, v9}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROR(JI)J

    move-result-wide v9

    xor-long/2addr v9, v5

    const/16 v13, 0x1c

    invoke-direct {v0, v5, v6, v13}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROR(JI)J

    move-result-wide v5

    xor-long/2addr v5, v9

    iput-wide v5, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->x0:J

    const/16 v5, 0x27

    invoke-direct {v0, v11, v12, v5}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROR(JI)J

    move-result-wide v5

    xor-long/2addr v5, v11

    const/16 v9, 0x3d

    invoke-direct {v0, v11, v12, v9}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROR(JI)J

    move-result-wide v9

    xor-long/2addr v5, v9

    iput-wide v5, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->x1:J

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v5}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROR(JI)J

    move-result-wide v5

    xor-long/2addr v5, v1

    const/4 v9, 0x6

    invoke-direct {v0, v1, v2, v9}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROR(JI)J

    move-result-wide v1

    xor-long/2addr v1, v5

    xor-long/2addr v1, v15

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->x2:J

    const/16 v1, 0xa

    invoke-direct {v0, v7, v8, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROR(JI)J

    move-result-wide v1

    xor-long/2addr v1, v7

    const/16 v5, 0x11

    invoke-direct {v0, v7, v8, v5}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROR(JI)J

    move-result-wide v5

    xor-long/2addr v1, v5

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->x3:J

    const/4 v1, 0x7

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROR(JI)J

    move-result-wide v1

    xor-long/2addr v1, v3

    const/16 v5, 0x29

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/AsconXof;->ROR(JI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->x4:J

    return-void
.end method

.method private STOREBYTES([BIJI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, v0, p2

    rsub-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long v2, p3, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconXof;->getDigestSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/AsconXof;->doOutput([BII)I

    move-result p1

    return p1
.end method

.method public doFinal([BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconXof;->doOutput([BII)I

    move-result p1

    return p1
.end method

.method public doOutput([BII)I
    .locals 9

    add-int/lit8 p3, p2, 0x20

    array-length v0, p1

    if-gt p3, v0, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    iget-wide v3, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x0:J

    if-lt v0, v2, :cond_0

    invoke-direct {p0, p3, v1, v2}, Lorg/bouncycastle/crypto/digests/AsconXof;->LOADBYTES([BII)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x0:J

    iget v2, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->ASCON_PB_ROUNDS:I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/digests/AsconXof;->P(I)V

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, v1, v0}, Lorg/bouncycastle/crypto/digests/AsconXof;->LOADBYTES([BII)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x0:J

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/AsconXof;->PAD(I)J

    move-result-wide v0

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x0:J

    const/16 p3, 0xc

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/digests/AsconXof;->P(I)V

    const/16 p3, 0x20

    move v5, p2

    const/16 p2, 0x20

    :goto_1
    if-le p2, v2, :cond_1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x0:J

    const/16 v8, 0x8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/digests/AsconXof;->STOREBYTES([BIJI)V

    iget p1, v3, Lorg/bouncycastle/crypto/digests/AsconXof;->ASCON_PB_ROUNDS:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/AsconXof;->P(I)V

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 p2, p2, -0x8

    move-object p1, v4

    goto :goto_1

    :cond_1
    move-object v3, p0

    move-object v4, p1

    iget-wide v6, v3, Lorg/bouncycastle/crypto/digests/AsconXof;->x0:J

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/digests/AsconXof;->STOREBYTES([BIJI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconXof;->reset()V

    return p3

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->asconParameters:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x44906568b77b9832L    # 1.935713262823832E22

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x0:J

    const-wide v0, -0x32729351acbaaaceL    # -3.873456514193764E65

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x1:J

    const-wide v0, -0x84aded8a9bdded7L    # -4.360391687961922E268

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x2:J

    const-wide v0, 0x246885e1de0d225bL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x3:J

    const-wide v0, -0x5734a31ccbb668c1L    # -3.555599418810494E-112

    :goto_0
    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x4:J

    return-void

    :cond_1
    const-wide v0, -0x4a81d8c47eb32beaL    # -5.0370341941429796E-51

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x0:J

    const-wide v0, 0x2b51042562ae2420L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x1:J

    const-wide v0, 0x66a3a7768ddf2218L    # 2.6724012130814204E186

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x2:J

    const-wide v0, 0x5aad0a7a8153650cL    # 6.290696206041096E128

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->x3:J

    const-wide v0, 0x4f3e0e32539493b6L    # 5.3103393191581195E73

    goto :goto_0
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
