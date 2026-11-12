.class Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;
.super Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sha2Engine"
.end annotation


# instance fields
.field private final bl:I

.field private final hmacBuf:[B

.field private final mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

.field private final msgDigest:Lorg/bouncycastle/crypto/Digest;

.field private final msgDigestBuf:[B

.field private msgMemo:Lorg/bouncycastle/util/Memoable;

.field private final sha256:Lorg/bouncycastle/crypto/Digest;

.field private final sha256Buf:[B

.field private sha256Memo:Lorg/bouncycastle/util/Memoable;

.field private final treeHMac:Lorg/bouncycastle/crypto/macs/HMac;


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine;-><init>(IIIIII)V

    move p2, p1

    move-object p1, p0

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object p3, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    new-array p3, p3, [B

    iput-object p3, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256Buf:[B

    const/16 p3, 0x10

    if-ne p2, p3, :cond_0

    new-instance p2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    new-instance p2, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance p2, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    const/16 p2, 0x40

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    new-instance p2, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance p2, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance p3, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    const/16 p2, 0x80

    :goto_0
    iput p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->bl:I

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->hmacBuf:[B

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigestBuf:[B

    return-void
.end method

.method private compressedADRS(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [B

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    const/16 v2, 0x8

    invoke-static {v1, v2, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    const/16 v2, 0x13

    const/16 v3, 0x9

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;->value:[B

    const/16 v1, 0xa

    const/16 v2, 0xc

    const/16 v3, 0x14

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public F([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B
    .locals 2

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    check-cast p2, Lorg/bouncycastle/util/Memoable;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256Memo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {p2, v0}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length p2, p3

    invoke-interface {p1, p3, v1, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256Buf:[B

    invoke-interface {p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256Buf:[B

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->N:I

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public H([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B[B)[B
    .locals 2

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    check-cast p2, Lorg/bouncycastle/util/Memoable;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgMemo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {p2, v0}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length p2, p3

    invoke-interface {p1, p3, v1, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length p2, p4

    invoke-interface {p1, p4, v1, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigestBuf:[B

    invoke-interface {p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigestBuf:[B

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->N:I

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method H_msg([B[B[B[B[B)Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->A:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->K:I

    mul-int v6, v6, v7

    add-int/lit8 v6, v6, 0x7

    const/16 v7, 0x8

    div-int/2addr v6, v7

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->H:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->D:I

    div-int/2addr v8, v9

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->H:I

    sub-int/2addr v9, v8

    add-int/lit8 v10, v8, 0x7

    div-int/2addr v10, v7

    add-int/lit8 v11, v9, 0x7

    div-int/2addr v11, v7

    add-int v12, v6, v10

    add-int/2addr v12, v11

    new-array v12, v12, [B

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v13}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    new-array v13, v13, [B

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v1

    const/4 v7, 0x0

    invoke-interface {v14, v1, v7, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v2

    invoke-interface {v14, v2, v7, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v3

    invoke-interface {v14, v3, v7, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    if-eqz v4, :cond_0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v14, v4

    invoke-interface {v3, v4, v7, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v5

    invoke-interface {v3, v5, v7, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v13, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {v1, v2, v13}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->bitmask([B[B)[B

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [B

    rsub-int/lit8 v3, v11, 0x8

    invoke-static {v1, v6, v2, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v7}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    rsub-int/lit8 v4, v9, 0x40

    const-wide/16 v12, -0x1

    ushr-long v4, v12, v4

    and-long/2addr v2, v4

    const/4 v4, 0x4

    new-array v4, v4, [B

    add-int/2addr v11, v6

    rsub-int/lit8 v5, v10, 0x4

    invoke-static {v1, v11, v4, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v7}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v4

    rsub-int/lit8 v5, v8, 0x20

    const/4 v8, -0x1

    ushr-int v5, v8, v5

    and-int/2addr v4, v5

    new-instance v5, Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;

    invoke-static {v1, v7, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v5, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/slhdsa/IndexedDigest;-><init>(JI[B)V

    return-object v5
.end method

.method PRF([B[BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B
    .locals 3

    array-length p1, p2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256Memo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p3

    const/4 v2, 0x0

    invoke-interface {v0, p3, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v0, p2

    invoke-interface {p3, p2, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256Buf:[B

    invoke-interface {p2, p3, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256Buf:[B

    invoke-static {p2, v2, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public PRF_msg([B[B[B[B)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length p2, p3

    invoke-virtual {p1, p3, v1, p2}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length p2, p4

    invoke-virtual {p1, p4, v1, p2}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->hmacBuf:[B

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->hmacBuf:[B

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->N:I

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public T_l([BLorg/bouncycastle/pqc/crypto/slhdsa/ADRS;[B)[B
    .locals 2

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/slhdsa/ADRS;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    check-cast p2, Lorg/bouncycastle/util/Memoable;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgMemo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {p2, v0}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length p2, p3

    invoke-interface {p1, p3, v1, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigestBuf:[B

    invoke-interface {p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigestBuf:[B

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->N:I

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method protected bitmask([B[B)[B
    .locals 4

    array-length v0, p2

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v3, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v3, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    array-length p1, p2

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    return-object v1
.end method

.method protected bitmask([B[B[B)[B
    .locals 4

    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v3, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v3, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    array-length p1, p2

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    array-length p1, p3

    array-length p2, p2

    invoke-static {p1, p3, v2, v1, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    return-object v1
.end method

.method protected bitmask256([B[B)[B
    .locals 4

    array-length v0, p2

    new-array v1, v0, [B

    new-instance v2, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v3, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v3, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    const/4 p1, 0x0

    invoke-virtual {v2, v1, p1, v0}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    array-length p1, p2

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    return-object v1
.end method

.method init([B)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->bl:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->bl:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->N:I

    sub-int/2addr v2, v4

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v1}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgMemo:Lorg/bouncycastle/util/Memoable;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length p1, p1

    rsub-int/lit8 p1, p1, 0x40

    invoke-interface {v1, v0, v3, p1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    check-cast p1, Lorg/bouncycastle/util/Memoable;

    invoke-interface {p1}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256Memo:Lorg/bouncycastle/util/Memoable;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method
