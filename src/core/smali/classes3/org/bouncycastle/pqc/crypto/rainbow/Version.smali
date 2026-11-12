.class final enum Lorg/bouncycastle/pqc/crypto/rainbow/Version;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/pqc/crypto/rainbow/Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/pqc/crypto/rainbow/Version;

.field public static final enum CIRCUMZENITHAL:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

.field public static final enum CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

.field public static final enum COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/pqc/crypto/rainbow/Version;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CIRCUMZENITHAL:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const-string v1, "CLASSIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const-string v1, "CIRCUMZENITHAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CIRCUMZENITHAL:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const-string v1, "COMPRESSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->$values()[Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->$VALUES:[Lorg/bouncycastle/pqc/crypto/rainbow/Version;

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

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/pqc/crypto/rainbow/Version;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/pqc/crypto/rainbow/Version;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->$VALUES:[Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-virtual {v0}, [Lorg/bouncycastle/pqc/crypto/rainbow/Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    return-object v0
.end method
