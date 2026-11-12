.class Lorg/bouncycastle/pqc/crypto/sphincs/Seed;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 8

    const/16 v0, 0x28

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    aget-byte v3, p3, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p3, p4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    int-to-long v4, p3

    iget-wide v6, p4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 p3, 0x4

    shl-long/2addr v6, p3

    or-long/2addr v4, v6

    iget-wide p3, p4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/16 v2, 0x3b

    shl-long/2addr p3, v2

    or-long/2addr p3, v4

    invoke-static {p3, p4, v1, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->varlen_hash([BI[BI)I

    return-void
.end method

.method static prg([BIJ[BI)V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    move-wide v1, p2

    move p2, p1

    move-object p1, p0

    new-instance p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    const/16 p3, 0xc

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v4, 0x20

    invoke-direct {v3, p4, p5, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {p3, v3, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 p4, 0x1

    invoke-interface {p0, p4, p3}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    long-to-int p3, v1

    move-object p4, p1

    move p5, p2

    invoke-interface/range {p0 .. p5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-void
.end method
