.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;
.super Ljava/lang/Object;


# instance fields
.field protected N:Ljava/math/BigInteger;

.field protected digest:Lorg/bouncycastle/tls/crypto/TlsHash;

.field protected g:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateVerifier([B[B[B)Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6Util;->calculateX(Lorg/bouncycastle/tls/crypto/TlsHash;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->g:Ljava/math/BigInteger;

    iget-object p3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    invoke-virtual {p2, p1, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/tls/crypto/TlsHash;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->g:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    return-void
.end method

.method public init(Lorg/bouncycastle/tls/crypto/SRP6Group;Lorg/bouncycastle/tls/crypto/TlsHash;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/SRP6Group;->getN()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/tls/crypto/SRP6Group;->getG()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->g:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/srp/SRP6VerifierGenerator;->digest:Lorg/bouncycastle/tls/crypto/TlsHash;

    return-void
.end method
