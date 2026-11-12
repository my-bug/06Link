.class public Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# static fields
.field private static final EMPTY_CONTEXT:[B


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

.field private msgDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->EMPTY_CONTEXT:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/16 v0, 0x20

    new-array v8, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->msgDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateSignature(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B[B[B[B[B)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->reset()V

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    sget-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->EMPTY_CONTEXT:[B

    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithContext;

    if-eqz v1, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithContext;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithContext;->getContext()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithContext;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    array-length v1, v0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context too long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->random:Ljava/security/SecureRandom;

    goto :goto_1

    :cond_2
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->random:Ljava/security/SecureRandom;

    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    invoke-virtual {p2, v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->initSign([BZ[B)V

    goto :goto_2

    :cond_3
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->rho:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->t1:[B

    invoke-virtual {p2, v2, v3, v1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->initVerify([B[BZ[B)V

    :goto_2
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->isPreHash()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->reset()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\"pure\" ml-dsa must use non pre-hash parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected internalGenerateSignature([B[B)[B
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->initSign([BZ[B)V

    array-length v4, p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    move-object v3, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->signInternal([BI[B[B[B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected internalVerifySignature([B[B)Z
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->rho:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->t1:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->initVerify([B[BZ[B)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getShake256Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-result-object v5

    array-length v0, p1

    invoke-virtual {v5, p1, v4, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    array-length v4, p2

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->rho:[B

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->t1:[B

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->verifyInternal([BILorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getShake256Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->msgDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->msgDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->msgDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    array-length v2, p1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->msgDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->rho:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->t1:[B

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->verifyInternal([BILorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B)Z

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->reset()V

    return p1
.end method
