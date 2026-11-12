.class public Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsHMAC;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final hmac:Ljavax/crypto/Mac;

.field private final internalBlockSize:I


# direct methods
.method public constructor <init>(ILjavax/crypto/Mac;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->hmac:Ljavax/crypto/Mac;

    iput-object p3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->algorithm:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/tls/crypto/TlsCryptoUtils;->getHashInternalSize(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->internalBlockSize:I

    return-void
.end method


# virtual methods
.method public calculateMAC([BI)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Mac;->doFinal([BI)V
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public calculateMAC()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public getInternalBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->internalBlockSize:I

    return v0
.end method

.method public getMacLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    return-void
.end method

.method public setKey([BII)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->hmac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->algorithm:Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JceTlsHMAC;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
