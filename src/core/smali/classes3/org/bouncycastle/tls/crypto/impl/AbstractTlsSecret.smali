.class public abstract Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsSecret;


# instance fields
.field protected data:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->data:[B

    return-void
.end method

.method protected static copyData(Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;)[B
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->copyData()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized calculateHMAC(I[BII)[B
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->checkAlive()V

    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->getCrypto()Lorg/bouncycastle/tls/crypto/impl/AbstractTlsCrypto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsCrypto;->createHMACForHash(I)Lorg/bouncycastle/tls/crypto/TlsHMAC;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->data:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->setKey([BII)V

    invoke-interface {p1, p2, p3, p4}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->update([BII)V

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsHMAC;->calculateMAC()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected checkAlive()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->data:[B

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Secret has already been extracted or destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized copyData()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->data:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized encrypt(Lorg/bouncycastle/tls/crypto/TlsEncryptor;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->checkAlive()V

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->data:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lorg/bouncycastle/tls/crypto/TlsEncryptor;->encrypt([BII)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized extract()[B
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->checkAlive()V

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->data:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract getCrypto()Lorg/bouncycastle/tls/crypto/impl/AbstractTlsCrypto;
.end method

.method public declared-synchronized isAlive()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
