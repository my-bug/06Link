.class Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$CombineTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombineTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;",
        ">;"
    }
.end annotation


# instance fields
.field private modRes1:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

.field private modRes2:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$CombineTask;->modRes1:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$CombineTask;->modRes2:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$CombineTask;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$CombineTask;->call()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$CombineTask;->modRes1:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$CombineTask;->modRes2:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;->combineRho(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method
