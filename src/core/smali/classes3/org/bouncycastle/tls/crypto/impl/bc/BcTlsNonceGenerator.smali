.class final Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsNonceGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;


# instance fields
.field private final randomGenerator:Lorg/bouncycastle/crypto/prng/RandomGenerator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/prng/RandomGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsNonceGenerator;->randomGenerator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    return-void
.end method


# virtual methods
.method public generateNonce(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsNonceGenerator;->randomGenerator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->nextBytes([B)V

    return-object p1
.end method
