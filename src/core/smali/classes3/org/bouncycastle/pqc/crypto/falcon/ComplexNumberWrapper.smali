.class Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
.super Ljava/lang/Object;


# instance fields
.field im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    return-void
.end method
