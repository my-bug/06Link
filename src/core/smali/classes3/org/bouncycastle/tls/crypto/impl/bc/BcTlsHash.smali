.class final Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsHash;


# instance fields
.field private final crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

.field private final cryptoHashAlgorithm:I

.field private final digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;ILorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;ILorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iput p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;->cryptoHashAlgorithm:I

    iput-object p3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public calculateHash()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public cloneHash()Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 4

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iget v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;->cryptoHashAlgorithm:I

    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->cloneDigest(ILorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;ILorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsHash;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
