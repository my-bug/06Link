.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->privKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getSignatureSize(I)I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->privKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->crypto_sign([B[B[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getTrueSignatureSize()I

    move-result v2

    new-array v2, v2, [B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getTrueSignatureSize()I

    move-result v0

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->privKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [B

    array-length v2, p2

    invoke-static {v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v2

    invoke-static {v2, p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->crypto_sign_open([B[B[B)Z

    move-result p2

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method
