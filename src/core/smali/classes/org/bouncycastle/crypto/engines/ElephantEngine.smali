.class public Lorg/bouncycastle/crypto/engines/ElephantEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;,
        Lorg/bouncycastle/crypto/engines/ElephantEngine$State;
    }
.end annotation


# instance fields
.field private final BLOCK_SIZE:I

.field private final CRYPTO_ABYTES:B

.field private final CRYPTO_KEYBYTES:B

.field private final CRYPTO_NPUBBYTES:B

.field private final KeccakRhoOffsets:[I

.field private final KeccakRoundConstants:[B

.field private final aadData:Ljava/io/ByteArrayOutputStream;

.field private ad:[B

.field private adOff:I

.field private adlen:I

.field private final algorithmName:Ljava/lang/String;

.field private final buffer:[B

.field private current_mask:[B

.field private expanded_key:[B

.field private forEncryption:Z

.field private initialised:Z

.field private inputMessage:[B

.field private inputOff:I

.field private lfsrIV:B

.field private m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field private messageLen:I

.field private nBits:I

.field private final nRounds:I

.field private nSBox:I

.field private nb_its:I

.field private next_mask:[B

.field private npub:[B

.field private final parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

.field private previous_mask:[B

.field private final previous_outputMessage:[B

.field private final sBoxLayer:[B

.field private tag:[B

.field private final tag_buffer:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_KEYBYTES:B

    const/16 v1, 0xc

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_NPUBBYTES:B

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->sBoxLayer:[B

    const/16 v1, 0x12

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRoundConstants:[B

    const/16 v2, 0x19

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRhoOffsets:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    const-string v1, "Elephant 200 AEAD"

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter settings for Elephant"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v0, 0x16

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    const/16 v1, 0xb0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    const/16 v0, 0x5a

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    const/16 v0, 0x45

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    const-string v0, "Elephant 176 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    iput-byte v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    const/16 v1, 0xa0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    const/16 v0, 0x50

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    const/16 v0, 0x75

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iput-byte v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    const-string v0, "Elephant 160 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void

    :array_0
    .array-data 1
        -0x12t
        -0x13t
        -0x15t
        -0x20t
        -0x1et
        -0x1ft
        -0x1ct
        -0x11t
        -0x19t
        -0x16t
        -0x18t
        -0x1bt
        -0x17t
        -0x14t
        -0x1dt
        -0x1at
        -0x22t
        -0x23t
        -0x25t
        -0x30t
        -0x2et
        -0x2ft
        -0x2ct
        -0x21t
        -0x29t
        -0x26t
        -0x28t
        -0x2bt
        -0x27t
        -0x24t
        -0x2dt
        -0x2at
        -0x42t
        -0x43t
        -0x45t
        -0x50t
        -0x4et
        -0x4ft
        -0x4ct
        -0x41t
        -0x49t
        -0x46t
        -0x48t
        -0x4bt
        -0x47t
        -0x44t
        -0x4dt
        -0x4at
        0xet
        0xdt
        0xbt
        0x0t
        0x2t
        0x1t
        0x4t
        0xft
        0x7t
        0xat
        0x8t
        0x5t
        0x9t
        0xct
        0x3t
        0x6t
        0x2et
        0x2dt
        0x2bt
        0x20t
        0x22t
        0x21t
        0x24t
        0x2ft
        0x27t
        0x2at
        0x28t
        0x25t
        0x29t
        0x2ct
        0x23t
        0x26t
        0x1et
        0x1dt
        0x1bt
        0x10t
        0x12t
        0x11t
        0x14t
        0x1ft
        0x17t
        0x1at
        0x18t
        0x15t
        0x19t
        0x1ct
        0x13t
        0x16t
        0x4et
        0x4dt
        0x4bt
        0x40t
        0x42t
        0x41t
        0x44t
        0x4ft
        0x47t
        0x4at
        0x48t
        0x45t
        0x49t
        0x4ct
        0x43t
        0x46t
        -0x2t
        -0x3t
        -0x5t
        -0x10t
        -0xet
        -0xft
        -0xct
        -0x1t
        -0x9t
        -0x6t
        -0x8t
        -0xbt
        -0x7t
        -0x4t
        -0xdt
        -0xat
        0x7et
        0x7dt
        0x7bt
        0x70t
        0x72t
        0x71t
        0x74t
        0x7ft
        0x77t
        0x7at
        0x78t
        0x75t
        0x79t
        0x7ct
        0x73t
        0x76t
        -0x52t
        -0x53t
        -0x55t
        -0x60t
        -0x5et
        -0x5ft
        -0x5ct
        -0x51t
        -0x59t
        -0x56t
        -0x58t
        -0x5bt
        -0x57t
        -0x54t
        -0x5dt
        -0x5at
        -0x72t
        -0x73t
        -0x75t
        -0x80t
        -0x7et
        -0x7ft
        -0x7ct
        -0x71t
        -0x79t
        -0x76t
        -0x78t
        -0x7bt
        -0x77t
        -0x74t
        -0x7dt
        -0x7at
        0x5et
        0x5dt
        0x5bt
        0x50t
        0x52t
        0x51t
        0x54t
        0x5ft
        0x57t
        0x5at
        0x58t
        0x55t
        0x59t
        0x5ct
        0x53t
        0x56t
        -0x62t
        -0x63t
        -0x65t
        -0x70t
        -0x6et
        -0x6ft
        -0x6ct
        -0x61t
        -0x69t
        -0x66t
        -0x68t
        -0x6bt
        -0x67t
        -0x64t
        -0x6dt
        -0x6at
        -0x32t
        -0x33t
        -0x35t
        -0x40t
        -0x3et
        -0x3ft
        -0x3ct
        -0x31t
        -0x39t
        -0x36t
        -0x38t
        -0x3bt
        -0x37t
        -0x34t
        -0x3dt
        -0x3at
        0x3et
        0x3dt
        0x3bt
        0x30t
        0x32t
        0x31t
        0x34t
        0x3ft
        0x37t
        0x3at
        0x38t
        0x35t
        0x39t
        0x3ct
        0x33t
        0x36t
        0x6et
        0x6dt
        0x6bt
        0x60t
        0x62t
        0x61t
        0x64t
        0x6ft
        0x67t
        0x6at
        0x68t
        0x65t
        0x69t
        0x6ct
        0x63t
        0x66t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        -0x7et
        -0x76t
        0x0t
        -0x75t
        0x1t
        -0x7ft
        0x9t
        -0x76t
        -0x78t
        0x9t
        0xat
        -0x75t
        -0x75t
        -0x77t
        0x3t
        0x2t
        -0x80t
    .end array-data

    nop

    :array_2
    .array-data 4
        0x0
        0x1
        0x6
        0x4
        0x3
        0x4
        0x4
        0x6
        0x7
        0x4
        0x3
        0x2
        0x3
        0x1
        0x7
        0x1
        0x5
        0x7
        0x5
        0x0
        0x2
        0x2
        0x5
        0x0
        0x6
    .end array-data
.end method

.method private KeccakP200Round([BI)V
    .locals 9

    const/16 v0, 0x19

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v2

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, p1, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v5, v2, 0x1

    rem-int/lit8 v6, v5, 0x5

    aget-byte v6, v0, v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ROL8(BI)B

    move-result v6

    add-int/lit8 v2, v2, 0x4

    rem-int/2addr v2, v3

    aget-byte v2, v0, v2

    xor-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    move v2, v5

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_3

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v6, p1, v5

    add-int/lit8 v7, v2, 0x5

    aget-byte v7, v0, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_6

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, p1, v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRhoOffsets:[I

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v8

    aget v7, v7, v8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ROL8(BI)B

    move-result v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_8

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_7

    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v5, v6

    rem-int/2addr v5, v3

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, v0, v6

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_b

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_9

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, p1, v5

    add-int/lit8 v6, v4, 0x1

    rem-int/lit8 v7, v6, 0x5

    invoke-direct {p0, v7, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v7

    aget-byte v7, p1, v7

    xor-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v4, 0x2

    rem-int/2addr v8, v3

    invoke-direct {p0, v8, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v8

    aget-byte v8, p1, v8

    and-int/2addr v7, v8

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    move v4, v6

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_a

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v6, v0, v4

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    aget-byte v0, p1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRoundConstants:[B

    aget-byte p2, v2, p2

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    return-void
.end method

.method private ROL8(BI)B
    .locals 1

    if-eqz p2, :cond_0

    and-int/lit16 p1, p1, 0xff

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x8

    ushr-int/2addr p1, p2

    xor-int/2addr p1, v0

    :cond_0
    int-to-byte p1, p1

    return p1
.end method

.method private checkAad()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private index(II)I
    .locals 0

    mul-int/lit8 p2, p2, 0x5

    add-int/2addr p1, p2

    return p1
.end method

.method private lfsr_step([B[B)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->ordinal()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v5, p2, v3

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v5

    aget-byte v2, p2, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v2

    xor-int/2addr v2, v5

    aget-byte v1, p2, v1

    shl-int/2addr v1, v4

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v1, p2, v3

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v1, v2

    const/16 v2, 0x13

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    aget-byte v5, p2, v3

    and-int/lit16 v6, v5, 0xff

    shl-int/2addr v6, v2

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x5

    or-int/2addr v5, v6

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v5

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v4

    invoke-static {p2, v4, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private permutation([B)V
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    if-ge v2, v0, :cond_6

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakP200Round([BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    new-array v4, v4, [B

    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    if-ge v5, v6, :cond_6

    aget-byte v6, p1, v2

    xor-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    sub-int/2addr v6, v3

    aget-byte v7, p1, v6

    and-int/lit8 v8, v0, 0x1

    shl-int/lit8 v8, v8, 0x7

    and-int/lit8 v9, v0, 0x2

    shl-int/lit8 v9, v9, 0x5

    or-int/2addr v8, v9

    and-int/lit8 v9, v0, 0x4

    shl-int/lit8 v9, v9, 0x3

    or-int/2addr v8, v9

    and-int/lit8 v9, v0, 0x8

    shl-int/2addr v9, v3

    or-int/2addr v8, v9

    and-int/lit8 v9, v0, 0x10

    ushr-int/2addr v9, v3

    or-int/2addr v8, v9

    and-int/lit8 v9, v0, 0x20

    ushr-int/lit8 v10, v9, 0x3

    or-int/2addr v8, v10

    and-int/lit8 v10, v0, 0x40

    ushr-int/lit8 v11, v10, 0x5

    or-int/2addr v8, v11

    and-int/lit16 v11, v0, 0x80

    ushr-int/lit8 v11, v11, 0x7

    or-int/2addr v8, v11

    int-to-byte v8, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    shl-int/2addr v0, v3

    ushr-int/lit8 v6, v10, 0x6

    ushr-int/lit8 v7, v9, 0x5

    xor-int/2addr v6, v7

    or-int/2addr v0, v6

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    const/4 v6, 0x0

    :goto_2
    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->sBoxLayer:[B

    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    aput-byte v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    const/4 v6, 0x0

    :goto_3
    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    if-ge v6, v7, :cond_5

    const/4 v7, 0x0

    :goto_4
    const/16 v8, 0x8

    if-ge v7, v8, :cond_4

    shl-int/lit8 v8, v6, 0x3

    add-int/2addr v8, v7

    iget v9, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    add-int/lit8 v10, v9, -0x1

    if-eq v8, v10, :cond_3

    mul-int v8, v8, v9

    shr-int/2addr v8, v1

    add-int/lit8 v9, v9, -0x1

    rem-int/2addr v8, v9

    :cond_3
    ushr-int/lit8 v9, v8, 0x3

    aget-byte v10, v4, v9

    aget-byte v11, p1, v6

    and-int/lit16 v11, v11, 0xff

    ushr-int/2addr v11, v7

    and-int/2addr v11, v3

    and-int/lit8 v8, v8, 0x7

    shl-int v8, v11, v8

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v4, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v4, v2, p1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    :goto_5
    return-void
.end method

.method private processAADBytes()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    :goto_0
    array-length v0, v0

    return v0
.end method

.method private processAADBytes([B)V
    .locals 7

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->checkAad()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0xc

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_0

    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be reused for encryption"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p1, v2, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v1, p1, v2

    return-void

    :pswitch_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v0, v3

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    invoke-static {v1, v5, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    return-void

    :cond_2
    if-lez v4, :cond_3

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    invoke-static {v6, v5, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    :cond_3
    add-int/2addr v4, v3

    add-int/2addr v3, v0

    invoke-static {p1, v4, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v1, p1, v4

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    return-void

    :cond_4
    sget-object p1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    return-void

    :cond_5
    sget-object p1, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private processBytes([B[BIIIIIIZ)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p7

    iget v4, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v4, v4, [B

    iget v5, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    const/4 v6, 0x0

    move/from16 v8, p4

    move v7, v5

    const/4 v9, 0x0

    move/from16 v5, p3

    :goto_0
    if-ge v7, v8, :cond_9

    add-int/lit8 v10, v2, -0x1

    if-ne v7, v10, :cond_0

    iget v10, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v10, v10, v7

    sub-int v10, v3, v10

    goto :goto_1

    :cond_0
    iget v10, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    :goto_1
    if-nez p9, :cond_1

    iget v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    rem-int v12, v10, v11

    if-nez v12, :cond_9

    mul-int v11, v11, v7

    if-gt v3, v11, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsr_step([B[B)V

    if-ge v7, v2, :cond_3

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/16 v13, 0xc

    invoke-static {v11, v6, v12, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v12, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v11, v13, v12, v6}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v11, v12, v6, v13}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v11, v12, v6, v13}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v11, v12, v6, v13}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v11, v12, v6, v13}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v0, v11, v1, v9, v10}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    move-object/from16 v12, p2

    invoke-static {v11, v6, v12, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v11, :cond_2

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v11, v6, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    invoke-static {v1, v9, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    add-int/2addr v5, v10

    add-int/2addr v9, v10

    goto :goto_3

    :cond_3
    move-object/from16 v12, p2

    :goto_3
    move/from16 v10, p6

    if-lez v7, :cond_7

    if-gt v7, v10, :cond_7

    add-int/lit8 v11, v7, -0x1

    iget v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v11, v11, v13

    const/4 v14, 0x1

    if-ne v11, v3, :cond_4

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v11, v6, v13, v6}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    aput-byte v14, v11, v6

    goto :goto_4

    :cond_4
    sub-int v11, v3, v11

    if-gt v13, v11, :cond_5

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v11, v6, v14, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    if-lez v11, :cond_6

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v13, v6, v15, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v15, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v13, v11, v15, v6}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    aput-byte v14, v13, v11

    :cond_6
    :goto_4
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v11, v13, v6, v14}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v11, v13, v6, v14}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v11, v13, v6, v14}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v11, v13, v6, v14}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v11, v13, v6, v14}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v11, p8

    if-ge v7, v11, :cond_8

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v15, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v13, v14, v6, v15}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v15, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v13, v14, v6, v15}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v15, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {v0, v13, v14, v6, v15}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    :cond_8
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iput-object v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget v14, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v4, v6, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_9
    :goto_5
    iput v7, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    return v9
.end method

.method private reset(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->messageLen:I

    return-void
.end method

.method private rotl(B)B
    .locals 1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, p1, 0x1

    ushr-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method private xor_block([B[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    aget-byte v1, p1, v0

    add-int v2, v0, p3

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int v2, v0, p2

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v2, v3

    array-length v3, p1

    if-gt v2, v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    add-int v2, v0, p2

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr v2, v3

    array-length v3, p1

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->messageLen:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_1
    sub-int v10, v0, v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int v3, v10, v1

    add-int/lit8 v9, v3, 0x1

    rem-int v4, v10, v1

    if-eqz v4, :cond_4

    move v8, v9

    goto :goto_2

    :cond_4
    move v8, v3

    :goto_2
    add-int/lit8 v0, v0, 0xc

    div-int/2addr v0, v1

    add-int/lit8 v11, v0, 0x1

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    const/4 v12, 0x1

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v3 .. v12}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIIIZ)I

    move-result p1

    add-int p2, v6, p1

    iget-byte p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    new-array p1, p1, [B

    iput-object p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v0, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget v1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v0, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget v1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-boolean p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz p1, :cond_5

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v0, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    iget-byte v1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    array-length v0, p1

    invoke-static {p1, v2, v5, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-byte p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v10, p1

    goto :goto_4

    :cond_5
    iget p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iget-byte p2, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr p1, p2

    iput p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    const/4 p1, 0x0

    :goto_3
    iget-byte p2, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    if-ge p1, p2, :cond_7

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    aget-byte p2, p2, p1

    iget-object v0, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    if-ne p2, v0, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mac does not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_4
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return v10

    :cond_8
    move-object v3, p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs call init function before doFinal"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    return v0
.end method

.method public getIVBytesSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    return v2

    :cond_1
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr p1, v0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needs call init function before getUpdateOutputSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr p1, v0

    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v0, p1

    iget-byte p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v0, p1

    return v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needs call init function before getUpdateOutputSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    if-eqz v1, :cond_4

    array-length v1, v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v0, v1, v2, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    if-eqz p1, :cond_0

    sget-object p2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iget p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-byte p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_1
    add-int/2addr p2, p1

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " key must be 128 bits long"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init parameters must include a key"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires exactly 12 bytes of IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init parameters must include an IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADByte(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processByte(B[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    move v10, p2

    move/from16 v11, p3

    add-int v1, v10, v11

    array-length v2, p1

    if-gt v1, v2, :cond_4

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int v2, v1, v11

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_0
    sub-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-lt v2, v4, :cond_3

    add-int/2addr v1, v11

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    :goto_1
    sub-int v7, v1, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int v3, v7, v2

    add-int/lit8 v6, v3, 0x1

    rem-int v4, v7, v2

    if-eqz v4, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    add-int/lit8 v1, v1, 0xc

    div-int/2addr v1, v2

    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v1, 0x1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int v1, v1, v2

    new-array v2, v1, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v9, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    invoke-static {v3, v12, v2, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v3, p5

    move-object v1, v2

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIIIZ)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    sub-int v3, v1, v2

    add-int/2addr v2, v11

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v3, v10

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    invoke-static {p1, v3, v4, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->messageLen:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->messageLen:I

    return v1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    invoke-static {p1, p2, v2, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v1, v11

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    return v12

    :cond_4
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void
.end method
