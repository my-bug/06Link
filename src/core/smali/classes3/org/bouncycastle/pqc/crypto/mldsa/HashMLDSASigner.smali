.class public Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# static fields
.field private static final EMPTY_CONTEXT:[B


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private digestOIDEncoding:[B

.field private engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

.field private privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->EMPTY_CONTEXT:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDigest(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)Lorg/bouncycastle/crypto/Digest;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getType()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown parameters type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object p0
.end method

.method private finishPreHash()Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getShake256Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digestOIDEncoding:[B

    array-length v5, v4

    invoke-virtual {v2, v4, v3, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    return-object v2
.end method

.method private initDigest(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->createDigest(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/DigestUtils;->getDigestOid(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digestOIDEncoding:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "oid encoding failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->finishPreHash()Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-result-object v1

    const/16 v0, 0x20

    new-array v7, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateSignature(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    sget-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->EMPTY_CONTEXT:[B

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->random:Ljava/security/SecureRandom;

    goto :goto_1

    :cond_2
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->random:Ljava/security/SecureRandom;

    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    invoke-virtual {p2, v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->initSign([BZ[B)V

    goto :goto_2

    :cond_3
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->rho:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->t1:[B

    invoke-virtual {p2, v2, v3, v1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->initVerify([B[BZ[B)V

    :goto_2
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->initDigest(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 6

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->finishPreHash()Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    array-length v2, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->rho:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->t1:[B

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->verifyInternal([BILorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B)Z

    move-result p1

    return p1
.end method
