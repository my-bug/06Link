.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private final sntrupParams:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->sntrupParams:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    return-void
.end method


# virtual methods
.method public getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->sntrupParams:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    return-object v0
.end method
