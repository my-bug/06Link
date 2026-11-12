.class final Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHMAC;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsHMAC;


# instance fields
.field private final hmac:Lorg/bouncycastle/crypto/macs/HMac;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/macs/HMac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHMAC;->hmac:Lorg/bouncycastle/crypto/macs/HMac;

    return-void
.end method


# virtual methods
.method public calculateMAC([BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHMAC;->hmac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    return-void
.end method

.method public calculateMAC()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHMAC;->hmac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHMAC;->hmac:Lorg/bouncycastle/crypto/macs/HMac;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    return-object v0
.end method

.method public getInternalBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHMAC;->hmac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getUnderlyingDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getMacLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHMAC;->hmac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHMAC;->hmac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->reset()V

    return-void
.end method

.method public setKey([BII)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHMAC;->hmac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHMAC;->hmac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    return-void
.end method
