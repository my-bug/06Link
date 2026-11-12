.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/impl/TlsBlockCipherImpl;


# static fields
.field private static final BUF_SIZE:I = 0x8000


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final cipher:Ljavax/crypto/Cipher;

.field private final cipherMode:I

.field private final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field private key:Ljavax/crypto/SecretKey;

.field private nextIV:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljavax/crypto/Cipher;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipher:Ljavax/crypto/Cipher;

    iput-object p3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->algorithm:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipherMode:I

    return-void
.end method


# virtual methods
.method public doFinal([BII[BI)I
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipher:Ljavax/crypto/Cipher;

    iget v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipherMode:I

    iget-object v3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->key:Ljavax/crypto/SecretKey;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->nextIV:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->nextIV:[B

    iget v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipherMode:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    add-int v0, p2, p3

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {p1, v2, v0}, Lorg/bouncycastle/tls/TlsUtils;->copyOfRangeExact([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->nextIV:[B

    :cond_0
    const/4 v0, 0x0

    move v4, p2

    :goto_0
    const p2, 0x8000

    if-le p3, p2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipher:Ljavax/crypto/Cipher;

    const v5, 0x8000

    add-int v7, p5, v0

    move-object v3, p1

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v4, p2

    add-int/lit16 p3, p3, -0x8000

    move-object p1, v3

    move-object p4, v6

    goto :goto_0

    :cond_1
    move-object v3, p1

    move-object v6, p4

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipher:Ljavax/crypto/Cipher;

    add-int v7, p5, v0

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipher:Ljavax/crypto/Cipher;

    add-int p2, p5, v0

    invoke-virtual {p1, v6, p2}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipherMode:I

    if-ne v1, p1, :cond_2

    add-int/2addr p5, v0

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    sub-int p1, p5, p1

    invoke-static {v6, p1, p5}, Lorg/bouncycastle/tls/TlsUtils;->copyOfRangeExact([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->nextIV:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->nextIV:[B

    if-nez v0, :cond_0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/tls/TlsUtils;->copyOfRangeExact([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->nextIV:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected reinitialization of an implicit-IV cipher"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKey([BII)V
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->algorithm:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceBlockCipherWithCBCImplicitIVImpl;->key:Ljavax/crypto/SecretKey;

    return-void
.end method
