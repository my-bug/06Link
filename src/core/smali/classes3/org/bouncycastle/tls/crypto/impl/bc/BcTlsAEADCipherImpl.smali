.class final Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field private final isEncrypting:Z

.field private key:Lorg/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iput-boolean p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;->isEncrypting:Z

    return-void
.end method


# virtual methods
.method public doFinal([B[BII[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->isNullOrEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processAADBytes([BII)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface/range {p1 .. p6}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result p1

    :try_start_0
    iget-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    add-int/2addr p6, p1

    invoke-interface {p2, p5, p6}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result p2
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p2

    return p1

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p3, 0x14

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2
.end method

.method public getOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result p1

    return p1
.end method

.method public init([BI)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-boolean v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;->isEncrypting:Z

    new-instance v2, Lorg/bouncycastle/crypto/params/AEADParameters;

    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    mul-int/lit8 p2, p2, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, p1, v4}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public setKey([BII)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsAEADCipherImpl;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    return-void
.end method
