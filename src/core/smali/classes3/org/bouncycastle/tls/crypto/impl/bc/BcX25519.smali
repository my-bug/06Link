.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsAgreement;


# instance fields
.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

.field protected final peerPublicKey:[B

.field protected final privateKey:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->privateKey:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->peerPublicKey:[B

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    return-void
.end method


# virtual methods
.method public calculateSecret()Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/4 v1, 0x0

    :try_start_0
    new-array v6, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->privateKey:[B

    iget-object v4, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->peerPublicKey:[B

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->calculateAgreement([BI[BI[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->adoptLocalSecret([B)Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSecret;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->privateKey:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->peerPublicKey:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->privateKey:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->peerPublicKey:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    throw v0
.end method

.method public generateEphemeral()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->privateKey:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->privateKey:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->scalarMultBase([BI[BI)V

    return-object v0
.end method

.method public receivePeerValue([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;->peerPublicKey:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
