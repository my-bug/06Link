.class public Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private CofactorMode:Z

.field private OldCofactorMode:Z

.field private SingleHashMode:Z

.field private final decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private keyLen:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->keyLen:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->SingleHashMode:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->keyLen:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-boolean p4, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    goto :goto_0

    :cond_0
    iput-boolean p5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    :goto_0
    iput-boolean p6, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->SingleHashMode:Z

    new-instance p2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result p3

    sget-object p4, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string p5, "ECIESKem"

    invoke-direct {p2, p5, p3, p1, p4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getHInv()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->SingleHashMode:Z

    iget-object v2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget v3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->keyLen:I

    invoke-static {v1, v2, v3, p1, v0}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->deriveKey(ZLorg/bouncycastle/crypto/DerivationFunction;I[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getEncapsulationLength()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->getAffinePointEncodingLength(Z)I

    move-result v0

    return v0
.end method
