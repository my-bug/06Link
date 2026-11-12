.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V
    .locals 1

    const/16 v0, 0x140

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    return-object v0
.end method
