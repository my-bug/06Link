.class public Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private final parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    return-void
.end method


# virtual methods
.method getParameters()Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/slhdsa/SLHDSAParameters;

    return-object v0
.end method
