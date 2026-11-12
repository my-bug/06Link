.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
.super Ljava/lang/Object;


# instance fields
.field public res:Ljava/math/BigInteger;

.field public rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    return-void
.end method
