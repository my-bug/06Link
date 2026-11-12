.class Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;
.super Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySizeConstraint"
.end annotation


# instance fields
.field private final constraint:I

.field private final op:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;-><init>(Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$1;)V

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;->op:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    iput p2, p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;->constraint:I

    return-void
.end method

.method private checkKeySize(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;->op:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    iget v2, p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;->constraint:I

    invoke-static {v1, p1, v2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->eval(Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;II)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private static getKeySize(Ljava/security/AlgorithmParameters;)I
    .locals 2

    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-class v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    check-cast p0, Ljava/security/spec/ECParameterSpec;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const-string v1, "DiffieHellman"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    const-class v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    check-cast p0, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getKeySize(Ljava/security/Key;)I
    .locals 2

    instance-of v0, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/interfaces/RSAKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/security/interfaces/ECKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/DSAKey;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/security/interfaces/DSAKey;

    invoke-interface {p0}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Ljavax/crypto/interfaces/DHKey;

    if-eqz v0, :cond_3

    check-cast p0, Ljavax/crypto/interfaces/DHKey;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_3
    instance-of v0, p0, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_5

    check-cast p0, Ljavax/crypto/SecretKey;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v0, p0

    const v1, 0xfffffff

    if-le v0, v1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method permits(Ljava/security/AlgorithmParameters;)Z
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;->getKeySize(Ljava/security/AlgorithmParameters;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;->checkKeySize(I)Z

    move-result p1

    return p1
.end method

.method permits(Ljava/security/Key;)Z
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;->getKeySize(Ljava/security/Key;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$KeySizeConstraint;->checkKeySize(I)Z

    move-result p1

    return p1
.end method
