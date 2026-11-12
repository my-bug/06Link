.class public abstract Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsSigner;


# instance fields
.field protected final algorithmName:Ljava/lang/String;

.field protected final algorithmType:S

.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field protected final privateKey:Ljava/security/PrivateKey;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PrivateKey;SLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;->privateKey:Ljava/security/PrivateKey;

    iput-short p3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;->algorithmType:S

    iput-object p4, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;->algorithmName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "privateKey"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "crypto"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generateRawSignature(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    iget-short v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;->algorithmType:S

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v0}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;->algorithmName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;->privateKey:Ljava/security/PrivateKey;

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSSigner;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v2}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    if-nez p1, :cond_2

    const/16 p1, 0x10

    const/16 v1, 0x14

    invoke-virtual {v0, p2, p1, v1}, Ljava/security/Signature;->update([BII)V

    goto :goto_1

    :cond_2
    array-length p1, p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Ljava/security/Signature;->update([BII)V

    :goto_1
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p2
.end method

.method public getStreamSigner(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/tls/crypto/TlsStreamSigner;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
