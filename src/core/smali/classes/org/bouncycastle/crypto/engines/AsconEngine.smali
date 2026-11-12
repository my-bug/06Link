.class public Lorg/bouncycastle/crypto/engines/AsconEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;,
        Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    }
.end annotation


# instance fields
.field private final ASCON_AEAD_RATE:I

.field private final ASCON_IV:J

.field private final CRYPTO_ABYTES:I

.field private final CRYPTO_KEYBYTES:I

.field private K0:J

.field private K1:J

.field private K2:J

.field private N0:J

.field private N1:J

.field private final algorithmName:Ljava/lang/String;

.field private final asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field private initialAssociatedText:[B

.field private final m_buf:[B

.field private m_bufPos:I

.field private final m_bufferSizeDecrypt:I

.field private m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field private mac:[B

.field private final nr:I

.field private x0:J

.field private x1:J

.field private x2:J

.field private x3:J

.field private x4:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result p1

    const/16 v0, 0x8

    const/16 v1, 0x10

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v1, -0x7fbff3fa00000000L    # -1.785284289241434E-307

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-128 AEAD"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid parameter setting for ASCON AEAD"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v1, -0x7f7ff3f800000000L

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-128a AEAD"

    goto :goto_0

    :cond_2
    const/16 p1, 0x14

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v1, -0x5fbff3fa00000000L    # -2.393674885049323E-153

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-80pq AEAD"

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne p1, v0, :cond_3

    const/4 v0, 0x6

    :cond_3
    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    return-void
.end method

.method private P(I)V
    .locals 2

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    :cond_0
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    :cond_1
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

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

.method private ROUND(J)V
    .locals 23

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long v5, v1, v3

    iget-wide v7, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

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

    invoke-static {v5, v6, v9}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v9

    xor-long/2addr v9, v5

    const/16 v13, 0x1c

    invoke-static {v5, v6, v13}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v5, v9

    iput-wide v5, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    const/16 v5, 0x27

    invoke-static {v11, v12, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v5, v11

    const/16 v9, 0x3d

    invoke-static {v11, v12, v9}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v9

    xor-long/2addr v5, v9

    iput-wide v5, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v5, v1

    const/4 v9, 0x6

    invoke-static {v1, v2, v9}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v1

    xor-long/2addr v1, v5

    xor-long/2addr v1, v15

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    const/16 v1, 0xa

    invoke-static {v7, v8, v1}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v1

    xor-long/2addr v1, v7

    const/16 v5, 0x11

    invoke-static {v7, v8, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v1, v5

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    const/4 v1, 0x7

    invoke-static {v3, v4, v1}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v1

    xor-long/2addr v1, v3

    const/16 v5, 0x29

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    return-void
.end method

.method private ascon_aeadinit()V
    .locals 6

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N0:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    return-void
.end method

.method private checkAAD()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_0
.end method

.method private checkData()Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v1

    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    return v1

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    return v2

    :pswitch_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/16 v3, -0x80

    aput-byte v3, v0, v1

    const-wide/16 v3, -0x1

    const/16 v5, 0x8

    if-lt v1, v5, :cond_1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    xor-long/2addr v0, v6

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v6, v5}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v6

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v8, v5

    shl-int/lit8 v5, v8, 0x3

    rsub-int/lit8 v5, v5, 0x38

    shl-long/2addr v3, v5

    and-long/2addr v3, v6

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    goto :goto_0

    :cond_1
    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    shl-int/lit8 v7, v7, 0x3

    rsub-int/lit8 v7, v7, 0x38

    shl-long/2addr v3, v7

    and-long/2addr v0, v3

    xor-long/2addr v0, v5

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    :goto_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    const-wide/16 v3, 0x1

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-void
.end method

.method private finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shr-long v7, v5, v4

    or-long/2addr v2, v7

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    shl-long v2, v5, v4

    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shr-long v7, v5, v4

    or-long/2addr v2, v7

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    shl-long v2, v5, v4

    :goto_0
    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    :goto_1
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-void
.end method

.method private processBufferAAD([BI)V
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :cond_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void
.end method

.method private processBufferDecrypt([BI[BI)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, v0

    invoke-static {v2, v3, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v0, p1

    add-int/lit8 p4, p4, 0x8

    invoke-static {v0, v1, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :cond_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processBufferEncrypt([BI[BI)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 p4, p4, 0x8

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processFinalDecrypt([BII[BI)V
    .locals 7

    const-wide/16 v0, -0x1

    const/16 v2, 0x8

    if-lt p3, v2, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v5, v3

    iput-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v5, v6, p4, p5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    add-int/2addr p2, v2

    add-int/2addr p5, v2

    add-int/lit8 p3, p3, -0x8

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v2, p1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {v2, v3, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    iget-wide p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    shl-int/lit8 p3, p3, 0x3

    ushr-long/2addr v0, p3

    and-long/2addr p4, v0

    xor-long/2addr p1, p4

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, p1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v2, v3, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    iget-wide p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    shl-int/lit8 p3, p3, 0x3

    ushr-long/2addr v0, p3

    and-long/2addr p4, v0

    xor-long/2addr p1, p4

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :cond_1
    :goto_0
    sget-object p1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    return-void
.end method

.method private processFinalEncrypt([BII[BI)V
    .locals 5

    const/16 v0, 0x8

    if-lt p3, v0, :cond_0

    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v1, v2, p4, p5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    add-int/2addr p2, v0

    add-int/2addr p5, v0

    add-int/lit8 p3, p3, -0x8

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :goto_0
    invoke-static {p1, p2, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    :cond_1
    sget-object p1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    return-void
.end method

.method private reset(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needs to be initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-void

    :goto_0
    :pswitch_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ascon_aeadinit()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processAADBytes([BII)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v0

    const-string v1, "output buffer too short"

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v6

    add-int v3, p2, v0

    array-length v4, p1

    if-gt v3, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v5, 0x0

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processFinalEncrypt([BII[BI)V

    iget p1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    new-array p1, p1, [B

    iput-object p1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    iget-wide v4, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    const/4 p2, 0x0

    invoke-static {v4, v5, p1, p2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v4, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    invoke-static {v4, v5, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    iget v1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v1, v8

    iget v2, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-static {p1, p2, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return v0

    :cond_0
    move-object v3, p0

    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v3, p0

    move-object v7, p1

    move v8, p2

    iget p1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget p2, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-lt p1, p2, :cond_4

    sub-int v10, p1, p2

    iput v10, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int p2, v8, v10

    array-length p1, v7

    if-gt p2, p1, :cond_3

    move v12, v8

    iget-object v8, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v9, 0x0

    move-object v11, v7

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processFinalDecrypt([BII[BI)V

    iget-wide p1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-object v0, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iput-wide p1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide p1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object v0, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iput-wide p1, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v0, v3, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    or-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return v10

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mac check in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithmVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "v1.2"

    return-object v0
.end method

.method public getIVBytesSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    return v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr p1, v0

    return p1

    :pswitch_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :pswitch_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr p1, v0

    return p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getUpdateOutputSize(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v1

    :pswitch_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    mul-int/lit8 v4, v4, 0x8

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value for MAC size: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    :goto_0
    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    array-length v0, v3

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-ne v0, v4, :cond_6

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v2, v0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v2, v4, :cond_5

    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v6

    invoke-direct {v2, v4, v5, p2, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    const/4 p2, 0x0

    invoke-static {v3, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N0:J

    invoke-static {v3, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    goto :goto_2

    :cond_2
    const/16 v1, 0x14

    if-ne v2, v1, :cond_4

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/4 p2, 0x4

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    const/16 p2, 0xc

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_3

    sget-object p1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_3

    :cond_3
    sget-object p1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " key must be "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes long"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " requires exactly "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes of IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ascon Init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to Ascon"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public processAADByte(B)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    if-gtz p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v2, v0

    if-ge p3, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return-void

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    :cond_2
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v0, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
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

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
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

    if-gt v0, v1, :cond_7

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    if-lez v0, :cond_1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v2, v0

    if-ge p3, v2, :cond_0

    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return v1

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v0, v1, p4, p5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v2, :cond_6

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    if-ge p3, v0, :cond_3

    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt v3, v4, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v4, p5, v2

    invoke-direct {p0, v3, v1, p4, v4}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v5, v4, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    if-ge p3, v0, :cond_4

    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget p5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return v2

    :cond_5
    sub-int/2addr v4, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v3, p5, v2

    invoke-direct {p0, v0, v1, p4, v3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v2, v0

    move v0, v2

    :goto_2
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    if-lt p3, v2, :cond_6

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_2

    :cond_6
    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return v0

    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return-void
.end method
