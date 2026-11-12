.class Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsHMAC;


# static fields
.field private static final IPAD:[B

.field private static final IPAD_BYTE:B = 0x36t

.field private static final OPAD:[B

.field private static final OPAD_BYTE:B = 0x5ct


# instance fields
.field private digest:Lorg/bouncycastle/tls/crypto/TlsHash;

.field private final digestSize:I

.field private final internalBlockSize:I

.field private padLength:I

.field private secret:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x36

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->IPAD:[B

    const/16 v0, 0x5c

    invoke-static {v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->OPAD:[B

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/tls/crypto/TlsHash;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    iput p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digestSize:I

    iput p3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->internalBlockSize:I

    const/16 p1, 0x14

    if-ne p2, p1, :cond_0

    const/16 p1, 0x28

    :goto_0
    iput p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->padLength:I

    return-void

    :cond_0
    const/16 p1, 0x30

    goto :goto_0
.end method

.method private static genPad(BI)[B
    .locals 0

    new-array p1, p1, [B

    invoke-static {p1, p0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object p1
.end method


# virtual methods
.method public calculateMAC([BI)V
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->calculateMAC()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public calculateMAC()[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->secret:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    sget-object v2, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->OPAD:[B

    iget v3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->padLength:I

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->reset()V

    return-object v0
.end method

.method public getInternalBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->internalBlockSize:I

    return v0
.end method

.method public getMacLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digestSize:I

    return v0
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->secret:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    sget-object v1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->IPAD:[B

    iget v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->padLength:I

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    return-void
.end method

.method public setKey([BII)V
    .locals 0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/tls/TlsUtils;->copyOfRangeExact([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->secret:[B

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->reset()V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaSSL3HMAC;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    return-void
.end method
