.class Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimeGenerator"
.end annotation


# instance fields
.field private index:I

.field private prime:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;->index:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public nextPrime()Ljava/math/BigInteger;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;->index:I

    # getter for: Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->BIGINT_PRIMES:Ljava/util/List;
    invoke-static {}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    # getter for: Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->BIGINT_PRIMES:Ljava/util/List;
    invoke-static {}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->access$300()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;->prime:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->nextProbablePrime()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;->prime:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;->prime:Ljava/math/BigInteger;

    return-object v0
.end method
