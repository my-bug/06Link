.class Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsSRP6Client;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createSRP6Client(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;)Lorg/bouncycastle/tls/crypto/TlsSRP6Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field final synthetic val$srpClient:Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$1;->this$0:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$1;->val$srpClient:Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tls/TlsFatalAlert;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$1;->val$srpClient:Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0
.end method

.method public generateClientCredentials([B[B[B)Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$1;->val$srpClient:Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Client;->generateClientCredentials([B[B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
