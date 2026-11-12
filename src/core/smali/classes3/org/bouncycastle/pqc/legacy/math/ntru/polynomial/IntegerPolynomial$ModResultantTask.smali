.class Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModResultantTask"
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
.field private modulus:I

.field final synthetic this$0:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->this$0:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->modulus:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;ILorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->call()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->this$0:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->modulus:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method
