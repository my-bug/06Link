.class Lorg/bouncycastle/tls/DeferredHash;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/TlsHandshakeHash;


# static fields
.field protected static final BUFFERING_HASH_LIMIT:I = 0x4


# instance fields
.field private buf:Lorg/bouncycastle/tls/DigestInputBuffer;

.field protected context:Lorg/bouncycastle/tls/TlsContext;

.field private forceBuffering:Z

.field private hashes:Ljava/util/Hashtable;

.field private sealed:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/TlsContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/DeferredHash;->context:Lorg/bouncycastle/tls/TlsContext;

    new-instance p1, Lorg/bouncycastle/tls/DigestInputBuffer;

    invoke-direct {p1}, Lorg/bouncycastle/tls/DigestInputBuffer;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/tls/DeferredHash;->forceBuffering:Z

    iput-boolean p1, p0, Lorg/bouncycastle/tls/DeferredHash;->sealed:Z

    return-void
.end method


# virtual methods
.method protected box(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public calculateHash()[B
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use \'forkPRFHash\' to get a definite hash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkStopBuffering()V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DeferredHash;->forceBuffering:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DeferredHash;->sealed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tls/crypto/TlsHash;

    iget-object v2, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    :cond_1
    return-void
.end method

.method protected checkTrackingHash(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DeferredHash;->box(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DeferredHash;->checkTrackingHash(Ljava/lang/Integer;)V

    return-void
.end method

.method protected checkTrackingHash(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getCrypto()Lorg/bouncycastle/tls/crypto/TlsCrypto;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/tls/crypto/TlsCrypto;->createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public cloneHash()Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to clone a DeferredHash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected cloneHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DeferredHash;->box(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DeferredHash;->cloneHash(Ljava/lang/Integer;)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p1

    return-object p1
.end method

.method protected cloneHash(Ljava/lang/Integer;)Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsHash;->cloneHash()Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p1

    return-object p1
.end method

.method protected cloneHash(Ljava/util/Hashtable;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/DeferredHash;->box(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tls/DeferredHash;->cloneHash(Ljava/util/Hashtable;Ljava/lang/Integer;)V

    return-void
.end method

.method protected cloneHash(Ljava/util/Hashtable;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/tls/DeferredHash;->cloneHash(Ljava/lang/Integer;)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    :cond_0
    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public copyBufferTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/DigestInputBuffer;->copyInputTo(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not buffering"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forceBuffering()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DeferredHash;->sealed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/tls/DeferredHash;->forceBuffering:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too late to force buffering"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forkPRFHash()Lorg/bouncycastle/tls/crypto/TlsHash;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/tls/DeferredHash;->checkStopBuffering()V

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFAlgorithm()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFCryptoHashAlgorithm()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/DeferredHash;->cloneHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/bouncycastle/tls/DeferredHash;->cloneHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tls/DeferredHash;->cloneHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/tls/CombinedHash;

    iget-object v3, p0, Lorg/bouncycastle/tls/DeferredHash;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-direct {v2, v3, v0, v1}, Lorg/bouncycastle/tls/CombinedHash;-><init>(Lorg/bouncycastle/tls/TlsContext;Lorg/bouncycastle/tls/crypto/TlsHash;Lorg/bouncycastle/tls/crypto/TlsHash;)V

    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    :cond_1
    return-object v0
.end method

.method public getFinalHash(I)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DeferredHash;->box(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/tls/crypto/TlsHash;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tls/DeferredHash;->checkStopBuffering()V

    invoke-interface {v0}, Lorg/bouncycastle/tls/crypto/TlsHash;->cloneHash()Lorg/bouncycastle/tls/crypto/TlsHash;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/tls/crypto/TlsHash;)V

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/tls/crypto/TlsHash;->calculateHash()[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CryptoHashAlgorithm."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not being tracked"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyPRFDetermined()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFAlgorithm()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFCryptoHashAlgorithm()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/tls/DeferredHash;->checkTrackingHash(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lorg/bouncycastle/tls/DeferredHash;->checkTrackingHash(I)V

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/DigestInputBuffer;->reset()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v1}, Lorg/bouncycastle/tls/crypto/TlsHash;->reset()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sealHashAlgorithms()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DeferredHash;->sealed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/tls/DeferredHash;->sealed:Z

    invoke-virtual {p0}, Lorg/bouncycastle/tls/DeferredHash;->checkStopBuffering()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already sealed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopTracking()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->context:Lorg/bouncycastle/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/tls/TlsContext;->getSecurityParametersHandshake()Lorg/bouncycastle/tls/SecurityParameters;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFAlgorithm()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SecurityParameters;->getPRFCryptoHashAlgorithm()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v3}, Lorg/bouncycastle/tls/DeferredHash;->cloneHash(Ljava/util/Hashtable;I)V

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/tls/DeferredHash;->cloneHash(Ljava/util/Hashtable;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    iput-object v1, p0, Lorg/bouncycastle/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/tls/DeferredHash;->forceBuffering:Z

    iput-boolean v3, p0, Lorg/bouncycastle/tls/DeferredHash;->sealed:Z

    return-void
.end method

.method public trackHashAlgorithm(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/tls/DeferredHash;->sealed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/DeferredHash;->checkTrackingHash(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too late to track more hash algorithms"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->buf:Lorg/bouncycastle/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tls/DigestInputBuffer;->write([BII)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tls/crypto/TlsHash;

    invoke-interface {v1, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/TlsHash;->update([BII)V

    goto :goto_0

    :cond_1
    return-void
.end method
