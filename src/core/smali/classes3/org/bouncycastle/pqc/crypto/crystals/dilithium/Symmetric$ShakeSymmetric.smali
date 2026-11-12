.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;
.super Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShakeSymmetric"
.end annotation


# instance fields
.field private final digest128:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final digest256:Lorg/bouncycastle/crypto/digests/SHAKEDigest;


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa8

    const/16 v1, 0x88

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;-><init>(II)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest128:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest256:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    return-void
.end method

.method private streamInit(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[BS)V
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    int-to-byte v0, p3

    shr-int/lit8 p3, p3, 0x8

    int-to-byte p3, p3

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte p3, v2, v0

    array-length p3, p2

    invoke-virtual {p1, p2, v3, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {p1, v2, v3, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    return-void
.end method


# virtual methods
.method stream128init([BS)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest128:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->streamInit(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[BS)V

    return-void
.end method

.method stream128squeezeBlocks([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest128:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    return-void
.end method

.method stream256init([BS)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest256:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->streamInit(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[BS)V

    return-void
.end method

.method stream256squeezeBlocks([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest256:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    return-void
.end method
