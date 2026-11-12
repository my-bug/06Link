.class Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->createSRP6VerifierGenerator(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;)Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field final synthetic val$verifierGenerator:Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;)V
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

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$3;->this$0:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$3;->val$verifierGenerator:Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateVerifier([B[B[B)Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto$3;->val$verifierGenerator:Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->generateVerifier([B[B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
