.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/impl/TlsAEADCipherImpl;


# static fields
.field private static final ZEROES:[B


# instance fields
.field protected final cipher:Ljavax/crypto/Cipher;

.field protected cipherKey:Ljavax/crypto/SecretKey;

.field protected final cipherMode:I

.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field protected final mac:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->ZEROES:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    const-string p1, "ChaCha7539"

    invoke-interface {p2, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->cipher:Ljavax/crypto/Cipher;

    const-string p1, "Poly1305"

    invoke-interface {p2, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->mac:Ljavax/crypto/Mac;

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->cipherMode:I

    return-void
.end method


# virtual methods
.method public doFinal([B[BII[BI)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    :try_start_0
    iget v7, v1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->cipherMode:I

    const/4 v8, 0x1

    const/16 v9, 0x8

    const-wide v10, 0xffffffffL

    const/16 v12, 0x40

    const/16 v13, 0x10

    const/4 v14, 0x0

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v4, 0x40

    new-array v7, v7, [B

    invoke-static {v2, v3, v7, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->runCipher([B)V

    invoke-static {v7, v12, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->initMAC([B)V

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->isNullOrEmpty([B)Z

    move-result v2

    if-nez v2, :cond_0

    array-length v2, v0

    array-length v3, v0

    invoke-virtual {v1, v0, v14, v3}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->updateMAC([BII)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v7, v12, v4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->updateMAC([BII)V

    new-array v0, v13, [B

    int-to-long v2, v2

    and-long/2addr v2, v10

    invoke-static {v2, v3, v0, v14}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    int-to-long v2, v4

    and-long/2addr v2, v10

    invoke-static {v2, v3, v0, v9}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-object v2, v1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, v0, v14, v13}, Ljavax/crypto/Mac;->update([BII)V

    iget-object v0, v1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->mac:Ljavax/crypto/Mac;

    add-int v2, v6, v4

    invoke-virtual {v0, v5, v2}, Ljavax/crypto/Mac;->doFinal([BI)V

    add-int/lit8 v0, v4, 0x10

    return v0

    :cond_1
    add-int/lit8 v7, v4, -0x10

    add-int/lit8 v4, v4, 0x30

    new-array v4, v4, [B

    invoke-static {v2, v3, v4, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->runCipher([B)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->initMAC([B)V

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->isNullOrEmpty([B)Z

    move-result v8

    if-nez v8, :cond_2

    array-length v8, v0

    array-length v15, v0

    invoke-virtual {v1, v0, v14, v15}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->updateMAC([BII)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3, v7}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->updateMAC([BII)V

    new-array v0, v13, [B

    move-wide v15, v10

    int-to-long v10, v8

    and-long/2addr v10, v15

    invoke-static {v10, v11, v0, v14}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    int-to-long v10, v7

    and-long/2addr v10, v15

    invoke-static {v10, v11, v0, v9}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-object v8, v1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v8, v0, v14, v13}, Ljavax/crypto/Mac;->update([BII)V

    iget-object v8, v1, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v8, v0, v14}, Ljavax/crypto/Mac;->doFinal([BI)V

    add-int/2addr v3, v7

    invoke-static {v13, v0, v14, v2, v3}, Lorg/bouncycastle/tls/TlsUtils;->constantTimeAreEqual(I[BI[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4, v12, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v7

    :cond_3
    new-instance v0, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->cipherMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x10

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x10

    return p1
.end method

.method public init([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {p2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->cipher:Ljavax/crypto/Cipher;

    iget v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->cipherMode:I

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->cipherKey:Ljavax/crypto/SecretKey;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, v3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected initMAC([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    const-string v3, "Poly1305"

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    aput-byte v4, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected runCipher([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->cipher:Ljavax/crypto/Cipher;

    array-length v4, p1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v5, p1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setKey([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "ChaCha7539"

    invoke-direct {v0, p1, p2, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->cipherKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method protected updateMAC([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    rem-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->mac:Ljavax/crypto/Mac;

    sget-object p2, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceChaCha20Poly1305;->ZEROES:[B

    const/4 v0, 0x0

    rsub-int/lit8 p3, p3, 0x10

    invoke-virtual {p1, p2, v0, p3}, Ljavax/crypto/Mac;->update([BII)V

    :cond_0
    return-void
.end method
