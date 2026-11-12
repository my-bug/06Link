.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;
.super Ljava/lang/Object;


# instance fields
.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    return-void
.end method

.method private hashSignatureBlock([BII[BI)V
    .locals 2

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    iget p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-interface {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, p4, p5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-interface {p1, p4, p5, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public Verify([B[B)[B
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v7, v6, [B

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v1

    const/4 v8, 0x0

    invoke-interface {v3, v1, v8, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v7, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    shl-int/lit8 v1, v1, 0x3

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v4, v3, -0x1

    add-int/2addr v1, v4

    div-int v9, v1, v3

    shl-int v1, v9, v3

    const/4 v10, 0x1

    add-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v11

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v3, v11, v1

    sub-int/2addr v3, v10

    div-int/2addr v3, v1

    add-int/2addr v3, v9

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v12, v4, v3

    array-length v3, v2

    if-eq v12, v3, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    move v3, v4

    new-array v4, v12, [B

    const/16 v13, 0x8

    rem-int v5, v13, v1

    if-nez v5, :cond_3

    div-int/2addr v13, v1

    shl-int v1, v10, v1

    add-int/lit8 v14, v1, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v6, :cond_2

    move/from16 v16, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v13, :cond_1

    aget-byte v5, v7, v15

    and-int/2addr v5, v14

    add-int v17, v1, v5

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v16, v1

    sub-int v5, v14, v5

    mul-int v1, v1, v16

    move/from16 v18, v3

    move v3, v5

    move v5, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    aget-byte v1, v7, v15

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v7, v15

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v3, v18, 0x1

    move-object/from16 v2, p2

    move/from16 v1, v17

    goto :goto_1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move/from16 v3, v16

    goto :goto_0

    :cond_2
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v9, v2

    sub-int/2addr v2, v1

    move v6, v2

    move v7, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_11

    and-int v1, v6, v14

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move v3, v2

    mul-int v2, v7, v3

    sub-int v1, v14, v1

    mul-int v5, v7, v3

    move v3, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v6, v1

    add-int/2addr v7, v10

    add-int/2addr v9, v1

    goto :goto_2

    :cond_3
    if-ge v1, v13, :cond_9

    div-int v6, v3, v1

    shl-int v1, v10, v1

    sub-int/2addr v1, v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v2, v6, :cond_6

    move/from16 v17, v3

    const/16 p1, 0x1

    const/4 v3, 0x0

    const-wide/16 v18, 0x0

    :goto_4
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    if-ge v3, v10, :cond_4

    aget-byte v10, v7, v17

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v20, v3, 0x3

    shl-int v10, v10, v20

    int-to-long v14, v10

    xor-long v18, v18, v14

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v13, :cond_5

    int-to-long v14, v1

    and-long v14, v18, v14

    long-to-int v3, v14

    add-int v14, v5, v3

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move v15, v2

    mul-int v2, v16, v5

    sub-int v3, v1, v3

    mul-int v5, v5, v16

    move/from16 v22, v15

    move v15, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v18, v18, v1

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v10, v10, 0x1

    move v5, v14

    move v1, v15

    move/from16 v2, v22

    goto :goto_5

    :cond_5
    move v15, v1

    move/from16 v22, v2

    add-int/lit8 v2, v22, 0x1

    move/from16 v3, v17

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    move v15, v1

    const/16 p1, 0x1

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    rem-int/2addr v1, v2

    const/4 v2, 0x0

    const-wide/16 v20, 0x0

    :goto_6
    if-ge v2, v1, :cond_7

    aget-byte v6, v7, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v10, v2, 0x3

    shl-int/2addr v6, v10

    int-to-long v13, v6

    xor-long v20, v20, v13

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    shl-int/lit8 v6, v1, 0x3

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_8

    int-to-long v1, v15

    and-long v1, v20, v1

    long-to-int v2, v1

    add-int v10, v5, v2

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move v3, v2

    mul-int v2, v16, v1

    sub-int v3, v15, v3

    mul-int v5, v16, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v20, v20, v1

    add-int/lit8 v16, v16, 0x1

    add-int/2addr v7, v1

    move v5, v10

    goto :goto_7

    :cond_8
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v1, v9, v1

    sub-int/2addr v1, v5

    move v6, v1

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v11, :cond_11

    and-int v1, v6, v15

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move v3, v2

    mul-int v2, v16, v3

    sub-int v1, v15, v1

    mul-int v5, v16, v3

    move v3, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    move-object v2, v1

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v6, v1

    add-int/lit8 v16, v16, 0x1

    add-int/2addr v7, v1

    goto :goto_8

    :cond_9
    move-object/from16 v2, p2

    const/16 p1, 0x1

    const/16 v5, 0x39

    if-ge v1, v5, :cond_11

    shl-int/lit8 v5, v3, 0x3

    sub-int/2addr v5, v1

    shl-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    new-array v6, v3, [B

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_9
    const-wide/16 v16, 0x1

    if-gt v10, v5, :cond_c

    ushr-int/lit8 v18, v10, 0x3

    rem-int/lit8 v19, v10, 0x8

    const/16 v22, 0x8

    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v10, v13

    add-int/lit8 v13, v10, 0x7

    ushr-int/lit8 v13, v13, 0x3

    move/from16 v8, v18

    const/16 v18, 0x0

    const-wide/16 v23, 0x0

    :goto_a
    move/from16 v25, v5

    if-ge v8, v13, :cond_a

    aget-byte v5, v7, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v26, v18, 0x3

    shl-int v5, v5, v26

    move-object/from16 v26, v7

    move/from16 v27, v8

    int-to-long v7, v5

    xor-long v23, v23, v7

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v8, v27, 0x1

    move/from16 v5, v25

    move-object/from16 v7, v26

    goto :goto_a

    :cond_a
    move-object/from16 v26, v7

    ushr-long v7, v23, v19

    move-wide/from16 v18, v7

    int-to-long v7, v1

    and-long v18, v18, v7

    int-to-long v13, v14

    add-long v13, v13, v18

    long-to-int v14, v13

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v13, v15, v5

    move-wide/from16 v23, v7

    const/4 v7, 0x0

    invoke-static {v2, v13, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b
    cmp-long v5, v18, v23

    if-gez v5, :cond_b

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v6, v7, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v6, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-long v18, v18, v16

    goto :goto_b

    :cond_b
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v8, v15, v5

    invoke-static {v6, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v25

    move-object/from16 v7, v26

    const/4 v8, 0x0

    const/16 v13, 0x8

    goto :goto_9

    :cond_c
    move-object/from16 v26, v7

    const/16 v22, 0x8

    ushr-int/lit8 v5, v10, 0x3

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    if-ge v5, v7, :cond_f

    rem-int/lit8 v10, v10, 0x8

    const/4 v7, 0x0

    const-wide/16 v20, 0x0

    :goto_c
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    if-ge v5, v8, :cond_d

    aget-byte v8, v26, v5

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v13, v7, 0x3

    shl-int/2addr v8, v13

    move v13, v7

    int-to-long v7, v8

    xor-long v20, v20, v7

    add-int/lit8 v7, v13, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_d
    ushr-long v18, v20, v10

    move/from16 p1, v9

    int-to-long v9, v1

    and-long v18, v18, v9

    int-to-long v13, v14

    add-long v13, v13, v18

    long-to-int v14, v13

    mul-int v5, v15, v8

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_d
    cmp-long v5, v18, v9

    if-gez v5, :cond_e

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v6, v7, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v6, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-long v18, v18, v16

    goto :goto_d

    :cond_e
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v8, v15, v5

    invoke-static {v6, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_f
    move/from16 p1, v9

    :goto_e
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v5, p1, v5

    sub-int/2addr v5, v14

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v11, :cond_11

    and-int v8, v5, v1

    int-to-long v8, v8

    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v13, v15, v10

    const/4 v14, 0x0

    invoke-static {v2, v13, v6, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 p1, v15

    :goto_10
    int-to-long v14, v1

    cmp-long v10, v8, v14

    if-gez v10, :cond_10

    iget-object v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v14, 0x0

    invoke-interface {v10, v6, v14, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v10, v6, v14}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-long v8, v8, v16

    goto :goto_10

    :cond_10
    const/4 v14, 0x0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v15, p1, v8

    invoke-static {v6, v14, v4, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v5, v8

    add-int/lit8 v15, p1, 0x1

    add-int/2addr v7, v8

    goto :goto_f

    :cond_11
    const/4 v14, 0x0

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v4, v14, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v1, v1, [B

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v14}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v1
.end method

.method public getLog(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getSignatureLength()I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    shl-int/lit8 v1, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v1, v3

    div-int/2addr v1, v2

    shl-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    return v0
.end method
