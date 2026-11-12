.class public Lorg/bouncycastle/tls/TlsSRPLoginParameters;
.super Ljava/lang/Object;


# instance fields
.field protected identity:[B

.field protected salt:[B

.field protected srpConfig:Lorg/bouncycastle/tls/crypto/TlsSRPConfig;

.field protected verifier:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>([BLorg/bouncycastle/tls/crypto/TlsSRPConfig;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->identity:[B

    iput-object p2, p0, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->srpConfig:Lorg/bouncycastle/tls/crypto/TlsSRPConfig;

    iput-object p3, p0, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->verifier:Ljava/math/BigInteger;

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->salt:[B

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/bouncycastle/tls/crypto/TlsSRPConfig;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->srpConfig:Lorg/bouncycastle/tls/crypto/TlsSRPConfig;

    return-object v0
.end method

.method public getIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->identity:[B

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->salt:[B

    return-object v0
.end method

.method public getVerifier()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/TlsSRPLoginParameters;->verifier:Ljava/math/BigInteger;

    return-object v0
.end method
