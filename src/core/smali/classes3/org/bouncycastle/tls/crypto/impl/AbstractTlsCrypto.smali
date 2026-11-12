.class public abstract Lorg/bouncycastle/tls/crypto/impl/AbstractTlsCrypto;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsCrypto;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adoptSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsSecret;->copyData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tls/crypto/impl/AbstractTlsCrypto;->createSecret([B)Lorg/bouncycastle/tls/crypto/TlsSecret;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unrecognized TlsSecret - cannot copy data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
