.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsHash;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsHash;


# instance fields
.field private final digest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsHash;->digest:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public calculateHash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsHash;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public cloneHash()Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsHash;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsHash;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsHash;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unable to clone digest"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsHash;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsHash;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
