.class Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/SecretWithEncapsulation;


# instance fields
.field private final cipher_text:[B

.field private final hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sessionKey:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->sessionKey:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->cipher_text:[B

    return-void
.end method


# virtual methods
.method checkDestroyed()V
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->sessionKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->cipher_text:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    :cond_0
    return-void
.end method

.method public getEncapsulation()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->cipher_text:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->checkDestroyed()V

    return-object v0
.end method

.method public getSecret()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->sessionKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->checkDestroyed()V

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
