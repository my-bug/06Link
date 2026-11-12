.class Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;
.super Ljava/lang/Object;


# instance fields
.field bd:[B

.field bdummy_u64:J

.field convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

.field ptr:I

.field sd:[B

.field sdummy_u64:J

.field type:I


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bdummy_u64:J

    const/4 v2, 0x0

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    const/16 v3, 0x100

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sdummy_u64:J

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->type:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    return-void
.end method

.method private QROUND(IIII[I)V
    .locals 2

    aget v0, p5, p1

    aget v1, p5, p2

    add-int/2addr v0, v1

    aput v0, p5, p1

    aget v1, p5, p4

    xor-int/2addr v0, v1

    aput v0, p5, p4

    shl-int/lit8 v1, v0, 0x10

    ushr-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    aput v0, p5, p4

    aget v1, p5, p3

    add-int/2addr v1, v0

    aput v1, p5, p3

    aget v0, p5, p2

    xor-int/2addr v0, v1

    aput v0, p5, p2

    shl-int/lit8 v1, v0, 0xc

    ushr-int/lit8 v0, v0, 0x14

    or-int/2addr v0, v1

    aput v0, p5, p2

    aget v1, p5, p1

    add-int/2addr v1, v0

    aput v1, p5, p1

    aget p1, p5, p4

    xor-int/2addr p1, v1

    aput p1, p5, p4

    shl-int/lit8 v0, p1, 0x8

    ushr-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    aput p1, p5, p4

    aget p4, p5, p3

    add-int/2addr p4, p1

    aput p4, p5, p3

    aget p1, p5, p2

    xor-int/2addr p1, p4

    aput p1, p5, p2

    shl-int/lit8 p3, p1, 0x7

    ushr-int/lit8 p1, p1, 0x19

    or-int/2addr p1, p3

    aput p1, p5, p2

    return-void
.end method


# virtual methods
.method prng_get_bytes([BII)V
    .locals 3

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    sub-int/2addr v1, v2

    if-le v1, p3, :cond_1

    move v1, p3

    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method prng_get_u64()J
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x9

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method prng_get_u8()B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    aget-byte v1, v0, v1

    array-length v0, v0

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    :cond_0
    return v1
.end method

.method prng_init(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)V
    .locals 10

    const/16 v0, 0x38

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0xe

    const/16 v3, 0x8

    if-ge p1, v0, :cond_0

    shl-int/lit8 v0, p1, 0x2

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->int_to_bytes(I)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/4 v5, 0x4

    invoke-static {v3, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result p1

    int-to-long v4, p1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v8, 0x34

    invoke-virtual {p1, v0, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result p1

    int-to-long v8, p1

    and-long/2addr v6, v8

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->long_to_bytes(J)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    return-void
.end method

.method prng_refill()V
    .locals 19

    move-object/from16 v0, p0

    const v1, 0x79622d32

    const v2, 0x6b206574

    const v3, 0x61707865

    const v4, 0x3320646e

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v6

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v7, 0x30

    invoke-virtual {v1, v2, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_long([BI)J

    move-result-wide v1

    const/4 v8, 0x0

    move-wide v9, v1

    const/4 v11, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v11, v1, :cond_4

    const/16 v12, 0x10

    new-array v5, v12, [I

    const/4 v13, 0x4

    invoke-static {v6, v8, v5, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v8, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int_array([BII)[I

    move-result-object v1

    invoke-static {v1, v8, v5, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v14, 0xe

    aget v1, v5, v14

    long-to-int v15, v9

    xor-int/2addr v1, v15

    aput v1, v5, v14

    const/16 v16, 0xf

    aget v1, v5, v16

    const/16 v2, 0x20

    ushr-long v2, v9, v2

    long-to-int v3, v2

    xor-int/2addr v1, v3

    aput v1, v5, v16

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    move v2, v3

    const/16 v3, 0x8

    const/16 v4, 0xc

    move/from16 v17, v1

    const/4 v1, 0x0

    move/from16 v18, v2

    const/4 v2, 0x4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/16 v3, 0x9

    const/16 v4, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/16 v3, 0xa

    const/16 v4, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/16 v3, 0xb

    const/16 v4, 0xf

    const/4 v1, 0x3

    const/4 v2, 0x7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/16 v3, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/16 v3, 0xb

    const/16 v4, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/16 v3, 0x8

    const/16 v4, 0xd

    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/16 v3, 0x9

    const/16 v4, 0xe

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    add-int/lit8 v1, v17, 0x1

    move/from16 v3, v18

    goto :goto_1

    :cond_0
    move/from16 v18, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v13, :cond_1

    aget v2, v5, v1

    aget v3, v6, v1

    add-int/2addr v2, v3

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    if-ge v13, v14, :cond_2

    aget v1, v5, v13

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    mul-int/lit8 v4, v13, 0x4

    sub-int/2addr v4, v12

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_2
    aget v1, v5, v14

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v4, 0x28

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v2

    xor-int/2addr v2, v15

    add-int/2addr v1, v2

    aput v1, v5, v14

    aget v1, v5, v16

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v4, 0x2c

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v2

    xor-int v2, v2, v18

    add-int/2addr v1, v2

    aput v1, v5, v16

    const-wide/16 v1, 0x1

    add-long/2addr v9, v1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v12, :cond_3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    shl-int/lit8 v3, v11, 0x2

    shl-int/lit8 v4, v1, 0x5

    add-int/2addr v3, v4

    aget v4, v5, v1

    int-to-byte v13, v4

    aput-byte v13, v2, v3

    add-int/lit8 v13, v3, 0x1

    ushr-int/lit8 v14, v4, 0x8

    int-to-byte v14, v14

    aput-byte v14, v2, v13

    add-int/lit8 v13, v3, 0x2

    ushr-int/lit8 v14, v4, 0x10

    int-to-byte v14, v14

    aput-byte v14, v2, v13

    add-int/lit8 v3, v3, 0x3

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    invoke-virtual {v2, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->long_to_bytes(J)[B

    move-result-object v2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    invoke-static {v2, v8, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    return-void
.end method
