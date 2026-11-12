.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final kemExtractor:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

.field private final key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getKyberPrivateKey()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->kemExtractor:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->kemExtractor:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    array-length v1, p1

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->extractSecret([B)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    array-length v4, v0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->getAgreementSize()I

    move-result v5

    add-int/2addr v4, v5

    new-array v5, v4, [B

    array-length v6, v0

    invoke-static {v0, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getXDHPrivateKey()Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    new-instance v6, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    array-length v7, p1

    sub-int/2addr v7, v2

    array-length v8, p1

    invoke-static {p1, v7, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v6, p1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([B)V

    array-length p1, v0

    invoke-virtual {v1, v6, v5, p1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    const-string v0, "\\.//^\\"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v3, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {p1, v5, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getXDHPrivateKey()Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    new-array v0, v2, [B

    invoke-virtual {p1, v0, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-object v0
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->kemExtractor:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMExtractor;->getEncapsulationLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
