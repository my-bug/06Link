.class final enum Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BinOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

.field public static final enum EQ:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

.field public static final enum GE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

.field public static final enum GT:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

.field public static final enum LE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

.field public static final enum LT:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

.field public static final enum NE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;


# instance fields
.field private final s:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    sget-object v1, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->EQ:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->GE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->GT:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->LE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->LT:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->NE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v1, 0x0

    const-string v2, "=="

    const-string v3, "EQ"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->EQ:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    new-instance v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v1, 0x1

    const-string v2, ">="

    const-string v3, "GE"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->GE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    new-instance v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v1, 0x2

    const-string v2, ">"

    const-string v3, "GT"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->GT:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    new-instance v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v1, 0x3

    const-string v2, "<="

    const-string v3, "LE"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->LE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    new-instance v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v1, 0x4

    const-string v2, "<"

    const-string v3, "LT"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->LT:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    new-instance v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    const/4 v1, 0x5

    const-string v2, "!="

    const-string v3, "NE"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->NE:Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    invoke-static {}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->$values()[Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->$VALUES:[Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->s:Ljava/lang/String;

    return-void
.end method

.method static eval(Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;II)Z
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v1, :cond_8

    const/4 v2, 0x2

    if-eq p0, v2, :cond_6

    const/4 v2, 0x3

    if-eq p0, v2, :cond_4

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    if-eq p1, p2, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    if-ge p1, p2, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    if-gt p1, p2, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    if-le p1, p2, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    if-lt p1, p2, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    if-ne p1, p2, :cond_b

    return v1

    :cond_b
    return v0
.end method

.method static parse(Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;
    .locals 5

    invoke-static {}, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->values()[Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->s:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'s\' is not a valid operator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->$VALUES:[Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    invoke-virtual {v0}, [Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/jsse/provider/DisabledAlgorithmConstraints$BinOp;

    return-object v0
.end method
