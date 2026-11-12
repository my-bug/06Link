.class public Lorg/bouncycastle/tls/CombinedHash;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsHash;


# instance fields
.field protected context:Lorg/bouncycastle/tls/TlsContext;

.field protected crypto:Lorg/bouncycastle/tls/crypto/TlsCrypto;

.field protected md5:Lorg/bouncycastle/tls/crypto/TlsHash;

.field protected sha1:Lorg/bouncycastle/tls/crypto/TlsHash;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/CombinedHash;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/tls/CombinedHash;->context:Lorg/bouncycastle/tls/TlsContext;

    iput-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->context:Lorg/bouncycastle/tls/TlsContext;

    iget-object v0, p1, Lorg/bouncycastle/tls/CombinedHash;->crypto:Lorg/bouncycastle/tls/crypto/TlsCrypto;

    iput-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->crypto:Lorg/bouncycastle/tls/crypto/TlsCrypto;

    iget-object v0, p1, Lorg/bouncycastle/tls/CombinedHash;->md5:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->cloneHash()Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->md5:Lorg/bouncycastle/tls/crypto/TlsHash;

    iget-object p1, p1, Lorg/bouncycastle/tls/CombinedHash;->sha1:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsHash;->cloneHash()Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/CombinedHash;->sha1:Lorg/bouncycastle/tls/crypto/TlsHash;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsHash;Lorg/bouncycastle/tls/crypto/TlsHash;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/CombinedHash;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {p1}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/CombinedHash;->crypto:Lorg/bouncycastle/tls/crypto/TlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/CombinedHash;->md5:Lorg/bouncycastle/tls/crypto/TlsHash;

    iput-object p3, p0, Lorg/bouncycastle/tls/CombinedHash;->sha1:Lorg/bouncycastle/tls/crypto/TlsHash;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/TlsCrypto;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/CombinedHash;->crypto:Lorg/bouncycastle/tls/crypto/TlsCrypto;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->md5:Lorg/bouncycastle/tls/crypto/TlsHash;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/CombinedHash;->sha1:Lorg/bouncycastle/tls/crypto/TlsHash;

    return-void
.end method


# virtual methods
.method public calculateHash()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->context:Lorg/bouncycastle/tls/TlsContext;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/tls/TlsUtils;->isSSL(Lorg/bouncycastle/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->context:Lorg/bouncycastle/tls/TlsContext;

    iget-object v1, p0, Lorg/bouncycastle/tls/CombinedHash;->md5:Lorg/bouncycastle/tls/crypto/TlsHash;

    iget-object v2, p0, Lorg/bouncycastle/tls/CombinedHash;->sha1:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/tls/SSL3Utils;->completeCombinedHash(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsHash;Lorg/bouncycastle/tls/crypto/TlsHash;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->md5:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/CombinedHash;->sha1:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public cloneHash()Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 1

    new-instance v0, Lorg/bouncycastle/tls/CombinedHash;

    invoke-direct {v0, p0}, Lorg/bouncycastle/tls/CombinedHash;-><init>(Lorg/bouncycastle/tls/CombinedHash;)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->md5:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->sha1:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->reset()V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->md5:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/tls/CombinedHash;->sha1:Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    return-void
.end method
