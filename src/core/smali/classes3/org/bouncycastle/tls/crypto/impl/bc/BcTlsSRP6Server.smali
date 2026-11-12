.class final Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSRP6Server;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsSRP6Server;


# instance fields
.field private final srp6Server:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSRP6Server;->srp6Server:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

    return-void
.end method


# virtual methods
.method public calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSRP6Server;->srp6Server:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0
.end method

.method public generateServerCredentials()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSRP6Server;->srp6Server:Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->generateServerCredentials()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
