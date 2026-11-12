.class public Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/signers/DSAKCalculator;


# instance fields
.field private final K:[B

.field private final V:[B

.field private final hMac:Lorg/bouncycastle/crypto/macs/HMac;

.field private n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p1

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    return-void
.end method

.method private bitsToInt([B)Ljava/math/BigInteger;
    .locals 2

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([B)Ljava/math/BigInteger;

    move-result-object p1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 4

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result p1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p2

    invoke-static {p1, p3}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    const/4 v1, 0x1

    invoke-static {p3, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p3, v2}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v3, v2

    invoke-virtual {p3, v2, v0, v3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p3, v0}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v2, p2

    invoke-virtual {p3, p2, v0, v2}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v2, p1

    invoke-virtual {p3, p1, v0, v2}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->initAdditionalInput0(Lorg/bouncycastle/crypto/macs/HMac;)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {p3, v2, v0}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p3, v2}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v3, v2

    invoke-virtual {p3, v2, v0, v3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {p3, v2, v0}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v3, v2

    invoke-virtual {p3, v2, v0, v3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p3, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v1, p2

    invoke-virtual {p3, p2, v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length p3, p1

    invoke-virtual {p2, p1, v0, p3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->initAdditionalInput1(Lorg/bouncycastle/crypto/macs/HMac;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object p3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length p3, p2

    invoke-virtual {p1, p2, v0, p3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    return-void
.end method

.method public init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected initAdditionalInput0(Lorg/bouncycastle/crypto/macs/HMac;)V
    .locals 0

    return-void
.end method

.method protected initAdditionalInput1(Lorg/bouncycastle/crypto/macs/HMac;)V
    .locals 0

    return-void
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextK()Ljava/math/BigInteger;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result v0

    new-array v1, v0, [B

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v6, v5

    invoke-virtual {v4, v5, v2, v6}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    sub-int v4, v0, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-static {v5, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_1

    return-object v3

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v5, v4

    invoke-virtual {v3, v4, v2, v5}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v3, v4, v2}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v5, v4

    invoke-virtual {v3, v4, v2, v5}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v3, v4, v2}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    goto :goto_0
.end method
