.class public Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private CofactorMode:Z

.field private OldCofactorMode:Z

.field private SingleHashMode:Z

.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private final keySize:I

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->keySize:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->rnd:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->CofactorMode:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->OldCofactorMode:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->SingleHashMode:Z

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->rnd:Ljava/security/SecureRandom;

    iput p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->keySize:I

    iput-boolean p4, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->CofactorMode:Z

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->OldCofactorMode:Z

    goto :goto_0

    :cond_0
    iput-boolean p5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->OldCofactorMode:Z

    :goto_0
    iput-boolean p6, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->SingleHashMode:Z

    return-void
.end method

.method private createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method static deriveKey(ZLorg/bouncycastle/crypto/DerivationFunction;I[B[B)[B
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {p3, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    invoke-static {p4, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    move-object p4, p0

    :cond_0
    :try_start_0
    new-instance p0, Lorg/bouncycastle/crypto/params/KDFParameters;

    const/4 p3, 0x0

    invoke-direct {p0, p4, p3}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    new-array p0, p2, [B

    invoke-interface {p1, p0, v0, p2}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p4, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p4, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    throw p0
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 6

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v2

    sget-object v3, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v4, "ECIESKem"

    invoke-direct {v1, v4, v2, p1, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->ONE:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->rnd:Ljava/security/SecureRandom;

    invoke-static {v4, v2, v5}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->OldCofactorMode:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-interface {v3, p1, v4}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v5, v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v5, v0

    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    aget-object p1, v5, v3

    aget-object v0, v5, v0

    invoke-virtual {p1, v3}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    array-length v1, p1

    new-array v1, v1, [B

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->SingleHashMode:Z

    iget-object v4, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->keySize:I

    invoke-static {v3, v4, v5, p1, v0}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->deriveKey(ZLorg/bouncycastle/crypto/DerivationFunction;I[B[B)[B

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "EC public key required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
