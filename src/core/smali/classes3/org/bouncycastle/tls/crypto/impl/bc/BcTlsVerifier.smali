.class public abstract Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsVerifier;


# instance fields
.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

.field protected final publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsVerifier;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    iput-object p2, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsVerifier;->publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'publicKey\' must be public"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'publicKey\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'crypto\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getStreamVerifier(Lorg/bouncycastle/tls/DigitallySigned;)Lorg/bouncycastle/tls/crypto/TlsStreamVerifier;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
