.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sec_rand(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;->sec_rand(I)[B

    move-result-object v1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v2, v2, [B

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v3, v3, [B

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v4, v4, [B

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    const/4 v6, 0x0

    invoke-static {v1, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    invoke-static {v1, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    shl-int/lit8 v5, v5, 0x1

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    invoke-static {v1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;-><init>([B[B)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;->sec_rand(I)[B

    move-result-object v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;->sec_rand(I)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;-><init>([B[B)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;->sec_rand(I)[B

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->init([B)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->seed:[B

    invoke-direct {v3, v0, v5, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->htPubKey:[B

    invoke-direct {v2, v4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;-><init>([B[B)V

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    invoke-direct {v4, v5, v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;)V

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;->random:Ljava/security/SecureRandom;

    check-cast p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    return-void
.end method
