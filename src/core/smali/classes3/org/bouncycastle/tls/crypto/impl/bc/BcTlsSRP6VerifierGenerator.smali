.class final Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSRP6VerifierGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;


# instance fields
.field private final srp6VerifierGenerator:Lorg/bouncycastle/crypto/agreement/srp/SRP6VerifierGenerator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/agreement/srp/SRP6VerifierGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSRP6VerifierGenerator;->srp6VerifierGenerator:Lorg/bouncycastle/crypto/agreement/srp/SRP6VerifierGenerator;

    return-void
.end method


# virtual methods
.method public generateVerifier([B[B[B)Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSRP6VerifierGenerator;->srp6VerifierGenerator:Lorg/bouncycastle/crypto/agreement/srp/SRP6VerifierGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/agreement/srp/SRP6VerifierGenerator;->generateVerifier([B[B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
