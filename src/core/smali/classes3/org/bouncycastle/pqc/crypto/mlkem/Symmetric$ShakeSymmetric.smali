.class Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;
.super Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShakeSymmetric"
.end annotation


# instance fields
.field private final sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

.field private final sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

.field private final shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa8

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    return-void
.end method


# virtual methods
.method hash_g([B[B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {p2, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-void
.end method

.method hash_h([B[BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {p2, p1, p3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-void
.end method

.method kdf([B[B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v0, p1

    invoke-virtual {p2, p1, v2, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    return-void
.end method

.method prf([B[BB)V
    .locals 4

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    aput-byte p3, v1, p2

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p2, v1, v3, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length p3, p1

    invoke-virtual {p2, p1, v3, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    return-void
.end method

.method xofAbsorb([BBB)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    aput-byte p2, v0, v1

    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    aput-byte p3, v0, p2

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, v0, v2, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    return-void
.end method

.method xofSqueezeBlocks([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    return-void
.end method
