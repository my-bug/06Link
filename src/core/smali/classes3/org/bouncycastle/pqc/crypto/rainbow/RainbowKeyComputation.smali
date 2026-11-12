.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;
.super Ljava/lang/Object;


# instance fields
.field cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

.field private l1_F1:[[[S

.field private l1_F2:[[[S

.field private l1_Q1:[[[S

.field private l1_Q2:[[[S

.field private l1_Q3:[[[S

.field private l1_Q5:[[[S

.field private l1_Q6:[[[S

.field private l1_Q9:[[[S

.field private l2_F1:[[[S

.field private l2_F2:[[[S

.field private l2_F3:[[[S

.field private l2_F5:[[[S

.field private l2_F6:[[[S

.field private l2_Q1:[[[S

.field private l2_Q2:[[[S

.field private l2_Q3:[[[S

.field private l2_Q5:[[[S

.field private l2_Q6:[[[S

.field private l2_Q9:[[[S

.field private o1:I

.field private o2:I

.field private pk_seed:[B

.field private rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field private random:Ljava/security/SecureRandom;

.field private s1:[[S

.field private sk_seed:[B

.field private t1:[[S

.field private t2:[[S

.field private t3:[[S

.field private t4:[[S

.field private v1:I

.field private version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    return-void
.end method

.method private calculate_F_from_Q()V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    aget-object v5, v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v2, v1, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    new-array v2, v1, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    new-array v2, v1, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    new-array v1, v1, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v3, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    invoke-virtual {v3, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v1, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->to_UT([[S)[[S

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method private calculate_Q_from_F()V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    new-array v2, v2, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v6, v4, v3

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v6, v4, v3

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    aget-object v7, v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_l1_Q3569([[S[[S)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v4, v3, [[[S

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    new-array v4, v3, [[[S

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    new-array v4, v3, [[[S

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    new-array v3, v3, [[[S

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v5, v3, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v6, v4, v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v7, v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v5, v3, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v6, v4, v2

    invoke-virtual {v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v5, v3, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    aget-object v6, v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v5, v5, v2

    invoke-virtual {v4, v3, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v5, v0, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v5, v3, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    aget-object v6, v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->to_UT([[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    aget-object v5, v5, v2

    invoke-virtual {v4, v0, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v6, v4, v2

    invoke-virtual {v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v4, v3, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v6, v4, v2

    invoke-virtual {v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v5, v3, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    aget-object v6, v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_l2_Q9([[S)V

    return-void
.end method

.method private calculate_Q_from_F_cyclic()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_l1_Q3569([[S[[S)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_l2_Q9([[S)V

    return-void
.end method

.method private calculate_l1_Q3569([[S[[S)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    new-array v1, v0, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    new-array v1, v0, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    new-array v1, v0, [[[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    invoke-virtual {v3, p1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->to_UT([[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v4, p1, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v3, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v3, v1, v0

    invoke-virtual {v2, p2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->to_UT([[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private calculate_l2_Q9([[S)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v3, v1, v0

    invoke-virtual {v2, p1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->to_UT([[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private calculate_t4()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    return-void
.end method

.method private genKeyMaterial()V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_skseed()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->generate_S_and_T(Ljava/security/SecureRandom;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    invoke-static {v0, v1, v2, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {v0, v1, v2, v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    invoke-static {v0, v1, v2, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {v0, v1, v2, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {v0, v1, v2, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_Q_from_F()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_t4()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    return-void
.end method

.method private genKeyMaterial_cyclic()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_skseed()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genPrivateKeyMaterial_cyclic()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_Q_from_F_cyclic()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    return-void
.end method

.method private genPrivateKeyMaterial_cyclic()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->generate_S_and_T(Ljava/security/SecureRandom;)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_t4()V

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->generate_B1_and_B2(Ljava/security/SecureRandom;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_F_from_Q()V

    return-void
.end method

.method private generate_B1_and_B2(Ljava/security/SecureRandom;)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    invoke-static {p1, v0, v1, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {p1, v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    invoke-static {p1, v0, v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {p1, v0, v1, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {p1, v0, v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    return-void
.end method

.method private generate_S_and_T(Ljava/security/SecureRandom;)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Ljava/security/SecureRandom;II)[[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    return-void
.end method


# virtual methods
.method public genKeyPairCircumzenithal()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 17

    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genKeyMaterial_cyclic()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[[S[[[S[[[S[[[S[[[S)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getEncoded()[B

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V

    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public genKeyPairClassical()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 17

    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genKeyMaterial()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    invoke-direct/range {v1 .. v14}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getEncoded()[B

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V

    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public genKeyPairCompressed()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genKeyMaterial_cyclic()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[[S[[[S[[[S[[[S[[[S)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getEncoded()[B

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[B[B)V

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method generatePrivateKey()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genPrivateKeyMaterial_cyclic()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    const/16 v16, 0x0

    invoke-direct/range {v2 .. v16}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V

    return-object v2
.end method
