.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;


# static fields
.field private static final ZEROES:[B


# instance fields
.field protected final cipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

.field protected final isEncrypting:Z

.field protected final mac:Lorg/bouncycastle/crypto/macs/Poly1305;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->ZEROES:[B

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->cipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    new-instance v0, Lorg/bouncycastle/crypto/macs/Poly1305;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/macs/Poly1305;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->mac:Lorg/bouncycastle/crypto/macs/Poly1305;

    iput-boolean p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->isEncrypting:Z

    return-void
.end method


# virtual methods
.method public doFinal([B[BII[BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->isNullOrEmpty([B)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    array-length v0, p1

    array-length v1, p1

    invoke-virtual {p0, p1, v6, v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->updateMAC([BII)V

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->isEncrypting:Z

    const/16 v7, 0x8

    const-wide v8, 0xffffffffL

    const/16 v10, 0x10

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->cipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->processBytes([BII[BI)I

    move-result v0

    if-ne v3, v0, :cond_1

    invoke-virtual {p0, v4, v5, v3}, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->updateMAC([BII)V

    new-array v0, v10, [B

    int-to-long v1, p1

    and-long/2addr v1, v8

    invoke-static {v1, v2, v0, v6}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    int-to-long v1, v3

    and-long/2addr v1, v8

    invoke-static {v1, v2, v0, v7}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->mac:Lorg/bouncycastle/crypto/macs/Poly1305;

    invoke-virtual {p1, v0, v6, v10}, Lorg/bouncycastle/crypto/macs/Poly1305;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->mac:Lorg/bouncycastle/crypto/macs/Poly1305;

    add-int v0, v5, v3

    invoke-virtual {p1, v4, v0}, Lorg/bouncycastle/crypto/macs/Poly1305;->doFinal([BI)I

    add-int/lit8 p1, v3, 0x10

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    sub-int/2addr v3, v10

    invoke-virtual {p0, p2, v2, v3}, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->updateMAC([BII)V

    new-array v0, v10, [B

    int-to-long v11, p1

    and-long/2addr v11, v8

    invoke-static {v11, v12, v0, v6}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    int-to-long v11, v3

    and-long/2addr v8, v11

    invoke-static {v8, v9, v0, v7}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->mac:Lorg/bouncycastle/crypto/macs/Poly1305;

    invoke-virtual {p1, v0, v6, v10}, Lorg/bouncycastle/crypto/macs/Poly1305;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->mac:Lorg/bouncycastle/crypto/macs/Poly1305;

    invoke-virtual {p1, v0, v6}, Lorg/bouncycastle/crypto/macs/Poly1305;->doFinal([BI)I

    add-int p1, v2, v3

    invoke-static {v10, v0, v6, p2, p1}, Lorg/bouncycastle/tls/TlsUtils;->constantTimeAreEqual(I[BI[BI)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->cipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->processBytes([BII[BI)I

    move-result p1

    if-ne v3, p1, :cond_3

    return v3

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public getOutputSize(I)I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->isEncrypting:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x10

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x10

    return p1
.end method

.method public init([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->cipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    iget-boolean v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->isEncrypting:Z

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p2, v0, v1}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->initMAC()V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected initMAC()V
    .locals 7

    const/16 v0, 0x40

    new-array v2, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->cipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    const/16 v4, 0x40

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->processBytes([BII[BI)I

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->mac:Lorg/bouncycastle/crypto/macs/Poly1305;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-static {v2, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method public setKey([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->cipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    iget-boolean p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->isEncrypting:Z

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    sget-object v1, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->ZEROES:[B

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {p3, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected updateMAC([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->mac:Lorg/bouncycastle/crypto/macs/Poly1305;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/macs/Poly1305;->update([BII)V

    rem-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->mac:Lorg/bouncycastle/crypto/macs/Poly1305;

    sget-object p2, Lorg/bouncycastle/tls/crypto/impl/bc/BcChaCha20Poly1305;->ZEROES:[B

    const/4 v0, 0x0

    rsub-int/lit8 p3, p3, 0x10

    invoke-virtual {p1, p2, v0, p3}, Lorg/bouncycastle/crypto/macs/Poly1305;->update([BII)V

    :cond_0
    return-void
.end method
