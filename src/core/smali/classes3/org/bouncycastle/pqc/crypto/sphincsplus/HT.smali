.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;
.super Ljava/lang/Object;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

.field final htPubKey:[B

.field private final pkSeed:[B

.field private final skSeed:[B

.field wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_PKgen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->htPubKey:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->htPubKey:[B

    return-void
.end method


# virtual methods
.method sign([BJI)[B
    .locals 10

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v5, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v2

    iget-object p1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    new-array p4, p1, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    aput-object v2, p4, v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v5, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move v9, v3

    move-object v3, v1

    move v1, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v1

    const/4 v7, 0x1

    const/4 v8, 0x1

    :goto_0
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    if-ge v8, v2, :cond_1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    shl-int v2, v7, v2

    sub-int/2addr v2, v7

    int-to-long v2, v2

    and-long/2addr v2, p2

    long-to-int v3, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    ushr-long/2addr p2, v2

    invoke-virtual {v5, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v5, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v2

    move v9, v3

    move-object v3, v1

    move v1, v9

    aput-object v2, p4, v8

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    sub-int/2addr v4, v7

    if-ge v8, v4, :cond_0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v3

    :goto_1
    add-int/lit8 v8, v8, 0x1

    move-object v0, p0

    goto :goto_0

    :cond_1
    new-array p2, p1, [[B

    :goto_2
    if-eq v6, p1, :cond_2

    aget-object p3, p4, v6

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->sig:[B

    aget-object v0, p4, v6

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->auth:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    invoke-static {p3, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p3

    aput-object p3, p2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object p1

    return-object p1
.end method

.method treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 10

    ushr-int v0, p2, p3

    shl-int/2addr v0, p3

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v1, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    const/4 p5, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    shl-int v4, v3, p3

    if-ge v2, v4, :cond_2

    invoke-virtual {v1, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTypeAndClear(I)V

    add-int v4, p2, v2

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {v5, p1, p4, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->pkGen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTypeAndClear(I)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0, p5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeHeight:I

    if-ne v8, v7, :cond_1

    sub-int/2addr v4, v3

    div-int/2addr v4, v6

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    invoke-virtual {v0, p5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    invoke-virtual {v9, p4, v1, v8, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    invoke-direct {v3, v5, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;-><init>([BI)V

    invoke-virtual {v0, p5, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    return-object p1
.end method

.method public verify([B[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[BJI[B)Z
    .locals 6

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    const/4 v0, 0x0

    aget-object v2, p2, v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v5, p4, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move v1, p6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p1

    const/4 p3, 0x1

    move-object v3, p1

    const/4 p1, 0x1

    :goto_0
    iget-object p6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget p6, p6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    if-ge p1, p6, :cond_0

    iget-object p6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget p6, p6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    shl-int p6, p3, p6

    sub-int/2addr p6, p3

    int-to-long v1, p6

    and-long/2addr v1, p4

    long-to-int v1, v1

    iget-object p6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget p6, p6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    ushr-long/2addr p4, p6

    aget-object v2, p2, p1

    invoke-virtual {v5, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v5, p4, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    add-int/lit8 p1, p1, 0x1

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p7, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method xmss_PKgen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p1

    return-object p1
.end method

.method xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    const/4 p5, 0x0

    invoke-virtual {v0, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTypeAndClear(I)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->getWOTSSig()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->getXMSSAUTH()[[B

    move-result-object p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {v2, v1, p3, p4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->pkFromSig([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTypeAndClear(I)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    if-ge p5, v2, :cond_1

    add-int/lit8 v2, p5, 0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    const/4 v3, 0x1

    shl-int v4, v3, p5

    div-int v4, p1, v4

    rem-int/2addr v4, v1

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v3

    div-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object p5, p2, p5

    invoke-virtual {v3, p4, v0, p3, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object p3

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object p5, p2, p5

    invoke-virtual {v3, p4, v0, p5, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object p3

    :goto_1
    move p5, v2

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    new-array v0, v0, [[B

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v6, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTypeAndClear(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getLayerAddress()I

    move-result v1

    invoke-virtual {v6, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeAddress()J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    if-ge v4, v1, :cond_0

    ushr-int v1, p3, v4

    xor-int/lit8 v1, v1, 0x1

    shl-int v3, v1, v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p2

    aput-object p2, v0, v4

    add-int/lit8 v4, v4, 0x1

    move-object p2, v2

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    new-instance p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {p2, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    invoke-virtual {p2, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTypeAndClear(I)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object p3, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {p3, p1, v2, v5, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;-><init>([B[[B)V

    return-object p2
.end method
