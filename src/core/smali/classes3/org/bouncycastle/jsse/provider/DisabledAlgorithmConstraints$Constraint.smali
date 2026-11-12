.class abstract Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Constraint"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;-><init>()V

    return-void
.end method


# virtual methods
.method permits(Ljava/security/AlgorithmParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method permits(Ljava/security/Key;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
