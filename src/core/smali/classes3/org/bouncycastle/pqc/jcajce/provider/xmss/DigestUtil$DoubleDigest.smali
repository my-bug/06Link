.class Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DoubleDigest"
.end annotation


# instance fields
.field private digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;->getDigestSize()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    return-void
.end method
