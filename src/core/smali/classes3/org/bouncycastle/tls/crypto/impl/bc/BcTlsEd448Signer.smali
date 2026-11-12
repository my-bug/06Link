.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsEd448Signer;
.super Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsSigner;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-void
.end method


# virtual methods
.method public generateRawSignature(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getStreamSigner(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tls/SignatureScheme;->from(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)I

    move-result v0

    const/16 v1, 0x808

    if-ne v0, v1, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/signers/Ed448Signer;

    sget-object v0, Lorg/bouncycastle/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/signers/Ed448Signer;-><init>([B)V

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsEd448Signer;->privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/crypto/signers/Ed448Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamSigner;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsStreamSigner;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
