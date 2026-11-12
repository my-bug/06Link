.class public Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/KeyEncapsulation;


# instance fields
.field private CofactorMode:Z

.field private OldCofactorMode:Z

.field private SingleHashMode:Z

.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    iput-boolean p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    goto :goto_0

    :cond_0
    iput-boolean p4, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    :goto_0
    iput-boolean p5, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    return-void
.end method


# virtual methods
.method public decrypt([BI)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    instance-of v1, v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v1, :cond_0

    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    new-instance v2, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;

    iget-object v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    iget-boolean v7, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    iget-boolean v8, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;ZZZ)V

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->extractSecret([B)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {p2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Private key required for encryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([BI)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget-object v4, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    iget-boolean v7, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    move v2, p3

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;-><init>(ILorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;ZZZ)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v1, p3}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object p3

    invoke-interface {p3}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Public key required for encryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "ECIESKem"

    invoke-direct {v0, v3, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "EC key required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
