.class final Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsBlockCipherImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private final isEncrypting:Z

.field private key:Lorg/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsBlockCipherImpl;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-boolean p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsBlockCipherImpl;->isEncrypting:Z

    return-void
.end method


# virtual methods
.method public doFinal([BII[BI)I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsBlockCipherImpl;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsBlockCipherImpl;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    add-int v3, p2, v1

    add-int v4, p5, v1

    invoke-interface {v2, p1, v3, p4, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return p3
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsBlockCipherImpl;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init([BII)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsBlockCipherImpl;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-boolean v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsBlockCipherImpl;->isEncrypting:Z

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsBlockCipherImpl;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v3, p1, p2, p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public setKey([BII)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsBlockCipherImpl;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    return-void
.end method
