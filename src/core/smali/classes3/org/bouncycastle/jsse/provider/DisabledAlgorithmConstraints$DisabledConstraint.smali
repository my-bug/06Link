.class Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$DisabledConstraint;
.super Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisabledConstraint"
.end annotation


# static fields
.field static final INSTANCE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$DisabledConstraint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$DisabledConstraint;

    invoke-direct {v0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$DisabledConstraint;-><init>()V

    sput-object v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$DisabledConstraint;->INSTANCE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$DisabledConstraint;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$Constraint;-><init>(Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$1;)V

    return-void
.end method


# virtual methods
.method public permits(Ljava/security/Key;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
