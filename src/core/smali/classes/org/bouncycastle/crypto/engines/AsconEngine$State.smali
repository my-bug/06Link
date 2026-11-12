.class final enum Lorg/bouncycastle/crypto/engines/AsconEngine$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AsconEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/engines/AsconEngine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field public static final enum Uninitialized:Lorg/bouncycastle/crypto/engines/AsconEngine$State;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "Uninitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncInit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncAad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncData"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "EncFinal"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecInit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecAad"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecData"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const-string v1, "DecFinal"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->$values()[Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->$VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->$VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/engines/AsconEngine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-object v0
.end method
