.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/IESUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessParameterSpec(Lorg/bouncycastle/crypto/BufferedBlockCipher;[B)Lorg/bouncycastle/jce/spec/IESParameterSpec;
    .locals 8

    if-nez p0, :cond_0

    new-instance p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 p1, 0x80

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKIPJACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v4, 0x50

    const/16 v5, 0x50

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object v1

    :cond_2
    move-object v7, p1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GOST28147"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    new-instance v2, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    if-eqz p0, :cond_3

    const/16 v5, 0x100

    const/16 v6, 0x100

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object v2

    :cond_3
    const/16 v5, 0x80

    const/16 v6, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object v2

    :cond_4
    :goto_0
    move-object v7, p1

    new-instance v2, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v5, 0x40

    const/16 v6, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object v2
.end method
