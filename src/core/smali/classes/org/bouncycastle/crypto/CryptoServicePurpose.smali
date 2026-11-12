.class public final enum Lorg/bouncycastle/crypto/CryptoServicePurpose;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/CryptoServicePurpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum AGREEMENT:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum AUTHENTICATION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum KEYGEN:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum SIGNING:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum VERIFICATION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field public static final enum VERIFYING:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->AGREEMENT:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->SIGNING:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->AUTHENTICATION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->VERIFICATION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "AGREEMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->AGREEMENT:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "ENCRYPTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "DECRYPTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "KEYGEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "SIGNING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->SIGNING:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "VERIFYING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "AUTHENTICATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->AUTHENTICATION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "VERIFICATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->VERIFICATION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "PRF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "ANY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->$values()[Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->$VALUES:[Lorg/bouncycastle/crypto/CryptoServicePurpose;

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

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->$VALUES:[Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/CryptoServicePurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method
