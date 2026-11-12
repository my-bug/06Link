.class Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

.field private final b:Lorg/bouncycastle/pqc/math/ntru/Polynomial;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->a:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->b:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    return-void
.end method


# virtual methods
.method public f()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->a:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    return-object v0
.end method

.method public g()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->b:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    return-object v0
.end method

.method public m()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->b:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    return-object v0
.end method

.method public r()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->a:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    return-object v0
.end method
