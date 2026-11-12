.class public Lorg/bouncycastle/crypto/signers/Ed448phSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# instance fields
.field private final context:[B

.field private forSigning:Z

.field private final prehash:Lorg/bouncycastle/crypto/Xof;

.field private privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createPrehash()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->context:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'context\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generateSignature()[B
    .locals 9

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->forSigning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    new-array v4, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x72

    new-array v7, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->context:[B

    const/16 v6, 0x40

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->sign(I[B[BII[BI)V

    return-object v7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prehash digest failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed448phSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->forSigning:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    const-string v0, "Ed448"

    const/16 v1, 0xe0

    invoke-static {v0, v1, p2, p1}, Lorg/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Xof;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 11

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->forSigning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    if-eqz v0, :cond_2

    const/16 v0, 0x72

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Xof;->reset()V

    return v2

    :cond_0
    const/16 v0, 0x40

    new-array v6, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v1, v6, v2, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->context:[B

    const/16 v8, 0x40

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v9, p1

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->verify(I[B[BII[BI)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Prehash digest failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ed448phSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
