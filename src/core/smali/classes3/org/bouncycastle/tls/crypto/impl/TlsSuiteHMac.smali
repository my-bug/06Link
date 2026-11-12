.class public final Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/impl/TlsSuiteMac;


# static fields
.field private static final SEQUENCE_NUMBER_PLACEHOLDER:J = -0x1L


# instance fields
.field private final cryptoParams:Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

.field private final digestBlockSize:I

.field private final digestOverhead:I

.field private final mac:Lorg/bouncycastle/tls/crypto/TlsHMAC;

.field private final macSize:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/TlsHMAC;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->cryptoParams:Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->mac:Lorg/bouncycastle/tls/crypto/TlsHMAC;

    invoke-static {p1, p2}, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->getMacSize(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/TlsMAC;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->macSize:I

    invoke-interface {p2}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->getInternalBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->digestBlockSize:I

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/impl/TlsImplUtils;->isSSL(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->getMacLength()I

    move-result p1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->digestOverhead:I

    return-void

    :cond_0
    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->digestOverhead:I

    return-void
.end method

.method private getDigestBlockCount(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->digestOverhead:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->digestBlockSize:I

    div-int/2addr p1, v0

    return p1
.end method

.method private getHeaderLength([B)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->cryptoParams:Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

    invoke-static {v0}, Lorg/bouncycastle/tls/crypto/impl/TlsImplUtils;->isSSL(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xb

    return p1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->isNullOrEmpty([B)Z

    move-result v0

    if-nez v0, :cond_1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x17

    return p1

    :cond_1
    const/16 p1, 0xd

    return p1
.end method

.method private static getMacSize(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;Lorg/bouncycastle/tls/crypto/TlsMAC;)I
    .locals 0

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsMAC;->getMacLength()I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/SecurityParameters;->isTruncatedHMac()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private truncate([B)[B
    .locals 2

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->macSize:I

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public calculateMac(JS[B[BII)[B
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p7

    iget-object v5, v0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->cryptoParams:Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;->getServerVersion()Lorg/bouncycastle/tls/ProtocolVersion;

    move-result-object v5

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->isNullOrEmpty([B)Z

    move-result v6

    const/16 v7, 0xb

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/16 v10, 0xd

    const/4 v11, 0x0

    if-nez v6, :cond_0

    array-length v6, v3

    add-int/lit8 v12, v6, 0x17

    new-array v13, v12, [B

    const-wide/16 v14, -0x1

    invoke-static {v14, v15, v13, v11}, Lorg/bouncycastle/tls/TlsUtils;->writeUint64(J[BI)V

    const/16 v14, 0x19

    invoke-static {v14, v13, v9}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(S[BI)V

    invoke-static {v6, v13, v8}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(I[BI)V

    const/16 v8, 0xa

    invoke-static {v14, v13, v8}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(S[BI)V

    invoke-static {v5, v13, v7}, Lorg/bouncycastle/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;[BI)V

    invoke-static {v1, v2, v13, v10}, Lorg/bouncycastle/tls/TlsUtils;->writeUint64(J[BI)V

    const/16 v1, 0x15

    invoke-static {v3, v11, v13, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v1

    invoke-static {v4, v13, v6}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->mac:Lorg/bouncycastle/tls/crypto/TlsHMAC;

    invoke-interface {v1, v13, v11, v12}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->update([BII)V

    goto :goto_0

    :cond_0
    new-array v3, v10, [B

    invoke-static {v1, v2, v3, v11}, Lorg/bouncycastle/tls/TlsUtils;->writeUint64(J[BI)V

    move/from16 v1, p3

    invoke-static {v1, v3, v9}, Lorg/bouncycastle/tls/TlsUtils;->writeUint8(S[BI)V

    invoke-static {v5, v3, v8}, Lorg/bouncycastle/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/tls/ProtocolVersion;[BI)V

    invoke-static {v4, v3, v7}, Lorg/bouncycastle/tls/TlsUtils;->writeUint16(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->mac:Lorg/bouncycastle/tls/crypto/TlsHMAC;

    invoke-interface {v1, v3, v11, v10}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->update([BII)V

    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->mac:Lorg/bouncycastle/tls/crypto/TlsHMAC;

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->update([BII)V

    iget-object v1, v0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->mac:Lorg/bouncycastle/tls/crypto/TlsHMAC;

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->calculateMAC()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->truncate([B)[B

    move-result-object v1

    return-object v1
.end method

.method public calculateMacConstantTime(JS[B[BIII[B)[B
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->calculateMac(JS[B[BII)[B

    move-result-object p1

    move-object p2, p0

    invoke-direct {p0, p4}, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->getHeaderLength([B)I

    move-result p3

    add-int/2addr p8, p3

    invoke-direct {p0, p8}, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->getDigestBlockCount(I)I

    move-result p4

    add-int/2addr p3, p7

    invoke-direct {p0, p3}, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->getDigestBlockCount(I)I

    move-result p3

    sub-int/2addr p4, p3

    :goto_0
    add-int/lit8 p4, p4, -0x1

    const/4 p3, 0x0

    if-ltz p4, :cond_0

    iget-object p5, p2, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->mac:Lorg/bouncycastle/tls/crypto/TlsHMAC;

    iget p6, p2, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->digestBlockSize:I

    invoke-interface {p5, p9, p3, p6}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object p4, p2, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->mac:Lorg/bouncycastle/tls/crypto/TlsHMAC;

    const/4 p5, 0x1

    invoke-interface {p4, p9, p3, p5}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->update([BII)V

    iget-object p3, p2, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->mac:Lorg/bouncycastle/tls/crypto/TlsHMAC;

    invoke-interface {p3}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->reset()V

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/crypto/impl/TlsSuiteHMac;->macSize:I

    return v0
.end method
