.class final enum Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FunctionParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

.field public static final enum M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

.field public static final enum N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

.field public static final enum NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

.field public static final enum V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const-string v1, "NV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const-string v1, "V"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const-string v1, "N"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    const-string v1, "M"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->$values()[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->$VALUES:[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->$VALUES:[Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v0}, [Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    return-object v0
.end method
