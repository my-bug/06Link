.class public abstract Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsVerifier;


# instance fields
.field protected final algorithmName:Ljava/lang/String;

.field protected final algorithmType:S

.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

.field protected final publicKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;Ljava/security/PublicKey;SLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;->publicKey:Ljava/security/PublicKey;

    iput-short p3, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;->algorithmType:S

    iput-object p4, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;->algorithmName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "publicKey"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "crypto"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getStreamVerifier(Lorg/bouncycastle/tls/DigitallySigned;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public verifyRawSignature(Lorg/bouncycastle/tls/DigitallySigned;[B)Z
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v1

    iget-short v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;->algorithmType:S

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid algorithm: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;->crypto:Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;

    invoke-virtual {v1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsCrypto;->getHelper()Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;->algorithmName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tls/crypto/impl/jcajce/JcaTlsDSSVerifier;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-nez v0, :cond_2

    const/16 v0, 0x10

    const/16 v2, 0x14

    invoke-virtual {v1, p2, v0, v2}, Ljava/security/Signature;->update([BII)V

    goto :goto_1

    :cond_2
    array-length v0, p2

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Ljava/security/Signature;->update([BII)V

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/tls/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unable to process signature: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/bouncycastle/tls/crypto/impl/jcajce/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method
