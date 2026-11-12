.class public final enum Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

.field public static final enum BLOCK_CIPHER:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

.field public static final enum KEY_AGREEMENT:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

.field public static final enum KEY_ENCAPSULATION:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

.field public static final enum KEY_WRAP:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

.field public static final enum MAC:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

.field public static final enum MESSAGE_DIGEST:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

.field public static final enum PUBLIC_KEY_ENCRYPTION:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

.field public static final enum SECURE_RANDOM:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

.field public static final enum SIGNATURE:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

.field public static final enum STREAM_CIPHER:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    sget-object v1, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->MESSAGE_DIGEST:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->SECURE_RANDOM:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->BLOCK_CIPHER:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->STREAM_CIPHER:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->MAC:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->KEY_WRAP:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->SIGNATURE:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->KEY_ENCAPSULATION:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->KEY_AGREEMENT:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const-string v1, "MESSAGE_DIGEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->MESSAGE_DIGEST:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    new-instance v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const-string v1, "SECURE_RANDOM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->SECURE_RANDOM:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    new-instance v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const-string v1, "BLOCK_CIPHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->BLOCK_CIPHER:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    new-instance v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const-string v1, "STREAM_CIPHER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->STREAM_CIPHER:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    new-instance v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const-string v1, "MAC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->MAC:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    new-instance v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const-string v1, "KEY_WRAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->KEY_WRAP:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    new-instance v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const-string v1, "PUBLIC_KEY_ENCRYPTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    new-instance v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const-string v1, "SIGNATURE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->SIGNATURE:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    new-instance v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const-string v1, "KEY_ENCAPSULATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->KEY_ENCAPSULATION:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    new-instance v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    const-string v1, "KEY_AGREEMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->KEY_AGREEMENT:Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    invoke-static {}, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->$values()[Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->$VALUES:[Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

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

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->$VALUES:[Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    invoke-virtual {v0}, [Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/jsse/java/security/BCCryptoPrimitive;

    return-object v0
.end method
