.class public Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519Domain;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tls/crypto/TlsECDomain;


# instance fields
.field protected final crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519Domain;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    return-void
.end method


# virtual methods
.method public createECDH()Lorg/bouncycastle/tls/crypto/TlsAgreement;
    .locals 2

    new-instance v0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;

    iget-object v1, p0, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519Domain;->crypto:Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;

    invoke-direct {v0, v1}, Lorg/bouncycastle/tls/crypto/impl/bc/BcX25519;-><init>(Lorg/bouncycastle/tls/crypto/impl/bc/BcTlsCrypto;)V

    return-object v0
.end method
